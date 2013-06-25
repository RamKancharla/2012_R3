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
public class AttributeDefinitionList extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IAttributeDefinitionList
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public AttributeDefinitionList() {
        super();
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinitionList()

    public AttributeDefinitionList(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinitionList(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinitionList";
    } 

    /**
     * Method addAttributeDefinition
     * 
     * @param vAttributeDefinition
     */
    public void addAttributeDefinition(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinition vAttributeDefinition)
        throws java.lang.IndexOutOfBoundsException
    {
        super.addChildElement( "attributeDefinition",null,vAttributeDefinition);
    } 

    /**
     * Method clearAttributeDefinition
     */
    public void clearAttributeDefinition()
    {
        super.clearChildElements( "attributeDefinition",null);
    } 

    /**
     * Returns the value of field 'attributeDefinition'. from the
     * specified position(index). The field 'attributeDefinition'
     * has the following description:
     * 
     * 
     * @param index
     * @return the value of field 'attributeDefinition'. from the
     * specified position(index)
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinition getAttributeDefinition(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        //-- check bounds for index
        if ((index < 0) || (index > super.numberOfChildElements("attributeDefinition",null))) {
            throw new IndexOutOfBoundsException();
        }
        
        org.w3c.dom.Element childValue = super.getChildElement( "attributeDefinition", null, index);
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinition value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinition(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'attributeDefinition' as List.
     * The field 'attributeDefinition' has the following
     * description:
     * 
     * 
     * @return the value of field 'attributeDefinition'
     */
    public java.util.List getAttributeDefinition()
    {
        java.util.List list = new java.util.ArrayList( );
        int size = super.numberOfChildElements("attributeDefinition",null);
        for (int index = 0; index < size; index++) {
            org.w3c.dom.Element childValue = super.getChildElement( "attributeDefinition", null, index);
            if( childValue != null ) {
                com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinition value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinition(childValue);
                Object valueObject = com.collaxa.cube.xml.schema.XMLSchemaUtils.convertToObject( value );
                list.add( valueObject );
            }
        }
        return list;
    } 

    /**
     * Returns the total number of attributeDefinition as integer
     * for this facade dom element.
     */
    public int getAttributeDefinitionCount()
    {
        return super.numberOfChildElements("attributeDefinition",null);
    } 

    /**
     * Method removeAttributeDefinition
     * 
     * @param index
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinition removeAttributeDefinition(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        org.w3c.dom.Element childValue = super.getChildElement( "attributeDefinition", null, index);
        super.removeChildElement("attributeDefinition",null,index );
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinition value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinition(childValue);
            return value;
        }
        return null;
    } 

    /**
     *  Sets the given value for element'attributeDefinition' at
     * the specified position (index).The field has the following
     * description:
     * 
     * 
     * @param index
     * @param vAttributeDefinition
     */
    public void setAttributeDefinition(int index, com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinition vAttributeDefinition)
        throws java.lang.IndexOutOfBoundsException
    {
        int size = super.numberOfChildElements("attributeDefinition",null);
        //-- check bounds for index
        if ((index < 0) || (index > size )) {
            throw new IndexOutOfBoundsException();
        }
        super.setChildElementValue( "attributeDefinition", "null", index, vAttributeDefinition);
    } 

    /**
     *  Sets the value of 'attributeDefinition' by copying the
     * given ArrayList. The field has the following description:
     * 
     * 
     * @param attributeDefinitionList the value of field
     * 'attributeDefinition'.
     */
    public void setAttributeDefinition(java.util.List attributeDefinitionList)
    {
        //-- copy collection
        super.clearChildElements( "attributeDefinition",null);
        for (int i = 0; i < attributeDefinitionList.size(); i++) {
            super.addChildElement( "attributeDefinition",null,attributeDefinitionList.get(i));
        }
    } 

}
