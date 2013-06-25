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
public class ProductDefinitionUpdate extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IProductDefinitionUpdate
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public ProductDefinitionUpdate() {
        super();
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductDefinitionUpdate()

    public ProductDefinitionUpdate(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductDefinitionUpdate(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductDefinitionUpdate";
    } 

    /**
     * Method addProductConfiguration
     * 
     * @param vProductConfiguration
     */
    public void addProductConfiguration(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IProductConfiguration vProductConfiguration)
        throws java.lang.IndexOutOfBoundsException
    {
        super.addChildElement( "productConfiguration",null,vProductConfiguration);
    } 

    /**
     * Method clearProductConfiguration
     */
    public void clearProductConfiguration()
    {
        super.clearChildElements( "productConfiguration",null);
    } 

    /**
     * Returns the value of field 'actionCode'. The field
     * 'actionCode' has the following description:
     * null
     * 
     * @return the value of field 'actionCode'.
     */
    public java.lang.String getActionCode()
    {
        java.lang.String childValue = super.getChildElementValue( "actionCode", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'addOns'. The field 'addOns' has
     * the following description:
     * null
     * 
     * @return the value of field 'addOns'.
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOnList getAddOns()
    {
        org.w3c.dom.Element childValue = super.getChildElement( "addOns", null);
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOnList value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOnList(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'applicationId'. The field
     * 'applicationId' has the following description:
     * null
     * 
     * @return the value of field 'applicationId'.
     */
    public java.lang.String getApplicationId()
    {
        java.lang.String childValue = super.getChildElementValue( "applicationId", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'attributeDefinitionList'. The
     * field 'attributeDefinitionList' has the following
     * description:
     * null
     * 
     * @return the value of field 'attributeDefinitionList'.
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinitionList getAttributeDefinitionList()
    {
        org.w3c.dom.Element childValue = super.getChildElement( "attributeDefinitionList", null);
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinitionList value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AttributeDefinitionList(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'definitionVersion'. The field
     * 'definitionVersion' has the following description:
     * null
     * 
     * @return the value of field 'definitionVersion'.
     */
    public java.lang.String getDefinitionVersion()
    {
        java.lang.String childValue = super.getChildElementValue( "definitionVersion", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'freeTrialAllowed'. The field
     * 'freeTrialAllowed' has the following description:
     * null
     * 
     * @return the value of field 'freeTrialAllowed'.
     */
    public boolean getFreeTrialAllowed()
    {
        java.lang.String childValue = super.getChildElementValue( "freeTrialAllowed", null);
        if( childValue != null ) {
            boolean value =  com.collaxa.cube.xml.schema.XMLSchemaUtils.parseBoolean( childValue);
            return value;
        }
        throw new java.util.NoSuchElementException("Node \"{null}freeTrialAllowed\" does not exist in xml, please verify the xml content for this facade object.To get the xml content, use toString() method on the facade object.");
    } 

    /**
     * Returns the value of field 'instanceId'. The field
     * 'instanceId' has the following description:
     * null
     * 
     * @return the value of field 'instanceId'.
     */
    public java.lang.String getInstanceId()
    {
        java.lang.String childValue = super.getChildElementValue( "instanceId", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'messageHistory'. The field
     * 'messageHistory' has the following description:
     * null
     * 
     * @return the value of field 'messageHistory'.
     */
    public java.lang.String getMessageHistory()
    {
        java.lang.String childValue = super.getChildElementValue( "messageHistory", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'messageId'. The field
     * 'messageId' has the following description:
     * null
     * 
     * @return the value of field 'messageId'.
     */
    public java.lang.String getMessageId()
    {
        java.lang.String childValue = super.getChildElementValue( "messageId", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'payloadVersion'. The field
     * 'payloadVersion' has the following description:
     * null
     * 
     * @return the value of field 'payloadVersion'.
     */
    public java.lang.String getPayloadVersion()
    {
        java.lang.String childValue = super.getChildElementValue( "payloadVersion", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

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
        throws java.lang.IndexOutOfBoundsException
    {
        //-- check bounds for index
        if ((index < 0) || (index > super.numberOfChildElements("productConfiguration",null))) {
            throw new IndexOutOfBoundsException();
        }
        
        org.w3c.dom.Element childValue = super.getChildElement( "productConfiguration", null, index);
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductConfiguration value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductConfiguration(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'productConfiguration' as List.
     * The field 'productConfiguration' has the following
     * description:
     * 
     * 
     * @return the value of field 'productConfiguration'
     */
    public java.util.List getProductConfiguration()
    {
        java.util.List list = new java.util.ArrayList( );
        int size = super.numberOfChildElements("productConfiguration",null);
        for (int index = 0; index < size; index++) {
            org.w3c.dom.Element childValue = super.getChildElement( "productConfiguration", null, index);
            if( childValue != null ) {
                com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductConfiguration value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductConfiguration(childValue);
                Object valueObject = com.collaxa.cube.xml.schema.XMLSchemaUtils.convertToObject( value );
                list.add( valueObject );
            }
        }
        return list;
    } 

    /**
     * Returns the total number of productConfiguration as integer
     * for this facade dom element.
     */
    public int getProductConfigurationCount()
    {
        return super.numberOfChildElements("productConfiguration",null);
    } 

    /**
     * Returns the value of field 'productDescription'. The field
     * 'productDescription' has the following description:
     * null
     * 
     * @return the value of field 'productDescription'.
     */
    public java.lang.String getProductDescription()
    {
        java.lang.String childValue = super.getChildElementValue( "productDescription", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
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
        java.lang.String childValue = super.getChildElementValue( "productID", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'productName'. The field
     * 'productName' has the following description:
     * null
     * 
     * @return the value of field 'productName'.
     */
    public java.lang.String getProductName()
    {
        java.lang.String childValue = super.getChildElementValue( "productName", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'productStatus'. The field
     * 'productStatus' has the following description:
     * null
     * 
     * @return the value of field 'productStatus'.
     */
    public java.lang.String getProductStatus()
    {
        java.lang.String childValue = super.getChildElementValue( "productStatus", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'productType'. The field
     * 'productType' has the following description:
     * null
     * 
     * @return the value of field 'productType'.
     */
    public java.lang.String getProductType()
    {
        java.lang.String childValue = super.getChildElementValue( "productType", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'timeStamp'. The field
     * 'timeStamp' has the following description:
     * null
     * 
     * @return the value of field 'timeStamp'.
     */
    public java.util.Calendar getTimeStamp()
    {
        java.lang.String childValue = super.getChildElementValue( "timeStamp", null);
        if( childValue != null ) {
            java.util.Calendar value =  com.collaxa.cube.xml.schema.XMLSchemaUtils.parseDateTime(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'timeToLive'. The field
     * 'timeToLive' has the following description:
     * null
     * 
     * @return the value of field 'timeToLive'.
     */
    public int getTimeToLive()
    {
        java.lang.String childValue = super.getChildElementValue( "timeToLive", null);
        if( childValue != null ) {
            int value =  com.collaxa.cube.xml.schema.XMLSchemaUtils.parseInt( childValue);
            return value;
        }
        throw new java.util.NoSuchElementException("Node \"{null}timeToLive\" does not exist in xml, please verify the xml content for this facade object.To get the xml content, use toString() method on the facade object.");
    } 

    /**
     * Returns the value of field 'tracingId'. The field
     * 'tracingId' has the following description:
     * null
     * 
     * @return the value of field 'tracingId'.
     */
    public java.lang.String getTracingId()
    {
        java.lang.String childValue = super.getChildElementValue( "tracingId", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'transactionId'. The field
     * 'transactionId' has the following description:
     * null
     * 
     * @return the value of field 'transactionId'.
     */
    public java.lang.String getTransactionId()
    {
        java.lang.String childValue = super.getChildElementValue( "transactionId", null);
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'freeTrialAllowed'. The field
     * 'freeTrialAllowed' has the following description:
     * null
     * 
     * @return the value of field 'freeTrialAllowed'.
     */
    public boolean isFreeTrialAllowed()
    {
        java.lang.String childValue = super.getChildElementValue( "freeTrialAllowed", null);
        if( childValue != null ) {
            boolean value =  com.collaxa.cube.xml.schema.XMLSchemaUtils.parseBoolean( childValue);
            return value;
        }
        throw new java.util.NoSuchElementException("Node \"{null}freeTrialAllowed\" does not exist in xml, please verify the xml content for this facade object.To get the xml content, use toString() method on the facade object.");
    } 

    /**
     * Method removeProductConfiguration
     * 
     * @param index
     */
    public com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IProductConfiguration removeProductConfiguration(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        org.w3c.dom.Element childValue = super.getChildElement( "productConfiguration", null, index);
        super.removeChildElement("productConfiguration",null,index );
        if( childValue != null ) {
            com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IProductConfiguration value =  new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.ProductConfiguration(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Sets the value of field 'actionCode'. The field 'actionCode'
     * has the following description:
     * null
     * 
     * @param actionCode the value of field 'actionCode'.
     */
    public void setActionCode(java.lang.String actionCode)
    {
        super.setChildElementValue( "actionCode", null, actionCode );
    } 

    /**
     * Sets the value of field 'addOns'. The field 'addOns' has the
     * following description:
     * null
     * 
     * @param addOns the value of field 'addOns'.
     */
    public void setAddOns(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAddOnList addOns)
    {
        super.setChildElementValue( "addOns", null, addOns );
    } 

    /**
     * Sets the value of field 'applicationId'. The field
     * 'applicationId' has the following description:
     * null
     * 
     * @param applicationId the value of field 'applicationId'.
     */
    public void setApplicationId(java.lang.String applicationId)
    {
        super.setChildElementValue( "applicationId", null, applicationId );
    } 

    /**
     * Sets the value of field 'attributeDefinitionList'. The field
     * 'attributeDefinitionList' has the following description:
     * null
     * 
     * @param attributeDefinitionList the value of field
     * 'attributeDefinitionList'.
     */
    public void setAttributeDefinitionList(com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.IAttributeDefinitionList attributeDefinitionList)
    {
        super.setChildElementValue( "attributeDefinitionList", null, attributeDefinitionList );
    } 

    /**
     * Sets the value of field 'definitionVersion'. The field
     * 'definitionVersion' has the following description:
     * null
     * 
     * @param definitionVersion the value of field
     * 'definitionVersion'.
     */
    public void setDefinitionVersion(java.lang.String definitionVersion)
    {
        super.setChildElementValue( "definitionVersion", null, definitionVersion );
    } 

    /**
     * Sets the value of field 'freeTrialAllowed'. The field
     * 'freeTrialAllowed' has the following description:
     * null
     * 
     * @param freeTrialAllowed the value of field 'freeTrialAllowed'
     */
    public void setFreeTrialAllowed(boolean freeTrialAllowed)
    {
        super.setChildElementValue( "freeTrialAllowed", null, freeTrialAllowed );
    } 

    /**
     * Sets the value of field 'instanceId'. The field 'instanceId'
     * has the following description:
     * null
     * 
     * @param instanceId the value of field 'instanceId'.
     */
    public void setInstanceId(java.lang.String instanceId)
    {
        super.setChildElementValue( "instanceId", null, instanceId );
    } 

    /**
     * Sets the value of field 'messageHistory'. The field
     * 'messageHistory' has the following description:
     * null
     * 
     * @param messageHistory the value of field 'messageHistory'.
     */
    public void setMessageHistory(java.lang.String messageHistory)
    {
        super.setChildElementValue( "messageHistory", null, messageHistory );
    } 

    /**
     * Sets the value of field 'messageId'. The field 'messageId'
     * has the following description:
     * null
     * 
     * @param messageId the value of field 'messageId'.
     */
    public void setMessageId(java.lang.String messageId)
    {
        super.setChildElementValue( "messageId", null, messageId );
    } 

    /**
     * Sets the value of field 'payloadVersion'. The field
     * 'payloadVersion' has the following description:
     * null
     * 
     * @param payloadVersion the value of field 'payloadVersion'.
     */
    public void setPayloadVersion(java.lang.String payloadVersion)
    {
        super.setChildElementValue( "payloadVersion", null, payloadVersion );
    } 

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
        throws java.lang.IndexOutOfBoundsException
    {
        int size = super.numberOfChildElements("productConfiguration",null);
        //-- check bounds for index
        if ((index < 0) || (index > size )) {
            throw new IndexOutOfBoundsException();
        }
        super.setChildElementValue( "productConfiguration", "null", index, vProductConfiguration);
    } 

    /**
     *  Sets the value of 'productConfiguration' by copying the
     * given ArrayList. The field has the following description:
     * 
     * 
     * @param productConfigurationList the value of field
     * 'productConfiguration'.
     */
    public void setProductConfiguration(java.util.List productConfigurationList)
    {
        //-- copy collection
        super.clearChildElements( "productConfiguration",null);
        for (int i = 0; i < productConfigurationList.size(); i++) {
            super.addChildElement( "productConfiguration",null,productConfigurationList.get(i));
        }
    } 

    /**
     * Sets the value of field 'productDescription'. The field
     * 'productDescription' has the following description:
     * null
     * 
     * @param productDescription the value of field
     * 'productDescription'.
     */
    public void setProductDescription(java.lang.String productDescription)
    {
        super.setChildElementValue( "productDescription", null, productDescription );
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
        super.setChildElementValue( "productID", null, productID );
    } 

    /**
     * Sets the value of field 'productName'. The field
     * 'productName' has the following description:
     * null
     * 
     * @param productName the value of field 'productName'.
     */
    public void setProductName(java.lang.String productName)
    {
        super.setChildElementValue( "productName", null, productName );
    } 

    /**
     * Sets the value of field 'productStatus'. The field
     * 'productStatus' has the following description:
     * null
     * 
     * @param productStatus the value of field 'productStatus'.
     */
    public void setProductStatus(java.lang.String productStatus)
    {
        super.setChildElementValue( "productStatus", null, productStatus );
    } 

    /**
     * Sets the value of field 'productType'. The field
     * 'productType' has the following description:
     * null
     * 
     * @param productType the value of field 'productType'.
     */
    public void setProductType(java.lang.String productType)
    {
        super.setChildElementValue( "productType", null, productType );
    } 

    /**
     * Sets the value of field 'timeStamp'. The field 'timeStamp'
     * has the following description:
     * null
     * 
     * @param timeStamp the value of field 'timeStamp'.
     */
    public void setTimeStamp(java.util.Calendar timeStamp)
    {
        super.setChildElementValue( "timeStamp", null, timeStamp );
    } 

    /**
     * Sets the value of field 'timeToLive'. The field 'timeToLive'
     * has the following description:
     * null
     * 
     * @param timeToLive the value of field 'timeToLive'.
     */
    public void setTimeToLive(int timeToLive)
    {
        super.setChildElementValue( "timeToLive", null, timeToLive );
    } 

    /**
     * Sets the value of field 'tracingId'. The field 'tracingId'
     * has the following description:
     * null
     * 
     * @param tracingId the value of field 'tracingId'.
     */
    public void setTracingId(java.lang.String tracingId)
    {
        super.setChildElementValue( "tracingId", null, tracingId );
    } 

    /**
     * Sets the value of field 'transactionId'. The field
     * 'transactionId' has the following description:
     * null
     * 
     * @param transactionId the value of field 'transactionId'.
     */
    public void setTransactionId(java.lang.String transactionId)
    {
        super.setChildElementValue( "transactionId", null, transactionId );
    } 

}
