// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.gcap.eai.cpfg.ef;


public class Entitlement implements java.io.Serializable {
    protected java.lang.String actionCode;
    protected java.lang.String productID;
    protected boolean freeTrialIndicator;
    protected java.util.Calendar freeTrialEndDate;
    protected com.reuters.gcap.eai.cpfg.ef.AttributeValuePair[] productAttribute;
    protected com.reuters.gcap.eai.cpfg.ef.Entitlement[] addOn;
    
    public Entitlement() {
    }
    
    public java.lang.String getActionCode() {
        return actionCode;
    }
    
    public void setActionCode(java.lang.String actionCode) {
        this.actionCode = actionCode;
    }
    
    public java.lang.String getProductID() {
        return productID;
    }
    
    public void setProductID(java.lang.String productID) {
        this.productID = productID;
    }
    
    public boolean isFreeTrialIndicator() {
        return freeTrialIndicator;
    }
    
    public void setFreeTrialIndicator(boolean freeTrialIndicator) {
        this.freeTrialIndicator = freeTrialIndicator;
    }
    
    public java.util.Calendar getFreeTrialEndDate() {
        return freeTrialEndDate;
    }
    
    public void setFreeTrialEndDate(java.util.Calendar freeTrialEndDate) {
        this.freeTrialEndDate = freeTrialEndDate;
    }
    
    public com.reuters.gcap.eai.cpfg.ef.AttributeValuePair[] getProductAttribute() {
        return productAttribute;
    }
    
    public void setProductAttribute(com.reuters.gcap.eai.cpfg.ef.AttributeValuePair[] productAttribute) {
        this.productAttribute = productAttribute;
    }
    
    public com.reuters.gcap.eai.cpfg.ef.Entitlement[] getAddOn() {
        return addOn;
    }
    
    public void setAddOn(com.reuters.gcap.eai.cpfg.ef.Entitlement[] addOn) {
        this.addOn = addOn;
    }
}
