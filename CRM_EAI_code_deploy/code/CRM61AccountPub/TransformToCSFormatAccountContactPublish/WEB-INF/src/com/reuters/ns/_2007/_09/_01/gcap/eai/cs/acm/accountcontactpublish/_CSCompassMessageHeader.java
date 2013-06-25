// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.ns._2007._09._01.gcap.eai.cs.acm.accountcontactpublish;

import java.util.Calendar;

public class _CSCompassMessageHeader implements java.io.Serializable {
    protected java.lang.String messageId;
    protected java.lang.String transactionId;
    protected java.lang.String messageHistory;
    protected java.lang.String tracingId;
    protected java.lang.String messageCode;
    protected java.lang.String version;
    protected java.util.Calendar timeStamp;
    protected java.lang.String userId;
    protected java.lang.String objectSystem;
    
    public _CSCompassMessageHeader() {
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
    
    public java.lang.String getMessageCode() {
        return messageCode;
    }
    
    public void setMessageCode(java.lang.String messageCode) {
        this.messageCode = messageCode;
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
    public String[] getMsgHeaderValues() {

           String strTimeStamp = 
               get(Calendar.YEAR) + "-" + get(Calendar.MONTH) + "-" + 
               get(Calendar.DAY_OF_MONTH);
           strTimeStamp = 
                   strTimeStamp + "T" + get(Calendar.HOUR_OF_DAY) + ":" + get(Calendar.MINUTE) + 
                   ":" + get(Calendar.SECOND);
           String msgHeaderValues[] = 
           { messageId, transactionId, messageHistory, tracingId, messageCode, 
             version, strTimeStamp, userId, objectSystem };
           return msgHeaderValues;
       }

           /*
           * To pad '0', if the value is less than 10
           */

           private String get(int query) {
               int value = timeStamp.get(query);
               return (value > 9) ? ("" + value) : ("0" + value);
           }
}
