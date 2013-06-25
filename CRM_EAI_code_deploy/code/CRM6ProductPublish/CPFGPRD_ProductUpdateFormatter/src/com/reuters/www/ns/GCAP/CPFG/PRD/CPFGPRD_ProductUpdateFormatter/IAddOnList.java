/*
 * $Id$
 */

package com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter;

/**
 * Interface IAddOnList.
 * 
 * @version $Revision$ $Date$
 */
public interface IAddOnList {


    //Methods

    /**
     * Method addAddOn
     * 
     * @param vAddOn
     */
    public void addAddOn(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOn vAddOn)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Method clearAddOn
     */
    public void clearAddOn();
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
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Returns the value of field 'addOn' as List. The field
     * 'addOn' has the following description:
     * 
     * 
     * @return the value of field 'addOn'
     */
    public java.util.List getAddOn();
    /**
     * Returns the total number of addOn as integer for this facade
     * dom element.
     */
    public int getAddOnCount();
    /**
     * Method removeAddOn
     * 
     * @param index
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOn removeAddOn(int index)
        throws java.lang.IndexOutOfBoundsException;
    /**
     *  Sets the given value for element'addOn' at the specified
     * position (index).The field has the following description:
     * 
     * 
     * @param index
     * @param vAddOn
     */
    public void setAddOn(int index, com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOn vAddOn)
        throws java.lang.IndexOutOfBoundsException;
    /**
     *  Sets the value of 'addOn' by copying the given ArrayList.
     * The field has the following description:
     * 
     * 
     * @param addOnList the value of field 'addOn'.
     */
    public void setAddOn(java.util.List addOnList);
}
