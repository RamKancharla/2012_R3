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
public class Attribute extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IAttribute
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public Attribute() {
        super();
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.Attribute()

    public Attribute(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.Attribute(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.Attribute";
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
        java.lang.String childValue = super.getAttributeValue( "attributeID", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'valueID'. The field 'valueID'
     * has the following description:
     * null
     * 
     * @return the value of field 'valueID'.
     */
    public java.lang.String getValueID()
    {
        java.lang.String childValue = super.getAttributeValue( "valueID", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
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
        super.setAttributeValue( "attributeID", null, attributeID );
    } 

    /**
     * Sets the value of field 'valueID'. The field 'valueID' has
     * the following description:
     * null
     * 
     * @param valueID the value of field 'valueID'.
     */
    public void setValueID(java.lang.String valueID)
    {
        super.setAttributeValue( "valueID", null, valueID );
    } 

}
