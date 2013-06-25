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
public class AddOnList extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IAddOnList
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public AddOnList() {
        super();
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOnList()

    public AddOnList(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOnList(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOnList";
    } 

    /**
     * Method addAddOn
     * 
     * @param vAddOn
     */
    public void addAddOn(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOn vAddOn)
        throws java.lang.IndexOutOfBoundsException
    {
        super.addChildElement( "addOn",null,vAddOn);
    } 

    /**
     * Method clearAddOn
     */
    public void clearAddOn()
    {
        super.clearChildElements( "addOn",null);
    } 

    /**
     * Returns the value of field 'addOn'. from the specified
     * position(index). The field 'addOn' has the following
     * description:
     * 
     * 
     * @param index
     * @return the value of field 'addOn'. from the specified
     * position(index)
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOn getAddOn(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        //-- check bounds for index
        if ((index < 0) || (index > super.numberOfChildElements("addOn",null))) {
            throw new IndexOutOfBoundsException();
        }
        
        org.w3c.dom.Element childValue = super.getChildElement( "addOn", null, index);
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'addOn' as List. The field
     * 'addOn' has the following description:
     * 
     * 
     * @return the value of field 'addOn'
     */
    public java.util.List getAddOn()
    {
        java.util.List list = new java.util.ArrayList( );
        int size = super.numberOfChildElements("addOn",null);
        for (int index = 0; index < size; index++) {
            org.w3c.dom.Element childValue = super.getChildElement( "addOn", null, index);
            if( childValue != null ) {
                com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn(childValue);
                Object valueObject = com.collaxa.cube.xml.schema.XMLSchemaUtils.convertToObject( value );
                list.add( valueObject );
            }
        }
        return list;
    } 

    /**
     * Returns the total number of addOn as integer for this facade
     * dom element.
     */
    public int getAddOnCount()
    {
        return super.numberOfChildElements("addOn",null);
    } 

    /**
     * Method removeAddOn
     * 
     * @param index
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOn removeAddOn(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        org.w3c.dom.Element childValue = super.getChildElement( "addOn", null, index);
        super.removeChildElement("addOn",null,index );
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOn value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn(childValue);
            return value;
        }
        return null;
    } 

    /**
     *  Sets the given value for element'addOn' at the specified
     * position (index).The field has the following description:
     * 
     * 
     * @param index
     * @param vAddOn
     */
    public void setAddOn(int index, com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOn vAddOn)
        throws java.lang.IndexOutOfBoundsException
    {
        int size = super.numberOfChildElements("addOn",null);
        //-- check bounds for index
        if ((index < 0) || (index > size )) {
            throw new IndexOutOfBoundsException();
        }
        super.setChildElementValue( "addOn", "null", index, vAddOn);
    } 

    /**
     *  Sets the value of 'addOn' by copying the given ArrayList.
     * The field has the following description:
     * 
     * 
     * @param addOnList the value of field 'addOn'.
     */
    public void setAddOn(java.util.List addOnList)
    {
        //-- copy collection
        super.clearChildElements( "addOn",null);
        for (int i = 0; i < addOnList.size(); i++) {
            super.addChildElement( "addOn",null,addOnList.get(i));
        }
    } 

}
