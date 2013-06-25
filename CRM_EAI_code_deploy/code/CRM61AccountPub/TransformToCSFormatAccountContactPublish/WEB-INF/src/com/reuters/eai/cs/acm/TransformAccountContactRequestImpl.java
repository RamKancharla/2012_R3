package com.reuters.eai.cs.acm;
/* ***********************************************************************************************
    * Module:       TransformAccountContactRequestImpl.java
    *               TransformAccountContactRequestToCSFormat
    * Type:         Java file
    * Description:  Receives an input form SIEBEL in XML format and builds response in fixed length format
    *
    *
    * Change History
    * Version		Date				Author				       Description Of Change
    * =======		==================		===============================        =====================================================
    
    *  0.01             19/05/08                        Chandrasekhar Reddy                    Intial Version
    *  0.02             10/06/08                        Hemamalini.T.S                         Regenerated for modified XSD  
    *  0.03             11/06/08                        Hemamalini.T.S                         Regenerated webservice as Renamed element 
    *                                                                                          suspend to billingSuspensionRequired,
    *                                                                                          summary to invoicingSummary, 
    *                                                                                          CRHold to CRHoldRequired 
    * 0.04              16/07/08                        Satish Patel                           commented the subfuturelength append method since messageId field is introduced at the end                                                            
    * 0.05              18/09/08                        Surya Gannavarapu                      Added City Code in the Account Complex type
    * 0.06              12/03/08                        anvv sharma                            Rebuilt the Webservice after schema Modifications
    * 0.07              25/11/09                        Damodar                                Rebuit the webservice after schema modifications added contractType in _CSAccount
    ***************************************************************************************************/

import com.reuters.ns._2007._09._01.gcap.eai.cs.acm.accountcontactpublish._CSAccountContactPublish;
import com.reuters.ns._2007._09._01.gcap.eai.cs.fixedlengthrequest.FixedLengthRequest;
import com.reuters.ns._2007._09._01.gcap.eai.cs.acm.accountcontactpublish._CSInstallationAddress;
import com.reuters.ns._2007._09._01.gcap.eai.cs.acm.accountcontactpublish._CSContact;
import com.reuters.ns._2007._09._01.gcap.eai.cs.acm.accountcontactpublish._CSEaiHeader;
import com.reuters.ns._2007._09._01.gcap.eai.cs.fixedlengthrequest._CSBasicResponse;
import com.reuters.ns._2007._09._01.gcap.eai.cs.fixedlengthrequest._CSResponse;


import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Calendar;
import java.util.ResourceBundle;
import java.util.StringTokenizer;

public class TransformAccountContactRequestImpl {

    ResourceBundle resourcebundle = 
        ResourceBundle.getBundle("ApplicationResources");
    private static final String blankStr = 
    "                                                                                                                                                                                                        ";
    private FixedLengthRequest fixedLengthACRequest = null;
    private _CSBasicResponse response = null;
    String numStr = resourcebundle.getString("numStr");
    String dateTimeSeparator = resourcebundle.getString("dateTimeSeparator");
    String dateSeparator = resourcebundle.getString("dateSeparator");
    String timeSeparator = resourcebundle.getString("timeSeparator");
    int logicalCountryElementNameLength =  Integer.parseInt(resourcebundle.getString("logicalCountryElementNameLength"));
    int subaccountrowidlength =  Integer.parseInt(resourcebundle.getString("subaccountrowidlength"));
   
    String SUCCESS = resourcebundle.getString("SUCCESS");
    String FAILURE = resourcebundle.getString("FAILURE");
    String status = resourcebundle.getString("status");
    int fillerLenghForMsgHeader = Integer.parseInt(resourcebundle.getString("fillerLenghForMsgHeader"));
    //int subfuturelength = Integer.parseInt(resourcebundle.getString("subfuturelength"));
    int addressfutureuse = Integer.parseInt(resourcebundle.getString("addressfutureuse"));
    int baddressfutureuse =Integer.parseInt(resourcebundle.getString("baddressfutureuse"));
    String strInternalSrvErrorMsg = resourcebundle.getString("strInternalSrvErrorMsg");
    String strInvalidMsgContentMsg = resourcebundle.getString("strInvalidMsgContentMsg");
    String strSuccessMsg = resourcebundle.getString("strSuccessMsg");
    public FixedLengthRequest transform(_CSAccountContactPublish parameter) {
    
    
        _CSAccountContactPublish  accountContactPublish=parameter;
        StringBuffer accountContactMessage = new StringBuffer();
        String country = null;
        String subaccountid = null;
        
            
       com.reuters.ns._2007._09._01.gcap.eai.cs.acm.accountcontactpublish._CSEaiHeader eaiHeader = accountContactPublish.getEaiHeader();
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
        fixedLengthACRequest = new FixedLengthRequest();
        response = new _CSBasicResponse();
        response.setResponse(_CSResponse.getInstance(SUCCESS));
        response.setResponseCode(strSuccessMsg);
        response.setResponseMessage(strSuccessMsg);
        //get Logical Country
        country = accountContactPublish.getCountry(); 
        subaccountid=accountContactPublish.getAccountId();
        
        
        try {
            if ((country != null && 
                 country.length() != logicalCountryElementNameLength) || 
                (country == null)) {
                response.setResponse(_CSResponse.getInstance(FAILURE));
                response.setResponseCode(strInvalidMsgContentMsg);
                response.setResponseMessage(strInvalidMsgContentMsg + ":InvalidLogicalCountry " + 
                                            country);
                fixedLengthACRequest=setResponseError(fixedLengthACRequest, eaiHeader);
                //return fixedLengthACRequest;
            } else {
                accountContactMessage.append(country);
                fixedLengthACRequest.setLogicalCountry(country);
                
            }
        } catch (Exception e){
            response.setResponse(_CSResponse.getInstance(FAILURE));
            response.setResponseCode(strInvalidMsgContentMsg);
            response.setResponseMessage(strInvalidMsgContentMsg + ".  " + 
                                        e.toString());
        }
            
        
        accountContactMessage.append(constructMsgHdr(accountContactPublish.getMessageHeader().getMsgHeaderValues()));

        String tempStr = accountContactPublish.getAccountId();
        int acHdrLength = Integer.parseInt(resourcebundle.getString("subaccountrowidlength"));
        String acHdrType = resourcebundle.getString("subaccountrowidElementsType");

        
        if (tempStr == null || tempStr.length() == 0) {
              accountContactMessage.append(blankStr.substring(0, acHdrLength));
        } else {
                  accountContactMessage.append((acHdrType.equals("N") && (tempStr.length() != 0)) ? 
                            numStr.substring(0, acHdrLength - tempStr.length()) +  tempStr : 
                             tempStr + blankStr.substring(0, acHdrLength - tempStr.length()));
        }
         
        accountContactMessage.append(constructAccountMsg(accountContactPublish.getAccount().getAccountValues()));  
        
        accountContactMessage.append(constructInstallAdderess(accountContactPublish.getInstallAddress().getInstallAddressValues()));
        accountContactMessage.append(constructBillingAdderess(accountContactPublish.getBillingAddress().getBillingAddressValues()));
        accountContactMessage.append(constructContactMsg(accountContactPublish.getContact()));
        
        fixedLengthACRequest.setMessage(accountContactMessage.toString());
        fixedLengthACRequest.setBasicResponse(response);
        eaiHeader.setTimeStamp(Calendar.getInstance());
        fixedLengthACRequest.setEaiHeader(eaiHeaderF); 
        return fixedLengthACRequest;
   
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
  
//Method that  converts Account Message Header to fixed length
    private String constructAccountMsg(String[] accountdata) {
     

        int accHdrCount = 
         Integer.parseInt(resourcebundle.getString("subScriberDataElementsCount"));
         int acPadLength[] = new int[accHdrCount];
        char acUpdatePadType[] = new char[accHdrCount];

        String acHdrLength = resourcebundle.getString("subScriberElementsLength");
        String acHdrType = resourcebundle.getString("subScriberDataElementsType");

        StringTokenizer acHdrLenTokenizer = new StringTokenizer(acHdrLength,",");
        StringTokenizer acHdrTypeTokenizer = new StringTokenizer(acHdrType,",");

        int count = 0;
        while (acHdrLenTokenizer.hasMoreElements()){
            acPadLength[count] = Integer.parseInt(acHdrLenTokenizer.nextToken());
            count++;
        }

        count = 0;
        while (acHdrTypeTokenizer.hasMoreElements()){
            acUpdatePadType [count]= acHdrTypeTokenizer.nextToken().charAt(0);
            count++;
        }
        
        StringBuffer buf;
        String tempStr = null;
        int padCnt = 0;

        buf = new StringBuffer();
        
        //for padding spaces for type C, zero`s for type N, and for changing the format of date
        try {
            for (int i = 0; i < accountdata.length; ++i) {
                tempStr = accountdata[i];

                if (tempStr == null || tempStr.length() == 0) {
                    buf.append(blankStr.substring(0, acPadLength[padCnt]));
                } else {
                    if (acUpdatePadType[padCnt] == 'D') {
                        buf.append(tempStr.substring(0, 4) + 
                                   tempStr.substring(5, 7) + 
                                   tempStr.substring(8, 10));
                    } else {
                        buf.append(((acUpdatePadType[padCnt] == 'N') && 
                                   (tempStr.length() != 0)) ? 
                                  numStr.substring(0, acPadLength[padCnt] - tempStr.length()) +                                    tempStr : 
                                   tempStr + blankStr.substring(0, acPadLength[padCnt] - 
                                                                tempStr.length()));
                    }
                }
                ++padCnt;
            }
            //buf.append(blankStr.substring(0, subfuturelength)); Commented as this field comes before messageId
        } catch (Exception e) {
            response.setResponse(_CSResponse.getInstance(FAILURE));
            response.setResponseCode(strInternalSrvErrorMsg);
            response.setResponseMessage(e.toString() + 
                                        "  accountdata.getLength(): " + 
                                        accountdata.length + "   padCnt : " + 
                                        padCnt + "   tempStr: " + tempStr);
            e.printStackTrace();
        }

        return buf.toString();
    }
//Method that  converts InstallAddress Message to fixed length
    private String constructInstallAdderess(String[] installAddress) {
     

        int acIaddHdrCount = 
         Integer.parseInt(resourcebundle.getString("installAddressElementsCount"));
         int acIaddPadLength[] = new int[acIaddHdrCount];
        char acIaddPadType[] = new char[acIaddHdrCount];

        String acIaddHdrLength = resourcebundle.getString("installAddressDataElementsLength");
        String acIaddHdrType = resourcebundle.getString("installAddressDataElementsType");

        StringTokenizer acIaddHdrLenTokenizer = new StringTokenizer(acIaddHdrLength,",");
        StringTokenizer acIaddHdrTypeTokenizer = new StringTokenizer(acIaddHdrType,",");

        int count = 0;
        while (acIaddHdrLenTokenizer.hasMoreElements()){
            acIaddPadLength[count] = Integer.parseInt(acIaddHdrLenTokenizer.nextToken());
            count++;
        }

        count = 0;
        while (acIaddHdrTypeTokenizer.hasMoreElements()){
            acIaddPadType [count]= acIaddHdrTypeTokenizer.nextToken().charAt(0);
            count++;
        }
        
        StringBuffer buf;
        String tempStr = null;
        int padCnt = 0;

        buf = new StringBuffer();
        
//for padding spaces for type C, zero`s for type N, and for changing the format of date
        try {
            for (int i = 0; i < installAddress.length; ++i) {
                tempStr = installAddress[i];

                if (tempStr == null || tempStr.length() == 0) {
                    buf.append(blankStr.substring(0, acIaddPadLength[padCnt]));
                } else {
                    if (acIaddPadType[padCnt] == 'D') {
                        buf.append(tempStr.substring(0, 4) + 
                                   tempStr.substring(5, 7) + 
                                   tempStr.substring(8, 10));
                    } else {
                        buf.append(((acIaddPadType[padCnt] == 'N') && 
                                   (tempStr.length() != 0)) ? 
                                  numStr.substring(0, acIaddPadLength[padCnt] - tempStr.length()) +                                    tempStr : 
                                   tempStr + blankStr.substring(0, acIaddPadLength[padCnt] - 
                                                                tempStr.length()));
                    }
                }
                ++padCnt;
            }
           buf.append(blankStr.substring(0, addressfutureuse));
        } catch (Exception e) {
            response.setResponse(_CSResponse.getInstance(FAILURE));
            response.setResponseCode(strInternalSrvErrorMsg);
            response.setResponseMessage(e.toString() + 
                                        "  installAddress.getLength(): " + 
                                        installAddress.length + "   padCnt : " + 
                                        padCnt + "   tempStr: " + tempStr);
            e.printStackTrace();
        }

        return buf.toString();
    }
//Method that  converts BillingAddress Message to fixed length
    private String constructBillingAdderess(String[] billingAddress) {
     

        int acBaddHdrCount = 
         Integer.parseInt(resourcebundle.getString("billingAddressElementsCount"));
         int acBaddPadLength[] = new int[acBaddHdrCount];
        char acBaddPadType[] = new char[acBaddHdrCount];

        String acBaddHdrLength = resourcebundle.getString("billingAddressDataElementsLength");
        String acBaddHdrType = resourcebundle.getString("billingAddressDataElementsType");

        StringTokenizer acBaddHdrLenTokenizer = new StringTokenizer(acBaddHdrLength,",");
        StringTokenizer acBaddHdrTypeTokenizer = new StringTokenizer(acBaddHdrType,",");

        int count = 0;
        while (acBaddHdrLenTokenizer.hasMoreElements()){
            acBaddPadLength[count] = Integer.parseInt(acBaddHdrLenTokenizer.nextToken());
            count++;
        }

        count = 0;
        while (acBaddHdrTypeTokenizer.hasMoreElements()){
            acBaddPadType [count]= acBaddHdrTypeTokenizer.nextToken().charAt(0);
            count++;
        }
        
        StringBuffer buf;
        String tempStr = null;
        int padCnt = 0;

        buf = new StringBuffer();
        
//for padding spaces for type C, zero`s for type N, and for changing the format of date
        try {
            for (int i =0; i < billingAddress.length; ++i) {
                tempStr = billingAddress[i];

                if (tempStr == null || tempStr.length() == 0) {
                    buf.append(blankStr.substring(0, acBaddPadLength[padCnt]));
                } else {
                    if (acBaddPadType[padCnt] == 'D') {
                        buf.append(tempStr.substring(0, 4) + 
                                   tempStr.substring(5, 7) + 
                                   tempStr.substring(8, 10));
                    } else {
                        buf.append(((acBaddPadType[padCnt] == 'N') && 
                                   (tempStr.length() != 0)) ? 
                                  numStr.substring(0, acBaddPadLength[padCnt] - tempStr.length()) +                                    tempStr : 
                                   tempStr + blankStr.substring(0, acBaddPadLength[padCnt] - 
                                                                tempStr.length()));
                    }
                }
                ++padCnt;
            }
            buf.append(blankStr.substring(0, baddressfutureuse));
        } catch (Exception e) {
            response.setResponse(_CSResponse.getInstance(FAILURE));
            response.setResponseCode(strInternalSrvErrorMsg);
            response.setResponseMessage(e.toString() + 
                                        "  billingAddress.getLength(): " + 
                                        billingAddress.length + "   padCnt : " + 
                                        padCnt + "   tempStr: " + tempStr);
            e.printStackTrace();
        }

        return buf.toString();
    }
//Method that  converts Contact Message to fixed length
    private String constructContactMsg(_CSContact[] contacts) {

        //FILLER should be at the end of the order not at order line level
        //X  for 999.99 format
        //Y for 99999999.99
        
         int contactCount = 
             Integer.parseInt(resourcebundle.getString("contactDataElementsCount"));
          int contactPadLength[] = new int[contactCount];
         char contactPadType[] = new char[contactCount];
        
         String contactLen = resourcebundle.getString("contactDataElementsLength");
         String contactType = resourcebundle.getString("contactDataElementsType");

         StringTokenizer contactLthTokenizer = new StringTokenizer(contactLen,",");
         StringTokenizer contactTypeTokenizer = new StringTokenizer(contactType,",");

         int count = 0;
         while (contactLthTokenizer.hasMoreElements()){
             contactPadLength[count] = Integer.parseInt(contactLthTokenizer.nextToken());
             count++;
         }

         count = 0;
         while (contactTypeTokenizer.hasMoreElements()){
             contactPadType [count]= contactTypeTokenizer.nextToken().charAt(0);
             count++;
         }

        NumberFormat nf = NumberFormat.getNumberInstance();
        DecimalFormat df = (DecimalFormat)nf;

        StringBuffer buf = new StringBuffer();
        String tempStr = null;
        int padCnt = 0;

        tempStr = "" + contacts.length;
        

        for (int j = 0; j < contacts.length; ++j) {
            padCnt = 0;
            String[] contactValues = contacts[j].getContactValues();
            
            //for padding spaces for type C, zero`s for type N, and for changing the format of date
            try {
                for (int i = 0; i < contactValues.length; ++i) {
                    tempStr = contactValues[i];
                    
                    if (tempStr == null || tempStr.length() == 0) {
                        //padding 0's for AKR if it's null/spaces
                        if (contactPadType[padCnt] == 'A') {
                            buf.append("000");
                        } else {
                            buf.append(blankStr.substring(0, contactPadLength[padCnt]));
                        }
                    } else {
                        if (contactPadType[padCnt] == 'D') {
                            buf.append(tempStr.substring(0, 4) + 
                                       tempStr.substring(5, 7) + 
                                       tempStr.substring(8, 10));
                        } else if (contactPadType[padCnt] == 'X') {
                            df.applyPattern("000.00");
                            buf.append(df.format(nf.parse(tempStr).doubleValue()));
                        } else if (contactPadType[padCnt] == 'Y') {
                            df.applyPattern("00000000000.00");
                            buf.append("+" + df.format(nf.parse(tempStr).doubleValue()));
                        } else {
                            buf.append(( (contactPadType[padCnt] == 'N') || (contactPadType[padCnt] == 'A') ) ? 
                                       numStr.substring(0, 
                                                        contactPadLength[padCnt] - 
                                                        tempStr.length()) + 
                                       tempStr : 
                                       tempStr + blankStr.substring(0, 
                                                                    contactPadLength[padCnt] - 
                                                                    tempStr.length()));
                        }
                        
                    }
                    ++padCnt;
                    
                }
             
            } catch (Exception e) {
                response.setResponse(_CSResponse.getInstance(FAILURE));
                response.setResponseCode(strInternalSrvErrorMsg);
                response.setResponseMessage(e.toString() + 
                                            "  contactLen.getLength(): " + 
                                            contactValues.length + 
                                            "   padCnt : " + padCnt + 
                                            "   tempStr: " + tempStr + 
                                            " contactPadLength[padCnt]: " + 
                                            contactPadLength[padCnt] + 
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
    public static FixedLengthRequest setResponseError(FixedLengthRequest fixedLengthACRequest, _CSEaiHeader eaiHeaderF)
    {
        eaiHeaderF.setApplicationId("");
        eaiHeaderF.setInstanceId("");
        eaiHeaderF.setMessageHistory("");
        eaiHeaderF.setMessageId("");
        eaiHeaderF.setPayloadVersion("");
        eaiHeaderF.setTimeStamp(Calendar.getInstance());
        eaiHeaderF.setTracingId("");
        eaiHeaderF.setTransactionId("");
        
        fixedLengthACRequest.setLogicalCountry("");
        
        return fixedLengthACRequest;
    }
    
  
}
