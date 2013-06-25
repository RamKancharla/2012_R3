/*
 * $Id$
 */

package com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter;

/**
 * Interface IAttributeDefinition.
 * 
 * @version $Revision$ $Date$
 */
public interface IAttributeDefinition {


    //Methods

    /**
     * Method addAllowedValue
     * 
     * @param vAllowedValue
     */
    public void addAllowedValue(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAllowedAttributeValue vAllowedValue)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Method clearAllowedValue
     */
    public void clearAllowedValue();
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
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Returns the value of field 'allowedValue' as List. The field
     * 'allowedValue' has the following description:
     * 
     * 
     * @return the value of field 'allowedValue'
     */
    public java.util.List getAllowedValue();
    /**
     * Returns the total number of allowedValue as integer for this
     * facade dom element.
     */
    public int getAllowedValueCount();
    /**
     * Returns the value of field 'attributeID'. The field
     * 'attributeID' has the following description:
     * null
     * 
     * @return the value of field 'attributeID'.
     */
    public java.lang.String getAttributeID();
    /**
     * Returns the value of field 'attributeName'. The field
     * 'attributeName' has the following description:
     * null
     * 
     * @return the value of field 'attributeName'.
     */
    public java.lang.String getAttributeName();
    /**
     * Returns the value of field 'freeTextAllowed'. The field
     * 'freeTextAllowed' has the following description:
     * null
     * 
     * @return the value of field 'freeTextAllowed'.
     */
    public boolean getFreeTextAllowed();
    /**
     * Returns the value of field 'isCommerciallyAffecting'. The
     * field 'isCommerciallyAffecting' has the following
     * description:
     * null
     * 
     * @return the value of field 'isCommerciallyAffecting'.
     */
    public boolean getIsCommerciallyAffecting();
    /**
     * Returns the value of field 'freeTextAllowed'. The field
     * 'freeTextAllowed' has the following description:
     * null
     * 
     * @return the value of field 'freeTextAllowed'.
     */
    public boolean isFreeTextAllowed();
    /**
     * Returns the value of field 'isCommerciallyAffecting'. The
     * field 'isCommerciallyAffecting' has the following
     * description:
     * null
     * 
     * @return the value of field 'isCommerciallyAffecting'.
     */
    public boolean isIsCommerciallyAffecting();
    /**
     * Method removeAllowedValue
     * 
     * @param index
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAllowedAttributeValue removeAllowedValue(int index)
        throws java.lang.IndexOutOfBoundsException;
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
        throws java.lang.IndexOutOfBoundsException;
    /**
     *  Sets the value of 'allowedValue' by copying the given
     * ArrayList. The field has the following description:
     * 
     * 
     * @param allowedValueList the value of field 'allowedValue'.
     */
    public void setAllowedValue(java.util.List allowedValueList);
    /**
     * Sets the value of field 'attributeID'. The field
     * 'attributeID' has the following description:
     * null
     * 
     * @param attributeID the value of field 'attributeID'.
     */
    public void setAttributeID(java.lang.String attributeID);
    /**
     * Sets the value of field 'attributeName'. The field
     * 'attributeName' has the following description:
     * null
     * 
     * @param attributeName the value of field 'attributeName'.
     */
    public void setAttributeName(java.lang.String attributeName);
    /**
     * Sets the value of field 'freeTextAllowed'. The field
     * 'freeTextAllowed' has the following description:
     * null
     * 
     * @param freeTextAllowed the value of field 'freeTextAllowed'.
     */
    public void setFreeTextAllowed(boolean freeTextAllowed);
    /**
     * Sets the value of field 'isCommerciallyAffecting'. The field
     * 'isCommerciallyAffecting' has the following description:
     * null
     * 
     * @param isCommerciallyAffecting the value of field
     * 'isCommerciallyAffecting'.
     */
    public void setIsCommerciallyAffecting(boolean isCommerciallyAffecting);
}
