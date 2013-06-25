/*************************************************************************
* Module            CRM6.1  (Sprint 8)
*                   Pricing Management (Core Suite)
* File              OrderCrossRefStoreBean.java
* Type              Java File
* Description       Java Bean File
*
* Change History
* Version	Date		Author              Description Of Change
* ========	========	===========         ===============================
*  0.01		06/07/07	anvv sharma         Initial Version
* ========	========	===========	    ===============================
*
*************************************************************************/

package com.reuters.gcap.eai.cpfg.ef;

public class OrderCrossRefStoreBean {
    public OrderCrossRefStoreBean() {
    }
    
    private String strOrderID;
    private String strOrderLineID;
    private String strElectronicFulfilmentID;


    public void setStrOrderID(String strOrderID) {
        this.strOrderID = strOrderID;
    }

    public String getStrOrderID() {
        return strOrderID;
    }

    public void setStrOrderLineID(String strOrderLineID) {
        this.strOrderLineID = strOrderLineID;
    }

    public String getStrOrderLineID() {
        return strOrderLineID;
    }

    public void setStrElectronicFulfilmentID(String strElectronicFulfilmentID) {
        this.strElectronicFulfilmentID = strElectronicFulfilmentID;
    }

    public String getStrElectronicFulfilmentID() {
        return strElectronicFulfilmentID;
    }
}
