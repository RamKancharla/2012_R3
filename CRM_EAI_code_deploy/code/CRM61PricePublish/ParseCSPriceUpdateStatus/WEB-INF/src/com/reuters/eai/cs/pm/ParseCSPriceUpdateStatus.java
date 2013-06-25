 /*************************************************************************
 * Module                CRM6.1  (Sprint 8) 
 *                       Price List Management (Core Suite)
 * File                  ParseCSPriceListStatus.java
 * Type                  Java File
 * Description           Receives an Input from CoreSuite in Fixed Length Format 
 *                       and Builds Response in XML Format 
 *
 * Base Document		CRM 6.1 EAI - Core Suite Interface Development BTM.doc
 *
 * Change History
 * Version	Date		Author                         Description Of Change
 * ========	========	======================         ===============================
 *  0.01	04/10/08	Kasireddy Harika               Initial Version
 *  0.01        04/15/08        Kasireddy Harika               Rework after xsd chages.
 * ========	========	======================	       ===============================
 ***************************************************************************/
package com.reuters.eai.cs.pm;

import com.reuters.ns._2007._09._01.gcap.eai.cs.fixedlengthresponse.FixedLengthMessage;
import com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate.Response;
import com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSBasicResponse;
import com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSCompassMessageHeader;
import com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSEaiHeader;
import com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSPriceUpdateReqHeader;
import com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSPriceUpdateReqLineItem;
import com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSPriceUpdateStatus;

import java.sql.SQLException;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.ResourceBundle;

import javax.naming.NamingException;

public class ParseCSPriceUpdateStatus {
    
    ResponseDAO responseDAO     = new ResponseDAO();
    ArrayList rspArrayList      = null;
    ResponseBean responseBean   = null;
    // Contains Response Content
    String rspId        = "";
    String rspCode      = "";
    String rspMessage   = "";
    public _CSPriceUpdateStatus parsePriceUpdateStatus(FixedLengthMessage parameter) {
        ResourceBundle resourcebundle = ResourceBundle.getBundle("ApplicationResources");
        
        String xmlString = parameter.getValue();
               
               xmlString = xmlString == null ? "" : xmlString;

               _CSPriceUpdateStatus  priceListStatus = new _CSPriceUpdateStatus ();
               _CSEaiHeader eaiHeader = new _CSEaiHeader();
               _CSCompassMessageHeader messageHeader = new _CSCompassMessageHeader();
               _CSPriceUpdateReqHeader priceUpdateReqHeader = new _CSPriceUpdateReqHeader();
               _CSBasicResponse parsingPriceUpdateStatus = new _CSBasicResponse();
               
                 
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

              try {
              
                 if (!xmlString.equalsIgnoreCase("")) {
                      int iLogicalCountryLengthPos =Integer.parseInt(resourcebundle.getString("iLogicalCountryLengthPos"));
                      int iMessageIDPos =Integer.parseInt(resourcebundle.getString("iMessageIDPos")) +iLogicalCountryLengthPos;
                      int iTransactionIDPos =Integer.parseInt(resourcebundle.getString("iTransactionIDPos")) +iMessageIDPos;
                      int iMessageHistoryPos =Integer.parseInt(resourcebundle.getString("iMessageHistoryPos")) +iTransactionIDPos;
                      int iTracingIDPos =Integer.parseInt(resourcebundle.getString("iTracingIDPos")) +iMessageHistoryPos;
                      int iMessageCodePos =Integer.parseInt(resourcebundle.getString("iMessageCodePos")) +iTracingIDPos; 
                      int iVersionPos =Integer.parseInt(resourcebundle.getString("iVersionPos")) +iMessageCodePos;
                      int iMessageLengthPos =Integer.parseInt(resourcebundle.getString("iMessageLengthPos")) +iVersionPos;
                      int iTimeStampPos =Integer.parseInt(resourcebundle.getString("iTimeStampPos")) +iMessageLengthPos;
                      int iUserIDPos =Integer.parseInt(resourcebundle.getString("iUserIdPos")) +iTimeStampPos;
                      int iObjectSystemPos =Integer.parseInt(resourcebundle.getString("iObjectSystemPos")) +iUserIDPos;
                      int iFillerPos =Integer.parseInt(resourcebundle.getString("iFillerPos")) +iObjectSystemPos;
                      
                      //orderHeader
                      int iMessageStatusPos =Integer.parseInt(resourcebundle.getString("iMessageStatusPos")) +iFillerPos;
                      int iResponseIDPos =Integer.parseInt(resourcebundle.getString("iResponseIDPos")) +iMessageStatusPos;
                                                
                      int iPriceListNumberPos =Integer.parseInt(resourcebundle.getString("iPriceListNumberPos")) +iResponseIDPos;
                      int iNumberOfPLIsPos =Integer.parseInt(resourcebundle.getString("iNumberOfPLIsPos")) +iPriceListNumberPos;
                      int iPLIPos =Integer.parseInt(resourcebundle.getString("iPLIPos")) +iNumberOfPLIsPos;
                      
                      int iPLIStartDatePos=Integer.parseInt(resourcebundle.getString("iPLIStartDatePos")) +iPLIPos;
                      int iPriceLineStatusPos=Integer.parseInt(resourcebundle.getString("iPriceLineStatusPos")) +iPLIStartDatePos;
                      int iPriceLineResponseCode=Integer.parseInt(resourcebundle.getString("iPriceLineResponseCode")) +iPriceLineStatusPos;
                      int ipliId=Integer.parseInt(resourcebundle.getString("ipliId")) +iPriceLineResponseCode;
                      
                      //messageHeader
                      String strCountryCode =xmlString.substring(0, iLogicalCountryLengthPos);
                      String strMessageID =xmlString.substring(iLogicalCountryLengthPos,iMessageIDPos);
                      String strTransactionID =xmlString.substring(iMessageIDPos, iTransactionIDPos);
                      String strMessageHistory =xmlString.substring(iTransactionIDPos, iMessageHistoryPos);
                      String strTracingID =xmlString.substring(iMessageHistoryPos, iTracingIDPos);
                      String strMessageCode =xmlString.substring(iTracingIDPos, iMessageCodePos);
                                            
                      String strVersion =xmlString.substring(iMessageCodePos, iVersionPos);
                      String strTimeStamp =xmlString.substring(iMessageLengthPos, iTimeStampPos);
                      String strUserId =xmlString.substring(iTimeStampPos, iUserIDPos);
                                            
                      String strObjectSystem =xmlString.substring(iUserIDPos, iObjectSystemPos);
                      // Filler Not Captured as it is not Required.
                      //String strFiller = xmlString.substring(iObjectSystemPos, iFillerPos);
                      
                      
                      //priceHeader
                      String strMessageStatus =xmlString.substring(iFillerPos, iMessageStatusPos);
                      String strResponseID =xmlString.substring(iMessageStatusPos, iResponseIDPos);
                      String strPriceListNumber =xmlString.substring(iResponseIDPos, iPriceListNumberPos);
                      String strNumberOfPLIs =  xmlString.substring(iPriceListNumberPos, iNumberOfPLIsPos);
                      String strPLI = xmlString.substring(iNumberOfPLIsPos, iPLIPos);
                      String strPLIStartDate =xmlString.substring(iPLIPos, iPLIStartDatePos);
                      String strPLIStatus =xmlString.substring(iPLIStartDatePos, iPriceLineStatusPos);
                      String strPLIResponseCode =xmlString.substring(iPriceLineStatusPos, iPriceLineResponseCode);
                      String strpliId =xmlString.substring(iPriceLineResponseCode, ipliId);          
                      
                      eaiHeader.setApplicationId(strObjectSystem.trim());
                      eaiHeader.setInstanceId(strUserId.trim());
                      eaiHeader.setMessageHistory(strMessageHistory.trim());
                      eaiHeader.setMessageId(strMessageID.trim());
                      eaiHeader.setPayloadVersion(strVersion.trim());
                      eaiHeader.setTimeStamp(Calendar.getInstance());
                      eaiHeader.setTimeToLive(0);
                      eaiHeader.setTracingId(strTracingID.trim());
                      eaiHeader.setTransactionId(strTransactionID.trim());
                      
                      messageHeader.setMessageCode(strMessageCode.trim());
                      messageHeader.setMessageHistory(strMessageHistory.trim());
                      messageHeader.setMessageId(strMessageID.trim());
                      messageHeader.setObjectSystem(strObjectSystem.trim());
                      messageHeader.setTimeStamp(Calendar.getInstance());
                      messageHeader.setTracingId(strTracingID.trim());
                      messageHeader.setTransactionId(strTransactionID.trim());
                      messageHeader.setUserId(strUserId.trim());
                      messageHeader.setVersion(strVersion.trim());
                      
                      
                      priceUpdateReqHeader.setMessageStatus(strMessageStatus.trim());
                      priceUpdateReqHeader.setMessageResponseCode(strResponseID.trim());
                      priceUpdateReqHeader.setPriceListNumber(strPriceListNumber.trim());
                      priceUpdateReqHeader.setNumberOfPLI(strNumberOfPLIs.trim());
                      
                      int noPriceLineItems = Integer.parseInt(strNumberOfPLIs);
                      int iPriceLineItemLength =Integer.parseInt(resourcebundle.getString("iPriceLineItemLength"));
                     _CSPriceUpdateReqLineItem priceUpdateReqLineItem[] =new _CSPriceUpdateReqLineItem[noPriceLineItems];
                                          
                        for (int z = 0; z < noPriceLineItems; z++) {
                                String sStartDate =xmlString.substring(iPLIPos + (z * iPriceLineItemLength),iPLIStartDatePos +(z * iPriceLineItemLength));
                                _CSPriceUpdateReqLineItem responseOLI =new _CSPriceUpdateReqLineItem();
                                responseOLI.setPLI(xmlString.substring(iNumberOfPLIsPos +(z * iPriceLineItemLength),iPLIPos +(z * iPriceLineItemLength)).trim());
                                responseOLI.setStartDate(sStartDate);
                                responseOLI.setPLIStatus(xmlString.substring(iPLIStartDatePos +(z *iPriceLineItemLength),iPriceLineStatusPos +(z *iPriceLineItemLength)).trim());
                                responseOLI.setPLIResponseCode(xmlString.substring(iPriceLineStatusPos +(z *iPriceLineItemLength),iPriceLineResponseCode +(z *iPriceLineItemLength)).trim());
                            responseOLI.setPliId(xmlString.substring(iPriceLineResponseCode +(z *iPriceLineItemLength),ipliId +(z *iPriceLineItemLength)).trim());
                                priceUpdateReqLineItem[z] = responseOLI;
                        }
                                                              

                      parsingPriceUpdateStatus.setResponse(new Response("0"));
                      parsingPriceUpdateStatus.setResponseCode("SUCCESS");
                      parsingPriceUpdateStatus.setResponseMessage("SUCCESS");

                      priceListStatus.setEaiHeader(eaiHeader);
                      priceListStatus.setLogicalCountry(strCountryCode.trim());
                      priceListStatus.setMessageHeader(messageHeader);
                      priceListStatus.setPriceUpdateReqHeader(priceUpdateReqHeader);
                      priceListStatus.setPriceUpdateReqLineItem(priceUpdateReqLineItem);
                      priceListStatus.setParsingPriceUpdateStatus(parsingPriceUpdateStatus);
                  } else {
                /* When the Parameter passed is NULL or NOT IN A VALID FORMAT */
                    rspArrayList = new ArrayList();
                     rspArrayList = responseDAO.getResponseCode(UNABLETOREAD);
                     responseBean= (ResponseBean)rspArrayList.get(0);
                     
                     rspId = responseBean.getStrRespId();
                     rspCode = responseBean.getStrRespCode();
                     rspMessage = responseBean.getStrRespMessage();
                    
                    setResponseOnError(priceListStatus, eaiHeader, messageHeader, priceUpdateReqHeader, parsingPriceUpdateStatus, FAILURE_RESPONSE, SUCCESS_RESPONSE, rspId, rspCode, rspMessage);
            }
              }catch(Exception e){
                      /* When Exception Raises  
                       * setting the Objects to NULL
                       * */

                       if((e instanceof SQLException) || (e instanceof NamingException) || (e instanceof NullPointerException)) {
                           rspId      = DATABASEERROR;
                           rspCode    = DATABASEERRORCODE;
                           rspMessage = DATABASEERRORMSG;
                           
                           setResponseOnError(priceListStatus, eaiHeader, messageHeader, priceUpdateReqHeader, parsingPriceUpdateStatus, FAILURE_RESPONSE, SUCCESS_RESPONSE, rspId, rspCode, rspMessage);
                       } else {
                           rspId      = SERVERERROR;
                           rspCode    = INTERNALSERVERERRORCODE;
                           rspMessage = INTERNALSERVERERRORMSG;
                           
                           setResponseOnError(priceListStatus, eaiHeader, messageHeader, priceUpdateReqHeader, parsingPriceUpdateStatus, FAILURE_RESPONSE, SUCCESS_RESPONSE, rspId, rspCode, rspMessage);
                           
                       }
                     
                  }

        return priceListStatus;
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
    private void setResponseOnError(_CSPriceUpdateStatus priceListStatus, 
                                    _CSEaiHeader eaiHeader, 
                                    _CSCompassMessageHeader messageHeader, 
                                    _CSPriceUpdateReqHeader priceUpdateReqHeader, 
                                    _CSBasicResponse parsingPriceUpdateStatus, 
                                    String FAILURE_RESPONSE, 
                                    String SUCCESS_RESPONSE, String rspId, 
                                    String rspCode, String rspMessage) {
        eaiHeader.setApplicationId("");
        eaiHeader.setInstanceId("");
        eaiHeader.setMessageHistory("");
        eaiHeader.setMessageId("");
        eaiHeader.setPayloadVersion("");
        eaiHeader.setTimeStamp(Calendar.getInstance());
        eaiHeader.setTimeToLive(0);
        eaiHeader.setTracingId("");
        eaiHeader.setTransactionId("");
        
        messageHeader.setMessageCode("");
        messageHeader.setMessageHistory("");
        messageHeader.setMessageId("");
        messageHeader.setObjectSystem("");
        messageHeader.setTimeStamp(Calendar.getInstance());
        messageHeader.setTracingId("");
        messageHeader.setTransactionId("");
        messageHeader.setUserId("");
        messageHeader.setVersion("");
        
        priceUpdateReqHeader.setMessageStatus("");
        priceUpdateReqHeader.setMessageResponseCode("");
        priceUpdateReqHeader.setPriceListNumber("");
        priceUpdateReqHeader.setNumberOfPLI("");

        parsingPriceUpdateStatus.setResponse(new Response(FAILURE_RESPONSE));
        parsingPriceUpdateStatus.setResponseCode(rspCode);
        parsingPriceUpdateStatus.setResponseMessage(rspMessage);

        priceListStatus.setEaiHeader(eaiHeader);
        priceListStatus.setLogicalCountry("");
        priceListStatus.setMessageHeader(messageHeader);
        priceListStatus.setPriceUpdateReqHeader(priceUpdateReqHeader);
        _CSPriceUpdateReqLineItem priceUpdateReqLineItem[] = new _CSPriceUpdateReqLineItem[1];
        _CSPriceUpdateReqLineItem responseOLI = new _CSPriceUpdateReqLineItem();
        responseOLI.setPLI("");
        responseOLI.setStartDate("");
        responseOLI.setPLIStatus("");
        responseOLI.setPLIResponseCode("");
        responseOLI.setPliId("");
        priceUpdateReqLineItem[0] = responseOLI;
        priceListStatus.setPriceUpdateReqLineItem(priceUpdateReqLineItem);
        priceListStatus.setParsingPriceUpdateStatus(parsingPriceUpdateStatus);
                                    
    }
}
