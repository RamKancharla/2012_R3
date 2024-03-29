// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.eai.cc.uom;


public class CSUOLI implements java.io.Serializable {
    protected java.lang.String uniqueUserLineId;
    protected java.lang.String athenSubId;
    protected java.lang.String firstName;
    protected java.lang.String lastName;
    protected java.lang.String TSAID;
    protected java.lang.String emailId;
    protected java.lang.String AKR;
    protected java.lang.String PLI;
    protected java.lang.String installRemoveInd;
    protected java.lang.String itemNumber;
    protected java.lang.String hardStopFlag;
    
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
    
    public java.lang.String getFirstName() {
        return firstName;
    }
    
    public void setFirstName(java.lang.String firstName) {
        this.firstName = firstName;
    }
    
    public java.lang.String getLastName() {
        return lastName;
    }
    
    public void setLastName(java.lang.String lastName) {
        this.lastName = lastName;
    }
    
    public java.lang.String getTSAID() {
        return TSAID;
    }
    
    public void setTSAID(java.lang.String TSAID) {
        this.TSAID = TSAID;
    }
    
    public java.lang.String getEmailId() {
        return emailId;
    }
    
    public void setEmailId(java.lang.String emailId) {
        this.emailId = emailId;
    }
    
    public java.lang.String getAKR() {
        return AKR;
    }
    
    public void setAKR(java.lang.String AKR) {
        this.AKR = AKR;
    }
    
    public java.lang.String getPLI() {
        return PLI;
    }
    
    public void setPLI(java.lang.String PLI) {
        this.PLI = PLI;
    }
    
    public java.lang.String getInstallRemoveInd() {
        return installRemoveInd;
    }
    
    public void setInstallRemoveInd(java.lang.String installRemoveInd) {
        this.installRemoveInd = installRemoveInd;
    }
    
    public java.lang.String getItemNumber() {
        return itemNumber;
    }
    
    public void setItemNumber(java.lang.String itemNumber) {
        this.itemNumber = itemNumber;
    }
    
    public java.lang.String getHardStopFlag() {
        return hardStopFlag;
    }
    
    public void setHardStopFlag(java.lang.String hardStopFlag) {
        this.hardStopFlag = hardStopFlag;
    }
    public String[] getUserLineValues() {
        String orderLineValues[] = 
        { uniqueUserLineId, athenSubId, firstName, lastName, 
          TSAID, emailId, AKR, PLI, installRemoveInd, 
          itemNumber, hardStopFlag };
        return orderLineValues;
    }  
}
