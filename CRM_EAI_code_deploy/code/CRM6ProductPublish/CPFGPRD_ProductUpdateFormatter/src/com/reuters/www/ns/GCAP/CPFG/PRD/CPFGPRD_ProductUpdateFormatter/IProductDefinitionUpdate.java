/*
 * $Id$
 */

package com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter;

/**
 * Interface IProductDefinitionUpdate.
 * 
 * @version $Revision$ $Date$
 */
public interface IProductDefinitionUpdate {


    //Methods

    /**
     * Method addProductConfiguration
     * 
     * @param vProductConfiguration
     */
    public void addProductConfiguration(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IProductConfiguration vProductConfiguration)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Method clearProductConfiguration
     */
    public void clearProductConfiguration();
    /**
     * Returns the value of field 'actionCode'. The field
     * 'actionCode' has the following description:
     * null
     * 
     * @return the value of field 'actionCode'.
     */
    public java.lang.String getActionCode();
    /**
     * Returns the value of field 'addOns'. The field 'addOns' has
     * the following description:
     * null
     * 
     * @return the value of field 'addOns'.
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOnList getAddOns();
    /**
     * Returns the value of field 'applicationId'. The field
     * 'applicationId' has the following description:
     * null
     * 
     * @return the value of field 'applicationId'.
     */
    public java.lang.String getApplicationId();
    /**
     * Returns the value of field 'attributeDefinitionList'. The
     * field 'attributeDefinitionList' has the following
     * description:
     * null
     * 
     * @return the value of field 'attributeDefinitionList'.
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinitionList getAttributeDefinitionList();
    /**
     * Returns the value of field 'definitionVersion'. The field
     * 'definitionVersion' has the following description:
     * null
     * 
     * @return the value of field 'definitionVersion'.
     */
    public java.lang.String getDefinitionVersion();
    /**
     * Returns the value of field 'freeTrialAllowed'. The field
     * 'freeTrialAllowed' has the following description:
     * null
     * 
     * @return the value of field 'freeTrialAllowed'.
     */
    public boolean getFreeTrialAllowed();
    /**
     * Returns the value of field 'instanceId'. The field
     * 'instanceId' has the following description:
     * null
     * 
     * @return the value of field 'instanceId'.
     */
    public java.lang.String getInstanceId();
    /**
     * Returns the value of field 'messageHistory'. The field
     * 'messageHistory' has the following description:
     * null
     * 
     * @return the value of field 'messageHistory'.
     */
    public java.lang.String getMessageHistory();
    /**
     * Returns the value of field 'messageId'. The field
     * 'messageId' has the following description:
     * null
     * 
     * @return the value of field 'messageId'.
     */
    public java.lang.String getMessageId();
    /**
     * Returns the value of field 'payloadVersion'. The field
     * 'payloadVersion' has the following description:
     * null
     * 
     * @return the value of field 'payloadVersion'.
     */
    public java.lang.String getPayloadVersion();
    /**
     * Returns the value of field 'productConfiguration'. from the
     * specified position(index). The field 'productConfiguration'
     * has the following description:
     * 
     * 
     * @param index
     * @return the value of field 'productConfiguration'. from the
     * specified position(index)
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IProductConfiguration getProductConfiguration(int index)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Returns the value of field 'productConfiguration' as List.
     * The field 'productConfiguration' has the following
     * description:
     * 
     * 
     * @return the value of field 'productConfiguration'
     */
    public java.util.List getProductConfiguration();
    /**
     * Returns the total number of productConfiguration as integer
     * for this facade dom element.
     */
    public int getProductConfigurationCount();
    /**
     * Returns the value of field 'productDescription'. The field
     * 'productDescription' has the following description:
     * null
     * 
     * @return the value of field 'productDescription'.
     */
    public java.lang.String getProductDescription();
    /**
     * Returns the value of field 'productID'. The field
     * 'productID' has the following description:
     * null
     * 
     * @return the value of field 'productID'.
     */
    public java.lang.String getProductID();
    /**
     * Returns the value of field 'productName'. The field
     * 'productName' has the following description:
     * null
     * 
     * @return the value of field 'productName'.
     */
    public java.lang.String getProductName();
    /**
     * Returns the value of field 'productStatus'. The field
     * 'productStatus' has the following description:
     * null
     * 
     * @return the value of field 'productStatus'.
     */
    public java.lang.String getProductStatus();
    /**
     * Returns the value of field 'productType'. The field
     * 'productType' has the following description:
     * null
     * 
     * @return the value of field 'productType'.
     */
    public java.lang.String getProductType();
    /**
     * Returns the value of field 'timeStamp'. The field
     * 'timeStamp' has the following description:
     * null
     * 
     * @return the value of field 'timeStamp'.
     */
    public java.util.Calendar getTimeStamp();
    /**
     * Returns the value of field 'timeToLive'. The field
     * 'timeToLive' has the following description:
     * null
     * 
     * @return the value of field 'timeToLive'.
     */
    public int getTimeToLive();
    /**
     * Returns the value of field 'tracingId'. The field
     * 'tracingId' has the following description:
     * null
     * 
     * @return the value of field 'tracingId'.
     */
    public java.lang.String getTracingId();
    /**
     * Returns the value of field 'transactionId'. The field
     * 'transactionId' has the following description:
     * null
     * 
     * @return the value of field 'transactionId'.
     */
    public java.lang.String getTransactionId();
    /**
     * Returns the value of field 'freeTrialAllowed'. The field
     * 'freeTrialAllowed' has the following description:
     * null
     * 
     * @return the value of field 'freeTrialAllowed'.
     */
    public boolean isFreeTrialAllowed();
    /**
     * Method removeProductConfiguration
     * 
     * @param index
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IProductConfiguration removeProductConfiguration(int index)
        throws java.lang.IndexOutOfBoundsException;
    /**
     * Sets the value of field 'actionCode'. The field 'actionCode'
     * has the following description:
     * null
     * 
     * @param actionCode the value of field 'actionCode'.
     */
    public void setActionCode(java.lang.String actionCode);
    /**
     * Sets the value of field 'addOns'. The field 'addOns' has the
     * following description:
     * null
     * 
     * @param addOns the value of field 'addOns'.
     */
    public void setAddOns(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOnList addOns);
    /**
     * Sets the value of field 'applicationId'. The field
     * 'applicationId' has the following description:
     * null
     * 
     * @param applicationId the value of field 'applicationId'.
     */
    public void setApplicationId(java.lang.String applicationId);
    /**
     * Sets the value of field 'attributeDefinitionList'. The field
     * 'attributeDefinitionList' has the following description:
     * null
     * 
     * @param attributeDefinitionList the value of field
     * 'attributeDefinitionList'.
     */
    public void setAttributeDefinitionList(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinitionList attributeDefinitionList);
    /**
     * Sets the value of field 'definitionVersion'. The field
     * 'definitionVersion' has the following description:
     * null
     * 
     * @param definitionVersion the value of field
     * 'definitionVersion'.
     */
    public void setDefinitionVersion(java.lang.String definitionVersion);
    /**
     * Sets the value of field 'freeTrialAllowed'. The field
     * 'freeTrialAllowed' has the following description:
     * null
     * 
     * @param freeTrialAllowed the value of field 'freeTrialAllowed'
     */
    public void setFreeTrialAllowed(boolean freeTrialAllowed);
    /**
     * Sets the value of field 'instanceId'. The field 'instanceId'
     * has the following description:
     * null
     * 
     * @param instanceId the value of field 'instanceId'.
     */
    public void setInstanceId(java.lang.String instanceId);
    /**
     * Sets the value of field 'messageHistory'. The field
     * 'messageHistory' has the following description:
     * null
     * 
     * @param messageHistory the value of field 'messageHistory'.
     */
    public void setMessageHistory(java.lang.String messageHistory);
    /**
     * Sets the value of field 'messageId'. The field 'messageId'
     * has the following description:
     * null
     * 
     * @param messageId the value of field 'messageId'.
     */
    public void setMessageId(java.lang.String messageId);
    /**
     * Sets the value of field 'payloadVersion'. The field
     * 'payloadVersion' has the following description:
     * null
     * 
     * @param payloadVersion the value of field 'payloadVersion'.
     */
    public void setPayloadVersion(java.lang.String payloadVersion);
    /**
     *  Sets the given value for element'productConfiguration' at
     * the specified position (index).The field has the following
     * description:
     * 
     * 
     * @param index
     * @param vProductConfiguration
     */
    public void setProductConfiguration(int index, com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IProductConfiguration vProductConfiguration)
        throws java.lang.IndexOutOfBoundsException;
    /**
     *  Sets the value of 'productConfiguration' by copying the
     * given ArrayList. The field has the following description:
     * 
     * 
     * @param productConfigurationList the value of field
     * 'productConfiguration'.
     */
    public void setProductConfiguration(java.util.List productConfigurationList);
    /**
     * Sets the value of field 'productDescription'. The field
     * 'productDescription' has the following description:
     * null
     * 
     * @param productDescription the value of field
     * 'productDescription'.
     */
    public void setProductDescription(java.lang.String productDescription);
    /**
     * Sets the value of field 'productID'. The field 'productID'
     * has the following description:
     * null
     * 
     * @param productID the value of field 'productID'.
     */
    public void setProductID(java.lang.String productID);
    /**
     * Sets the value of field 'productName'. The field
     * 'productName' has the following description:
     * null
     * 
     * @param productName the value of field 'productName'.
     */
    public void setProductName(java.lang.String productName);
    /**
     * Sets the value of field 'productStatus'. The field
     * 'productStatus' has the following description:
     * null
     * 
     * @param productStatus the value of field 'productStatus'.
     */
    public void setProductStatus(java.lang.String productStatus);
    /**
     * Sets the value of field 'productType'. The field
     * 'productType' has the following description:
     * null
     * 
     * @param productType the value of field 'productType'.
     */
    public void setProductType(java.lang.String productType);
    /**
     * Sets the value of field 'timeStamp'. The field 'timeStamp'
     * has the following description:
     * null
     * 
     * @param timeStamp the value of field 'timeStamp'.
     */
    public void setTimeStamp(java.util.Calendar timeStamp);
    /**
     * Sets the value of field 'timeToLive'. The field 'timeToLive'
     * has the following description:
     * null
     * 
     * @param timeToLive the value of field 'timeToLive'.
     */
    public void setTimeToLive(int timeToLive);
    /**
     * Sets the value of field 'tracingId'. The field 'tracingId'
     * has the following description:
     * null
     * 
     * @param tracingId the value of field 'tracingId'.
     */
    public void setTracingId(java.lang.String tracingId);
    /**
     * Sets the value of field 'transactionId'. The field
     * 'transactionId' has the following description:
     * null
     * 
     * @param transactionId the value of field 'transactionId'.
     */
    public void setTransactionId(java.lang.String transactionId);
}
