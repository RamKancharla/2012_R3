// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.eai.cc.uom;


public class CSUOLI implements java.io.Serializable {
    protected java.lang.String uniqueUserLineId;
    protected java.lang.String athenSubId;
    
    public CSUOLI() {
    }
    
    public java.lang.String getUniqueUserLineId() {
        return uniqueUserLineId;
    }
    
    public void setUniqueUserLineId(java.lang.String uniqueUserLineId) {
        this.uniqueUserLineId = uniqueUserLineId;
    }
    
    public java.lang.String getAthenSubId() {
        return athenSubId;
    }
    
    public void setAthenSubId(java.lang.String athenSubId) {
        this.athenSubId = athenSubId;
    }
    public String[] getUserLineValues() {
        String orderLineValues[] = 
        {  uniqueUserLineId, athenSubId };
        return orderLineValues;
    } 
}