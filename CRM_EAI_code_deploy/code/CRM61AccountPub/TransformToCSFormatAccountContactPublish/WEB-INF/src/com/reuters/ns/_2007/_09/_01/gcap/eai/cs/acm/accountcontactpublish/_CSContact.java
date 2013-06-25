// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.ns._2007._09._01.gcap.eai.cs.acm.accountcontactpublish;


public class _CSContact implements java.io.Serializable {
    protected java.lang.String contactId;
    protected java.lang.String personId;
    protected java.lang.String contactType;
    protected java.lang.String responsibilityCode;
    protected java.lang.String firstName;
    protected java.lang.String lastName;
    protected java.lang.String title;
    protected java.lang.String jobTitle;
    protected java.lang.String businessTelephoneNumber;
    protected java.lang.String homeTelephoneNumber;
    protected java.lang.String messageId;
    
    public _CSContact() {
    }
    
    public java.lang.String getContactId() {
        return contactId;
    }
    
    public void setContactId(java.lang.String contactId) {
        this.contactId = contactId;
    }
    
    public java.lang.String getPersonId() {
        return personId;
    }
    
    public void setPersonId(java.lang.String personId) {
        this.personId = personId;
    }
    
    public java.lang.String getContactType() {
        return contactType;
    }
    
    public void setContactType(java.lang.String contactType) {
        this.contactType = contactType;
    }
    
    public java.lang.String getResponsibilityCode() {
        return responsibilityCode;
    }
    
    public void setResponsibilityCode(java.lang.String responsibilityCode) {
        this.responsibilityCode = responsibilityCode;
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
    
    public java.lang.String getTitle() {
        return title;
    }
    
    public void setTitle(java.lang.String title) {
        this.title = title;
    }
    
    public java.lang.String getJobTitle() {
        return jobTitle;
    }
    
    public void setJobTitle(java.lang.String jobTitle) {
        this.jobTitle = jobTitle;
    }
    
    public java.lang.String getBusinessTelephoneNumber() {
        return businessTelephoneNumber;
    }
    
    public void setBusinessTelephoneNumber(java.lang.String businessTelephoneNumber) {
        this.businessTelephoneNumber = businessTelephoneNumber;
    }
    
    public java.lang.String getHomeTelephoneNumber() {
        return homeTelephoneNumber;
    }
    
    public void setHomeTelephoneNumber(java.lang.String homeTelephoneNumber) {
        this.homeTelephoneNumber = homeTelephoneNumber;
    }
    
    public java.lang.String getMessageId() {
        return messageId;
    }
    
    public void setMessageId(java.lang.String messageId) {
        this.messageId = messageId;
    }
    public String[] getContactValues() {
            String contactValues[] = 
            { contactId, personId, contactType, responsibilityCode, firstName,lastName,title,jobTitle,businessTelephoneNumber,homeTelephoneNumber," ",messageId};
            return contactValues;
    }       
}
