// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.eai.cc.uom;


public class CSFixedLengthUserOrderRequest implements java.io.Serializable {
    protected com.reuters.eai.cc.uom._CSEaiHeader eaiHeader;
    protected com.reuters.eai.cc.uom._CSBasicResponse basicResponse;
    protected java.lang.String logicalCountry;
    protected java.lang.String message;
    
    public CSFixedLengthUserOrderRequest() {
    }
    
    public com.reuters.eai.cc.uom._CSEaiHeader getEaiHeader() {
        return eaiHeader;
    }
    
    public void setEaiHeader(com.reuters.eai.cc.uom._CSEaiHeader eaiHeader) {
        this.eaiHeader = eaiHeader;
    }
    
    public com.reuters.eai.cc.uom._CSBasicResponse getBasicResponse() {
        return basicResponse;
    }
    
    public void setBasicResponse(com.reuters.eai.cc.uom._CSBasicResponse basicResponse) {
        this.basicResponse = basicResponse;
    }
    
    public java.lang.String getLogicalCountry() {
        return logicalCountry;
    }
    
    public void setLogicalCountry(java.lang.String logicalCountry) {
        this.logicalCountry = logicalCountry;
    }
    
    public java.lang.String getMessage() {
        return message;
    }
    
    public void setMessage(java.lang.String message) {
        this.message = message;
    }
}