package com.reuters.gcap.eai.cpfg.ef;

import com.reuters.gcap.eai.cpfg.ef.CanonicalOLI;
import com.reuters.gcap.eai.cpfg.ef.CanonicalOrder;
import com.reuters.gcap.eai.cpfg.ef.CanonicalOrderHeader;
import com.reuters.gcap.eai.cpfg.ef.ElectronicFulfilmentRequest;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;


public class CrossRefServiceController {

    private static Logger logger;
    private IOrderCrossRefStore orderCrossRefStore = new OrderCrossRefStoreDAO();
    
    private FulfilmentRequestBuilder fulfilmentRequestBuilder = new FulfilmentRequestBuilder();

    public CrossRefServiceController() {
        logger = Logger.getLogger( this.getClass().getName() );
    }
    
    /**
     * 
     * @param crmOrder
     * @return
     */
    public synchronized ElectronicFulfilmentRequest[] splitOrder( CanonicalOrder crmOrder ) {
    
        List<ElectronicFulfilmentRequest> fulfilmentRequests = new Vector<ElectronicFulfilmentRequest>();
        
        Map< OrderLineSetId, Set<OrderLine> > splitOrderLines;
        
        String electronicFulfilmentRequestId = null;
        
        // Split the Order
        try {
        splitOrderLines = OrderSplitter.splitOrder( crmOrder );
        } catch (Exception e) {
            logger.log( Level.WARNING, "Error in splitOrder: " + e) ;
            throw new RuntimeException(e);
        }
        
        for ( OrderLineSetId orderLineSetId : splitOrderLines.keySet() ) {
            
            // Store the cross-reference
            try {
            electronicFulfilmentRequestId = orderCrossRefStore.storeOrderLines( splitOrderLines.get( orderLineSetId ) );
            } catch (Exception e) {
                logger.log( Level.WARNING, "Error in storeOrderLines: " + e) ;
                throw new RuntimeException(e);
            }
            //Create the electronic fulfilment request
            try {
             fulfilmentRequests.add(fulfilmentRequestBuilder.createElectronicFulfilmentRequest( orderLineSetId , splitOrderLines.get( orderLineSetId ) , crmOrder, electronicFulfilmentRequestId ));
            } catch (Exception e) {
                logger.log( Level.WARNING, "Error in createElectronicFulfilmentRequest: " + e) ;               
                throw new RuntimeException(e);
            }
        }
        logger.log( Level.FINEST, "fulfilmentRequests.size = " + fulfilmentRequests.size() );
        return fulfilmentRequests.toArray( new ElectronicFulfilmentRequest[fulfilmentRequests.size()] );
    }

    /**
     * @param electronicFulfilmentRequestId
     * @return
     */
    public synchronized CanonicalOrder getOrderDetails(String electronicFulfilmentRequestId,String permissioningStatus ) {
        CanonicalOrder crmOrder = createBlankCanonicalOrder();
        String orderNumber = null;
        Set<OrderLine> orderLines = new HashSet<OrderLine>();
        
        // Get the order and order line identifiers for this fulfilment request
        try {
        orderLines =  orderCrossRefStore.getOrderLinesByFulfilmentId(electronicFulfilmentRequestId,permissioningStatus);
        } catch (Exception e) {
            logger.log( Level.WARNING, "Exception calling  orderCrossRefStore.getOrderLinesByFulfilmentId: " + e);
            throw new RuntimeException (e);
        }
        
        logger.log( Level.FINEST, "orderLines.size= " + orderLines.size() );
        
        // Populate only the order ID and order line item IDs in the response
        CanonicalOrderHeader canonicalOrderHeader = new CanonicalOrderHeader();
        canonicalOrderHeader.setCRMOrderNumber( orderNumber );
        
        OrderLine[] orderLinesArray = orderLines.toArray(new OrderLine[orderLines.size()] );
        
        CanonicalOLI[] canonicalOrderLines = new CanonicalOLI[orderLinesArray.length];
        
        for (int i=0; i< canonicalOrderLines.length ; i++ ) {
            // Copy the order line IDs accross
            canonicalOrderLines[i] = createBlankCanonicalOLI( orderLinesArray[i].getOrderLineId() );
            // TODO check that all the order lines have the same order ID
            crmOrder.getOrderHeader().setCRMOrderNumber( orderLinesArray[i].getOrderId() );
        }
        
        crmOrder.setOrderLineItem( canonicalOrderLines );
        
        return crmOrder;
    }
    
    /**
     * Helper method to create a canonical order object with non-null
     * fields.
     * @return a canoncial order
     */
    public CanonicalOrder createBlankCanonicalOrder() {
        CanonicalOrder o = new CanonicalOrder();
        
        o.setLogicalCountry("");

        CanonicalOrderHeader oh = new CanonicalOrderHeader();
        oh.setCRMOrderNumber( "" );
        oh.setInstallDate( "" );
        oh.setOrderNote( "" );
        oh.setOrderStatus( "" );
        oh.setRemovalDate( "" );
        o.setOrderHeader( oh );
        
        List<CanonicalOLI> lineItems = new Vector<CanonicalOLI>();
        o.setOrderLineItem( lineItems.toArray( new CanonicalOLI[lineItems.size()] ) );
        
        return o;
    }
    
    /**
     * Helper method to create a canonical order line object 
     * with no null values or objects.
     * @param crmOLIID The order line ID to set for the line 
     * @return empty, non-null canonical order line
     */
    public CanonicalOLI createBlankCanonicalOLI(String crmOLIID) {
        CanonicalOLI o = new CanonicalOLI();
        
        o.setActionCode( "" );
        o.setAKR("");
        o.setAssetIntegrationId("");
        o.setBillingNote("");
        o.setBillingType("");
        o.setBusinessCase("");
        o.setConfiguredAttribute( new CanonicalConfiguredAttribute[0] );
        o.setCRMOLIId( crmOLIID);
        o.setDiscount("");
        o.setDob("");
        o.setFirstName("");
        o.setFreeTrailFlag( "" );
        o.setFreeTrialEndDate( "" );
        o.setInstallDate("");
        o.setInterfaceForBilling("");
        o.setInterfaceForFulfilment("");
        o.setIsNewUser("");
        o.setItemNumber("");
        o.setLastname("");
        o.setManualPermissioningRequired("");
        o.setOrderLineStatus("");
        o.setParentOrderItemId("");
        o.setPermissioningStatus("");
        o.setPermissioningSystem("");
        o.setPLI("");
        o.setProductIntegrationId("");
        o.setQUID("");
        o.setRemovalDate("");
        o.setRootItemId("");
        o.setSalesCode("");
        o.setSpecialPrice("");
        o.setSpecialPriceCurr("");
        o.setSpecialPriceRestrictionDate("");
        o.setStartStopBillingDate("");
        o.setSTB("");
        o.setSubAccount("");
        o.setSubscriber("");
        o.setUserID("");
        o.setUserIDtype("");
        o.setUserNumber( "" );
        
        return o;
    }
}
