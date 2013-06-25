package com.reuters.gcap.eai.cpfg.ef;


public class OrderLineSetId {

    private String uuid;
    private String subscriber;

    /**
     * 
     * @param _uuid The UUID that applies to this set
     * @param _subscriber The Subscriber that applies to this set
     * @throws NullPointerException if either argument is null
     */
    public OrderLineSetId(String _uuid, String _subscriber) {
        if ((null == _uuid) || (null == _subscriber) ) {
            throw new NullPointerException("uuid = " + getUuid() + 
                                           ", subscriber = " + getSubscriber());
        }
        this.subscriber = _subscriber;
        this.uuid = _uuid;
        
    }
    
    

    /**
     * @param obj
     * @return
     */
     @Override
     public boolean equals(Object obj) {
        if (null == obj)
            return false;

        if (!(obj instanceof OrderLineSetId))
            return false;

        OrderLineSetId orderLineSet = (OrderLineSetId)obj;

        // Simple string comparison of the uuid and subscriber 
        if ((this.uuid.equals( orderLineSet.uuid )) && 
            (this.subscriber.equals( orderLineSet.subscriber ))) {
            return true;
        } else
            return false;
    }

    /** Simple hashcode implementation **/
    @Override
    public int hashCode() {
        return (this.uuid + this.subscriber).hashCode();
    }

    public String getUuid() {
        return uuid;
    }

    public String getSubscriber() {
        return subscriber;
    }

}

