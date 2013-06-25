/*
 * $Id$
 */

package com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter;

/**
 * Interface IProductConfiguration.
 * 
 * @version $Revision$ $Date$
 */
public interface IProductConfiguration {


    //Methods

    /**
     * Method addAttribute
     * 
     * @param vAttribute
     */
    public void addAttribute(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttribute vAttribute)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Method clearAttribute
     */
    public void clearAttribute();
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
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Returns the value of field 'attribute' as List. The field
     * 'attribute' has the following description:
     * 
     * 
     * @return the value of field 'attribute'
     */
    public java.util.List getAttribute();
    /**
     * Returns the total number of attribute as integer for this
     * facade dom element.
     */
    public int getAttributeCount();
    /**
     * Returns the value of field 'configurationID'. The field
     * 'configurationID' has the following description:
     * null
     * 
     * @return the value of field 'configurationID'.
     */
    public int getConfigurationID();
    /**
     * Returns the value of field 'description'. The field
     * 'description' has the following description:
     * null
     * 
     * @return the value of field 'description'.
     */
    public java.lang.String getDescription();
    /**
     * Returns the value of field 'globalPLI'. The field
     * 'globalPLI' has the following description:
     * null
     * 
     * @return the value of field 'globalPLI'.
     */
    public java.lang.String getGlobalPLI();
    /**
     * Returns the value of field 'permissioningSystem'. The field
     * 'permissioningSystem' has the following description:
     * null
     * 
     * @return the value of field 'permissioningSystem'.
     */
    public java.lang.String getPermissioningSystem();
    /**
     * Method removeAttribute
     * 
     * @param index
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttribute removeAttribute(int index)
        throws java.lang.IndexOutOfBoundsException;
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
        throws java.lang.IndexOutOfBoundsException;
    /**
     *  Sets the value of 'attribute' by copying the given
     * ArrayList. The field has the following description:
     * 
     * 
     * @param attributeList the value of field 'attribute'.
     */
    public void setAttribute(java.util.List attributeList);
    /**
     * Sets the value of field 'configurationID'. The field
     * 'configurationID' has the following description:
     * null
     * 
     * @param configurationID the value of field 'configurationID'.
     */
    public void setConfigurationID(int configurationID);
    /**
     * Sets the value of field 'description'. The field
     * 'description' has the following description:
     * null
     * 
     * @param description the value of field 'description'.
     */
    public void setDescription(java.lang.String description);
    /**
     * Sets the value of field 'globalPLI'. The field 'globalPLI'
     * has the following description:
     * null
     * 
     * @param globalPLI the value of field 'globalPLI'.
     */
    public void setGlobalPLI(java.lang.String globalPLI);
    /**
     * Sets the value of field 'permissioningSystem'. The field
     * 'permissioningSystem' has the following description:
     * null
     * 
     * @param permissioningSystem the value of field
     * 'permissioningSystem'.
     */
    public void setPermissioningSystem(java.lang.String permissioningSystem);
}
