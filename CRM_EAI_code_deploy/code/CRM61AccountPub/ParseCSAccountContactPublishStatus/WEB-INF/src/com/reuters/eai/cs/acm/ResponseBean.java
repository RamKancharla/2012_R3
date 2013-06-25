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
  * ========     ========        ======================         ===============================
  ***************************************************************************/


 package com.reuters.eai.cs.acm;

public class ResponseBean {
    public ResponseBean() {
    }
    
    private String strRespId;
    private String strRespCode;
    private String strRespMessage;


    public void setStrRespId(String strRespId) {
        this.strRespId = strRespId;
    }

    public String getStrRespId() {
        return strRespId;
    }

    public void setStrRespCode(String strRespCode) {
        this.strRespCode = strRespCode;
    }

    public String getStrRespCode() {
        return strRespCode;
    }

    public void setStrRespMessage(String strRespMessage) {
        this.strRespMessage = strRespMessage;
    }

    public String getStrRespMessage() {
        return strRespMessage;
    }
}
