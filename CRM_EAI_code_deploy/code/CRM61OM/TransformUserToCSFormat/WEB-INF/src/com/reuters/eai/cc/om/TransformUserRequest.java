/* ***********************************************************************************************
    * Module:       TransformUserRequest.java
    *               TransformUserToCSFormat
    * Type:         Java file
    * Description:  Receives an input form SIEBEL for user Creationin XML format and builds response in fixed length format 
    *
    * Change History
    * Version		Date				Author				       Description Of Change
    * =======		==================		===============================        =============================
    *  0.01	        18/10/2007		        Satish Patel			       Initial Version    
***************************************************************************************************/

package com.reuters.eai.cc.om;

import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSBasicResponse;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSFixedLengthRequest;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSUserRequest;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._UREaiHeader;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._CSResponse;
import com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement._URUserOLI;


//import java.text.DecimalFormat;
//import java.text.NumberFormat;

import java.util.Calendar;
import java.util.ResourceBundle;
import java.util.StringTokenizer;

public class TransformUserRequest {
    ResourceBundle resourcebundle = 
        ResourceBundle.getBundle("ApplicationResources");


    private static final String blankStr = 
        "                                                                                                    ";
    
    private _CSFixedLengthRequest fixedLengthOrdRequest = null;
    private _CSBasicResponse  response = null;
    
    String numStr = resourcebundle.getString("numStr");
    String dateTimeSeparator = resourcebundle.getString("dateTimeSeparator");
    String dateSeparator = resourcebundle.getString("dateSeparator");
    String timeSeparator = resourcebundle.getString("timeSeparator");
    int logicalCountryElementNameLength = 
        Integer.parseInt(resourcebundle.getString("logicalCountryElementNameLength"));

    String SUCCESS = resourcebundle.getString("SUCCESS");
    String FAILURE = resourcebundle.getString("FAILURE");

    String status = resourcebundle.getString("status");

    int fillerLengthForMsgHeader = 
        Integer.parseInt(resourcebundle.getString("fillerLengthForMsgHeader"));
    int noOfUserIDsFieldLength = 
        Integer.parseInt(resourcebundle.getString("noOfUserIDsFieldLength"));


    String strInternalSrvErrorMsg = 
        resourcebundle.getString("strInternalSrvErrorMsg");
    String strInvalidMsgContentMsg = 
        resourcebundle.getString("strInvalidMsgContentMsg");
    String strSuccessMsg = resourcebundle.getString("strSuccessMsg");
    
    
    /* * 
     * This method tranforms the xml input into fixed length String for user 
     * creation in the CoreSuite
     * */
    public _CSFixedLengthRequest transform(_CSUserRequest parameter) {

        _CSUserRequest userRequest = parameter;
        StringBuffer userMessage = new StringBuffer();
        String country = null;
        _UREaiHeader eaiHeader = userRequest.getEaiHeader();    
 

        fixedLengthOrdRequest = new _CSFixedLengthRequest();
        response = new _CSBasicResponse();


        response.setResponse(_CSResponse.getInstance(SUCCESS));
        response.setResponseCode(strSuccessMsg);
        response.setResponseMessage(strSuccessMsg);
      //get Logical Country                  
        country = userRequest.getLogicalCountry();   
        //Padding logical country
        try {
            if ((country != null && 
                 country.length() != logicalCountryElementNameLength) || 
                (country == null)) {
                response.setResponse(_CSResponse.getInstance(FAILURE));
                response.setResponseCode(strInvalidMsgContentMsg);
                response.setResponseMessage(strInvalidMsgContentMsg + ": " + 
                                            country);
            } else {
                userMessage.append(country);
                fixedLengthOrdRequest.setLogicalCountry(country);
            }
        } catch (Exception e) {
            response.setResponse(_CSResponse.getInstance(FAILURE));
            response.setResponseCode(strInvalidMsgContentMsg);
            response.setResponseMessage(strInvalidMsgContentMsg + ".  " + 
                                        e.toString());
        }
        userMessage.append(constructMsgHdr(userRequest.getMessageHeader().getMsgHeaderValues()));
        userMessage.append(constructUserHdr(userRequest.getUserHeader().getUserHeaderValues()));
        userMessage.append(constructUsrLMsg(userRequest.getUserLineItem()));
        fixedLengthOrdRequest.setMessage(userMessage.toString());
        fixedLengthOrdRequest.setBasicResponse(response);
        eaiHeader.setTimeStamp(Calendar.getInstance());
        fixedLengthOrdRequest.setEaiHeader(eaiHeader);        
    
        return fixedLengthOrdRequest;
    }

    /* * 
     * This method converts the Message Header from the xml input into a string and returns back. 
     * */
     
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
                                    "" + (msgLength + fillerLengthForMsgHeader);
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
            buf.append(blankStr.substring(0, fillerLengthForMsgHeader));
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

    /* * 
     * This method converts the User Header from the xml input into a string and returns back. 
     * */
    
    private String constructUserHdr(String[] usrHeader) {
     
        int usrHdrCount = 
            Integer.parseInt(resourcebundle.getString("userHeaderElementsCount"));
         int usrPadLength[] = new int[usrHdrCount];
        char usrPadType[] = new char[usrHdrCount];

        //getting the lengths of user Header Elements from ApplicationResources
        String usrHdrLth = resourcebundle.getString("userHeaderElementsLength");
        
        //getting the types of user Header Elements from ApplicationResources
        String usrHdrType = resourcebundle.getString("userHeaderElementsType");

        StringTokenizer usrHdrLthTokenizer = new StringTokenizer(usrHdrLth,",");
        StringTokenizer usrHdrTypeTokenizer = new StringTokenizer(usrHdrType,",");

        //for getting the lengths of different elements using StringTokenizer. The tokenizer is ",".
        int count = 0;
        while (usrHdrLthTokenizer.hasMoreElements()){
            usrPadLength[count] = Integer.parseInt(usrHdrLthTokenizer.nextToken());
            count++;
        }
        //for getting the types of different elements using StringTokenizer. The tokenizer is ",".
        count = 0;
        while (usrHdrTypeTokenizer.hasMoreElements()){
            usrPadType [count]= usrHdrTypeTokenizer.nextToken().charAt(0);
            count++;
        }
        
        StringBuffer buf;
        String tempStr = null;
        int padCnt = 0;

        buf = new StringBuffer();
        
        //for padding spaces for type C, zero`s for type N, and for changing the format of date
        try {
            for (int i = 0; i < usrHeader.length; ++i) {
                tempStr = usrHeader[i];

                if (tempStr == null || tempStr.length() == 0) {
                    buf.append(blankStr.substring(0, usrPadLength[padCnt]));
                } else {
                     buf.append(((usrPadType[padCnt] == 'N') && 
                                    (tempStr.length() != 0)) ? 
                                   numStr.substring(0, 
                                                    usrPadLength[padCnt] - tempStr.length()) + 
                                   tempStr : 
                                   tempStr + blankStr.substring(0, usrPadLength[padCnt] - 
                                                                tempStr.length()));
                    
                }
                ++padCnt;
            }

        } catch (Exception e) {
            response.setResponse(_CSResponse.getInstance(FAILURE));
            response.setResponseCode(strInternalSrvErrorMsg);
            response.setResponseMessage(e.toString() + 
                                        "  usrHeader.getLength(): " + 
                                        usrHeader.length + "   padCnt : " + 
                                        padCnt + "   tempStr: " + tempStr);
            e.printStackTrace();
        }      

        return buf.toString();
    }
    
    
     /* * 
      * This method converts the UserLineItems from the xml input into a string and returns back. 
      * */

    private String constructUsrLMsg(_URUserOLI[] userLines) {
       
         int usrLineCount = 
             Integer.parseInt(resourcebundle.getString("userLineElementsCount"));
         int olPadLength[] = new int[usrLineCount];
         char olPadType[] = new char[usrLineCount];

         String usrLineLth = resourcebundle.getString("userLineElementsLength");
         String usrLineType = resourcebundle.getString("userLineElementsType");
         
        //getting the lengths of user Line Item Elements from ApplicationResources
         StringTokenizer usrLineLthTokenizer = new StringTokenizer(usrLineLth,",");
        
        //getting the types of user Line Item Elements from ApplicationResources
         StringTokenizer usrLineTypeTokenizer = new StringTokenizer(usrLineType,",");

        //for getting the lengths of user Line Item elements using StringTokenizer. The tokenizer is ",".
         int count = 0;
         while (usrLineLthTokenizer.hasMoreElements()){
             olPadLength[count] = Integer.parseInt(usrLineLthTokenizer.nextToken());
             count++;
         }
         
        //for getting the types of user Line Item elements using StringTokenizer. The tokenizer is ",".         
         count = 0;
         while (usrLineTypeTokenizer.hasMoreElements()){
             olPadType [count]= usrLineTypeTokenizer.nextToken().charAt(0);
             count++;
         }


        StringBuffer buf = new StringBuffer();
        String tempStr = null;
        int padCnt = 0;

        //appending the no of users to be created 
        tempStr = "" + userLines.length;
        buf.append(numStr.substring(0, 
                                    noOfUserIDsFieldLength - tempStr.length()) + 
                   tempStr);

        for (int j = 0; j < userLines.length; ++j) {
            padCnt = 0;
            String[] userLineValues = userLines[j].getUserLineValues();
            
            //for padding spaces for type C, zero`s for type N
            try {
                for (int i = 0; i < userLineValues.length; ++i) {
                    tempStr = userLineValues[i];

                    if (tempStr == null || tempStr.length() == 0) {
                        buf.append(blankStr.substring(0, olPadLength[padCnt]));
                    }  else {
                            buf.append((olPadType[padCnt] == 'N') ? 
                                       numStr.substring(0, 
                                                        olPadLength[padCnt] - 
                                                        tempStr.length()) + 
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
                                            userLineValues.length + 
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

        return buf.toString();
    }
    
}
