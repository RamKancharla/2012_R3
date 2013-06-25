package com.reuters.eai.cc.om;

/* ***********************************************************************************************
    * Module:       TransformOrderRequest.java
    *               TransformToCSFormat
    * Type:         Java file
    * Description:  Receives an input form SIEBEL in XML format and builds response in fixed length format
    *
    *
    * Change History
    * Version		Date				Author				       Description Of Change
    * =======		==================		===============================        =====================================================
    *  0.01	        01/07/07		        Geratayya P			       Initial Version
    *  0.02             06/08/07                        Sunil Vuppala                          Removed different hard coded values and picking them from ApplicationResources.properties
    *  0.03             21/08/07                        Sunil Vuppala
    *  0.04             10/09/07                        Suryanarayana Gannavarapu             Modified the code to make it work  accordingly to new schemas
    *  0.05             18/09/07                        Suryanarayana Gannavarapu             Modified the code to make it work  accordingly to new schema changes in EAI.XSD.006_CommonOrderTypes.xsd
    *  0.06             17/10/07                        Suryanarayana Gannavarapu             Modified according to the schemas which are independent to these web services.
    *  0.07             06/11/07                        Geratayya P                           Add '+' sign for the special price
    *  0.08             08/11/07                        Geratayya P
    *  0.09             23/08/2008                      Ruchi                                  Recreated the web service with three new feilds .
    *  0.10             03/10/2008                      Chandrasekhar Reddy                   Modifeid the code for billng note in OrderLineItem to have "P" at 30 th position,if If EAI receives "P" at the end of the billing note.
    *  0.11             22/02/2010                      Surya G                                Modified the WS to implement the logic for PermBill flag as part of PBI-421
    *  0.12             27/04/2010                      Satish Patel                          Modified the WS to implement the logic for  installToSubscriber and installToItemNumber as part of PBI-537                
*********************************************************************************************************************************************************/


import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSBasicResponse;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSCompassOLI;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSEaiHeader;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSResponse;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSCompassOrder;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSFixedLengthOrderRequest;

import java.text.DecimalFormat;
import java.text.NumberFormat;

import java.util.Calendar;
import java.util.ResourceBundle;
import java.util.StringTokenizer;

public class TransformOrderRequest {
    ResourceBundle resourcebundle =
        ResourceBundle.getBundle("ApplicationResources");


    private static final String blankStr =
        "                                                                                                    ";

    private _CSFixedLengthOrderRequest fixedLengthOrdRequest = null;
    private com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSBasicResponse response = null;

    //String blankStr = resourcebundle.getString("blankStr");
    String numStr = resourcebundle.getString("numStr");
    String dateTimeSeparator = resourcebundle.getString("dateTimeSeparator");
    String dateSeparator = resourcebundle.getString("dateSeparator");
    String timeSeparator = resourcebundle.getString("timeSeparator");
    int logicalCountryElementNameLength =
        Integer.parseInt(resourcebundle.getString("logicalCountryElementNameLength"));

    String SUCCESS = resourcebundle.getString("SUCCESS");
    String FAILURE = resourcebundle.getString("FAILURE");

    String status = resourcebundle.getString("status");

    int fillerLenghForMsgHeader =
        Integer.parseInt(resourcebundle.getString("fillerLenghForMsgHeader"));
    int fillerLengthForOrdLine =
        Integer.parseInt(resourcebundle.getString("fillerLengthForOrdLine"));  // added as part of PBI-537 for Orderline filler
    int noOfOrderLinesFieldLength =
        Integer.parseInt(resourcebundle.getString("noOfOrderLinesFieldLength"));


    String strInternalSrvErrorMsg =
        resourcebundle.getString("strInternalSrvErrorMsg");
    String strInvalidMsgContentMsg =
        resourcebundle.getString("strInvalidMsgContentMsg");
    String strSuccessMsg = resourcebundle.getString("strSuccessMsg");
    public _CSFixedLengthOrderRequest transfrom(_CSCompassOrder parameter) {

                                _CSCompassOrder orderRequest = parameter;
                                StringBuffer orderMessage = new StringBuffer();
                                String country = null;

                                _CSEaiHeader eaiHeader = orderRequest.getEaiHeader();

                                fixedLengthOrdRequest = new _CSFixedLengthOrderRequest();
                                response = new _CSBasicResponse();


                                response.setResponse(_CSResponse.getInstance(SUCCESS));
                                response.setResponseCode(strSuccessMsg);
                                response.setResponseMessage(strSuccessMsg);
              //get Logical Country
                country = orderRequest.getLogicalCountry();
                //Padding logical country
                try {
                    if ((country != null &&
                         country.length() != logicalCountryElementNameLength) ||
                        (country == null)) {
                        response.setResponse(_CSResponse.getInstance(FAILURE));
                        response.setResponseCode(strInvalidMsgContentMsg);
                        response.setResponseMessage(strInvalidMsgContentMsg + ":InvalidLogicalCountry " +
                                                    country);
                        fixedLengthOrdRequest=setResponseError(fixedLengthOrdRequest,eaiHeader);
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
                orderMessage.append(constructMsgHdr(orderRequest.getMessageHeader().getMsgHeaderValues()));
                orderMessage.append(constructORDMsg(orderRequest.getOrderHeader().getOrderHeaderValues()));
                orderMessage.append(constructORLMsg(orderRequest.getOrderLineItem()));
                fixedLengthOrdRequest.setMessage(orderMessage.toString());
                fixedLengthOrdRequest.setBasicResponse(response);
                eaiHeader.setTimeStamp(Calendar.getInstance());
                fixedLengthOrdRequest.setEaiHeader(eaiHeader);

                return fixedLengthOrdRequest;

    }
    private String constructMsgHdr(String[] msgHeader) {

        int msgHdrCount =
            Integer.parseInt(resourcebundle.getString("messageHeaderElementsCount"));
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
        StringBuffer buf;
        String tempStr = null;
        int padCnt = 0;

        buf = new StringBuffer();

        //for padding spaces for type C, zero`s for type N, and for changing the format of date
        try {

            for (int i = 0; i < msgHeader.length; i++) {
                tempStr = msgHeader[i];


                if (tempStr == null || tempStr.length() == 0) {
                    buf.append(blankStr.substring(0, msgHdrPadLength[padCnt]));
                } else {
                    if (msgHdrPadType[padCnt] == 'T') {
                        buf.append(tempStr.substring(0, 4) + dateSeparator +
                                   tempStr.substring(5, 7) + dateSeparator +
                                   tempStr.substring(8,
                                                     10)); //Date in CCYY/MM/DD format
                        buf.append(dateTimeSeparator);
                        buf.append(tempStr.substring(11, 13) + timeSeparator +
                                   tempStr.substring(14, 16) + timeSeparator +
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
                        buf.append((msgHdrPadType[padCnt] == 'N') ?
                                   numStr.substring(0,
                                                    msgHdrPadLength[padCnt] -
                                                    tempStr.length()) +
                                   tempStr :
                                   tempStr + blankStr.substring(0, msgHdrPadLength[padCnt] -
                                                                tempStr.length()));
                    }
                }
                ++padCnt;
            }
            //Adding filler
            buf.append(blankStr.substring(0, fillerLenghForMsgHeader));
        } catch (Exception e) {
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

        return buf.toString();
    }
    private String constructORDMsg(String[] ordHeader) {


        int ordHdrCount =
            Integer.parseInt(resourcebundle.getString("orderHeaderElementsCount"));
         int ordPadLength[] = new int[ordHdrCount];
        char ordPadType[] = new char[ordHdrCount];

        String ordHdrLth = resourcebundle.getString("orderHeaderElementsLength");
        String ordHdrType = resourcebundle.getString("orderHeaderElementsType");

        StringTokenizer ordHdrLthTokenizer = new StringTokenizer(ordHdrLth,",");
        StringTokenizer ordHdrTypeTokenizer = new StringTokenizer(ordHdrType,",");

        int count = 0;
        while (ordHdrLthTokenizer.hasMoreElements()){
            ordPadLength[count] = Integer.parseInt(ordHdrLthTokenizer.nextToken());
            count++;
        }

        count = 0;
        while (ordHdrTypeTokenizer.hasMoreElements()){
            ordPadType [count]= ordHdrTypeTokenizer.nextToken().charAt(0);
            count++;
        }

        StringBuffer buf;
        String tempStr = null;
        int padCnt = 0;

        buf = new StringBuffer();

        //for padding spaces for type C, zero`s for type N, and for changing the format of date
        try {
            for (int i = 0; i < ordHeader.length; ++i) {
                tempStr = ordHeader[i];

                if (tempStr == null || tempStr.length() == 0) {
                    buf.append(blankStr.substring(0, ordPadLength[padCnt]));
                } else {
                    if (ordPadType[padCnt] == 'D') {
                        buf.append(tempStr.substring(0, 4) +
                                   tempStr.substring(5, 7) +
                                   tempStr.substring(8, 10));
                    } else {
                        buf.append(((ordPadType[padCnt] == 'N') &&
                                    (tempStr.length() != 0)) ?
                                   numStr.substring(0,
                                                    ordPadLength[padCnt] - tempStr.length()) +
                                   tempStr :
                                   tempStr + blankStr.substring(0, ordPadLength[padCnt] -
                                                                tempStr.length()));
                    }
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

        return buf.toString();
    }
    //Method that  converts Message Header to fixed length
    private String constructORLMsg(_CSCompassOLI[] orderLines) {

        //FILLER should be at the end of the order not at order line level
        //X  for 999.99 format
        //Y for 99999999.99

         int ordLineCount =
             Integer.parseInt(resourcebundle.getString("orderLineElementsCount"));
          int olPadLength[] = new int[ordLineCount];
         char olPadType[] = new char[ordLineCount];

         String ordLineLth = resourcebundle.getString("orderLineElementsLength");
         String ordLineType = resourcebundle.getString("orderLineElementsType");

         StringTokenizer ordLineLthTokenizer = new StringTokenizer(ordLineLth,",");
         StringTokenizer ordLineTypeTokenizer = new StringTokenizer(ordLineType,",");

         int count = 0;
         while (ordLineLthTokenizer.hasMoreElements()){
             olPadLength[count] = Integer.parseInt(ordLineLthTokenizer.nextToken());
             count++;
         }

         count = 0;
         while (ordLineTypeTokenizer.hasMoreElements()){
             olPadType [count]= ordLineTypeTokenizer.nextToken().charAt(0);
             count++;
         }

        NumberFormat nf = NumberFormat.getNumberInstance();
        DecimalFormat df = (DecimalFormat)nf;

        StringBuffer buf = new StringBuffer();
        String tempStr = null;
        int padCnt = 0;

        tempStr = "" + orderLines.length;
        buf.append(numStr.substring(0,
                                    noOfOrderLinesFieldLength - tempStr.length()) +
                   tempStr);

        for (int j = 0; j < orderLines.length; ++j) {
            padCnt = 0;
            String[] orderLineValues = orderLines[j].getOrderLineValues();

            //for padding spaces for type C, zero`s for type N, and for changing the format of date
            try {
                for (int i = 0; i < orderLineValues.length; ++i) {
                    tempStr = orderLineValues[i];

                    if (tempStr == null || tempStr.length() == 0) {
                        //padding 0's for AKR if it's null/spaces
                        if (olPadType[padCnt] == 'A') {
                            buf.append("000");
                        } else {
                            buf.append(blankStr.substring(0, olPadLength[padCnt]));
                        }
                    } else {
                        if (olPadType[padCnt] == 'D') {
                            buf.append(tempStr.substring(0, 4) +
                                       tempStr.substring(5, 7) +
                                       tempStr.substring(8, 10));
                        } else if (olPadType[padCnt] == 'X') {
                            df.applyPattern("000.00");
                            buf.append(df.format(nf.parse(tempStr).doubleValue()));
                        } else if (olPadType[padCnt] == 'Y') {
                            df.applyPattern("00000000000.00");
                            buf.append("+" + df.format(nf.parse(tempStr).doubleValue()));
                        }
                        else if (olPadType[padCnt]=='I')
                        {
                        
                        /*This block is used to replace the 29th character of billing note with permbillflag(PBI-421) */
                        buf.replace(buf.length()-3,buf.length()-3+olPadLength[padCnt],tempStr);
                        
                        }
                        else if(olPadType[padCnt] == 'B'&& tempStr.endsWith("P"))
                        {
                            buf.append(tempStr.substring(0,tempStr.length()-1) + blankStr.substring(0,
                                                                    olPadLength[padCnt] -
                                                                    tempStr.length())+ "P");

                        }
                        else if(olPadType[padCnt] == 'B'&& tempStr.endsWith("~"))
                        {
                            buf.append(tempStr.substring(0,tempStr.length()-1) + blankStr.substring(0,
                                                                    olPadLength[padCnt] -
                                                                    tempStr.length()+1));

                        }
                        else if(olPadType[padCnt] == 'B'){
                            buf.append(tempStr + blankStr.substring(0,
                                                                    olPadLength[padCnt] -
                                                                    tempStr.length()));
                        }
                        else {
                            buf.append(( (olPadType[padCnt] == 'N') || (olPadType[padCnt] == 'A') ) ?
                                       numStr.substring(0,
                                                        olPadLength[padCnt] -
                                                        tempStr.length()) +
                                       tempStr :
                                       tempStr + blankStr.substring(0,
                                                                    olPadLength[padCnt] -
                                                                    tempStr.length()));
                        }
                    }                   

                    ++padCnt;
                }
            }
            catch (Exception e) {
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
            
            //Adding filler for orderline
            buf.append(blankStr.substring(0, fillerLengthForOrdLine));
        }
        return buf.toString();
    }

    public static _CSFixedLengthOrderRequest setResponseError(_CSFixedLengthOrderRequest fixedLengthOrderRequest,_CSEaiHeader eaiHeader){



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
