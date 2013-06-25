/*************************************************************************
* Module                CRM6  (Sprint 6 )
*                       Order Management (Core Suite)
* File                  ParseCSUserOrderResponse.java
* Type                  Java File
* Description           Receives an Input from CoreSuite in Fixed Length Format and Builds Response in XML Format
*
* Base Document		CRM 6.1 EAI - Core Suite Interface Development BTM.doc
*
* Change History
* Version	Date		Author              Description Of Change
* ========	========	===========         ===============================
*  0.01		17/06/2009	Shanker Reddy         Initial Version

*************************************************************************/
package com.reuters.eai.cs.uom;

import com.reuters.ns._2007._09._01.gcap.eai.cs.fixedlengthresponse.FixedLengthMessage;

import java.util.Calendar;
import java.util.ResourceBundle;


public class ParseCSUserOrderResponse {
    String rspId = "";
    String rspCode = "";
    String rspMessage = "";

    /**Method ParseUserOrderResonse  takes input as FixedLenghtMessage and converts to XML input. 
     * @param parameter
     * @return CSUserOrderResponse
     * 
     */
    public CSUserOrderResponse parseUserOrderResponse(FixedLengthMessage parameter) {
        ResourceBundle resourcebundle = 
            ResourceBundle.getBundle("ApplicationResources");
        String xmlString = parameter.getValue();
        //String xmlString = parameter;
        xmlString = xmlString == null ? "" : xmlString;

        CSUserOrderResponse orderStatus = new CSUserOrderResponse();
        CSEaiHeaderResponse eaiHeader = new CSEaiHeaderResponse();
        CSMessageHeaderResponse messageHeader = new CSMessageHeaderResponse();
        CSUserOrderHeaderResponse responseOrderHeader = 
            new CSUserOrderHeaderResponse();
        CSBasicUserResponse basicResponse = new CSBasicUserResponse();


        String FAILURE_RESPONSE = resourcebundle.getString("FAILURE_RESPONSE");
        String SUCCESS_RESPONSE = resourcebundle.getString("SUCCESS_RESPONSE");

        //  final String SUCCESS = resourcebundle.getString("SUCCESS");
        // Reffered for IOException Expn - when Input Request is NULL - when Input Request is not passed
        final String UNABLETOREAD = resourcebundle.getString("UNABLETOREAD");
        final String UNABLETOREADCODE = 
            resourcebundle.getString("UNABLETOREADCODE");
        final String UNABLETOREADMESSAGE = 
            resourcebundle.getString("UNABLETOREADMESSAGE");

        // Reffered for NullPointer Expn - when ArrayList is NULL - when Database is Down
        final String INVALIDFORMAT = resourcebundle.getString("INVALIDFORMAT");
        final String INVALIDFORMATCODE = 
            resourcebundle.getString("INVALIDFORMATCODE");
        final String INVALIDFORMATMESSAGE = 
            resourcebundle.getString("INVALIDFORMATMESSAGE");


        try {
            if (!xmlString.equalsIgnoreCase("")) {

                int iLogicalCountryLengthPos = 
                    Integer.parseInt(resourcebundle.getString("iLogicalCountryLengthPos"));
                int imessageIDPos = 
                    Integer.parseInt(resourcebundle.getString("imessageIDPos")) + 
                    iLogicalCountryLengthPos;
                int itransactionIDPos = 
                    Integer.parseInt(resourcebundle.getString("itransactionIDPos")) + 
                    imessageIDPos;
                int imessageHistoryPos = 
                    Integer.parseInt(resourcebundle.getString("imessageHistoryPos")) + 
                    itransactionIDPos;
                int itracingIDPos = 
                    Integer.parseInt(resourcebundle.getString("itracingIDPos")) + 
                    imessageHistoryPos;
                int iactionCodePos = 
                    Integer.parseInt(resourcebundle.getString("iactionCodePos")) + 
                    itracingIDPos;
                int iversionPos = 
                    Integer.parseInt(resourcebundle.getString("iversionPos")) + 
                    iactionCodePos;
                int imessageLengthPos = 
                    Integer.parseInt(resourcebundle.getString("imessageLengthPos")) + 
                    iversionPos;
                int itimeStampPos = 
                    Integer.parseInt(resourcebundle.getString("itimeStampPos")) + 
                    imessageLengthPos;
                int iuserIdPos = 
                    Integer.parseInt(resourcebundle.getString("iuserIdPos")) + 
                    itimeStampPos;
                int iobjectSystemPos = 
                    Integer.parseInt(resourcebundle.getString("iobjectSystemPos")) + 
                    iuserIdPos;
                int isourceSystemPos = 
                    Integer.parseInt(resourcebundle.getString("isourceSystemPos")) + 
                    iobjectSystemPos;

                String iFillerPos = resourcebundle.getString("iFillerPos");
                int iFiller = Integer.parseInt(iFillerPos) + isourceSystemPos;

                //orderHeader
                int imessageStatus = 
                    Integer.parseInt(resourcebundle.getString("imessageStatusPos")) + 
                    iFiller;
                int imessageHeaderIDPos = 
                    Integer.parseInt(resourcebundle.getString("imessageHeaderIDPos")) + 
                    imessageStatus;
                int itransanctionId = 
                    Integer.parseInt(resourcebundle.getString("itransanctionId")) + 
                    imessageHeaderIDPos;


                int iUserOrderNumberPos = 
                    Integer.parseInt(resourcebundle.getString("iOrderNumberPos")) + 
                    itransanctionId;
                int inumberofUserOrderLinesPos = 
                    Integer.parseInt(resourcebundle.getString("inumberofOrderLinesPos")) + 
                    iUserOrderNumberPos;

                int iuniqueUserLine = 
                    Integer.parseInt(resourcebundle.getString("iuniqueUserLine")) + 
                    inumberofUserOrderLinesPos;
                int iathenaSubId = 
                    Integer.parseInt(resourcebundle.getString("iathenaSubId")) + 
                    iuniqueUserLine;
                int iPLI = 
                    Integer.parseInt(resourcebundle.getString("iPLI")) + iathenaSubId;
                int iOLIItemNo = 
                    Integer.parseInt(resourcebundle.getString("iOLIItemNoPos")) + 
                    iPLI;
                int iUserOLIOrderLineResponseID = 
                    Integer.parseInt(resourcebundle.getString("iOLIUserOrderLineResponseIDPos")) + 
                    iOLIItemNo;


                //messageHeader

                String strCountryCode = 
                    xmlString.substring(0, iLogicalCountryLengthPos);
                String strMessageID = 
                    xmlString.substring(iLogicalCountryLengthPos, 
                                        imessageIDPos);
                String strTransactionID = 
                    xmlString.substring(imessageIDPos, itransactionIDPos);
                String strMessageHistory = 
                    xmlString.substring(itransactionIDPos, imessageHistoryPos);
                String strTracingID = 
                    xmlString.substring(imessageHistoryPos, itracingIDPos);
                String strActionCode = 
                    xmlString.substring(itracingIDPos, iactionCodePos);
                String strVersion = 
                    xmlString.substring(iactionCodePos, iversionPos);

                // Message Length Not Captured as it is not Required.
                //  String strMessageLength = xmlString.substring(iversionPos, imessageLengthPos);

                String strTimeStamp = 
                    xmlString.substring(imessageLengthPos, itimeStampPos);
                String strUserId = 
                    xmlString.substring(itimeStampPos, iuserIdPos);
                String strObjectSystem = 
                    xmlString.substring(iuserIdPos, iobjectSystemPos);
                String strSourceSystem = 
                    xmlString.substring(iobjectSystemPos, isourceSystemPos);
                // Filler Not Captured as it is not Required.
                //  String strFiller = xmlString.substring(isourceSystemPos,iFiller);


                //orderHeader
                String strMessageStatus = 
                    xmlString.substring(iFiller, imessageStatus);
                String strMessageHeaderID = 
                    xmlString.substring(imessageStatus, imessageHeaderIDPos);
                String strtransanctionId = 
                    xmlString.substring(imessageHeaderIDPos, itransanctionId);
                String strOrderNumber = 
                    xmlString.substring(itransanctionId, iUserOrderNumberPos);
                String strNumberofUserOrderLines = 
                    xmlString.substring(iUserOrderNumberPos, 
                                        inumberofUserOrderLinesPos);


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


                messageHeader.setMessageId(strMessageID.trim());
                messageHeader.setTransactionId(strTransactionID.trim());
                messageHeader.setMessageHistory(strMessageHistory.trim());
                messageHeader.setTracingId(strTracingID.trim());
                messageHeader.setActionCode(strActionCode.trim());
                messageHeader.setVersion(strVersion.trim());
                messageHeader.setTimeStamp(rightNow);
                messageHeader.setUserId(strUserId.trim());
                messageHeader.setObjectSystem(strObjectSystem.trim());
                messageHeader.setSourceSystem(strSourceSystem.trim());


                responseOrderHeader.setMessageStatus(strMessageStatus.trim());
                responseOrderHeader.setUserHeaderMessageId(strMessageHeaderID.trim());
                responseOrderHeader.setTransactionId(strtransanctionId.trim());
                responseOrderHeader.setOrderNumber(strOrderNumber.trim());


                int noOrderLines = Integer.parseInt(strNumberofUserOrderLines);

                String iuseroLIneOrderLengthpos = 
                    resourcebundle.getString("ioLIneOrderLengthpos");

                int ioLIneOrderLength = 
                    Integer.parseInt(iuseroLIneOrderLengthpos);


                CSUOLIResponse orderLineItems[] = 
                    new CSUOLIResponse[noOrderLines];
                for (int z = 0; z < noOrderLines; z++) {

                    CSUOLIResponse responseOLI = new CSUOLIResponse();
                    responseOLI.setUserUniqueLineId(xmlString.substring(inumberofUserOrderLinesPos + 
                                                                        (z * 
                                                                         ioLIneOrderLength), 
                                                                        iuniqueUserLine + 
                                                                        (z * 
                                                                         ioLIneOrderLength)).trim());
                    responseOLI.setUserAthenaSubId(xmlString.substring((iuniqueUserLine + 
                                                                        (z * 
                                                                         ioLIneOrderLength)), 
                                                                       iathenaSubId + 
                                                                       (z * 
                                                                        ioLIneOrderLength)).trim());
                    responseOLI.setUserPLI(xmlString.substring(iathenaSubId + 
                                                               (z * 
                                                                ioLIneOrderLength), 
                                                               iPLI + 
                                                               (z * ioLIneOrderLength)).trim());
                    responseOLI.setUserItemNumber(xmlString.substring(iPLI + 
                                                                      (z * 
                                                                       ioLIneOrderLength), 
                                                                      iOLIItemNo + 
                                                                      (z * 
                                                                       ioLIneOrderLength)).trim());
                    responseOLI.setUserMessageId(xmlString.substring(iOLIItemNo + 
                                                                     (z * 
                                                                      ioLIneOrderLength), 
                                                                     iUserOLIOrderLineResponseID + 
                                                                     (z * 
                                                                      ioLIneOrderLength)).trim());


                    orderLineItems[z] = responseOLI;
                }


                rspId = resourcebundle.getString("SUCCESS");
                rspCode = resourcebundle.getString("SUCCESSCODE");
                rspMessage = resourcebundle.getString("SUCCESSMESSAGE");
                basicResponse.setUserResponse(new UserResponse((SUCCESS_RESPONSE)));
                basicResponse.setUserResponseCode(rspCode);
                basicResponse.setUserResponseMessage(rspMessage);

                orderStatus.setEaiHeader(eaiHeader);
                orderStatus.setLogicalCountry(strCountryCode);
                orderStatus.setMessageHeader(messageHeader);
                orderStatus.setUserOrderHeader(responseOrderHeader);
                orderStatus.setUserOrderLineItem(orderLineItems);
                orderStatus.setParsingStatus(basicResponse);


            } else {

                rspId = UNABLETOREAD;
                rspCode = UNABLETOREADCODE;
                rspMessage = UNABLETOREADMESSAGE;

                setResponseOnError(orderStatus, eaiHeader, messageHeader, 
                                   responseOrderHeader, basicResponse, 
                                   FAILURE_RESPONSE, SUCCESS_RESPONSE, rspId, 
                                   rspCode, rspMessage);

            }


        } catch (Exception e) {
            /* When Exception Raises
                     * setting the Objects to NULL
                     * */

            if ((e instanceof NullPointerException)) {
                rspId = INVALIDFORMAT;
                rspCode = INVALIDFORMATCODE;
                rspMessage = INVALIDFORMATMESSAGE;

                setResponseOnError(orderStatus, eaiHeader, messageHeader, 
                                   responseOrderHeader, basicResponse, 
                                   FAILURE_RESPONSE, SUCCESS_RESPONSE, rspId, 
                                   rspCode, rspMessage);
            } else {
                rspId = INVALIDFORMAT;
                rspCode = INVALIDFORMATCODE;
                rspMessage = INVALIDFORMATMESSAGE;

                setResponseOnError(orderStatus, eaiHeader, messageHeader, 
                                   responseOrderHeader, basicResponse, 
                                   FAILURE_RESPONSE, SUCCESS_RESPONSE, rspId, 
                                   rspCode, rspMessage);

            }

        }

        return orderStatus;

    }

    /**
     *  setResponseOnError set null values on event Invalid Format or unable to Read Data.
     * @param orderStatus
     * @param eaiHeader
     * @param messageHeader
     * @param responseOrderHeader
     * @param basicResponse
     * @param FAILURE_RESPONSE
     * @param SUCCESS_RESPONSE
     * @param rspId
     * @param rspCode
     * @param rspMessage
     */
    public

    void setResponseOnError(CSUserOrderResponse orderStatus, 
                            CSEaiHeaderResponse eaiHeader, 
                            CSMessageHeaderResponse messageHeader, 
                            CSUserOrderHeaderResponse responseOrderHeader, 
                            CSBasicUserResponse basicResponse, 
                            String FAILURE_RESPONSE, String SUCCESS_RESPONSE, 
                            String rspId, String rspCode, String rspMessage) {

        eaiHeader.setApplicationId("");
        eaiHeader.setInstanceId("");
        eaiHeader.setMessageHistory("");
        eaiHeader.setMessageId("");
        eaiHeader.setPayloadVersion("");
        eaiHeader.setTimeStamp(Calendar.getInstance());
        eaiHeader.setTimeToLive(0);
        eaiHeader.setTracingId("");
        eaiHeader.setTransactionId("");

        messageHeader.setMessageId("");
        messageHeader.setTransactionId("");
        messageHeader.setMessageHistory("");
        messageHeader.setTracingId("");
        messageHeader.setActionCode("");
        messageHeader.setVersion("");
        messageHeader.setTimeStamp(Calendar.getInstance());
        messageHeader.setUserId("");
        messageHeader.setObjectSystem("");
        messageHeader.setSourceSystem("");


        responseOrderHeader.setMessageStatus("");
        responseOrderHeader.setUserHeaderMessageId("");
        responseOrderHeader.setTransactionId("");
        responseOrderHeader.setOrderNumber("");


        basicResponse.setUserResponse(new UserResponse((FAILURE_RESPONSE)));
        basicResponse.setUserResponseCode(rspCode);
        basicResponse.setUserResponseMessage(rspMessage);

        orderStatus.setEaiHeader(eaiHeader);
        orderStatus.setMessageHeader(messageHeader);
        orderStatus.setParsingStatus(basicResponse);
        orderStatus.setUserOrderHeader(responseOrderHeader);


        CSUOLIResponse orderLineItems[] = new CSUOLIResponse[1];

        CSUOLIResponse responseOLI = new CSUOLIResponse();
        responseOLI.setUserUniqueLineId("");
        responseOLI.setUserAthenaSubId("");
        responseOLI.setUserPLI("");
        responseOLI.setUserItemNumber("");
        responseOLI.setUserMessageId("");
        orderLineItems[0] = responseOLI;

        orderStatus.setUserOrderLineItem(orderLineItems);
        orderStatus.setLogicalCountry("");
    }

}


