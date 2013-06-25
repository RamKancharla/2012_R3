package com.reuters.gcap.eai.cpfg.ef;
/*
 * IOrderCrossRefStore
 * 
 * Version          Date        Modified By          Description
 * 0.1              15/4/2008   Rob Billington       Initial Version
 */

import java.util.Set;

/*
 * @
 * Interface for a persistent store of basic order cross reference details
 */
public interface IOrderCrossRefStore {

/*
 * Fetches details of order lines with the specified Electronic Fulfilment Request Id  //(and Permission Status added 16/05/2010
 */
    public Set<OrderLine> getOrderLinesByFulfilmentId(String electronicFulfilmentId, String permissioningStatus);

/*
 * Stores the order line details provided, returning the electronic fulfilment request Id
 * allocated to them by the store.
 */
    public String storeOrderLines(Set<OrderLine> orderLine);

}
