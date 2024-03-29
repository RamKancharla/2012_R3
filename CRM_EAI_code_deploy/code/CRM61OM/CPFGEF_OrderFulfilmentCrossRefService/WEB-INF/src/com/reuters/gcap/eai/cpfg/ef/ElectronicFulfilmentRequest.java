// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.gcap.eai.cpfg.ef;


public class ElectronicFulfilmentRequest implements java.io.Serializable {
    protected java.lang.String electronicFulfilmentRequestId;
    protected java.lang.String UUID;
    protected java.lang.String subscriberAccount;
    protected com.reuters.gcap.eai.cpfg.ef.ModifyUserEntitlements modifyUserEntitlements;
    
    public ElectronicFulfilmentRequest() {
    }
    
    public java.lang.String getElectronicFulfilmentRequestId() {
        return electronicFulfilmentRequestId;
    }
    
    public void setElectronicFulfilmentRequestId(java.lang.String electronicFulfilmentRequestId) {
        this.electronicFulfilmentRequestId = electronicFulfilmentRequestId;
    }
    
    public java.lang.String getUUID() {
        return UUID;
    }
    
    public void setUUID(java.lang.String UUID) {
        this.UUID = UUID;
    }
    
    public java.lang.String getSubscriberAccount() {
        return subscriberAccount;
    }
    
    public void setSubscriberAccount(java.lang.String subscriberAccount) {
        this.subscriberAccount = subscriberAccount;
    }
    
    public com.reuters.gcap.eai.cpfg.ef.ModifyUserEntitlements getModifyUserEntitlements() {
        return modifyUserEntitlements;
    }
    
    public void setModifyUserEntitlements(com.reuters.gcap.eai.cpfg.ef.ModifyUserEntitlements modifyUserEntitlements) {
        this.modifyUserEntitlements = modifyUserEntitlements;
    }
}
