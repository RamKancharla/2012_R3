package com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter;



import java.util.Iterator;
import java.util.List;
import java.util.Vector;

/*
 * Contains utility methods for Common Platform product reference data.
 */
public class ProductConfigurationCalculator {

    /**
     * Calculates how many configurations will be generated for the product definition if
     * expandConfigurations() is called.  This method is provided to allow for a quick check of
     * the likely size of the resulting message so that evasive action can be taken if the result is
     * likely to cause issues.
     * 
     * Note, the method starts from the current number of configurations, these are assumed to be
     * commercial configurations.  Then it assumes that new configurations will be generated for 
     * each combination of the non-commercially affecting attributes.
     * 
     * The method is synchronised for thread-safety.
     * 
     * @param productDefinitionUpdate The product definition to calculate configurations from.
     * @return The number of configurations.
     */
    public static synchronized int calculateConfigurationCount(IProductDefinitionUpdate productDefinitionUpdate){

        int count = productDefinitionUpdate.getProductConfiguration().size();

        for (Iterator it = 
             productDefinitionUpdate.getAttributeDefinitionList().getAttributeDefinition().iterator(); 
             it.hasNext(); ) {
            IAttributeDefinition attribute = (IAttributeDefinition)it.next();
            if (!attribute.getIsCommerciallyAffecting()) {
                count *= attribute.getAllowedValue().size();
            }
        }
        return count;
    }

    /**
     * Updates a product defintion update by calcualting the cross-product of current configurations
     * and every possible value of any non-commercially-affecting attributes for the product.
     * 
     * @param productDefinitionUpdate The product definition update to modify.
     */
    public static synchronized void expandConfigurations(IProductDefinitionUpdate productDefinitionUpdate)  throws Exception {
    
        // Get non-commercial-affecting attributes
        List attributes = new Vector();
        
        for (Iterator it = 
             productDefinitionUpdate.getAttributeDefinitionList().getAttributeDefinition().iterator(); 
             it.hasNext(); ) {
            IAttributeDefinition attribute = (IAttributeDefinition)it.next();
            if (!attribute.getIsCommerciallyAffecting()) {
                combineWithAttribute(productDefinitionUpdate, attribute);
            }
        }
    }
    
    private static void combineWithAttribute(IProductDefinitionUpdate product, IAttributeDefinition attribute) throws Exception {
        
        List currentConfigurationList = product.getProductConfiguration();
        List newConfigurationList = new Vector();
            
        for (Iterator confIterator = currentConfigurationList.iterator(); confIterator.hasNext(); ) {
            IProductConfiguration productConfiguration = (IProductConfiguration) confIterator.next();

            for ( Iterator attValIt = attribute.getAllowedValue().iterator() ; attValIt.hasNext() ;) {
                IProductConfiguration configuration = ProductConfigurationFactory.createFacade();
                
                // Set static info
                configuration.setDescription( productConfiguration.getDescription() );
                configuration.setGlobalPLI( productConfiguration.getGlobalPLI() );
                configuration.setPermissioningSystem( productConfiguration.getPermissioningSystem() );
                
                // Copy the source attribute configuration
                configuration.setAttribute( productConfiguration.getAttribute() );
                
                // Add new attribute
                Attribute a = AttributeFactory.createFacade();
                a.setAttributeID( attribute.getAttributeID() );
                a.setValueID( ( (IAllowedAttributeValue)attValIt.next() ).getValueID() );
                configuration.addAttribute( a );
                
                newConfigurationList.add( configuration );
            }
        }
        
        // Replace configuration list
        product.setProductConfiguration( newConfigurationList );
        currentConfigurationList = null;
    }
}
