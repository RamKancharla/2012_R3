package com.reuters.gcap.eai.cpfg.ef;

import com.reuters.gcap.eai.cpfg.ef.CanonicalConfiguredAttribute;
import com.reuters.gcap.eai.cpfg.ef.CanonicalOLI;
import com.reuters.gcap.eai.cpfg.ef.CanonicalOrder;
import com.reuters.gcap.eai.cpfg.ef.CanonicalOrderHeader;

import java.util.List;
import java.util.Vector;


public class TestCrossRefServiceController {

    CrossRefServiceController controller;
    
    private static String INSTALL_DATE ="";
    private static String ORDER_NOTE ="";
    private static String REMOVAL_DATE ="";
    private static String ORDER_STATUS ="";
    private static String ADD_ACTION_CODE = "ADD";
    private static String REMOVE_ACTION_CODE = "REM";
    private static String UNCHANGED_ACTION_CODE = "UNC";
    private static String FREE_TRIAL_FLAG_TRUE = "Y";
    private static String FREE_TRIAL_FLAG_FALSE = "N";

    
    public TestCrossRefServiceController() {
        controller = new CrossRefServiceController();
    }

    public static void main(String[] args) {
        TestCrossRefServiceController testCrossRefServiceController = new TestCrossRefServiceController();

        CanonicalOrder testOrder = testCrossRefServiceController.createTestOrder();

        String Id = testCrossRefServiceController.testSplitOrder( testOrder );
        testCrossRefServiceController.testGetOrderDetails(Id);        
    }
    
    public String testSplitOrder(CanonicalOrder order ) {
        ElectronicFulfilmentRequest[] efrArray = controller.splitOrder( order );
        return efrArray[0].getElectronicFulfilmentRequestId();
    }
    
    public void testGetOrderDetails( String Id) {
        CanonicalOrder o = controller.getOrderDetails( Id ,"Y");
        System.out.println(o);
    }
    
    public CanonicalOrder createTestOrder() {
        CanonicalOrder o = new CanonicalOrder();
        
        CanonicalOrderHeader oh = new CanonicalOrderHeader();
        oh.setCRMOrderNumber( String.valueOf( System.currentTimeMillis() ) );
        oh.setInstallDate( INSTALL_DATE );
        oh.setOrderNote( ORDER_NOTE );
        oh.setOrderStatus( ORDER_STATUS );
        oh.setRemovalDate( REMOVAL_DATE );
        
        List<CanonicalOLI> lineItems = new Vector<CanonicalOLI>();
        
        lineItems.add( createCanonicalOLI(
            ADD_ACTION_CODE,        // ActionCode
            "1",                    // Order line ID
            FREE_TRIAL_FLAG_FALSE,  // Free Trial Flag
            "",                     // Free Trial End Date
            "111",                  // Subscriber
            "1-1",                  // User Number
            "",                     // Parent order line ID
            "BASE1") );             // Product Integration ID
        
         lineItems.add( createCanonicalOLI(
             ADD_ACTION_CODE,        // ActionCode
             "2",                    // Order line ID
             FREE_TRIAL_FLAG_FALSE,  // Free Trial Flag
             "",                     // Free Trial End Date
             "111",              // Subscriber
             "1-1",                  // User Number
             "1",                    // Parent order line ID
             "ADD1") );        // Product Integration ID

          lineItems.add( createCanonicalOLI(
              ADD_ACTION_CODE,        // ActionCode
              "3",                    // Order line ID
              FREE_TRIAL_FLAG_FALSE,  // Free Trial Flag
              "",                     // Free Trial End Date
              "111",              // Subscriber
              "1-1",                  // User Number
              "2",                    // Parent order line ID
              "ADD2") );             // Product Integration ID

           lineItems.add( createCanonicalOLI(
               ADD_ACTION_CODE,        // ActionCode
               "4",                    // Order line ID
               FREE_TRIAL_FLAG_FALSE,  // Free Trial Flag
               "",                     // Free Trial End Date
               "222",              // Subscriber
               "1-1",                  // User Number
               "",                    // Parent order line ID
               "ADD3") );               // Product Integration ID

        o.setLogicalCountry("Country");
        o.setOrderHeader( oh );
        o.setOrderLineItem( lineItems.toArray( new CanonicalOLI[lineItems.size()] ) );
        
        return o;
    }
    
    public CanonicalOLI createCanonicalOLI(
        String actionCode,
        String crmOLIID,
        String freeTrialFlag,
        String freeTrialEndDate,
        String subscriber,
        String userNumber,
        String parentOrderItemId,
        String productIntegrationId
        ) {
        CanonicalOLI o = new CanonicalOLI();
        
        o.setActionCode( actionCode );
        o.setCRMOLIId( crmOLIID);
        o.setFreeTrailFlag( freeTrialFlag );
        o.setFreeTrialEndDate( freeTrialEndDate );
        o.setSubscriber( subscriber);
        o.setUserNumber( userNumber );
        o.setParentOrderItemId( parentOrderItemId );
        o.setProductIntegrationId( productIntegrationId);

        // Configured Attributes
        CanonicalConfiguredAttribute at1 = new CanonicalConfiguredAttribute();
        at1.setAttributeIntegrationId( "AT1");
        at1.setValue( "Value1");
        
        CanonicalConfiguredAttribute at2 = new CanonicalConfiguredAttribute();
        at2.setAttributeIntegrationId( "AT2");
        at2.setValue( "Value2");
        
        o.setConfiguredAttribute( new CanonicalConfiguredAttribute[] {at1, at2} );

        return o;
    }
}
