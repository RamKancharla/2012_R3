package com.reuters.eai.cc.uom;


import java.util.Calendar;
import java.util.ResourceBundle;
import java.util.StringTokenizer;

/* ***********************************************************************************************
    * Module:       TransformMoveUserToCSFormatRequestImpl.java
    *               TransformMoveUserToCSFormat
    * Type:         Java file
    * Description:  Receives an input form in XML format and builds response in fixed length format
    *
    *
    * Change History
    * Version		Date				Author				       Description Of Change
    * =======		==================		===============================        =====================================================
    *   0.01	        08/05/09		        Swathi Nadipelli		       Initial Version	         		        			

*********************************************************************************************************************************************************/

public class TransformMoveUserToCSFormatRequestImpl {


    ResourceBundle resourcebundle = 
        ResourceBundle.getBundle("ApplicationResources");
        
        //Initialized BlankString for 40,000 chars.
        
        private static final String blankStr = "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ";

   // private StringBuffer blankStr = new StringBuffer();
    private CSFixedLengthUserOrderRequest fixedLengthOrdRequest = null;
    private _CSBasicResponse response = null;

    static final char T = 'T';
    static final char L = 'L';
    static final char N = 'N';

    String numStr = resourcebundle.getString("numStr");
    String dateTimeSeparator = resourcebundle.getString("dateTimeSeparator");
    String dateSeparator = resourcebundle.getString("dateSeparator");
    String timeSeparator = resourcebundle.getString("timeSeparator");
    String SUCCESS = resourcebundle.getString("SUCCESS");
    String FAILURE = resourcebundle.getString("FAILURE");
    String status = resourcebundle.getString("status");
    String country = "";

    int fillerLenghForMsgHeader = 
        Integer.parseInt(resourcebundle.getString("fillerLenghForMsgHeader"));
    int fillerLenghForOrdHeader = 
        Integer.parseInt(resourcebundle.getString("fillerLenghForOrdHeader"));
    int fillerLenghForOrdLineItems = 
        Integer.parseInt(resourcebundle.getString("fillerLenghForOrdLineItems"));
    int noOfOrderLinesFieldLength = 
        Integer.parseInt(resourcebundle.getString("noOfOrderLinesFieldLength"));


    String strInternalSrvErrorMsg = 
        resourcebundle.getString("strInternalSrvErrorMsg");
    String strInvalidMsgContentMsg = 
        resourcebundle.getString("strInvalidMsgContentMsg");
    String strSuccessMsg = resourcebundle.getString("strSuccessMsg");

    /**
     * Method Name:getBlankStringValue
     * used to add spaces in stringbuffer
     * @return blankStr- String Value
     */
   /* public String getBlankStringValue() {
        for (int i = 0; i < 27161; i++) {
            blankStr.append(" ");
        }
        return blankStr.toString();
    }
 */
    /**
     * Method Name:CSFixedLengthUserOrderRequest
     * @param orderRequest  
     * This method Constracts the message header,order header and user order lines message and finally
     * it returns the fixed length string.
     * @return fixedLengthOrdRequest
     */
    public CSFixedLengthUserOrderRequest transform(CSMoveUserRequest orderRequest) {


        StringBuffer orderMessage = new StringBuffer();
        _CSEaiHeader eaiHeader = orderRequest.getEaiHeader();
        fixedLengthOrdRequest = new CSFixedLengthUserOrderRequest();
        response = new _CSBasicResponse();
        response.setResponse(_CSResponse.getInstance(SUCCESS));
        response.setResponseCode(strSuccessMsg);
        response.setResponseMessage(strSuccessMsg);

        orderMessage.append(constructMsgHdr(orderRequest.getMessageHeader().getMsgHeaderValues()));
        orderMessage.append(constructORDMsg(orderRequest.getUserOrderHeader().getOrderHeaderValues()));
        orderMessage.append(constructORLMsg(orderRequest.getUserOrderLineItem()));

        fixedLengthOrdRequest.setMessage(orderMessage.toString());
        fixedLengthOrdRequest.setBasicResponse(response);
        eaiHeader.setTimeStamp(Calendar.getInstance());
        fixedLengthOrdRequest.setEaiHeader(eaiHeader);
        country = orderMessage.toString().substring(0, 2);

        //Padding for logical country
        try {
            if ((country != null && country.length() != 2) || 
                (country.trim().equals(""))) {

                response.setResponse(_CSResponse.getInstance(FAILURE));
                response.setResponseCode(strInvalidMsgContentMsg);
                response.setResponseMessage(strInvalidMsgContentMsg + 
                                            ":InvalidLogicalCountry " + 
                                            country);
                fixedLengthOrdRequest = 
                        setResponseError(fixedLengthOrdRequest, eaiHeader);
            } else {
                orderMessage.append(country);
                fixedLengthOrdRequest.setLogicalCountry(country);
            }
        } catch (Exception e) {
            response.setResponse(_CSResponse.getInstance(FAILURE));
            response.setResponseCode(strInvalidMsgContentMsg);
            response.setResponseMessage(strInvalidMsgContentMsg + ".  " + 
                                        e.toString());
        }

        return fixedLengthOrdRequest;
    }

    /**
     * Method Name:constructMsgHdr
     * @param msgHeader
     * For padding spaces for type C, zero`s for type N, and for changing the format of date in the message header.
     * @return String- StringBuffer
     */
    private String constructMsgHdr(String[] msgHeader) {


        int msgHdrCount = 0;
        String x = resourcebundle.getString("messageHeaderElementsCount");
        if (x != null)
            msgHdrCount = Integer.parseInt(x);

        int msgHdrPadLength[] = new int[msgHdrCount];
        char msgHdrPadType[] = new char[msgHdrCount];

        //getting the lengths of message Header Elements from ApplicationResources
        String msgHdrLength = 
            resourcebundle.getString("messageHeaderElementsLength");

        //getting the types of message Header Elements from ApplicationResources
        String msgHdrTypes = 
            resourcebundle.getString("messageHeaderElementsType");

        //for getting the lengths of different elements using StringTokenizer. The tokenizer is ",".

        StringTokenizer msgHdrLthTokenizer = 
            new StringTokenizer(msgHdrLength, ",");
        int count = 0;
        while (msgHdrLthTokenizer.hasMoreElements()) {
            msgHdrPadLength[count] = 
                    Integer.parseInt(msgHdrLthTokenizer.nextToken());
            count++;
        }

        //for getting the types of different elements using StringTokenizer. The tokenizer is ",".

        StringTokenizer msgHdrTypTokenizer = 
            new StringTokenizer(msgHdrTypes, ",");
        count = 0;
        while (msgHdrTypTokenizer.hasMoreElements()) {
            char msgHeaderType = msgHdrTypTokenizer.nextToken().charAt(0);
            msgHdrPadType[count] = msgHeaderType;
            count++;
        }
        StringBuffer buffer;
        String tempStr = null;
        int padCnt = 0;

        buffer = new StringBuffer();

        //for padding spaces for type C, zero`s for type N, and for changing the format of date
        try {

            for (int i = 0; i < msgHeader.length; i++) {
                tempStr = msgHeader[i];


                if (tempStr == null || tempStr.length() == 0) {
                    buffer.append(blankStr.substring(0, 
                                                                  msgHdrPadLength[padCnt]));
                } else {
                    if (msgHdrPadType[padCnt] == 'T') {
                        buffer.append(tempStr.substring(0, 4) + dateSeparator + 
                                      tempStr.substring(5, 7) + dateSeparator + 
                                      tempStr.substring(8, 
                                                        10)); //Date in CCYY/MM/DD format
                        buffer.append(dateTimeSeparator);
                        buffer.append(tempStr.substring(11, 13) + 
                                      timeSeparator + 
                                      tempStr.substring(14, 16) + 
                                      timeSeparator + 
                                      tempStr.substring(17)); //Date in HH:MI:SS format
                    } else {
                        if (msgHdrPadType[padCnt] == 'L') {
                            int msgLength = 0;
                            for (int j = 0; j < msgHdrPadLength.length; j++)
                                msgLength += msgHdrPadLength[j];
                            tempStr = 
                                    "" + (msgLength + fillerLenghForMsgHeader);

                            msgHdrPadType[padCnt] = 'N';
                            --i;
                        }
                        buffer.append((msgHdrPadType[padCnt] == 'N') ? 
                                      numStr.substring(0, 
                                                       msgHdrPadLength[padCnt] - 
                                                       tempStr.length()) + 
                                      tempStr : 
                                      tempStr + blankStr.substring(0, 
                                                                                msgHdrPadLength[padCnt] - 
                                                                                tempStr.length()));
                    }
                }
                ++padCnt;

            }
            //Adding filler
            buffer.append(blankStr.substring(0, 
                                                          fillerLenghForMsgHeader));

        } catch (Exception e) {
            _CSEaiHeader eaiHeader = new _CSEaiHeader();
            fixedLengthOrdRequest = 
                    setResponseError(fixedLengthOrdRequest, eaiHeader);
            response.setResponse(_CSResponse.getInstance(FAILURE));
            response.setResponseCode(strInternalSrvErrorMsg);
            response.setResponseMessage(e.toString() + 
                                        "  msgHeader.getLength(): " + 
                                        msgHeader.length + "   padCnt : " + 
                                        padCnt + "   tempStr: '" + tempStr + 
                                        "' tempStr.length(): " + 
                                        tempStr.length());
            e.printStackTrace();
        }

        return buffer.toString();
    }

    /**
     * Method Name:constructORDMsg
     * @param ordHeader
     * For padding spaces for type C, zero`s for type N, and for changing the format of date in order header
     * @return String- StringBuffer
     */
    private String constructORDMsg(String[] ordHeader) {


        int ordHdrCount = 0;
        String x = resourcebundle.getString("orderHeaderElementsCount");
        if (x != null)
            ordHdrCount = Integer.parseInt(x);

        int ordPadLength[] = new int[ordHdrCount];
        char ordPadType[] = new char[ordHdrCount];

        String ordHdrLth = 
            resourcebundle.getString("orderHeaderElementsLength");
        String ordHdrType = 
            resourcebundle.getString("orderHeaderElementsType");

        StringTokenizer ordHdrLthTokenizer = 
            new StringTokenizer(ordHdrLth, ",");
        StringTokenizer ordHdrTypeTokenizer = 
            new StringTokenizer(ordHdrType, ",");


        int count = 0;
        while (ordHdrLthTokenizer.hasMoreElements()) {
            ordPadLength[count] = 
                    Integer.parseInt(ordHdrLthTokenizer.nextToken());
            count++;
        }

        count = 0;
        while (ordHdrTypeTokenizer.hasMoreElements()) {
            ordPadType[count] = ordHdrTypeTokenizer.nextToken().charAt(0);
            count++;
        }

        StringBuffer buffer;
        String tempStr = null;
        int padCnt = 0;

        buffer = new StringBuffer();

        //for padding spaces for type C, zero`s for type N, and for changing the format of date
        try {
            for (int i = 0; i < ordHeader.length; ++i) {
                tempStr = ordHeader[i];

                if (tempStr == null || tempStr.length() == 0) {
                    buffer.append(blankStr.substring(0, 
                                                                  ordPadLength[padCnt]));
                } else {
                    buffer.append(((ordPadType[padCnt] == 'N') && 
                                   (tempStr.length() != 0)) ? 
                                  numStr.substring(0, 
                                                   ordPadLength[padCnt] - tempStr.length()) + 
                                  tempStr : 
                                  tempStr + blankStr.substring(0, 
                                                                            ordPadLength[padCnt] - 
                                                                            tempStr.length()));
                } 
                ++padCnt;
            }


        } catch (Exception e) {

            response.setResponse(_CSResponse.getInstance(FAILURE));
            response.setResponseCode(strInternalSrvErrorMsg);
            response.setResponseMessage(e.toString() + 
                                        "  ordmsg.getLength(): " + 
                                        ordHeader.length + "   padCnt : " + 
                                        padCnt + "   tempStr: " + tempStr);
            e.printStackTrace();

        }

        return buffer.toString();
    }

    /**
     * Method Name:constructORLMsg
     * @param orderLines -CSUOLI[] Type
     * For padding spaces for type C, zero`s for type N, and for changing the format of date in user order lines
     * @return String -StringBuffer
     */
    private String constructORLMsg(CSUOLI[] orderLines) { 
    
        int ordLineCount = 
            Integer.parseInt(resourcebundle.getString("orderLineElementsCount"));
        int olPadLength[] = new int[ordLineCount];
        char olPadType[] = new char[ordLineCount];

        String ordLineLth = 
            resourcebundle.getString("orderLineElementsLength");
        String ordLineType = resourcebundle.getString("orderLineElementsType");
        StringTokenizer ordLineLthTokenizer = 
            new StringTokenizer(ordLineLth, ",");
        StringTokenizer ordLineTypeTokenizer = 
            new StringTokenizer(ordLineType, ",");

        int count = 0;
        while (ordLineLthTokenizer.hasMoreElements()) {
            olPadLength[count] = 
                    Integer.parseInt(ordLineLthTokenizer.nextToken());
            count++;
        }
        count = 0;
        while (ordLineTypeTokenizer.hasMoreElements()) {
            olPadType[count] = ordLineTypeTokenizer.nextToken().charAt(0);
            count++;
        }

        StringBuffer buffer = new StringBuffer();
        String tempStr = null;
        int padCnt = 0;

        tempStr = "" + orderLines.length;
        buffer.append(numStr.substring(0, 
                                       noOfOrderLinesFieldLength - tempStr.length()) + 
                      tempStr);
        buffer.append(blankStr.substring(0, 
                                                      fillerLenghForOrdHeader));

        for (int j = 0; j < orderLines.length; ++j) {
            padCnt = 0;
            String[] orderLineValues = orderLines[j].getUserLineValues();

            //for padding spaces for type C, zero`s for type N, and for changing the format of date
            try {               
                for (int i = 0; i < orderLineValues.length; ++i) {
                    tempStr = orderLineValues[i];
                    if (tempStr == null || tempStr.length() == 0) {
                        buffer.append(blankStr.substring(0, 
                                                                      olPadLength[padCnt]));
                    } else {
                        buffer.append(((olPadLength[padCnt] == 'N') && 
                                       (tempStr.length() != 0)) ? 
                                      numStr.substring(0, 
                                                       olPadLength[padCnt] - tempStr.length()) + 
                                      tempStr : 
                                      tempStr + blankStr.substring(0, 
                                                                                olPadLength[padCnt] - 
                                                                                tempStr.length()));
                    }

                    ++padCnt;
                }
            } catch (Exception e) {
                response.setResponse(_CSResponse.getInstance(FAILURE));
                response.setResponseCode(strInternalSrvErrorMsg);
                response.setResponseMessage(e.toString() + 
                                            "  olNL.getLength(): " + 
                                            orderLineValues.length + 
                                            "   padCnt : " + padCnt + 
                                            "   tempStr: " + tempStr + 
                                            " olPadLength[padCnt]: " + 
                                            olPadLength[padCnt] + 
                                            "  tempStr.length(): " + 
                                            tempStr.length() + 
                                            "   numStr.length(): " + 
                                            numStr.length());
                e.printStackTrace();

            }
        }
        buffer.append(blankStr.substring(0, 
                                                      fillerLenghForOrdLineItems));
        return buffer.toString();
    }


    /**
     * Method Name:CSFixedLengthUserOrderRequest
     * @param fixedLengthOrderRequest -CSFixedLengthUserOrderRequest
     * @param eaiHeader -_CSEaiHeader
     * used to set ResponseMessage whien an exception occur
     * @return fixedLengthOrderRequest -CSFixedLengthUserOrderRequest
     */
    public static CSFixedLengthUserOrderRequest setResponseError(CSFixedLengthUserOrderRequest fixedLengthOrderRequest, 
                                                                 _CSEaiHeader eaiHeader) {


        eaiHeader.setApplicationId("");
        eaiHeader.setInstanceId("");
        eaiHeader.setMessageHistory("");
        eaiHeader.setMessageId("");
        eaiHeader.setPayloadVersion("");
        eaiHeader.setTimeStamp(Calendar.getInstance());
        eaiHeader.setTimeToLive(0);
        eaiHeader.setTracingId("");
        eaiHeader.setTransactionId("");
        fixedLengthOrderRequest.setLogicalCountry("");
        
        return fixedLengthOrderRequest;


    }
}


