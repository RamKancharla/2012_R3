/*************************************************************************
* Module            CRM6.1  (Sprint 8)
*                   Order Management (Core Suite)
* File              ResponseBean.java
* Type              Java File
* Description       Java Bean File
*
* Change History
* Version	Date		Author                     Description Of Change
* ========	========	=====================      ===============================
*  0.01		06/07/07	Kasireddy Harika           Initial Version
*   0.01         04/15/08       Kasireddy Harika           Rework after xsd chages.
* ========	========	=====================	   ===============================
*
*************************************************************************/


package com.reuters.eai.cs.pm;

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
