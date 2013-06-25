package com.reuters.gcap.eai.cpfg.ef;
/**
 * OrderLine
 *
 *
 * Version          Date        Modified By          Description
 * 0.1              15/4/2008   Rob Billington       Initial Version
 */

/**
 * Simple immutable container class for order line detail identifiers
 */
public class OrderLine {

    /**
     * The identifier for a CRM Order
     */
    private String orderId;

    /**
     * The identifier for a CRM Order Line
     */
    private String orderLineId;
    private String siebelContactUserId;
    private String siebelContactRowId;
    private String businessCase;

    public OrderLine(String _orderId, String _orderLineId,String _siebelContactUserId,String _siebelContactRowId,String _businessCase) {
        this.orderId = _orderId;
        this.orderLineId = _orderLineId;
        this.siebelContactUserId=_siebelContactUserId;
        this.siebelContactRowId=_siebelContactRowId;
        this.businessCase=_businessCase;
        
    }
    /** Basic getter method.
    *
    * @return The CRM Order ID for this order line
    */
    public

    String getOrderId() {
       return orderId;
    }

    /**
    * Basic getter method.
    *
    * @return The CRM Order Line ID for this order line
    */

    public String getOrderLineId() {
       return orderLineId;
    }


    /**
    * Implementation of Object.equals method.
    * @param obj The object to compare with
    * @return true if the contents of the objects are equal
    */
    @Override
    public boolean equals(Object obj) {
       if (this == obj)
           return true;

       if (null == obj)
           return false;

       if (!(obj instanceof OrderLine))
           return false;

       OrderLine orderLine = (OrderLine)obj;
       // Use == because we are comparing strings
       if ((this.orderId == orderLine.orderId) && 
           (this.orderLineId == orderLine.orderLineId))
           return true;
       else
           return false;
    }

    /**
    * Simple hashcode implementation based on the hash
    * of the order ID and order line ID concatenated.
    * @return a hashcode value for this object.
    */
    @Override
    public int hashCode() {
       return (orderId + orderLineId).hashCode();
    }
    
    @Override
    public String toString() {
       return "[OrderId=" + orderId + ", OrderLineId=" + orderLineId +"]";
    }
    public void setOrderId(String orderId) {
       this.orderId = orderId;
    }

    public void setOrderLineId(String orderLineId) {
       this.orderLineId = orderLineId;
    }

    public void setSiebelContactUserId(String siebelContactUserId) {
       this.siebelContactUserId = siebelContactUserId;
    }

    public String getSiebelContactUserId() {
       return siebelContactUserId;
    }

    public void setSiebelContactRowId(String siebelContactRowId) {
       this.siebelContactRowId = siebelContactRowId;
    }

    public String getSiebelContactRowId() {
       return siebelContactRowId;
    }

    public void setBusinessCase(String businessCase) {
       this.businessCase = businessCase;
    }

    public String getBusinessCase() {
       return businessCase;
    }
    }
