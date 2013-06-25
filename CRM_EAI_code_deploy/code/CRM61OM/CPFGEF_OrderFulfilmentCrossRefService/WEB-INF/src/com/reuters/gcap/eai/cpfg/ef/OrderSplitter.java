package com.reuters.gcap.eai.cpfg.ef;

import com.reuters.gcap.eai.cpfg.ef.CanonicalOrder;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class OrderSplitter {
    /**
     * Splits a canonical order into zero or more sets of order lines based
     * on the user Id and subscriber.  Each set of order lines returned will relate
     * to only one user and subscriber.
     * 
     * @param canonicalOrder
     * @return the order line identifiers 
     */
    public static Map<OrderLineSetId, Set<OrderLine> > splitOrder(CanonicalOrder canonicalOrder) {

        //Identify all the combinations of user ID and subscriber in the order
        CanonicalOLI[] lineItems;
        lineItems = canonicalOrder.getOrderLineItem();
        Map<OrderLineSetId, Set<OrderLine> > orderLineSetMap = new HashMap<OrderLineSetId, Set<OrderLine> >();

        for (int i = 0; i < lineItems.length; i++) {
        
            OrderLine orderLine = new OrderLine(
                           canonicalOrder.getOrderHeader().getCRMOrderNumber(),
                           lineItems[i].getCRMOLIId(),lineItems[i].getUserID(),lineItems[i].getUserNumber(),lineItems[i].getBusinessCase());
                           
                
            // Note that null values are treated the same as empty strings 
            OrderLineSetId setId = new OrderLineSetId(
                lineItems[i].getUserNumber() == null ? "" : lineItems[i].getUserNumber(),
                lineItems[i].getSubscriber() == null ? "" : lineItems[i].getSubscriber());

            if (orderLineSetMap.keySet().contains( setId ) ) {
                // Add this order line to the existing set
                orderLineSetMap.get( setId ).add( orderLine );
            } else {
                // Add the order line to a new set and add the set to the map
                Set<OrderLine> set = new HashSet<OrderLine>();             
                set.add( orderLine );
                orderLineSetMap.put( setId, set );
            }
        }
        
        return orderLineSetMap;

    }

}

