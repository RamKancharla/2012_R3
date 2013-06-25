/*
 * This class was automatically generated using Oracle BPEL schemac
 *  Version 10.1.3.3.1
 */

package com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter;


import com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.*;

/**
 * 
 * 
 * @version $Revision$ $Date$
 */
public class AddOn extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IAddOn
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public AddOn() {
        super();
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn()

    public AddOn(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn";
    } 

    /**
     * Returns the value of field 'productID'. The field
     * 'productID' has the following description:
     * null
     * 
     * @return the value of field 'productID'.
     */
    public java.lang.String getProductID()
    {
        java.lang.String childValue = super.getAttributeValue( "productID", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Sets the value of field 'productID'. The field 'productID'
     * has the following description:
     * null
     * 
     * @param productID the value of field 'productID'.
     */
    public void setProductID(java.lang.String productID)
    {
        super.setAttributeValue( "productID", null, productID );
    } 

}
