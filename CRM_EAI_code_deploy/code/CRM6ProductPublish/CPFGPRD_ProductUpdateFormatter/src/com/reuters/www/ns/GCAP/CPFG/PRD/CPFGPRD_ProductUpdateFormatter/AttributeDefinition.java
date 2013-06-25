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
public class AttributeDefinition extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IAttributeDefinition
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public AttributeDefinition() {
        super();
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinition()

    public AttributeDefinition(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinition(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinition";
    } 

    /**
     * Method addAllowedValue
     * 
     * @param vAllowedValue
     */
    public void addAllowedValue(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAllowedAttributeValue vAllowedValue)
        throws java.lang.IndexOutOfBoundsException
    {
        super.addChildElement( "allowedValue",null,vAllowedValue);
    } 

    /**
     * Method clearAllowedValue
     */
    public void clearAllowedValue()
    {
        super.clearChildElements( "allowedValue",null);
    } 

    /**
     * Returns the value of field 'allowedValue'. from the
     * specified position(index). The field 'allowedValue' has the
     * following description:
     * 
     * 
     * @param index
     * @return the value of field 'allowedValue'. from the
     * specified position(index)
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAllowedAttributeValue getAllowedValue(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        //-- check bounds for index
        if ((index < 0) || (index > super.numberOfChildElements("allowedValue",null))) {
            throw new IndexOutOfBoundsException();
        }
        
        org.w3c.dom.Element childValue = super.getChildElement( "allowedValue", null, index);
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AllowedAttributeValue value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AllowedAttributeValue(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'allowedValue' as List. The field
     * 'allowedValue' has the following description:
     * 
     * 
     * @return the value of field 'allowedValue'
     */
    public java.util.List getAllowedValue()
    {
        java.util.List list = new java.util.ArrayList( );
        int size = super.numberOfChildElements("allowedValue",null);
        for (int index = 0; index < size; index++) {
            org.w3c.dom.Element childValue = super.getChildElement( "allowedValue", null, index);
            if( childValue != null ) {
                com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AllowedAttributeValue value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AllowedAttributeValue(childValue);
                Object valueObject = com.collaxa.cube.xml.schema.XMLSchemaUtils.convertToObject( value );
                list.add( valueObject );
            }
        }
        return list;
    } 

    /**
     * Returns the total number of allowedValue as integer for this
     * facade dom element.
     */
    public int getAllowedValueCount()
    {
        return super.numberOfChildElements("allowedValue",null);
    } 

    /**
     * Returns the value of field 'attributeID'. The field
     * 'attributeID' has the following description:
     * null
     * 
     * @return the value of field 'attributeID'.
     */
    public java.lang.String getAttributeID()
    {
        java.lang.String childValue = super.getChildElementValue( "attributeID", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'attributeName'. The field
     * 'attributeName' has the following description:
     * null
     * 
     * @return the value of field 'attributeName'.
     */
    public java.lang.String getAttributeName()
    {
        java.lang.String childValue = super.getChildElementValue( "attributeName", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'freeTextAllowed'. The field
     * 'freeTextAllowed' has the following description:
     * null
     * 
     * @return the value of field 'freeTextAllowed'.
     */
    public boolean getFreeTextAllowed()
    {
        java.lang.String childValue = super.getChildElementValue( "freeTextAllowed", null);
        if( childValue != null ) {
            boolean value =  com.collaxa.cube.xml.schema.XMLSchemaUtils.parseBoolean( childValue);
            return value;
        }
        throw new java.util.NoSuchElementException("Node \"{null}freeTextAllowed\" does not exist in xml, please verify the xml content for this facade object.To get the xml content, use toString() method on the facade object.");
    } 

    /**
     * Returns the value of field 'isCommerciallyAffecting'. The
     * field 'isCommerciallyAffecting' has the following
     * description:
     * null
     * 
     * @return the value of field 'isCommerciallyAffecting'.
     */
    public boolean getIsCommerciallyAffecting()
    {
        java.lang.String childValue = super.getChildElementValue( "isCommerciallyAffecting", null);
        if( childValue != null ) {
            boolean value =  com.collaxa.cube.xml.schema.XMLSchemaUtils.parseBoolean( childValue);
            return value;
        }
        throw new java.util.NoSuchElementException("Node \"{null}isCommerciallyAffecting\" does not exist in xml, please verify the xml content for this facade object.To get the xml content, use toString() method on the facade object.");
    } 

    /**
     * Returns the value of field 'freeTextAllowed'. The field
     * 'freeTextAllowed' has the following description:
     * null
     * 
     * @return the value of field 'freeTextAllowed'.
     */
    public boolean isFreeTextAllowed()
    {
        java.lang.String childValue = super.getChildElementValue( "freeTextAllowed", null);
        if( childValue != null ) {
            boolean value =  com.collaxa.cube.xml.schema.XMLSchemaUtils.parseBoolean( childValue);
            return value;
        }
        throw new java.util.NoSuchElementException("Node \"{null}freeTextAllowed\" does not exist in xml, please verify the xml content for this facade object.To get the xml content, use toString() method on the facade object.");
    } 

    /**
     * Returns the value of field 'isCommerciallyAffecting'. The
     * field 'isCommerciallyAffecting' has the following
     * description:
     * null
     * 
     * @return the value of field 'isCommerciallyAffecting'.
     */
    public boolean isIsCommerciallyAffecting()
    {
        java.lang.String childValue = super.getChildElementValue( "isCommerciallyAffecting", null);
        if( childValue != null ) {
            boolean value =  com.collaxa.cube.xml.schema.XMLSchemaUtils.parseBoolean( childValue);
            return value;
        }
        throw new java.util.NoSuchElementException("Node \"{null}isCommerciallyAffecting\" does not exist in xml, please verify the xml content for this facade object.To get the xml content, use toString() method on the facade object.");
    } 

    /**
     * Method removeAllowedValue
     * 
     * @param index
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAllowedAttributeValue removeAllowedValue(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        org.w3c.dom.Element childValue = super.getChildElement( "allowedValue", null, index);
        super.removeChildElement("allowedValue",null,index );
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAllowedAttributeValue value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AllowedAttributeValue(childValue);
            return value;
        }
        return null;
    } 

    /**
     *  Sets the given value for element'allowedValue' at the
     * specified position (index).The field has the following
     * description:
     * 
     * 
     * @param index
     * @param vAllowedValue
     */
    public void setAllowedValue(int index, com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAllowedAttributeValue vAllowedValue)
        throws java.lang.IndexOutOfBoundsException
    {
        int size = super.numberOfChildElements("allowedValue",null);
        //-- check bounds for index
        if ((index < 0) || (index > size )) {
            throw new IndexOutOfBoundsException();
        }
        super.setChildElementValue( "allowedValue", "null", index, vAllowedValue);
    } 

    /**
     *  Sets the value of 'allowedValue' by copying the given
     * ArrayList. The field has the following description:
     * 
     * 
     * @param allowedValueList the value of field 'allowedValue'.
     */
    public void setAllowedValue(java.util.List allowedValueList)
    {
        //-- copy collection
        super.clearChildElements( "allowedValue",null);
        for (int i = 0; i < allowedValueList.size(); i++) {
            super.addChildElement( "allowedValue",null,allowedValueList.get(i));
        }
    } 

    /**
     * Sets the value of field 'attributeID'. The field
     * 'attributeID' has the following description:
     * null
     * 
     * @param attributeID the value of field 'attributeID'.
     */
    public void setAttributeID(java.lang.String attributeID)
    {
        super.setChildElementValue( "attributeID", null, attributeID );
    } 

    /**
     * Sets the value of field 'attributeName'. The field
     * 'attributeName' has the following description:
     * null
     * 
     * @param attributeName the value of field 'attributeName'.
     */
    public void setAttributeName(java.lang.String attributeName)
    {
        super.setChildElementValue( "attributeName", null, attributeName );
    } 

    /**
     * Sets the value of field 'freeTextAllowed'. The field
     * 'freeTextAllowed' has the following description:
     * null
     * 
     * @param freeTextAllowed the value of field 'freeTextAllowed'.
     */
    public void setFreeTextAllowed(boolean freeTextAllowed)
    {
        super.setChildElementValue( "freeTextAllowed", null, freeTextAllowed );
    } 

    /**
     * Sets the value of field 'isCommerciallyAffecting'. The field
     * 'isCommerciallyAffecting' has the following description:
     * null
     * 
     * @param isCommerciallyAffecting the value of field
     * 'isCommerciallyAffecting'.
     */
    public void setIsCommerciallyAffecting(boolean isCommerciallyAffecting)
    {
        super.setChildElementValue( "isCommerciallyAffecting", null, isCommerciallyAffecting );
    } 

}
