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
public class AllowedAttributeValue extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IAllowedAttributeValue
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public AllowedAttributeValue() {
        super();
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AllowedAttributeValue()

    public AllowedAttributeValue(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AllowedAttributeValue(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AllowedAttributeValue";
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
        java.lang.String childValue = super.getChildElementValue( "valueID", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'valueName'. The field
     * 'valueName' has the following description:
     * null
     * 
     * @return the value of field 'valueName'.
     */
    public java.lang.String getValueName()
    {
        java.lang.String childValue = super.getChildElementValue( "valueName", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
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
        super.setChildElementValue( "valueID", null, valueID );
    } 

    /**
     * Sets the value of field 'valueName'. The field 'valueName'
     * has the following description:
     * null
     * 
     * @param valueName the value of field 'valueName'.
     */
    public void setValueName(java.lang.String valueName)
    {
        super.setChildElementValue( "valueName", null, valueName );
    } 

}
