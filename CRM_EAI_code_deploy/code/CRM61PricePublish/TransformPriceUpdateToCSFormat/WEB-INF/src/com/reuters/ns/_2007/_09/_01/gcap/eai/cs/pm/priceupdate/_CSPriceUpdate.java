// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate;


public class _CSPriceUpdate implements java.io.Serializable {
    protected com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSEaiHeader eaiHeader;
    protected java.lang.String country;
    protected com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSCompassMessageHeader messageHeader;
    protected com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSPriceUpdateReqHeader priceUpdateReqHeader;
    protected com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSPriceUpdateReqLineItem[] priceUpdateReqLineItem;
    
    public _CSPriceUpdate() {
    }
    
    public com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSEaiHeader getEaiHeader() {
        return eaiHeader;
    }
    
    public void setEaiHeader(com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSEaiHeader eaiHeader) {
        this.eaiHeader = eaiHeader;
    }
    
    public java.lang.String getCountry() {
        return country;
    }
    
    public void setCountry(java.lang.String country) {
        this.country = country;
    }
    
    public com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSCompassMessageHeader getMessageHeader() {
        return messageHeader;
    }
    
    public void setMessageHeader(com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSCompassMessageHeader messageHeader) {
        this.messageHeader = messageHeader;
    }
    
    public com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSPriceUpdateReqHeader getPriceUpdateReqHeader() {
        return priceUpdateReqHeader;
    }
    
    public void setPriceUpdateReqHeader(com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSPriceUpdateReqHeader priceUpdateReqHeader) {
        this.priceUpdateReqHeader = priceUpdateReqHeader;
    }
    
    public com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSPriceUpdateReqLineItem[] getPriceUpdateReqLineItem() {
        return priceUpdateReqLineItem;
    }
    
    public void setPriceUpdateReqLineItem(com.reuters.ns._2007._09._01.gcap.eai.cs.pm.priceupdate._CSPriceUpdateReqLineItem[] priceUpdateReqLineItem) {
        this.priceUpdateReqLineItem = priceUpdateReqLineItem;
    }
}
