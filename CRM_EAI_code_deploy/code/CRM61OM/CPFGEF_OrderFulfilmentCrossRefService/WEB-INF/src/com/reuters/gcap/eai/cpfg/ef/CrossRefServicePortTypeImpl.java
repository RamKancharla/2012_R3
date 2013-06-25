package com.reuters.gcap.eai.cpfg.ef;

import java.util.Calendar;

public class CrossRefServicePortTypeImpl {

    public SplitOrderResponse splitOrder(SplitOrderRequest parameters) {

        CrossRefServiceController crossRefServiceController = new CrossRefServiceController();
        
        SplitOrderResponse SOR =  new SplitOrderResponse();
        SOR.setEaiHeader(parameters.getEaiHeader());
        
        /*
        // Hard coded response for debugging
        ElectronicFulfilmentRequest efr = new ElectronicFulfilmentRequest();
        efr.setElectronicFulfilmentRequestId("test");
        efr.setSubscriberAccount("subAccn");
        efr.setUUID("uuid");
        
        ModifyUserEntitlements m = new ModifyUserEntitlements();
        Entitlement e = new Entitlement();
        e.setActionCode("ADD");
        e.setAddOn( new Entitlement[0]);
        e.setFreeTrialEndDate( Calendar.getInstance() );
        e.setFreeTrialIndicator( false );
        e.setProductAttribute( new AttributeValuePair[0] );
        e.setProductID("PROD-ID");
        m.setEntitlement( new Entitlement[] {e} );
        efr.setModifyUserEntitlements( m );
        */
        SOR.setElectronicFulfilmentRequest ( crossRefServiceController.splitOrder( parameters.getCrmOrder() ) );
    
//        SOR.setElectronicFulfilmentRequest (new ElectronicFulfilmentRequest[] {efr} );


        return SOR;
    }

    public GetOrderDetailsResponse getOrderDetails(GetOrderDetailsRequest parameters) {
        CrossRefServiceController crossRefServiceController = new CrossRefServiceController();
        CanonicalOrder crmOrder = null;
        
        try {
           crmOrder = crossRefServiceController.getOrderDetails(parameters.getElectronicFulfilmentRequestId(),parameters.getPermissioningStatus());
        } catch (Exception e) {
            System.out.println("Exception calling crossRefServiceController.getOrderDetails: " + e);
            throw new RuntimeException (e);
        }
        GetOrderDetailsResponse GODR = new GetOrderDetailsResponse();        
        GODR.setEaiHeader(parameters.getEaiHeader());
        GODR.setCrmOrder(crmOrder);

        return GODR;
        }

}
