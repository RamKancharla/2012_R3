/*
 * This class was automatically generated using Oracle BPEL schemac
 *  Version 10.1.3.3.1
 */

package com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter;



/**
 * 
 * 
 * @version $Revision$ $Date$
 */
public class ProductConfiguration extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IProductConfiguration
{


     //Constructors

    public ProductConfiguration() {
        super();
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductConfiguration()

    public ProductConfiguration(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductConfiguration(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductConfiguration";
    } 

    /**
     * Method addAttribute
     * 
     * @param vAttribute
     */
    public void addAttribute(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttribute vAttribute)
        throws java.lang.IndexOutOfBoundsException
    {
        super.addChildElement( "attribute",null,vAttribute);
    } 

    /**
     * Method clearAttribute
     */
    public void clearAttribute()
    {
        super.clearChildElements( "attribute",null);
    } 

    /**
     * Returns the value of field 'attribute'. from the specified
     * position(index). The field 'attribute' has the following
     * description:
     * 
     * 
     * @param index
     * @return the value of field 'attribute'. from the specified
     * position(index)
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttribute getAttribute(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        //-- check bounds for index
        if ((index < 0) || (index > super.numberOfChildElements("attribute",null))) {
            throw new IndexOutOfBoundsException();
        }
        
        org.w3c.dom.Element childValue = super.getChildElement( "attribute", null, index);
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.Attribute value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.Attribute(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'attribute' as List. The field
     * 'attribute' has the following description:
     * 
     * 
     * @return the value of field 'attribute'
     */
    public java.util.List getAttribute()
    {
        java.util.List list = new java.util.ArrayList( );
        int size = super.numberOfChildElements("attribute",null);
        for (int index = 0; index < size; index++) {
            org.w3c.dom.Element childValue = super.getChildElement( "attribute", null, index);
            if( childValue != null ) {
                com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.Attribute value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.Attribute(childValue);
                Object valueObject = com.collaxa.cube.xml.schema.XMLSchemaUtils.convertToObject( value );
                list.add( valueObject );
            }
        }
        return list;
    } 

    /**
     * Returns the total number of attribute as integer for this
     * facade dom element.
     */
    public int getAttributeCount()
    {
        return super.numberOfChildElements("attribute",null);
    } 

    /**
     * Returns the value of field 'configurationID'. The field
     * 'configurationID' has the following description:
     * null
     * 
     * @return the value of field 'configurationID'.
     */
    public int getConfigurationID()
    {
        java.lang.String childValue = super.getChildElementValue( "configurationID", null);
        if( childValue != null ) {
            int value =  com.collaxa.cube.xml.schema.XMLSchemaUtils.parseInt( childValue);
            return value;
        }
        throw new java.util.NoSuchElementException("Node \"{null}configurationID\" does not exist in xml, please verify the xml content for this facade object.To get the xml content, use toString() method on the facade object.");
    } 

    /**
     * Returns the value of field 'description'. The field
     * 'description' has the following description:
     * null
     * 
     * @return the value of field 'description'.
     */
    public java.lang.String getDescription()
    {
        java.lang.String childValue = super.getChildElementValue( "description", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'globalPLI'. The field
     * 'globalPLI' has the following description:
     * null
     * 
     * @return the value of field 'globalPLI'.
     */
    public java.lang.String getGlobalPLI()
    {
        java.lang.String childValue = super.getChildElementValue( "globalPLI", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'permissioningSystem'. The field
     * 'permissioningSystem' has the following description:
     * null
     * 
     * @return the value of field 'permissioningSystem'.
     */
    public java.lang.String getPermissioningSystem()
    {
        java.lang.String childValue = super.getChildElementValue( "permissioningSystem", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Method removeAttribute
     * 
     * @param index
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttribute removeAttribute(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        org.w3c.dom.Element childValue = super.getChildElement( "attribute", null, index);
        super.removeChildElement("attribute",null,index );
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttribute value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.Attribute(childValue);
            return value;
        }
        return null;
    } 

    /**
     *  Sets the given value for element'attribute' at the
     * specified position (index).The field has the following
     * description:
     * 
     * 
     * @param index
     * @param vAttribute
     */
    public void setAttribute(int index, com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttribute vAttribute)
        throws java.lang.IndexOutOfBoundsException
    {
        int size = super.numberOfChildElements("attribute",null);
        //-- check bounds for index
        if ((index < 0) || (index > size )) {
            throw new IndexOutOfBoundsException();
        }
        super.setChildElementValue( "attribute", "null", index, vAttribute);
    } 

    /**
     *  Sets the value of 'attribute' by copying the given
     * ArrayList. The field has the following description:
     * 
     * 
     * @param attributeList the value of field 'attribute'.
     */
    public void setAttribute(java.util.List attributeList)
    {
        //-- copy collection
        super.clearChildElements( "attribute",null);
        for (int i = 0; i < attributeList.size(); i++) {
            super.addChildElement( "attribute",null,attributeList.get(i));
        }
    } 

    /**
     * Sets the value of field 'configurationID'. The field
     * 'configurationID' has the following description:
     * null
     * 
     * @param configurationID the value of field 'configurationID'.
     */
    public void setConfigurationID(int configurationID)
    {
        super.setChildElementValue( "configurationID", null, configurationID );
    } 

    /**
     * Sets the value of field 'description'. The field
     * 'description' has the following description:
     * null
     * 
     * @param description the value of field 'description'.
     */
    public void setDescription(java.lang.String description)
    {
        super.setChildElementValue( "description", null, description );
    } 

    /**
     * Sets the value of field 'globalPLI'. The field 'globalPLI'
     * has the following description:
     * null
     * 
     * @param globalPLI the value of field 'globalPLI'.
     */
    public void setGlobalPLI(java.lang.String globalPLI)
    {
        super.setChildElementValue( "globalPLI", null, globalPLI );
    } 

    /**
     * Sets the value of field 'permissioningSystem'. The field
     * 'permissioningSystem' has the following description:
     * null
     * 
     * @param permissioningSystem the value of field
     * 'permissioningSystem'.
     */
    public void setPermissioningSystem(java.lang.String permissioningSystem)
    {
        super.setChildElementValue( "permissioningSystem", null, permissioningSystem );
    } 

}
