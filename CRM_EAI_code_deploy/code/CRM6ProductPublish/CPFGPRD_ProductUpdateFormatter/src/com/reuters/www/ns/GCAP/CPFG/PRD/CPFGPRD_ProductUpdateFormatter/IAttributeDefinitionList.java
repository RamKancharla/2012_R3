/*
 * $Id$
 */

package com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter;

/**
 * Interface IAttributeDefinitionList.
 * 
 * @version $Revision$ $Date$
 */
public interface IAttributeDefinitionList {


    //Methods

    /**
     * Method addAttributeDefinition
     * 
     * @param vAttributeDefinition
     */
    public void addAttributeDefinition(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinition vAttributeDefinition)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Method clearAttributeDefinition
     */
    public void clearAttributeDefinition();
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
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Returns the value of field 'attributeDefinition' as List.
     * The field 'attributeDefinition' has the following
     * description:
     * 
     * 
     * @return the value of field 'attributeDefinition'
     */
    public java.util.List getAttributeDefinition();
    /**
     * Returns the total number of attributeDefinition as integer
     * for this facade dom element.
     */
    public int getAttributeDefinitionCount();
    /**
     * Method removeAttributeDefinition
     * 
     * @param index
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinition removeAttributeDefinition(int index)
        throws java.lang.IndexOutOfBoundsException;
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
        throws java.lang.IndexOutOfBoundsException;
    /**
     *  Sets the value of 'attributeDefinition' by copying the
     * given ArrayList. The field has the following description:
     * 
     * 
     * @param attributeDefinitionList the value of field
     * 'attributeDefinition'.
     */
    public void setAttributeDefinition(java.util.List attributeDefinitionList);
}
