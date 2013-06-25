 /*************************************************************************
  * Module                CRM6.1  (Sprint 9) 
  *                       Account Contact List Management (Core Suite)
  * File                  ParseCSAccountContactPublishStatus.java
  * Type                  Java File
  * Description           Receives an Input from CoreSuite in Fixed Length Format 
  *                       and Builds Response in XML Format 
  *
  * Base Document                CRM 6.1 EAI - Core Suite Interface Development BTM.doc
  *
  * Change History
  * Version      Date            Author                         Description Of Change
  * ========     ========        ======================         ===============================
  *      1.0     19/05/08        Hemamalini.T.S                 Initial Version
  *      1.1     21/05/08        Hemamalini.T.S                 Re-created for XSD changes
  *      1.2     27/05/08        Hemamalini.T.S                 Removed the NumberOfContactItems element as it is not expected from
  *                                                             CoureSuite now. Implemented code for counting the ContactItems.
  *      1.3     03/12/08        anvv sharma                    Fixing the Bug for 'No Contacts' in the Request String
  *                                                             If there are no Contacts in the Request String Calculate the Total String - String Till Billing Message = String for Contacts
  * ========     ========        ======================         ===============================
  ***************************************************************************/
package com.reuters.eai.cs.acm;

 import java.util.Calendar;

 import java.sql.SQLException;

 import java.util.ArrayList;
 import java.util.Calendar;
 import java.util.ResourceBundle;

 import javax.naming.NamingException;

 public class ParseCSAccountContactPublishStatus {
     ResponseDAO responseDAO     = new ResponseDAO();
     ArrayList rspArrayList      = null;
     ResponseBean responseBean   = null;
     // Contains Response Content
     String rspId        = "";
     String rspCode      = "";
     String rspMessage   = "";
     static int xmlStrLen=0;
    String s = "sharma";                     
     public _CSAccountContactPublish parseAccountContactPublishStatus(FixedLengthMessage parameter) {
        
         ResourceBundle resourcebundle = ResourceBundle.getBundle("ApplicationResources");
         
         String xmlString = parameter.getParameter();
                
         xmlString = xmlString == null ? "" : xmlString;

         xmlStrLen = xmlString.length();
         int iTotalContactLen = 0;
         int inewTotalContactLen = 0;
         String strSingleContact = "                                       ";
         int iNumberOfContactItems=0;
         int iTotalMsgHeader = 0;
         int ibBillingMessageId = 0;
         String strTotalContacts = "";
         String FAILURE_RESPONSE = resourcebundle.getString("FAILURE_RESPONSE");
         String SUCCESS_RESPONSE = resourcebundle.getString("SUCCESS_RESPONSE");
         // Reffered for IOException Expn - when Input Request is NULL - when Input Request is not passed

         final String UNABLETOREAD   = resourcebundle.getString("UNABLETOREAD");
         final String SERVERERROR   = resourcebundle.getString("SERVERERROR");
                     
         // Reffered for NullPointer Expn - when ArrayList is NULL - when Database is Down

         final String DATABASEERROR  = resourcebundle.getString("DATABASEERROR");
         final String DATABASEERRORCODE  = resourcebundle.getString("DATABASEERRORCODE");
         final String DATABASEERRORMSG  = resourcebundle.getString("DATABASEERRORMSG");    
         
         final String INTERNALSERVERERRORCODE  = resourcebundle.getString("INTERNALSERVERERRORCODE");
         final String INTERNALSERVERERRORMSG  = resourcebundle.getString("INTERNALSERVERERRORMSG");     
         
        _CSAccountContactPublish accountContactPublish = new _CSAccountContactPublish();
        _CSEaiHeader  eaiHeader=new _CSEaiHeader();
        _CSACMBasicResponse basicResponse =new _CSACMBasicResponse();
        _CSACMMessageHeader messageHeader=new _CSACMMessageHeader();
        _CSACMSubscriberData subscriberData = new _CSACMSubscriberData();
        _CSACMInstallationAddress installationAddress=new _CSACMInstallationAddress();
        _CSACMBillingAddress billingAddress=new _CSACMBillingAddress();
        try {
                if (!xmlString.equalsIgnoreCase("")) {
                 
                    s = "anvv1";
                     int iLogicalCountry=Integer.parseInt(resourcebundle.getString("iLogicalCountry"));
                     int iMessageIDPos =Integer.parseInt(resourcebundle.getString("iMessageIDPos"))+iLogicalCountry;
                     int iTransactionIDPos =Integer.parseInt(resourcebundle.getString("iTransactionIDPos")) +iMessageIDPos;
                     int iMessageHistoryPos =Integer.parseInt(resourcebundle.getString("iMessageHistoryPos")) +iTransactionIDPos;
                     int iTracingIDPos =Integer.parseInt(resourcebundle.getString("iTracingIDPos")) +iMessageHistoryPos;
                     int iMessageCodePos =Integer.parseInt(resourcebundle.getString("iMessageCodePos")) +iTracingIDPos; 
                     int iVersionPos =Integer.parseInt(resourcebundle.getString("iVersionPos")) +iMessageCodePos;
                     int iMessagelength=Integer.parseInt(resourcebundle.getString("iMessagelength")) +iVersionPos;
                     int iTimeStampPos =Integer.parseInt(resourcebundle.getString("iTimeStampPos")) +iMessagelength;
                     int iUserIDPos =Integer.parseInt(resourcebundle.getString("iUserIdPos")) +iTimeStampPos;
                     int iObjectSystemPos =Integer.parseInt(resourcebundle.getString("iObjectSystemPos")) +iUserIDPos;
                     int iFillerPos=Integer.parseInt(resourcebundle.getString("iFillerPos")) +iObjectSystemPos;
                     
                     int isubMessageStatus=Integer.parseInt(resourcebundle.getString("isubMessageStatus")) +iFillerPos;
                     int isubHeaderMessageId=Integer.parseInt(resourcebundle.getString("isubHeaderMessageId")) +isubMessageStatus;
                     int isubAccountRowId=Integer.parseInt(resourcebundle.getString("isubAccountRowId")) +isubHeaderMessageId;
                    s = "anvv2";
                     //Subscriber Account Data
                     int isubscriberNumber =Integer.parseInt(resourcebundle.getString("isubscriberNumber")) +isubAccountRowId;
                     int iAccountMessageId =Integer.parseInt(resourcebundle.getString("iAccountMessageId")) +isubscriberNumber;
                     
                     // Installation Address Positions
                     int iInstallAddressId =Integer.parseInt(resourcebundle.getString("iInstallAddressId")) +iAccountMessageId;
                     int iInstallationMessageId =Integer.parseInt(resourcebundle.getString("iInstallationMessageId")) +iInstallAddressId;
                    s = "anvv3";
                     // Billing Address Positions
                     int iBillingAddressId =Integer.parseInt(resourcebundle.getString("iBillingAddressId")) +iInstallationMessageId;
                     ibBillingMessageId =Integer.parseInt(resourcebundle.getString("ibBillingMessageId")) +iBillingAddressId;
                     
                     //int iNumberOfContactItems=Integer.parseInt(resourcebundle.getString("iNumberOfContactItems")) +ibBillingMessageId;
                     //Contact Data Positions

                     int icontactId =Integer.parseInt(resourcebundle.getString("icontactId")) +ibBillingMessageId;
                     int ipersonId =Integer.parseInt(resourcebundle.getString("ipersonId")) +icontactId;
                     int icontactType =Integer.parseInt(resourcebundle.getString("icontactType")) +ipersonId;
                     int iContactMessageId =Integer.parseInt(resourcebundle.getString("iContactMessageId")) +icontactType;
                               
                     String strLogicalCountry=xmlString.substring(0, iLogicalCountry);
                     String strMessageID =xmlString.substring(iLogicalCountry, iMessageIDPos);
                     String strTransactionID =xmlString.substring(iMessageIDPos, iTransactionIDPos);
                     String strMessageHistory =xmlString.substring(iTransactionIDPos, iMessageHistoryPos);
                     String strTracingID =xmlString.substring(iMessageHistoryPos, iTracingIDPos);
                     String strMessageCode =xmlString.substring(iTracingIDPos, iMessageCodePos);
                     String strVersion =xmlString.substring(iMessageCodePos, iVersionPos);
                     String strTimeStamp =xmlString.substring(iMessagelength, iTimeStampPos);
                     String strUserId =xmlString.substring(iTimeStampPos, iUserIDPos);
                     String strObjectSystem =xmlString.substring(iUserIDPos, iObjectSystemPos);
                    
                     String strsubMessageStatus =xmlString.substring(iFillerPos, isubMessageStatus);
                     String strsubHeaderMessageId =xmlString.substring(isubMessageStatus, isubHeaderMessageId);
                     String strsubAccountRowId =xmlString.substring(isubHeaderMessageId, isubAccountRowId);
                    
                     String strsubscriberNumber =xmlString.substring(isubAccountRowId, isubscriberNumber);
                     String strAccountMessageId =xmlString.substring(isubscriberNumber, iAccountMessageId);
                    
                     String strsubAccount =xmlString.substring(iAccountMessageId, iInstallAddressId);
                     String strInstallationMessageId =xmlString.substring(iInstallAddressId, iInstallationMessageId);
                    
                     String strbsubAccount=xmlString.substring(iInstallationMessageId, iBillingAddressId);
                     String strbBillingMessageId=xmlString.substring(iBillingAddressId, ibBillingMessageId);
                    iTotalMsgHeader =  ibBillingMessageId;
                    
                    eaiHeader.setApplicationId(strObjectSystem.trim());
                    eaiHeader.setTransactionId(strTransactionID.trim());
                    eaiHeader.setMessageId(strMessageID.trim());
                    eaiHeader.setMessageHistory(strMessageHistory.trim());
                    eaiHeader.setTracingId(strTracingID.trim());
                    eaiHeader.setTimeStamp(Calendar.getInstance());
                    eaiHeader.setInstanceId(strUserId.trim());
                    eaiHeader.setTimeToLive(0);
                    eaiHeader.setPayloadVersion(strVersion.trim());
                    accountContactPublish.setEaiHeader(eaiHeader);
                    
                    messageHeader.setMessageId(strMessageID.trim());
                    messageHeader.setTransactionId(strTransactionID.trim());
                    messageHeader.setMessageHistory(strMessageHistory.trim());
                    messageHeader.setTracingId(strTracingID.trim());
                    messageHeader.setMessageCode(strMessageCode.trim());
                    messageHeader.setVersion(strVersion.trim());
                    messageHeader.setTimeStamp(Calendar.getInstance());
                    messageHeader.setUserId(strUserId.trim());
                    messageHeader.setObjectSystem(strObjectSystem.trim());
                    accountContactPublish.setMessageHeader(messageHeader);
                    
                    accountContactPublish.setLogicalCountry(strLogicalCountry.trim());
                    accountContactPublish.setSubHeaderMessageId(strsubHeaderMessageId.trim());
                    accountContactPublish.setSubMessageStatus(strsubMessageStatus.trim());
                    accountContactPublish.setSubRowId(strsubAccountRowId.trim());
                    
                    subscriberData.setSubscriberMessageId(strAccountMessageId.trim());
                    subscriberData.setSubscriberNumber(strsubscriberNumber.trim());
                    accountContactPublish.setSubscriberAccountData(subscriberData);
                    
                    installationAddress.setInstallAddressAcctId(strsubAccount.trim());
                    installationAddress.setInstallAddressMessageId(strInstallationMessageId.trim());
                    accountContactPublish.setInstallationAddress(installationAddress);
                    
                    billingAddress.setBillingAddressAcctId(strbsubAccount.trim());
                    billingAddress.setBillingMessageId(strbBillingMessageId.trim());
                    accountContactPublish.setBillingAddress(billingAddress);
                    
                    basicResponse.setResponse(new Response(SUCCESS_RESPONSE));
                    basicResponse.setResponseCode("SUCCESS");
                    basicResponse.setResponseMessage("00100-EAI-SUCCESS");
                    accountContactPublish.setAccountContactPublishStatus(basicResponse);
                    
                    /*As the ibBillingMessageId contains the total message header length we assign it to iTotalMsgHeader*/
                    iTotalMsgHeader =  ibBillingMessageId;
                     
                     /*  Reserved for future use if number of contact items are send.
                      * 
                      *  String striNumberOfContactItems=xmlString.substring(ibBillingMessageId, iNumberOfContactItems);
                         String stricontactId=xmlString.substring(iNumberOfContactItems, icontactId);
                         String stripersonId=xmlString.substring(icontactId, ipersonId);
                         String strcontactType=xmlString.substring(ipersonId, icontactType);
                         String strContactMessageId=xmlString.substring(icontactType, iContactMessageId);*/

                     // Contact Data Positions
                      // If there are no Contacts in the Request String Calculate the Total String - String Till Billing Message = String for Contacts     
                if (xmlString.length()-ibBillingMessageId>0) {
                     String stricontactId=xmlString.substring(ibBillingMessageId, icontactId);
                     String stripersonId=xmlString.substring(icontactId, ipersonId);
                     String strcontactType=xmlString.substring(ipersonId, icontactType);
                     String strContactMessageId=xmlString.substring(icontactType, iContactMessageId);
                     int iContactItemsLength=Integer.parseInt(resourcebundle.getString("iContactItemsLength"));

                   /*For calculating the number of contact items (total message length-header part)/contactitemlength */
                     iTotalContactLen = xmlStrLen-iTotalMsgHeader;
                     iNumberOfContactItems = iTotalContactLen/iContactItemsLength;
                   /*If the received number of contact items is greater than 20 then we are ristricting the contacts to 20*/
                     if(iNumberOfContactItems > 20)  {
                         iNumberOfContactItems = 20;
                     }
                     else {
                         iNumberOfContactItems = iNumberOfContactItems;
                     }
                     _CSACMContact contact[] = new _CSACMContact[iNumberOfContactItems];
                     for (int z = 0; z < iNumberOfContactItems; z++) {
                     _CSACMContact responseCon =new _CSACMContact();
                         responseCon.setContactRowId(xmlString.substring(ibBillingMessageId+(z * iContactItemsLength),icontactId +(z * iContactItemsLength)).trim());
                         responseCon.setContactPersonId(xmlString.substring(icontactId+(z * iContactItemsLength),ipersonId +(z * iContactItemsLength)).trim());
                         responseCon.setContactType(xmlString.substring(ipersonId+(z * iContactItemsLength),icontactType +(z * iContactItemsLength)).trim());
                         responseCon.setContactMessageId(xmlString.substring(icontactType+(z * iContactItemsLength),iContactMessageId +(z * iContactItemsLength)).trim());
                     contact[z]=responseCon;
                     accountContactPublish.setContactData(contact);
                      }
                    } 
                else {
                    // If there are no Contacts in the Request String
                    // we are Contructing one for the PayLoad
                    _CSACMContact contact[] = new _CSACMContact[1];
                        _CSACMContact responseCon =new _CSACMContact();
                        responseCon.setContactRowId("");
                        responseCon.setContactPersonId("");
                        responseCon.setContactType("");
                        responseCon.setContactMessageId("");
                        contact[0]=responseCon;
                        accountContactPublish.setContactData(contact);
                }
                }else {
                     /* When the Parameter passed is NULL or NOT IN A VALID FORMAT */
                        rspArrayList = new ArrayList();
                        rspArrayList = responseDAO.getResponseCode(UNABLETOREAD+"-"+iNumberOfContactItems);
                        responseBean= (ResponseBean)rspArrayList.get(0);
                        
                        rspId = responseBean.getStrRespId();
                        rspCode = responseBean.getStrRespCode();
                        rspMessage = responseBean.getStrRespMessage();
                     }
                 }catch(Exception e) {
                     /* When Exception Raises  
                      * setting the Objects to NULL
                      * */
                     
                      if((e instanceof SQLException) || (e instanceof NamingException) || (e instanceof NullPointerException)) {
                          rspId      = DATABASEERROR;
                          rspCode    = DATABASEERRORCODE;
                          rspMessage = DATABASEERRORMSG;
                          
                          setResponseOnError(eaiHeader, messageHeader, accountContactPublish, basicResponse, subscriberData, installationAddress,billingAddress,FAILURE_RESPONSE, SUCCESS_RESPONSE, rspId, rspCode, rspMessage);
                      } else {
                          rspId      = SERVERERROR;
                          rspCode    = INTERNALSERVERERRORCODE;
                          rspMessage = INTERNALSERVERERRORMSG;
                          
                          setResponseOnError(eaiHeader, messageHeader, accountContactPublish, basicResponse, subscriberData, installationAddress,billingAddress,FAILURE_RESPONSE, SUCCESS_RESPONSE, rspId, rspCode, rspMessage);
                      }
                 }
                 return accountContactPublish;
                 }
                     private void setResponseOnError(_CSEaiHeader eaiHeader,
                     _CSACMMessageHeader messageHeader,
                     _CSAccountContactPublish accountContactPublish,
                     _CSACMBasicResponse basicResponse,
                     _CSACMSubscriberData subscriberData,
                     _CSACMInstallationAddress installationAddress,
                     _CSACMBillingAddress billingAddress,
                     String FAILURE_RESPONSE, 
                     String SUCCESS_RESPONSE, 
                     String rspId, 
                     String rspCode, 
                     String rspMessage) {
                         
                         eaiHeader.setApplicationId("");
                         eaiHeader.setInstanceId("");
                         eaiHeader.setMessageHistory("");
                         eaiHeader.setMessageId("");
                         eaiHeader.setPayloadVersion("");
                         eaiHeader.setTimeStamp(Calendar.getInstance());
                         eaiHeader.setTimeToLive(0);
                         eaiHeader.setTracingId("");
                         eaiHeader.setTransactionId("");
                         accountContactPublish.setEaiHeader(eaiHeader);
                         
                         
                         messageHeader.setMessageId("");
                         messageHeader.setTransactionId("");
                         messageHeader.setMessageHistory("");
                         messageHeader.setTracingId("");
                         messageHeader.setMessageCode("");
                         messageHeader.setVersion("");
                         messageHeader.setTimeStamp(Calendar.getInstance());
                         messageHeader.setUserId("");
                         messageHeader.setObjectSystem("");
                         accountContactPublish.setMessageHeader(messageHeader);
                                 
                         accountContactPublish.setLogicalCountry("");
                         accountContactPublish.setSubHeaderMessageId("");
                         accountContactPublish.setSubMessageStatus("");
                         accountContactPublish.setSubRowId("");
                                         
                         basicResponse.setResponse(new Response(FAILURE_RESPONSE));
                         basicResponse.setResponseCode(rspCode);
                         basicResponse.setResponseMessage(rspMessage);
                         accountContactPublish.setAccountContactPublishStatus(basicResponse);
                                         
                     
                         subscriberData.setSubscriberMessageId("");
                         subscriberData.setSubscriberNumber("");
                         accountContactPublish.setSubscriberAccountData(subscriberData);
                        
                         installationAddress.setInstallAddressAcctId("");
                         installationAddress.setInstallAddressMessageId("");
                         accountContactPublish.setInstallationAddress(installationAddress);
                                    
                                         
                         billingAddress.setBillingAddressAcctId("");
                         billingAddress.setBillingMessageId("");
                         accountContactPublish.setBillingAddress(billingAddress);
                         
                         _CSACMContact contact[]=new _CSACMContact[1];
                         _CSACMContact responseCon =new _CSACMContact();
                         responseCon.setContactRowId("");
                         responseCon.setContactPersonId("");
                         responseCon.setContactType("");
                         responseCon.setContactMessageId("");
                         contact[0]=responseCon;
                         accountContactPublish.setContactData(contact);
                                                     
                     }
                 }
