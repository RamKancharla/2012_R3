// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement;


public class _CSOrderStatus implements java.io.Serializable {
    protected com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSEaiHeader eaiHeader;
    protected com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSBasicResponse parsingStatus;
    protected java.lang.String logicalCountry;
    protected com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSMessageHeader messageHeader;
    protected com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSResponseOrderHeader orderHeader;
    protected com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSResponseOLI[] orderLineItem;
    
    public _CSOrderStatus() {
    }
    
    public com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSEaiHeader getEaiHeader() {
        return eaiHeader;
    }
    
    public void setEaiHeader(com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSEaiHeader eaiHeader) {
        this.eaiHeader = eaiHeader;
    }
    
    public com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSBasicResponse getParsingStatus() {
        return parsingStatus;
    }
    
    public void setParsingStatus(com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSBasicResponse parsingStatus) {
        this.parsingStatus = parsingStatus;
    }
    
    public java.lang.String getLogicalCountry() {
        return logicalCountry;
    }
    
    public void setLogicalCountry(java.lang.String logicalCountry) {
        this.logicalCountry = logicalCountry;
    }
    
    public com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSMessageHeader getMessageHeader() {
        return messageHeader;
    }
    
    public void setMessageHeader(com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSMessageHeader messageHeader) {
        this.messageHeader = messageHeader;
    }
    
    public com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSResponseOrderHeader getOrderHeader() {
        return orderHeader;
    }
    
    public void setOrderHeader(com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSResponseOrderHeader orderHeader) {
        this.orderHeader = orderHeader;
    }
    
    public com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSResponseOLI[] getOrderLineItem() {
        return orderLineItem;
    }
    
    public void setOrderLineItem(com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSResponseOLI[] orderLineItem) {
        this.orderLineItem = orderLineItem;
    }
}