 /*************************************************************************
 * Module                CRM6.1  (Sprint 4) 
 *                       Order Management (Core Suite)
 * File                  ParseCSUserStatus.java
 * Type                  Java File
 * Description           Receives an Input from CoreSuite in Fixed Length Format and Builds Response in XML Format
 *
 * Base Document         CRM 6.1 EAI - Core Suite Interface Development BTM V1.6.doc
 *
 * Change History
 * Version       Date            Author              Description Of Change
 * ========      ========        ===========         ===============================
 *  0.01         24/10/07        satish patel         Initial Version
 * ========      ========        ===========         ===============================
*  0.093        02/07/08        anvv sharma         Removed Database Handling Code & Database Exception & Exceptions Messages Modified
 *************************************************************************/

 /*************************************************************************
 *
 *       NOTE : 
 *         TimeStamp Is Taken as Current Date in Calender format. 
 *         Response Taken as :
 *             1 - FAILURE CASES
 *             0 - SUCCESS CASES *         
 *
 *************************************************************************/
  
  
 package com.reuters.eai.cs.oms;

 import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.CSUserStatus;
 import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.USBasicResponse;
 import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.USEaiHeader;
 import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.USMessageHeader;
 import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.USResponseULI;
 import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.USResponseUserHeader;
 import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement.EBCDICMessage;

 import java.sql.SQLException;
 import java.util.ArrayList;
 import java.util.Calendar;
 import java.util.ResourceBundle;
 import javax.naming.NamingException;

 

 /*
  * @ Class ParseCSOrderStatus
  *
  */

 public class ParseCSUserStatus {

     ResourceBundle ResBun   = ResourceBundle.getBundle("ApplicationResources");
     
     final String SUCCESS        = ResBun.getString("SUCCESS");

     // Contains Response Content
     String rspId        = "";
     String rspCode      = "";
     String rspMessage   = "";
     
    // Reffered for IOException Expn - when Input Request is NULL - when Input Request is not passed
    final String UNABLETOREAD   = ResBun.getString("UNABLETOREAD");
    final String UNABLETOREADCODE = ResBun.getString("UNABLETOREADCODE");
    final String UNABLETOREADMESSAGE = ResBun.getString("UNABLETOREADMESSAGE");

    // Reffered for NullPointer Expn - when ArrayList is NULL - when Database is Down
    final String INVALIDFORMAT  = ResBun.getString("INVALIDFORMAT");
    final String INVALIDFORMATCODE  = ResBun.getString("INVALIDFORMATCODE");
    final String INVALIDFORMATMESSAGE  = ResBun.getString("INVALIDFORMATMESSAGE"); 

    // Reffered for NullPointer Expn or Other Exception
    final String SERVERERROR   = ResBun.getString("SERVERERROR");
    final String INTERNALSERVERERRORCODE  = ResBun.getString("INTERNALSERVERERRORCODE");
    final String INTERNALSERVERERRORMSG  = ResBun.getString("INTERNALSERVERERRORMSG");

     /*
      *  parseUserStatus() 
      *  @ Request Parameter - EBCDICMessage 
      *  @ Response          - CSUserStatus
      */


     public CSUserStatus parseUserStatus(EBCDICMessage parameter) {
         String xmlString = parameter.getMessage();         
         xmlString = xmlString == null ? "" : xmlString;

         CSUserStatus userStatus = new CSUserStatus();
         USEaiHeader eaiHeader = new USEaiHeader();
         USMessageHeader messageHeader = new USMessageHeader();
         USResponseUserHeader responseUserHeader = new USResponseUserHeader();
         USBasicResponse basicResponse = new USBasicResponse();
             
         ResourceBundle resourcebundle = ResourceBundle.getBundle("ApplicationResources");
         String FAILURE_RESPONSE = resourcebundle.getString("FAILURE_RESPONSE");
         String SUCCESS_RESPONSE = resourcebundle.getString("SUCCESS_RESPONSE");

         try {
             if(!xmlString.equalsIgnoreCase("")) {
             
                 int iLogicalCountryLengthPos = Integer.parseInt(resourcebundle.getString("iLogicalCountryLengthPos"));
                 int imessageIDPos = Integer.parseInt(resourcebundle.getString("imessageIDPos"))+iLogicalCountryLengthPos;
                 int itransactionIDPos = Integer.parseInt(resourcebundle.getString("itransactionIDPos"))+imessageIDPos;
                 int imessageHistoryPos = Integer.parseInt(resourcebundle.getString("imessageHistoryPos"))+itransactionIDPos;
                 int itracingIDPos = Integer.parseInt(resourcebundle.getString("itracingIDPos"))+imessageHistoryPos;
                 int imessageCodePos = Integer.parseInt(resourcebundle.getString("imessageCodePos"))+itracingIDPos;
                 int iversionPos = Integer.parseInt(resourcebundle.getString("iversionPos"))+imessageCodePos;
                 int imessageLengthPos = Integer.parseInt(resourcebundle.getString("imessageLengthPos"))+iversionPos;
                 int itimeStampPos = Integer.parseInt(resourcebundle.getString("itimeStampPos"))+imessageLengthPos;
                 int iuserIdPos = Integer.parseInt(resourcebundle.getString("iuserIdPos"))+itimeStampPos;
                 int iobjectSystemPos = Integer.parseInt(resourcebundle.getString("iobjectSystemPos"))+iuserIdPos;
                 int iFillerPos = Integer.parseInt(resourcebundle.getString("iFillerPos"))+iobjectSystemPos;
                 
                 //orderHeader
                 int imessageStatusPos = Integer.parseInt(resourcebundle.getString("imessageStatusPos"))+iFillerPos;
                 int iresponseIDPos = Integer.parseInt(resourcebundle.getString("iresponseIDPos"))+imessageStatusPos;
                 int iCRMUserRefPos=Integer.parseInt(resourcebundle.getString("iCRMUserRefPos"))+iresponseIDPos;
                 // Number of OrderLines has been added based on @1 
                 int inumberofUserLinesPos=Integer.parseInt(resourcebundle.getString("inumberofUserLinesPos"))+iCRMUserRefPos;
                 
                 //messageHeader
                 String strMessageID = xmlString.substring(iLogicalCountryLengthPos, imessageIDPos);
                 String strTransactionID = xmlString.substring(imessageIDPos, itransactionIDPos);
                 String strMessageHistory = xmlString.substring(itransactionIDPos, imessageHistoryPos);
                 String strTracingID = xmlString.substring(imessageHistoryPos, itracingIDPos);
                 String strMessageCode = xmlString.substring(itracingIDPos, imessageCodePos);
                 String strVersion = xmlString.substring(imessageCodePos, iversionPos);
                 
                 // Message Length Not Captured as it is not Required.
                 //String strMessageLength = xmlString.substring(iversionPos, imessageLengthPos);
                 
                 //TimeStamp not captured as we sent currentTimeStamp   
                 //String strTimeStamp = xmlString.substring(imessageLengthPos, itimeStampPos);
                 String strUserId = xmlString.substring(itimeStampPos, iuserIdPos);
                 String strObjectSystem = xmlString.substring(iuserIdPos, iobjectSystemPos);
                 // Filler Not Captured as it is not Required.
                 //String strFiller = xmlString.substring(iobjectSystemPos, iFillerPos);
                
                 String strCountryCode = xmlString.substring(0, iLogicalCountryLengthPos);
                 //orderHeader
                 String strMessageStatus = xmlString.substring(iFillerPos, imessageStatusPos);
                 String strResponseID = xmlString.substring(imessageStatusPos, iresponseIDPos);
                 String strCRMOrderRef = xmlString.substring(iresponseIDPos,iCRMUserRefPos);
                 String strNumberofUsers = xmlString.substring(iCRMUserRefPos,inumberofUserLinesPos);
                 
                 int ioLIneOrderLength = Integer.parseInt(resourcebundle.getString("ioLIneOrderLength"));
                 int noOfUsers=Integer.parseInt(strNumberofUsers);
                 
                 Calendar rightNow = Calendar.getInstance();
                 
                 eaiHeader.setApplicationId(strObjectSystem.trim());
                 eaiHeader.setInstanceId(strUserId.trim());
                 eaiHeader.setMessageHistory(strMessageHistory.trim());
                 eaiHeader.setMessageId(strMessageID.trim());
                 eaiHeader.setPayloadVersion(strVersion.trim());
                 eaiHeader.setTimeStamp(rightNow);
                 eaiHeader.setTimeToLive(0);
                 eaiHeader.setTracingId(strTracingID.trim());
                 eaiHeader.setTransactionId(strTransactionID.trim());
                 
                 // Response and Response Code has been Removed from Message Header
                 messageHeader.setActionCode(strMessageCode.trim());
                 messageHeader.setUserId(strUserId.trim());
                 messageHeader.setVersion(strVersion.trim());
                 
                 responseUserHeader.setCRMOrderNumber(strCRMOrderRef.trim());               
                 responseUserHeader.setRequestStatus(strResponseID);
                 
                 responseUserHeader.setResponse(new com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.Response(strMessageStatus.trim()));
                 
                 int iOLICRMOLIRef = Integer.parseInt(resourcebundle.getString("iOLICRMOLIRefPos"))+inumberofUserLinesPos;                
                 int iOLIOrderLineResponseID = Integer.parseInt(resourcebundle.getString("iOLIOrderLineResponseIDPos"))+iOLICRMOLIRef;
                                
                 USResponseULI userLineItems[]  = new USResponseULI[noOfUsers];
                 for(int z=0; z < noOfUsers;z++) {
                      USResponseULI responseULI  = new USResponseULI();                     
                      responseULI.setCRMOLIId(xmlString.substring(inumberofUserLinesPos+(z*ioLIneOrderLength),iOLICRMOLIRef+(z*ioLIneOrderLength)).trim());                                   
                      responseULI.setRequestStatus(xmlString.substring(iOLICRMOLIRef+(z*ioLIneOrderLength),iOLIOrderLineResponseID+(z*ioLIneOrderLength)).trim());
                      userLineItems[z] = responseULI;
                  } 
                //rspArrayList = new ArrayList(); 
                //rspArrayList = responseDAO.getResponseCode(SUCCESS);
                //responseBean= (ResponseBean)rspArrayList.get(0);
                 
                rspId = ResBun.getString("SUCCESS");//responseBean.getStrRespId();
                rspCode = ResBun.getString("SUCCESSCODE"); //responseBean.getStrRespCode();
                rspMessage = ResBun.getString("SUCCESSMESSAGE"); //responseBean.getStrRespMessage();
                 basicResponse.setResponse(new com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.Response(SUCCESS_RESPONSE));
                 basicResponse.setResponseCode(rspCode);
                 basicResponse.setResponseMessage(rspMessage);
                 
                 userStatus.setEaiHeader(eaiHeader);
                 userStatus.setMessageHeader(messageHeader);
                 userStatus.setUserHeader(responseUserHeader);
                 userStatus.setParsingStatus(basicResponse);
                 userStatus.setUserLineItem(userLineItems);
                 userStatus.setLogicalCountry(strCountryCode);
                 
             } else {
                 /* When the Parameter passed is NULL or NOT IN A VALID FORMAT */
                     /* Removed Data related stuff and Retrieving Values from Properties File
                     //rspArrayList = new ArrayList();
                     //rspArrayList = responseDAO.getResponseCode(UNABLETOREAD);
                     //responseBean= (ResponseBean)rspArrayList.get(0);
                     */
                     rspId = UNABLETOREAD; // responseBean.getStrRespId();
                     rspCode = UNABLETOREADCODE; //responseBean.getStrRespCode();
                     rspMessage = UNABLETOREADMESSAGE; //responseBean.getStrRespMessage();
                     
                     setResponseOnError(userStatus, eaiHeader, messageHeader, responseUserHeader, basicResponse, FAILURE_RESPONSE, rspCode, rspMessage);
             }
                 
             
         } catch (Exception e) {
                 /* When Exception Raises  
                  * setting the Objects to NULL
                  * */

                 if((e instanceof NullPointerException)) {
                     rspId      = INVALIDFORMAT;
                     rspCode    = INVALIDFORMATCODE;
                     rspMessage = INVALIDFORMATMESSAGE;
                      
                      setResponseOnError(userStatus, eaiHeader, messageHeader, responseUserHeader, basicResponse, FAILURE_RESPONSE, rspCode, rspMessage);    
                  } else {
                     rspId      = INVALIDFORMAT;
                     rspCode    = INVALIDFORMATCODE;
                     rspMessage = INVALIDFORMATMESSAGE;

                      setResponseOnError(userStatus, eaiHeader, messageHeader, responseUserHeader, basicResponse, FAILURE_RESPONSE, rspCode, rspMessage);    

                  }
                  
             }
             
             return userStatus;

         }
         
         /*
          * @ Method setResponseOnError 
          * @ Request Parameters - userStatus, 
          *                      - eaiHeader, 
          *                      - messageHeader, 
          *                      - responseUserHeader, 
          *                      - basicResponse
          *                      - FAILURE_RESPONSE,
          *                      - rspCode,
          *                      - rspMessage
          * 
          * @ Response           - void
          */
         public void setResponseOnError(CSUserStatus userStatus, USEaiHeader eaiHeader, USMessageHeader messageHeader, USResponseUserHeader responseUserHeader, USBasicResponse basicResponse, String FAILURE_RESPONSE, String rspCode, String rspMessage)  {
             eaiHeader.setApplicationId("");
             eaiHeader.setInstanceId("");
             eaiHeader.setMessageHistory("");
             eaiHeader.setMessageId("");
             eaiHeader.setPayloadVersion("");
             eaiHeader.setTimeStamp(Calendar.getInstance());
             eaiHeader.setTimeToLive(0);
             eaiHeader.setTracingId("");
             eaiHeader.setTransactionId("");
             
             messageHeader.setActionCode("");
             messageHeader.setUserId("");
             messageHeader.setVersion("");
                          
             responseUserHeader.setCRMOrderNumber("");               
             responseUserHeader.setRequestStatus("");
             responseUserHeader.setResponse(new com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.Response(""));
                          
             basicResponse.setResponse(new com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.Response(FAILURE_RESPONSE));
             basicResponse.setResponseCode(rspCode);
             basicResponse.setResponseMessage(rspMessage);
             
             userStatus.setEaiHeader(eaiHeader);
             userStatus.setMessageHeader(messageHeader);     
             userStatus.setUserHeader(responseUserHeader); 
             userStatus.setParsingStatus(basicResponse);
             
             USResponseULI userLineItems[]  = new USResponseULI[1];
             USResponseULI responseULI  = new USResponseULI();
             responseULI.setCRMOLIId("");
             responseULI.setRequestStatus("");
             userLineItems[0] = responseULI;
                 
             userStatus.setUserLineItem(userLineItems);
             userStatus.setLogicalCountry("");
         }
         
 }
