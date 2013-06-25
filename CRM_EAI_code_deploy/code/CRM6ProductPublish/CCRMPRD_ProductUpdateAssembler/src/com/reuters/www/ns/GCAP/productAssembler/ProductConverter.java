package com.reuters.www.ns.GCAP.productAssembler;


import com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeFactory;
import com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttribute;
import com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinition;
import com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IProductDefinitionUpdate;

import com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductConfiguration;

import com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductConfigurationFactory;

import com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrix;
import com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimension;
import com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule;

import java.lang.reflect.Method;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;


public class ProductConverter {

    static String ATTRIBUTE_DOM_TYPE = "Attribute";

    /**
     * @param productMatrix
     * @param productDefinitionUpdate
     */
    public static synchronized void convert(IPSPDynamicMatrix productMatrix, 
                        IProductDefinitionUpdate productDefinitionUpdate) {

        if ((null == productMatrix) || (null == productDefinitionUpdate)) {
            throw new IllegalArgumentException("Null argument provided");
        }

        Map attributeLookup = new HashMap();
        Map attributeIDNameLookup = new HashMap();

        try {
            setupAttributeIDNameLookup(productDefinitionUpdate, attributeIDNameLookup);

            // Get the Attribute name and column name mapping
            setupMatrixColumnAttributeIDLookup(productMatrix, attributeLookup, attributeIDNameLookup);
            
            // Insert the new configuration list into the productDefinitionUpdate
            populateConfigurationList(productDefinitionUpdate, productMatrix, 
                                      attributeLookup);
                                      
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            attributeLookup.clear();
        }
    }

    /**
     * @param
     * @return
     */
    private static void populateConfigurationList(IProductDefinitionUpdate productDefinitionUpdate, 
                                             IPSPDynamicMatrix productMatrix, 
                                             Map attributeLookup) throws Exception {

        // Create a configuration for each matrix rule provided by Siebel
        List rules = productMatrix.getPSPDynamicMatrixRule();
        Set commerciallyAffectingAttributeIDs = new HashSet();

        // If there are any configurations, then clear any default
        // configuration already set for the product.
        if (rules.size() > 0) {
            productDefinitionUpdate.clearProductConfiguration();
        }

        for (Iterator it = rules.iterator(); it.hasNext(); ) {

            PSPDynamicMatrixRule rule = (PSPDynamicMatrixRule)it.next();
            
            ProductConfiguration productConfiguration = 
                ProductConfigurationFactory.createFacade();

            productConfiguration.setConfigurationID(1);
            productConfiguration.setDescription(rule.getDescription());

            // These mappings need to be added when the data items are available.
            productConfiguration.setGlobalPLI(rule.getPart());

            // Populate the attributes and values that defines this variant
            productConfiguration.setAttribute(new Vector());

            Method[] methods = rule.getClass().getMethods();
            for (int i = 0; i < methods.length; i++) {
                String methodName = methods[i].getName();
                if ((-1 != methodName.indexOf("MatrixColumn")) && 
                    methodName.startsWith("get")) {
                    String attributeValue = 
                        (String)methods[i].invoke(rule, null);

                    String attributeID = (String)attributeLookup.get(methodName.substring(3,methodName.length()));
                    
                    if ((null != attributeValue) && 
                        !("".equals(attributeValue)) && (null != attributeID) && !("".equals(attributeID))) {
                        IAttribute a = AttributeFactory.createFacade();
                        a.setAttributeID(attributeID);
                                                                                          
                        a.setValueID(attributeValue);
                        productConfiguration.addAttribute(a);
                        
                        // Identify attributes that are commercially-affecting
                        commerciallyAffectingAttributeIDs.add(a.getAttributeID());
                    }
                }
            }

            productDefinitionUpdate.addProductConfiguration(productConfiguration);

        }
        
        
        // Mark attributes that are commercially-affecting in the model
        List l = productDefinitionUpdate.getAttributeDefinitionList().getAttributeDefinition();
        for (Iterator attIt = l.iterator(); attIt.hasNext(); ) {
           IAttributeDefinition attributeDefinition = (IAttributeDefinition) attIt.next();
           if (commerciallyAffectingAttributeIDs.contains( attributeDefinition.getAttributeID())) {
               attributeDefinition.setIsCommerciallyAffecting(true);
           }
        }

    }


    /**
     * @param productMatrix
     * @param matrixColumnNameToAttributeIDMap
     * @param attributeNameToIDMap
     */
    private static void setupMatrixColumnAttributeIDLookup(IPSPDynamicMatrix productMatrix, 
                                                      Map matrixColumnNameToAttributeIDMap,
                                                      Map attributeNameToIDMap) {
        List _PSPDynamicMatrixDimensionList = 
            productMatrix.getPSPDynamicMatrixDimension();

        // Iterate over all attributes and store their definitions
        for (Iterator it = _PSPDynamicMatrixDimensionList.iterator(); 
             it.hasNext(); ) {
            IPSPDynamicMatrixDimension dim = 
                (IPSPDynamicMatrixDimension)it.next();

            // Only choose Attribute definitions
            if (ATTRIBUTE_DOM_TYPE.equals(dim.getDomTypeCd())) {
                matrixColumnNameToAttributeIDMap.put(dim.getMatrixColumnName().replaceAll(" ", 
                                                                                          ""), 
                                                     (String) attributeNameToIDMap.get(dim.getAttributeName()));
            }

        }

    }
    
    private static void setupAttributeIDNameLookup(IProductDefinitionUpdate productDefinitionUpdate,
                                                    Map attributeIDNameMap) {
        List attributeList = productDefinitionUpdate.getAttributeDefinitionList().getAttributeDefinition();                                            
        
        for (Iterator it = attributeList.iterator();
            it.hasNext();) {
                IAttributeDefinition att = (IAttributeDefinition) it.next();
                attributeIDNameMap.put(
                    att.getAttributeName(),
                    att.getAttributeID());
            }
    }
}
