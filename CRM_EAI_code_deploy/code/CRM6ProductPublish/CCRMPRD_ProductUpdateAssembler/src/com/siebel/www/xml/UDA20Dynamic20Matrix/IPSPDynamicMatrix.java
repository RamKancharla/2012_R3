/*
 * $Id$
 */

package com.siebel.www.xml.UDA20Dynamic20Matrix;

/**
 * Interface IPSPDynamicMatrix.
 * 
 * @version $Revision$ $Date$
 */
public interface IPSPDynamicMatrix {


    //Methods

    /**
     * Method addPSPDynamicMatrixDimension
     * 
     * @param vPSPDynamicMatrixDimension
     */
    public void addPSPDynamicMatrixDimension(com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimension vPSPDynamicMatrixDimension)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Method addPSPDynamicMatrixRule
     * 
     * @param vPSPDynamicMatrixRule
     */
    public void addPSPDynamicMatrixRule(com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixRule vPSPDynamicMatrixRule)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Method addPSPDynamicMatrixVariableMap
     * 
     * @param vPSPDynamicMatrixVariableMap
     */
    public void addPSPDynamicMatrixVariableMap(com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixVariableMap vPSPDynamicMatrixVariableMap)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Method clearPSPDynamicMatrixDimension
     */
    public void clearPSPDynamicMatrixDimension();
    /**
     * Method clearPSPDynamicMatrixRule
     */
    public void clearPSPDynamicMatrixRule();
    /**
     * Method clearPSPDynamicMatrixVariableMap
     */
    public void clearPSPDynamicMatrixVariableMap();
    /**
     * Returns the value of field 'className'. The field
     * 'className' has the following description:
     * null
     * 
     * @return the value of field 'className'.
     */
    public java.lang.String getClassName();
    /**
     * Returns the value of field 'conflictId'. The field
     * 'conflictId' has the following description:
     * null
     * 
     * @return the value of field 'conflictId'.
     */
    public java.lang.String getConflictId();
    /**
     * Returns the value of field 'created'. The field 'created'
     * has the following description:
     * null
     * 
     * @return the value of field 'created'.
     */
    public java.lang.String getCreated();
    /**
     * Returns the value of field 'currencyCode'. The field
     * 'currencyCode' has the following description:
     * null
     * 
     * @return the value of field 'currencyCode'.
     */
    public java.lang.String getCurrencyCode();
    /**
     * Returns the value of field 'defaultAdjustmentType'. The
     * field 'defaultAdjustmentType' has the following description:
     * null
     * 
     * @return the value of field 'defaultAdjustmentType'.
     */
    public java.lang.String getDefaultAdjustmentType();
    /**
     * Returns the value of field 'description'. The field
     * 'description' has the following description:
     * null
     * 
     * @return the value of field 'description'.
     */
    public java.lang.String getDescription();
    /**
     * Returns the value of field 'effectiveEndDate'. The field
     * 'effectiveEndDate' has the following description:
     * null
     * 
     * @return the value of field 'effectiveEndDate'.
     */
    public java.lang.String getEffectiveEndDate();
    /**
     * Returns the value of field 'effectiveStartDate'. The field
     * 'effectiveStartDate' has the following description:
     * null
     * 
     * @return the value of field 'effectiveStartDate'.
     */
    public java.lang.String getEffectiveStartDate();
    /**
     * Returns the value of field 'exchangeDate'. The field
     * 'exchangeDate' has the following description:
     * null
     * 
     * @return the value of field 'exchangeDate'.
     */
    public java.lang.String getExchangeDate();
    /**
     * Returns the value of field 'id'. The field 'id' has the
     * following description:
     * null
     * 
     * @return the value of field 'id'.
     */
    public java.lang.String getId();
    /**
     * Returns the value of field 'invalidCombinationErrorFlag'.
     * The field 'invalidCombinationErrorFlag' has the following
     * description:
     * null
     * 
     * @return the value of field 'invalidCombinationErrorFlag'.
     */
    public java.lang.String getInvalidCombinationErrorFlag();
    /**
     * Returns the value of field 'matrixName'. The field
     * 'matrixName' has the following description:
     * null
     * 
     * @return the value of field 'matrixName'.
     */
    public java.lang.String getMatrixName();
    /**
     * Returns the value of field 'matrixType'. The field
     * 'matrixType' has the following description:
     * null
     * 
     * @return the value of field 'matrixType'.
     */
    public java.lang.String getMatrixType();
    /**
     * Returns the value of field 'modId'. The field 'modId' has
     * the following description:
     * null
     * 
     * @return the value of field 'modId'.
     */
    public java.lang.String getModId();
    /**
     * Returns the value of field 'PSPDynamicMatrixDimension'. from
     * the specified position(index). The field
     * 'PSPDynamicMatrixDimension' has the following description:
     * 
     * 
     * @param index
     * @return the value of field 'PSPDynamicMatrixDimension'. from
     * the specified position(index)
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimension getPSPDynamicMatrixDimension(int index)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Returns the value of field 'PSPDynamicMatrixDimension' as
     * List. The field 'PSPDynamicMatrixDimension' has the
     * following description:
     * 
     * 
     * @return the value of field 'PSPDynamicMatrixDimension'
     */
    public java.util.List getPSPDynamicMatrixDimension();
    /**
     * Returns the total number of PSPDynamicMatrixDimension as
     * integer for this facade dom element.
     */
    public int getPSPDynamicMatrixDimensionCount();
    /**
     * Returns the value of field 'PSPDynamicMatrixRule'. from the
     * specified position(index). The field 'PSPDynamicMatrixRule'
     * has the following description:
     * 
     * 
     * @param index
     * @return the value of field 'PSPDynamicMatrixRule'. from the
     * specified position(index)
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixRule getPSPDynamicMatrixRule(int index)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Returns the value of field 'PSPDynamicMatrixRule' as List.
     * The field 'PSPDynamicMatrixRule' has the following
     * description:
     * 
     * 
     * @return the value of field 'PSPDynamicMatrixRule'
     */
    public java.util.List getPSPDynamicMatrixRule();
    /**
     * Returns the total number of PSPDynamicMatrixRule as integer
     * for this facade dom element.
     */
    public int getPSPDynamicMatrixRuleCount();
    /**
     * Returns the value of field 'PSPDynamicMatrixVariableMap'.
     * from the specified position(index). The field
     * 'PSPDynamicMatrixVariableMap' has the following description:
     * 
     * 
     * @param index
     * @return the value of field 'PSPDynamicMatrixVariableMap'.
     * from the specified position(index)
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixVariableMap getPSPDynamicMatrixVariableMap(int index)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Returns the value of field 'PSPDynamicMatrixVariableMap' as
     * List. The field 'PSPDynamicMatrixVariableMap' has the
     * following description:
     * 
     * 
     * @return the value of field 'PSPDynamicMatrixVariableMap'
     */
    public java.util.List getPSPDynamicMatrixVariableMap();
    /**
     * Returns the total number of PSPDynamicMatrixVariableMap as
     * integer for this facade dom element.
     */
    public int getPSPDynamicMatrixVariableMapCount();
    /**
     * Returns the value of field 'prodIntegrationId'. The field
     * 'prodIntegrationId' has the following description:
     * null
     * 
     * @return the value of field 'prodIntegrationId'.
     */
    public java.lang.String getProdIntegrationId();
    /**
     * Returns the value of field 'refreshTimestamp'. The field
     * 'refreshTimestamp' has the following description:
     * null
     * 
     * @return the value of field 'refreshTimestamp'.
     */
    public java.lang.String getRefreshTimestamp();
    /**
     * Returns the value of field 'updated'. The field 'updated'
     * has the following description:
     * null
     * 
     * @return the value of field 'updated'.
     */
    public java.lang.String getUpdated();
    /**
     * Method removePSPDynamicMatrixDimension
     * 
     * @param index
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimension removePSPDynamicMatrixDimension(int index)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Method removePSPDynamicMatrixRule
     * 
     * @param index
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixRule removePSPDynamicMatrixRule(int index)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Method removePSPDynamicMatrixVariableMap
     * 
     * @param index
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixVariableMap removePSPDynamicMatrixVariableMap(int index)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Sets the value of field 'className'. The field 'className'
     * has the following description:
     * null
     * 
     * @param className the value of field 'className'.
     */
    public void setClassName(java.lang.String className);
    /**
     * Sets the value of field 'conflictId'. The field 'conflictId'
     * has the following description:
     * null
     * 
     * @param conflictId the value of field 'conflictId'.
     */
    public void setConflictId(java.lang.String conflictId);
    /**
     * Sets the value of field 'created'. The field 'created' has
     * the following description:
     * null
     * 
     * @param created the value of field 'created'.
     */
    public void setCreated(java.lang.String created);
    /**
     * Sets the value of field 'currencyCode'. The field
     * 'currencyCode' has the following description:
     * null
     * 
     * @param currencyCode the value of field 'currencyCode'.
     */
    public void setCurrencyCode(java.lang.String currencyCode);
    /**
     * Sets the value of field 'defaultAdjustmentType'. The field
     * 'defaultAdjustmentType' has the following description:
     * null
     * 
     * @param defaultAdjustmentType the value of field
     * 'defaultAdjustmentType'.
     */
    public void setDefaultAdjustmentType(java.lang.String defaultAdjustmentType);
    /**
     * Sets the value of field 'description'. The field
     * 'description' has the following description:
     * null
     * 
     * @param description the value of field 'description'.
     */
    public void setDescription(java.lang.String description);
    /**
     * Sets the value of field 'effectiveEndDate'. The field
     * 'effectiveEndDate' has the following description:
     * null
     * 
     * @param effectiveEndDate the value of field 'effectiveEndDate'
     */
    public void setEffectiveEndDate(java.lang.String effectiveEndDate);
    /**
     * Sets the value of field 'effectiveStartDate'. The field
     * 'effectiveStartDate' has the following description:
     * null
     * 
     * @param effectiveStartDate the value of field
     * 'effectiveStartDate'.
     */
    public void setEffectiveStartDate(java.lang.String effectiveStartDate);
    /**
     * Sets the value of field 'exchangeDate'. The field
     * 'exchangeDate' has the following description:
     * null
     * 
     * @param exchangeDate the value of field 'exchangeDate'.
     */
    public void setExchangeDate(java.lang.String exchangeDate);
    /**
     * Sets the value of field 'id'. The field 'id' has the
     * following description:
     * null
     * 
     * @param id the value of field 'id'.
     */
    public void setId(java.lang.String id);
    /**
     * Sets the value of field 'invalidCombinationErrorFlag'. The
     * field 'invalidCombinationErrorFlag' has the following
     * description:
     * null
     * 
     * @param invalidCombinationErrorFlag the value of field
     * 'invalidCombinationErrorFlag'.
     */
    public void setInvalidCombinationErrorFlag(java.lang.String invalidCombinationErrorFlag);
    /**
     * Sets the value of field 'matrixName'. The field 'matrixName'
     * has the following description:
     * null
     * 
     * @param matrixName the value of field 'matrixName'.
     */
    public void setMatrixName(java.lang.String matrixName);
    /**
     * Sets the value of field 'matrixType'. The field 'matrixType'
     * has the following description:
     * null
     * 
     * @param matrixType the value of field 'matrixType'.
     */
    public void setMatrixType(java.lang.String matrixType);
    /**
     * Sets the value of field 'modId'. The field 'modId' has the
     * following description:
     * null
     * 
     * @param modId the value of field 'modId'.
     */
    public void setModId(java.lang.String modId);
    /**
     *  Sets the given value for element'PSPDynamicMatrixDimension'
     * at the specified position (index).The field has the
     * following description:
     * 
     * 
     * @param index
     * @param vPSPDynamicMatrixDimension
     */
    public void setPSPDynamicMatrixDimension(int index, com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimension vPSPDynamicMatrixDimension)
        throws java.lang.IndexOutOfBoundsException;
    /**
     *  Sets the value of 'PSPDynamicMatrixDimension' by copying
     * the given ArrayList. The field has the following
     * description:
     * 
     * 
     * @param PSPDynamicMatrixDimensionList the value of field
     * 'PSPDynamicMatrixDimension'.
     */
    public void setPSPDynamicMatrixDimension(java.util.List PSPDynamicMatrixDimensionList);
    /**
     *  Sets the given value for element'PSPDynamicMatrixRule' at
     * the specified position (index).The field has the following
     * description:
     * 
     * 
     * @param index
     * @param vPSPDynamicMatrixRule
     */
    public void setPSPDynamicMatrixRule(int index, com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixRule vPSPDynamicMatrixRule)
        throws java.lang.IndexOutOfBoundsException;
    /**
     *  Sets the value of 'PSPDynamicMatrixRule' by copying the
     * given ArrayList. The field has the following description:
     * 
     * 
     * @param PSPDynamicMatrixRuleList the value of field
     * 'PSPDynamicMatrixRule'.
     */
    public void setPSPDynamicMatrixRule(java.util.List PSPDynamicMatrixRuleList);
    /**
     *  Sets the given value for
     * element'PSPDynamicMatrixVariableMap' at the specified
     * position (index).The field has the following description:
     * 
     * 
     * @param index
     * @param vPSPDynamicMatrixVariableMap
     */
    public void setPSPDynamicMatrixVariableMap(int index, com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixVariableMap vPSPDynamicMatrixVariableMap)
        throws java.lang.IndexOutOfBoundsException;
    /**
     *  Sets the value of 'PSPDynamicMatrixVariableMap' by copying
     * the given ArrayList. The field has the following
     * description:
     * 
     * 
     * @param PSPDynamicMatrixVariableMapList the value of field
     * 'PSPDynamicMatrixVariableMap'.
     */
    public void setPSPDynamicMatrixVariableMap(java.util.List PSPDynamicMatrixVariableMapList);
    /**
     * Sets the value of field 'prodIntegrationId'. The field
     * 'prodIntegrationId' has the following description:
     * null
     * 
     * @param prodIntegrationId the value of field
     * 'prodIntegrationId'.
     */
    public void setProdIntegrationId(java.lang.String prodIntegrationId);
    /**
     * Sets the value of field 'refreshTimestamp'. The field
     * 'refreshTimestamp' has the following description:
     * null
     * 
     * @param refreshTimestamp the value of field 'refreshTimestamp'
     */
    public void setRefreshTimestamp(java.lang.String refreshTimestamp);
    /**
     * Sets the value of field 'updated'. The field 'updated' has
     * the following description:
     * null
     * 
     * @param updated the value of field 'updated'.
     */
    public void setUpdated(java.lang.String updated);
}
