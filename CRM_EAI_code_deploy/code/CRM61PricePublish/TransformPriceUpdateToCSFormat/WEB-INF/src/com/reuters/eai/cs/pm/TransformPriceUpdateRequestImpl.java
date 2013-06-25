package com.reuters.eai.cs.pm;
/* ***********************************************************************************************
    * Module:       TransformPriceUpdateRequestImpl.java
    *               TransformPriceUpdateToCSFormat
    * Type:         Java file
    * Description:  Receives an input form SIEBEL in XML format and builds response in fixed length format
    *
    *
    * Change History
    * Version		Date				Author				       Description Of Change
    * =======		==================		===============================        =====================================================
    *  0.01             03/04/08                        Sreeja Prasad                          Initial Version
    *  0.02             14/04/08                        Chandrasekhar Reddy                    Modified the code to make it work  accordingly to new schemas
    *  0.03             24/04/08                        Chandrasekhar Reddy                    Modified the code to make it work  accordingly to modified  schemas
    *  0.04             29/04/08                        Chandrasekhar Reddy                    Modified the code to make it work  for decimal format of value element in PriceLineReqItem
    *  0.05             02/04/08                        Chandrasekhar Reddy                    Modified the decimal format to accomodate 15 characters including '.' and '0'.
    ***************************************************************************************************/

import com.reuters.ns._2007._09._01.gcap.eai.cs.fixedlengthrequest.FixedLengthRequest;
import com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSPriceUpdate;

import com.reuters.ns._2007._09._01.gcap.eai.cs.fixedlengthrequest._CSBasicResponse;
import com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSEaiHeader;
import com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSPriceUpdateReqLineItem;
import com.reuters.ns._2007._09._01.gcap.eai.cs.fixedlengthrequest._CSResponse;

import java.text.DecimalFormat;
import java.text.NumberFormat;

import java.util.Calendar;
import java.util.ResourceBundle;
import java.util.StringTokenizer;

public class TransformPriceUpdateRequestImpl {
    ResourceBundle resourcebundle = 
        ResourceBundle.getBundle("ApplicationResources");
  private static final String blankStr = 
       "                                                                                                    ";
    private FixedLengthRequest priceUpdateResponse = null;
    private _CSBasicResponse response = null;
   //String blankStr = resourcebundle.getString("blankStr");
    String numStr = resourcebundle.getString("numStr");
    String dateTimeSeparator = resourcebundle.getString("dateTimeSeparator");
    String dateSeparator = resourcebundle.getString("dateSeparator");
    String timeSeparator = resourcebundle.getString("timeSeparator");
    int logicalCountryElementNameLength =  Integer.parseInt(resourcebundle.getString("logicalCountryElementNameLength"));
    String SUCCESS = resourcebundle.getString("SUCCESS");
    String FAILURE = resourcebundle.getString("FAILURE");
    
    String status = resourcebundle.getString("status");
    int fillerLenghForMsgHeader = Integer.parseInt(resourcebundle.getString("fillerLenghForMsgHeader"));
    int fillerLength=Integer.parseInt(resourcebundle.getString("fillerLength"));
    int noOfPLIs = Integer.parseInt(resourcebundle.getString("noOfPLIs"));
    String strInternalSrvErrorMsg = resourcebundle.getString("strInternalSrvErrorMsg");
    String strInvalidMsgContentMsg = resourcebundle.getString("strInvalidMsgContentMsg");
    String strSuccessMsg = resourcebundle.getString("strSuccessMsg");
    public FixedLengthRequest transform(_CSPriceUpdate parameter) {
    _CSPriceUpdate priceUpdateRequest = parameter;
        
    StringBuffer priceUpdateMessage = new StringBuffer();
    String country = null;
   _CSEaiHeader eaiHeader = priceUpdateRequest.getEaiHeader();
        
    com.reuters.ns._2007._09._01.gcap.eai.cs.fixedlengthrequest._CSEaiHeader eaiHeaderF= new com.reuters.ns._2007._09._01.gcap.eai.cs.fixedlengthrequest._CSEaiHeader();
        eaiHeaderF.setApplicationId(eaiHeader.getApplicationId());
        eaiHeaderF.setInstanceId(eaiHeader.getInstanceId());
        eaiHeaderF.setMessageHistory(eaiHeader.getMessageHistory());
        eaiHeaderF.setMessageId(eaiHeader.getMessageId());
        eaiHeaderF.setPayloadVersion(eaiHeader.getPayloadVersion());
        eaiHeaderF.setTimeStamp(Calendar.getInstance());
        eaiHeaderF.setTimeToLive(eaiHeader.getTimeToLive());
        eaiHeaderF.setTracingId(eaiHeader.getTracingId());
        eaiHeaderF.setTransactionId(eaiHeader.getTransactionId());
        
    priceUpdateResponse = new FixedLengthRequest();
    response = new _CSBasicResponse();
    response.setResponse(_CSResponse.getInstance(SUCCESS));
    response.setResponseCode(strSuccessMsg);
    response.setResponseMessage(strSuccessMsg);
    //get Logical Country
    country = priceUpdateRequest.getCountry();
    //Padding logical country
    try {
    if ((country != null &&
    country.length() != logicalCountryElementNameLength) ||
    (country == null)) {
    response.setResponse(_CSResponse.getInstance(FAILURE));
    response.setResponseCode(strInvalidMsgContentMsg);
    response.setResponseMessage(strInvalidMsgContentMsg + ":InvalidLogicalCountry " +
                        country);
    priceUpdateResponse=setResponseError(priceUpdateResponse, eaiHeader);
    } else {
    priceUpdateMessage.append(country);
    priceUpdateResponse.setLogicalCountry(country);
    }
    } catch (Exception e) {
    response.setResponse(_CSResponse.getInstance(FAILURE));
    response.setResponseCode(strInvalidMsgContentMsg);
    response.setResponseMessage(strInvalidMsgContentMsg + ".  " +
                    e.toString());
    }
    priceUpdateMessage.append(constructMsgHdr(priceUpdateRequest.getMessageHeader().getMsgHeaderValues()));
    priceUpdateMessage.append(constructPriceHdrMsg(priceUpdateRequest.getPriceUpdateReqHeader().getPriceUpdateHeaderValues()));
    priceUpdateMessage.append(constructPriceLineMsg(priceUpdateRequest.getPriceUpdateReqLineItem()));
    priceUpdateResponse.setMessage(priceUpdateMessage.toString());
    priceUpdateResponse.setBasicResponse(response);
    eaiHeaderF.setTimeStamp(Calendar.getInstance());
    priceUpdateResponse.setEaiHeader(eaiHeaderF);
      
    
    return priceUpdateResponse;
    }
//Method that  converts Message Header to fixed length
    private String constructMsgHdr(String[] msgHeader) {
        int msgHdrCount = Integer.parseInt(resourcebundle.getString("messageHeaderElementsCount"));
        int msgHdrPadLength[] = new int[msgHdrCount];
        char msgHdrPadType[] = new char[msgHdrCount];
        //getting the lengths of message Header Elements from ApplicationResources
        String msgHdrLength = resourcebundle.getString("messageHeaderElementsLength");
        //getting the types of message Header Elements from ApplicationResources
        String msgHdrTypes = resourcebundle.getString("messageHeaderElementsType");
        //for getting the lengths of different elements using StringTokenizer. The tokenizer is ",".
        StringTokenizer msgHdrLthTokenizer = new StringTokenizer(msgHdrLength, ",");
        int count = 0;
        while (msgHdrLthTokenizer.hasMoreElements()) {
            msgHdrPadLength[count] = Integer.parseInt(msgHdrLthTokenizer.nextToken());
            count++;
        }
        
        //for getting the types of different elements using StringTokenizer. The tokenizer is ",".
        
        StringTokenizer msgHdrTypTokenizer = new StringTokenizer(msgHdrTypes, ",");
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
                           
                      
                       buf.append((msgHdrPadType[padCnt] == 'N') ? numStr.substring(0, msgHdrPadLength[padCnt] - tempStr.length()) + tempStr : tempStr +blankStr.substring(0, msgHdrPadLength[padCnt] - tempStr.length()));
                        
                       
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
    //Method that  converts Price Header Message to fixed length
    private String constructPriceHdrMsg(String[] priceHeader) {
     

        int priceHdrCount = 
         Integer.parseInt(resourcebundle.getString("priceUpdateHeaderElementsCount"));
         int pUpdatePadLength[] = new int[priceHdrCount];
        char pUpdatePadType[] = new char[priceHdrCount];

        String pUpdateHdrLength = resourcebundle.getString("priceUpdateElementsLength");
        String pUpdateHdrType = resourcebundle.getString("priceUpdateHeaderElementsType");

        StringTokenizer priceHdrLenTokenizer = new StringTokenizer(pUpdateHdrLength,",");
        StringTokenizer priceHdrTypeTokenizer = new StringTokenizer(pUpdateHdrType,",");

        int count = 0;
        while (priceHdrLenTokenizer.hasMoreElements()){
            pUpdatePadLength[count] = Integer.parseInt(priceHdrLenTokenizer.nextToken());
            count++;
        }

        count = 0;
        while (priceHdrTypeTokenizer.hasMoreElements()){
            pUpdatePadType [count]= priceHdrTypeTokenizer.nextToken().charAt(0);
            count++;
        }
        
        StringBuffer buf;
        String tempStr = null;
        int padCnt = 0;

        buf = new StringBuffer();
        
        //for padding spaces for type C, zero`s for type N, and for changing the format of date
        try {
            for (int i = 0; i < priceHeader.length; ++i) {
                tempStr = priceHeader[i];

                if (tempStr == null || tempStr.length() == 0) {
                    buf.append(blankStr.substring(0, pUpdatePadLength[padCnt]));
                } else {
                    if (pUpdatePadType[padCnt] == 'D') {
                        buf.append(tempStr.substring(0, 4) + 
                                   tempStr.substring(5, 7) + 
                                   tempStr.substring(8, 10));
                    } else {
                        buf.append(((pUpdatePadType[padCnt] == 'N') && 
                                   (tempStr.length() != 0)) ? 
                                  numStr.substring(0, pUpdatePadLength[padCnt] - tempStr.length()) +                                    tempStr : 
                                   tempStr + blankStr.substring(0, pUpdatePadLength[padCnt] - 
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
                                        priceHeader.length + "   padCnt : " + 
                                        padCnt + "   tempStr: " + tempStr);
            e.printStackTrace();
        }

        return buf.toString();
    }
	//Method that  converts PriceUpdateItem Header to fixed length
    private String constructPriceLineMsg(_CSPriceUpdateReqLineItem[] priceLines) {

        //FILLER should be at the end of the order not at order line level
        //X  for 999.99 format
        //Y for 99999999.99
        
         int priceLineCount = 
             Integer.parseInt(resourcebundle.getString("priceUpdateLineElementsCount"));
          int pricelPadLength[] = new int[priceLineCount];
         char pricelPadType[] = new char[priceLineCount];

         String priceLineLen = resourcebundle.getString("priceUpdateLineElementsLength");
         String priceLineType = resourcebundle.getString("priceUpdateLineElementsType");

         StringTokenizer ordLineLthTokenizer = new StringTokenizer(priceLineLen,",");
        StringTokenizer ordLineTypeTokenizer;
        ordLineTypeTokenizer = new StringTokenizer(priceLineType,",");

        int count = 0;
         while (ordLineLthTokenizer.hasMoreElements()){
             pricelPadLength[count] = Integer.parseInt(ordLineLthTokenizer.nextToken());
             count++;
         }

         count = 0;
         while (ordLineTypeTokenizer.hasMoreElements()){
             pricelPadType [count]= ordLineTypeTokenizer.nextToken().charAt(0);
             count++;
         }

        NumberFormat nf = NumberFormat.getNumberInstance();
        DecimalFormat df = (DecimalFormat)nf;

        StringBuffer buf = new StringBuffer();
        String tempStr = null;
        int padCnt = 0;

        tempStr = "" + priceLines.length;
        buf.append(numStr.substring(0, 
                                    noOfPLIs - tempStr.length()) + 
                   tempStr);

        for (int j = 0; j < priceLines.length; ++j) {
            padCnt = 0;
            String[] priceLineValues = priceLines[j].getPriceUpdateLineValues();
            
            //for padding spaces for type C, zero`s for type N, and for changing the format of date
            try {
                for (int i = 0; i < priceLineValues.length; ++i) {
                    tempStr = priceLineValues[i];

                    if (tempStr == null || tempStr.length() == 0) {
                        //padding 0's for AKR if it's null/spaces
                        if (pricelPadType[padCnt] == 'A') {
                            buf.append("000");
                        } else {
                            buf.append(blankStr.substring(0, pricelPadLength[padCnt]));
                        }
                    } else {
                        if (pricelPadType[padCnt] == 'D') {
                            buf.append(  tempStr.substring(0, 4) + 
                                       tempStr.substring(5, 7) + 
                                       tempStr.substring(8, 10));
                        } else if (pricelPadType[padCnt] == 'X') {
                            df.applyPattern("000.00");
                            buf.append(df.format(nf.parse(tempStr).doubleValue()));
                        } else if (pricelPadType[padCnt] == 'Y') {
                            df.applyPattern("000000000000.00");
                          //  buf.append("+" + df.format(nf.parse(tempStr).doubleValue()));
                            buf.append( df.format(nf.parse(tempStr).doubleValue()));//deleted the concatination '+' symbol
                        } else {
                            buf.append(( (pricelPadType[padCnt] == 'N') || (pricelPadType[padCnt] == 'A') ) ? 
                                       numStr.substring(0, 
                                                        pricelPadLength[padCnt] - 
                                                        tempStr.length()) + 
                                       tempStr : 
                                       tempStr + blankStr.substring(0, 
                                                                    pricelPadLength[padCnt] - 
                                                                    tempStr.length()));
                        }
                    }
                    ++padCnt;
                }
              buf.append(blankStr.substring(0, fillerLength)); 
            } catch (Exception e) {
                response.setResponse(_CSResponse.getInstance(FAILURE));
                response.setResponseCode(strInternalSrvErrorMsg);
                response.setResponseMessage(e.toString() + 
                                            "  priceLineLen.getLength(): " + 
                                            priceLineValues.length + 
                                            "   padCnt : " + padCnt + 
                                            "   tempStr: " + tempStr + 
                                            " pricelPadLength[padCnt]: " + 
                                            pricelPadLength[padCnt] + 
                                            "  tempStr.length(): " + 
                                            tempStr.length() + 
                                            "   numStr.length(): " + 
                                            numStr.length());
                e.printStackTrace();
            }
        }

        return buf.toString();
    }
	//Method that  returns  ResponseError
    public static FixedLengthRequest setResponseError(FixedLengthRequest priceUpdateResponse, _CSEaiHeader eaiHeaderF)
    {
        eaiHeaderF.setApplicationId("");
        eaiHeaderF.setInstanceId("");
        eaiHeaderF.setMessageHistory("");
        eaiHeaderF.setMessageId("");
        eaiHeaderF.setPayloadVersion("");
        eaiHeaderF.setTimeStamp(Calendar.getInstance());
        eaiHeaderF.setTracingId("");
        eaiHeaderF.setTransactionId("");
        
        priceUpdateResponse.setLogicalCountry("");
        return priceUpdateResponse;
    }
    
  
}
