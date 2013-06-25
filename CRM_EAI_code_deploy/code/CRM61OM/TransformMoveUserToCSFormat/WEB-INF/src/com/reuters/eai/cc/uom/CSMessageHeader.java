// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.eai.cc.uom;

import java.util.Calendar;


public class CSMessageHeader implements java.io.Serializable {
    protected java.lang.String logicalCountry;
    protected java.lang.String messageId;
    protected java.lang.String transactionId;
    protected java.lang.String messageHistory;
    protected java.lang.String tracingId;
    protected java.lang.String actionCode;
    protected java.lang.String version;
    protected java.util.Calendar timeStamp;
    protected java.lang.String userId;
    protected java.lang.String objectSystem;
    protected com.reuters.eai.cc.uom.CSSourceSystem sourceSystem;
    
    public CSMessageHeader() {
    }
    
    public java.lang.String getLogicalCountry() {
        return logicalCountry;
    }
    
    public void setLogicalCountry(java.lang.String logicalCountry) {
        this.logicalCountry = logicalCountry;
    }
    
    public java.lang.String getMessageId() {
        return messageId;
    }
    
    public void setMessageId(java.lang.String messageId) {
        this.messageId = messageId;
    }
    
    public java.lang.String getTransactionId() {
        return transactionId;
    }
    
    public void setTransactionId(java.lang.String transactionId) {
        this.transactionId = transactionId;
    }
    
    public java.lang.String getMessageHistory() {
        return messageHistory;
    }
    
    public void setMessageHistory(java.lang.String messageHistory) {
        this.messageHistory = messageHistory;
    }
    
    public java.lang.String getTracingId() {
        return tracingId;
    }
    
    public void setTracingId(java.lang.String tracingId) {
        this.tracingId = tracingId;
    }
    
    public java.lang.String getActionCode() {
        return actionCode;
    }
    
    public void setActionCode(java.lang.String actionCode) {
        this.actionCode = actionCode;
    }
    
    public java.lang.String getVersion() {
        return version;
    }
    
    public void setVersion(java.lang.String version) {
        this.version = version;
    }
    
    public java.util.Calendar getTimeStamp() {
        return timeStamp;
    }
    
    public void setTimeStamp(java.util.Calendar timeStamp) {
        this.timeStamp = timeStamp;
    }
    
    public java.lang.String getUserId() {
        return userId;
    }
    
    public void setUserId(java.lang.String userId) {
        this.userId = userId;
    }
    
    public java.lang.String getObjectSystem() {
        return objectSystem;
    }
    
    public void setObjectSystem(java.lang.String objectSystem) {
        this.objectSystem = objectSystem;
    }
    
    public com.reuters.eai.cc.uom.CSSourceSystem getSourceSystem() {
        return sourceSystem;
    }
    
    public void setSourceSystem(com.reuters.eai.cc.uom.CSSourceSystem sourceSystem) {
        this.sourceSystem = sourceSystem;
    }
    public String[] getMsgHeaderValues() {

    String strTimeStamp =
    get(Calendar.YEAR) + "-" + get(Calendar.MONTH) + "-" + 
    get(Calendar.DAY_OF_MONTH);
    strTimeStamp =
        strTimeStamp + "T" + get(Calendar.HOUR_OF_DAY) + ":" + get(Calendar.MINUTE) + 
        ":" + get(Calendar.SECOND);
    String msgHeaderValues[] =
    { logicalCountry, messageId, transactionId, messageHistory, tracingId, actionCode,
    version, strTimeStamp, userId, objectSystem, sourceSystem.toString()};
    return msgHeaderValues;
    }
    private String get(int query) {
    int value = timeStamp.get(query);
    return (value > 9) ? ("" + value) : ("0" + value);
    }
    }

 
