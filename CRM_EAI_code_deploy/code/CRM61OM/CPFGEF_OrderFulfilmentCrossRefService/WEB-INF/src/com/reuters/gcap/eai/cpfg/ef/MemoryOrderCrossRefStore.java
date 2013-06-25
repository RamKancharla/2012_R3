package com.reuters.gcap.eai.cpfg.ef;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * In-memory implementation of the fulfilment request data store for use in testing 
 * only when a database connection is not available.
 */
public class MemoryOrderCrossRefStore implements IOrderCrossRefStore {

    private Map<String, Set<OrderLine> > storageMap;
    
    private Logger logger;
    
    public MemoryOrderCrossRefStore() {
        storageMap=new HashMap<String, Set<OrderLine> >();
        logger = Logger.getLogger( this.getClass().getName() );
    }

    public Set<OrderLine> getOrderLinesByFulfilmentId(String electronicFulfilmentId,String permissioningStatus) {
        logger.log( Level.SEVERE, "MemoryOrderCrossRefStore in use.  DEVELOPMENT ONLY!");
        return storageMap.get( electronicFulfilmentId );
    }

    public String storeOrderLines(Set<OrderLine> orderLines) {
        logger.log( Level.SEVERE, "MemoryOrderCrossRefStore in use.  DEVELOPMENT ONLY!");
        String electronicFulfilmentRequestId = String.valueOf( System.currentTimeMillis() );
        storageMap.put( electronicFulfilmentRequestId, orderLines);
        return electronicFulfilmentRequestId;
    }
}
