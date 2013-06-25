
/*************************************************************************
* Module                CRM6.1  (Sprint 1 & Sprint 2) 
*                       Order Management (Core Suite)
* File                  ParseCSOrderStatus.java
* Type                  Java File
* Description           Receives an Input from CoreSuite in Fixed Length Format and Builds Response in XML Format
*
* Base Document		CRM 6.1 EAI - Core Suite Interface Development BTM.doc
*
* Change History
* Version	Date		Author              Description Of Change
* ========	========	===========         ===============================
*  0.01		06/07/07	anvv sharma         Initial Version
*  0.02		09/07/07	anvv sharma         Removal of few OrderLine from OrderLineItems PLI, AKR, ILA, Billed etc.
*  0.03		10/07/07	anvv sharma         Removal of 'Message Status' and 'Message Id' Fields from Message Header.
*  0.04		11/07/07	anvv sharma         Adding of 'Number of Order Lines' Field.
*  0.05		13/07/07	anvv sharma         Package Name modified in Java from 'com.reuters.eai.ccrm.oms' to com.reuters.eai.cs.oms.
*  0.06		13/07/07	anvv sharma         Schema element status is changed to 'RequestStatus' in responseOrderHeader.
*  0.07		20/07/07	anvv sharma         Suffix 'Pos' added at the End of all Variables  after Code Review from Geratayya
* ========	========	===========	    ===============================
*  Updations in Sprint 2
*
*  0.08		06/08/07	anvv sharma         Basic Response has been added for Response
*  0.09		06/08/07	anvv sharma         Implemented Expection Handling
*  0.091        19/09/07        Geratayya P         Added country code and recompiled with new schema files
*  0.092        28/09/07        anvv sharma         Added country code at Exceptions and Recompiled with new schema files
*  0.093        02/07/08        anvv sharma         Removed Database Handling Code & Database Exception & Exceptions Messages Modified
* ========	========	===========	    ===============================
*  Updations in Sprint 10
*  0.010        11/02/08        Meenal Orkey         Added PermBillFlag and recompiled with new schema files
*************************************************************************/


/*************************************************************************
*
*	NOTE : 
*         TimeStamp Is Taken as Current Date in Calender format. 
*         Response Taken as :
*             1 - FAILURE CASES
*             0 - SUCCESS CASES
*         All the Fields are Taken from Resource Bundle to Avoid Hard Coding in javaCode.
*
*************************************************************************/
 
 
package com.reuters.eai.cs.oms;

/*import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.OrderStatus;
import com.reuters.ns._2007._09._01.gcap.commonmessagetypes.BasicResponse;
import com.reuters.ns._2007._09._01.gcap.commonmessagetypes.EaiHeader;
import com.reuters.ns._2007._09._01.gcap.commonordertypes.MessageHeader;

import com.reuters.ns._2007._09._01.gcap.commonmessagetypes.Response;
import com.reuters.ns._2007._09._01.gcap.commonordertypes.ResponseOLI;
import com.reuters.ns._2007._09._01.gcap.commonordertypes.ResponseOrderHeader;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement.EBCDICMessage;*/
import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.Response;
import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSOrderStatus;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement.EBCDICMessage;
import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSEaiHeader;
import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSMessageHeader;
import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSResponseOrderHeader;
import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSBasicResponse;
import com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement._CSResponseOLI;

import java.util.Calendar;
import java.util.ResourceBundle;

//import com.reuters.eai.cs.oms.ResponseDAO;

/*
 * @ Class ParseCSOrderStatus
 *
 */

public class ParseCSOrderStatus {

    /*
     *  parseOrderStatus() 
     *  @ Request Parameter - EBCDICMessage 
     *  @ Response          - OrderStatus
     */
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

    public _CSOrderStatus parseOrderStatus(EBCDICMessage parameter) {
        String xmlString = parameter.getMessage();
        //String xmlString = parameter;
        xmlString = xmlString == null ? "" : xmlString;

        _CSOrderStatus orderStatus = new _CSOrderStatus();
        _CSEaiHeader eaiHeader = new _CSEaiHeader();
        _CSMessageHeader messageHeader = new _CSMessageHeader();
        _CSResponseOrderHeader responseOrderHeader = new _CSResponseOrderHeader();
        _CSBasicResponse basicResponse = new _CSBasicResponse();
            
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
                int iCRMOrderRefPos=Integer.parseInt(resourcebundle.getString("iCRMOrderRefPos"))+iresponseIDPos;
                int icompassOrderNumberPos=Integer.parseInt(resourcebundle.getString("icompassOrderNumberPos"))+iCRMOrderRefPos;
                int ienterpriseCodePos=Integer.parseInt(resourcebundle.getString("ienterpriseCodePos"))+icompassOrderNumberPos;
                // Number of OrderLines has been added based on @1 
                int inumberofOrderLinesPos=Integer.parseInt(resourcebundle.getString("inumberofOrderLinesPos"))+ienterpriseCodePos;
                
                // Some of the Fields not Captured as the Fields are not Available in EAI.MSG.CS.OM.126_OrderStatus.xsd
                //messageHeader
                String strMessageID = xmlString.substring(iLogicalCountryLengthPos, imessageIDPos);
                String strTransactionID = xmlString.substring(imessageIDPos, itransactionIDPos);
                String strMessageHistory = xmlString.substring(itransactionIDPos, imessageHistoryPos);
                String strTracingID = xmlString.substring(imessageHistoryPos, itracingIDPos);
                String strMessageCode = xmlString.substring(itracingIDPos, imessageCodePos);
                String strVersion = xmlString.substring(imessageCodePos, iversionPos);
                
                // Message Length Not Captured as it is not Required.
                //String strMessageLength = xmlString.substring(iversionPos, imessageLengthPos);
                
                String strTimeStamp = xmlString.substring(imessageLengthPos, itimeStampPos);
                String strUserId = xmlString.substring(itimeStampPos, iuserIdPos);
                String strObjectSystem = xmlString.substring(iuserIdPos, iobjectSystemPos);
                // Filler Not Captured as it is not Required.
                //String strFiller = xmlString.substring(iobjectSystemPos, iFillerPos);
                
                String strCountryCode = xmlString.substring(0, iLogicalCountryLengthPos);
                //orderHeader
                String strMessageStatus = xmlString.substring(iFillerPos, imessageStatusPos);
                String strResponseID = xmlString.substring(imessageStatusPos, iresponseIDPos);
                String strCRMOrderRef = xmlString.substring(iresponseIDPos,iCRMOrderRefPos);
                String strCompassOrderNumber = xmlString.substring(iCRMOrderRefPos, icompassOrderNumberPos);
                String strEnterpriseCode = xmlString.substring(icompassOrderNumberPos, ienterpriseCodePos);
                String strNumberofOrderLines = xmlString.substring(ienterpriseCodePos,inumberofOrderLinesPos);
                
                int ioLIneOrderLength = Integer.parseInt(resourcebundle.getString("ioLIneOrderLength"));
                int noOrderLines=Integer.parseInt(strNumberofOrderLines);
                
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
                
                responseOrderHeader.setCRMOrderNumber(strCRMOrderRef.trim());
                responseOrderHeader.setEntrepriseCode(strEnterpriseCode.trim());
                responseOrderHeader.setOrderNumber(strCompassOrderNumber.trim());
                // @2 Data in MessageStatus(ResponseStatus) Contains ResponseID 
                // @2 Data in ResponseID Contains MessageStatus (ResponseStatus)
                responseOrderHeader.setRequestStatus(strResponseID);
                //responseOrderHeader.setResponse(new Response(strMessageStatus.trim()));
                
                responseOrderHeader.setResponse(new com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.Response(strMessageStatus.trim()));
             
                int iOLICRMOLIRef = Integer.parseInt(resourcebundle.getString("iOLICRMOLIRefPos"))+inumberofOrderLinesPos;
                int iOLIItemNo = Integer.parseInt(resourcebundle.getString("iOLIItemNoPos"))+iOLICRMOLIRef;
                int iOLIILA = Integer.parseInt(resourcebundle.getString("iOLIILAPos"))+iOLIItemNo;
                int iOLIUserNumber = Integer.parseInt(resourcebundle.getString("iOLIUserNumberPos"))+iOLIILA;
                int iOLIUserID = Integer.parseInt(resourcebundle.getString("iOLIUserIDPos"))+iOLIUserNumber;
                int iOLIQUID = Integer.parseInt(resourcebundle.getString("iOLIQUIDPos"))+iOLIUserID;
                int iOLIStatus = Integer.parseInt(resourcebundle.getString("iOLIStatusPos"))+iOLIQUID;
                int iOLISID = Integer.parseInt(resourcebundle.getString("iOLISIDPos"))+iOLIStatus;
               int iOLIOrderLineResponseID = Integer.parseInt(resourcebundle.getString("iOLIOrderLineResponseIDPos"))+iOLISID;
                int iOPermBillFlag = Integer.parseInt(resourcebundle.getString("iOPermBillFlagPos"))+iOLIOrderLineResponseID;
                
                 //int iOLIOrderLineResponseID = Integer.parseInt(resourcebundle.getString("iOLIOrderLineResponseIDPos"))+iOLIStatus;
                // @3 Removal of Items few orderLines i.e., PLI, AKR etc.
                _CSResponseOLI orderLineItems[]  = new _CSResponseOLI[noOrderLines];
                 for(int z=0; z < noOrderLines;z++) {
                     _CSResponseOLI responseOLI  = new _CSResponseOLI();
                     responseOLI.setCRMOLIId(xmlString.substring(inumberofOrderLinesPos+(z*ioLIneOrderLength),iOLICRMOLIRef+(z*ioLIneOrderLength)).trim());
                     responseOLI.setItemNumber(xmlString.substring((iOLICRMOLIRef+(z*ioLIneOrderLength)),iOLIItemNo+(z*ioLIneOrderLength)).trim());
                     responseOLI.setILA(xmlString.substring(iOLIItemNo+(z*ioLIneOrderLength),iOLIILA+(z*ioLIneOrderLength)).trim());
                     responseOLI.setUserNumber(xmlString.substring(iOLIILA+(z*ioLIneOrderLength),iOLIUserNumber+(z*ioLIneOrderLength)).trim());
        
                     responseOLI.setUserId(xmlString.substring(iOLIUserNumber+(z*ioLIneOrderLength),iOLIUserID+(z*ioLIneOrderLength)).trim());
                     responseOLI.setQUID(xmlString.substring(iOLIUserID+(z*ioLIneOrderLength),iOLIQUID+(z*ioLIneOrderLength)).trim());
                     //responseOLI.setStatus(xmlString.substring(iOLIQUID+(z*ioLIneOrderLength),iOLIStatus+(z*ioLIneOrderLength)).trim());
                     //responseOLI.setOrderLinestatus(xmlString.substring(iOLIStatus+(z*ioLIneOrderLength),iOLIOrderLineResponseID+(z*ioLIneOrderLength)).trim());
                     responseOLI.setOrderLinestatus(xmlString.substring(iOLIQUID+(z*ioLIneOrderLength),iOLIStatus+(z*ioLIneOrderLength)).trim());
                     responseOLI.setSID(xmlString.substring(iOLIStatus+(z*ioLIneOrderLength),iOLISID+(z*ioLIneOrderLength)).trim());
                     responseOLI.setRequestStatus(xmlString.substring(iOLISID+(z*ioLIneOrderLength),iOLIOrderLineResponseID+(z*ioLIneOrderLength)).trim());
                     responseOLI.setPermBillFlag(xmlString.substring(iOLIOrderLineResponseID+(z*ioLIneOrderLength),iOPermBillFlag+(z*ioLIneOrderLength)).trim());
                    // responseOLI.setRequestStatus(xmlString.substring(iOLIStatus+(z*ioLIneOrderLength),iOLIOrderLineResponseID+(z*ioLIneOrderLength)).trim());
                     
                     orderLineItems[z] = responseOLI;
                 }

                /*
                 *  Added Basic Response in Sprint-2
                 */
                //rspArrayList = new ArrayList(); 
                //rspArrayList = responseDAO.getResponseCode(SUCCESS);
                //responseBean= (ResponseBean)rspArrayList.get(0);
                
                rspId = ResBun.getString("SUCCESS");//responseBean.getStrRespId();
                rspCode = ResBun.getString("SUCCESSCODE"); //responseBean.getStrRespCode();
                rspMessage = ResBun.getString("SUCCESSMESSAGE"); //responseBean.getStrRespMessage();
               basicResponse.setResponse(new com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.Response(SUCCESS_RESPONSE));
                basicResponse.setResponseCode(rspCode);
                basicResponse.setResponseMessage(rspMessage);
                
                orderStatus.setEaiHeader(eaiHeader);
                orderStatus.setMessageHeader(messageHeader);
                orderStatus.setOrderHeader(responseOrderHeader);
                orderStatus.setParsingStatus(basicResponse);
                orderStatus.setOrderLineItem(orderLineItems);
                orderStatus.setLogicalCountry(strCountryCode);
                
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
                    
                    setResponseOnError(orderStatus, eaiHeader, messageHeader, responseOrderHeader, basicResponse, FAILURE_RESPONSE, SUCCESS_RESPONSE, rspId, rspCode, rspMessage);
            }
                
            
        } catch (Exception e) {
                /* When Exception Raises  
                 * setting the Objects to NULL
                 * */

                 if((e instanceof NullPointerException)) {
                     rspId      = INVALIDFORMAT;
                     rspCode    = INVALIDFORMATCODE;
                     rspMessage = INVALIDFORMATMESSAGE;
                     
                     setResponseOnError(orderStatus, eaiHeader, messageHeader, responseOrderHeader, basicResponse, FAILURE_RESPONSE, SUCCESS_RESPONSE, rspId, rspCode, rspMessage);    
                 } else {
                     rspId      = INVALIDFORMAT;
                     rspCode    = INVALIDFORMATCODE;
                     rspMessage = INVALIDFORMATMESSAGE;
                     
                     setResponseOnError(orderStatus, eaiHeader, messageHeader, responseOrderHeader, basicResponse, FAILURE_RESPONSE, SUCCESS_RESPONSE, rspId, rspCode, rspMessage);    
                     
                 }
                 
            }
            
            return orderStatus;

        }
        
        /*
         * @ Method setResponseOnError 
         * @ Request Parameters - orderStatus, 
         *                      - eaiHeader, 
         *                      - messageHeader, 
         *                      - responseOrderHeader, 
         *                      - basicResponse
         *                      - FAILURE_RESPONSE,
         *                      - SUCCESS_RESPONSE,
         *                      - rspId,
         *                      - rspCode,
         *                      - rspMessage
         * 
         * @ Response           - void
         */
        public void setResponseOnError(_CSOrderStatus orderStatus, _CSEaiHeader eaiHeader, _CSMessageHeader messageHeader, _CSResponseOrderHeader responseOrderHeader, _CSBasicResponse basicResponse, String FAILURE_RESPONSE, String SUCCESS_RESPONSE, String rspId, String rspCode, String rspMessage)  {
            
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
            
            
            responseOrderHeader.setCRMOrderNumber("");
            responseOrderHeader.setEntrepriseCode("");
            responseOrderHeader.setOrderNumber("");
            // In Sprint-1 this was assigned to/as Response  
            responseOrderHeader.setRequestStatus("");
            responseOrderHeader.setResponse(new com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.Response(""));
            
            
            basicResponse.setResponse(new com.reuters.ns._2007._01._25.gcap.eai.cs.om.ordermanagement.Response(FAILURE_RESPONSE));
            basicResponse.setResponseCode(rspCode);
            basicResponse.setResponseMessage(rspMessage);
            
            orderStatus.setEaiHeader(eaiHeader);
            orderStatus.setMessageHeader(messageHeader);     
            orderStatus.setOrderHeader(responseOrderHeader); 
            orderStatus.setParsingStatus(basicResponse);
            
            _CSResponseOLI orderLineItems[]  = new _CSResponseOLI[1];
                _CSResponseOLI responseOLI  = new _CSResponseOLI();
                responseOLI.setCRMOLIId("");
                responseOLI.setItemNumber("");
                responseOLI.setILA("");
                responseOLI.setUserNumber("");            
                responseOLI.setUserId("");
                responseOLI.setQUID("");
            responseOLI.setRequestStatus("");
            responseOLI.setSID("");
            responseOLI.setOrderLinestatus("");
            responseOLI.setPermBillFlag("");
              //  
                
                orderLineItems[0] = responseOLI;
            orderStatus.setOrderLineItem(orderLineItems);
            orderStatus.setLogicalCountry("");
        }
       /* public static void main(String[] args){
        
        ParseCSOrderStatus PCOS = new ParseCSOrderStatus();
        EBCDICMessage em = new EBCDICMessage();
        em.setMessage("BC                                                            CRM;EAI;CS;                                                                                         000000f23601904d6c563d:-1bcabdd1:1191a2040e2:-4005OM05A348                   Geratayya.Patchipulusu                            Siebel                                                       0A0001-241815                      000030    0011-241815-001   0000044      2345000000     CA000");
        
        _CSOrderStatus CSOS = PCOS.parseOrderStatus(em);
        
        _CSResponseOLI OLI[] =  CSOS.getOrderLineItem();
        
        for(int i=0;i<OLI.length;i++){
        
        System.out.println(OLI[i].getCRMOLIId());
        
        
        }
        
        
        }*/
}

