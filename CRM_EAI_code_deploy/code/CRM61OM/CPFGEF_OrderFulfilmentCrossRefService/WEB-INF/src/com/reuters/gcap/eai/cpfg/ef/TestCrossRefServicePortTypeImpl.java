package com.reuters.gcap.eai.cpfg.ef;

import java.util.List;
import java.util.Vector;

public class TestCrossRefServicePortTypeImpl {
   TestCrossRefServicePortTypeImpl testCrossRefServicePortTypeImpl;
   CrossRefServicePortTypeImpl crossRefServicePortTypeImpl;
    
    private static String INSTALL_DATE ="";
    private static String ORDER_NOTE ="";
    private static String REMOVAL_DATE ="";
    private static String ORDER_STATUS ="";
    private static String ADD_ACTION_CODE = "ADD";
    private static String REMOVE_ACTION_CODE = "REM";
    private static String UNCHANGED_ACTION_CODE = "UNC";
    private static String FREE_TRIAL_FLAG_TRUE = "true";
    private static String FREE_TRIAL_FLAG_FALSE = "false";

    
    public TestCrossRefServicePortTypeImpl() {
    }

    public static void main(String[] args) {

        TestCrossRefServicePortTypeImpl testCrossRefServicePortTypeImpl = new TestCrossRefServicePortTypeImpl();

        CanonicalOrder testOrder = testCrossRefServicePortTypeImpl.createTestOrder();

        testCrossRefServicePortTypeImpl.testSplitOrder( testOrder );
        testCrossRefServicePortTypeImpl.testGetOrderDetails();        
    }
    
    public void testSplitOrder(CanonicalOrder order ) {
       // crossRefServicePortTypeImpl.splitOrder( null, order );
    }
    
    public void testGetOrderDetails() {
        
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
            "UK12345",              // Subscriber
            "1-1",                  // User Number
            "",                     // Parent order line ID
            "BASE1") );             // Product Integration ID
        
         lineItems.add( createCanonicalOLI(
             ADD_ACTION_CODE,        // ActionCode
             "2",                    // Order line ID
             FREE_TRIAL_FLAG_FALSE,  // Free Trial Flag
             "",                     // Free Trial End Date
             "UK12345",              // Subscriber
             "1-1",                  // User Number
             "1",                    // Parent order line ID
             "ADD1") );        // Product Integration ID

          lineItems.add( createCanonicalOLI(
              ADD_ACTION_CODE,        // ActionCode
              "3",                    // Order line ID
              FREE_TRIAL_FLAG_FALSE,  // Free Trial Flag
              "",                     // Free Trial End Date
              "UK12345",              // Subscriber
              "1-2",                  // User Number
              "",                    // Parent order line ID
              "BASE2") );             // Product Integration ID

           lineItems.add( createCanonicalOLI(
               ADD_ACTION_CODE,        // ActionCode
               "4",                    // Order line ID
               FREE_TRIAL_FLAG_FALSE,  // Free Trial Flag
               "",                     // Free Trial End Date
               "UK12345",              // Subscriber
               "1-2",                  // User Number
               "3",                    // Parent order line ID
               "ADD2") );               // Product Integration ID

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
