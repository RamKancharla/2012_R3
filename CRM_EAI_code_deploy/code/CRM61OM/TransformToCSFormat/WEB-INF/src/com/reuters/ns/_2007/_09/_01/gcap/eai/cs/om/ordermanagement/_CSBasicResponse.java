// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement;


public class _CSBasicResponse implements java.io.Serializable {
    protected com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSResponse response;
    protected java.lang.String responseCode;
    protected java.lang.String responseMessage;
    
    public _CSBasicResponse() {
    }
    
    public com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSResponse getResponse() {
        return response;
    }
    
    public void setResponse(com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSResponse response) {
        this.response = response;
    }
    
    public java.lang.String getResponseCode() {
        return responseCode;
    }
    
    public void setResponseCode(java.lang.String responseCode) {
        this.responseCode = responseCode;
    }
    
    public java.lang.String getResponseMessage() {
        return responseMessage;
    }
    
    public void setResponseMessage(java.lang.String responseMessage) {
        this.responseMessage = responseMessage;
    }
}
