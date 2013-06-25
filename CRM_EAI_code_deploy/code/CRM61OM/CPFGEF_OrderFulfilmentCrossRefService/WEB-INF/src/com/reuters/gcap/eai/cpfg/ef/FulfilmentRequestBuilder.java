package com.reuters.gcap.eai.cpfg.ef;

import com.reuters.gcap.eai.cpfg.ef.AttributeValuePair;
import com.reuters.gcap.eai.cpfg.ef.ElectronicFulfilmentRequest;
import com.reuters.gcap.eai.cpfg.ef.Entitlement;
import com.reuters.gcap.eai.cpfg.ef.ModifyUserEntitlements;
import com.reuters.gcap.eai.cpfg.ef.CanonicalConfiguredAttribute;
import com.reuters.gcap.eai.cpfg.ef.CanonicalOLI;
import com.reuters.gcap.eai.cpfg.ef.CanonicalOrder;

import java.text.DateFormat;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FulfilmentRequestBuilder {

    private static ResourceBundle resourceBundle;

    private static Logger logger;

    private static String FREE_TRIAL_END_DATE_STRING_FORMAT_ID = 
        "StringDateFormat_FreeTrialEndDate";
    private static String FREE_TRIAL_END_DATE_STRING_FORMAT;
    private static String NULL_FREE_TRIAL_END_DATE_STRING_ID = 
        "NullReplacementForFreeTrialEndDate";
    private static String NULL_FREE_TRIAL_END_DATE_STRING;

    private static String FREE_TRIAL_TRUE_TEXT_ID = "FreeTrialFlagBooleanTrue";
    private static String FREE_TRIAL_TRUE_TEXT;

    private static String FREE_TRIAL_FALSE_TEXT_ID = 
        "FreeTrialFlagBooleanFalse";
    private static String FREE_TRIAL_FALSE_TEXT;

    // Map of linked order lines indexed by order line item ID
    private Map<String, LinkedOrderLine> linkedOrderLineMap;

    // Map of order lines indexed by order line item ID
    private Map<String, CanonicalOLI> orderLineMap;

    // Used to store a list of base order lines
    private Set<String> parentLinkedOrderLines;

    public FulfilmentRequestBuilder() {
        logger = Logger.getLogger(this.getClass().getName());
        resourceBundle = ResourceBundle.getBundle("ApplicationResources");
        FREE_TRIAL_END_DATE_STRING_FORMAT = 
                resourceBundle.getString(FREE_TRIAL_END_DATE_STRING_FORMAT_ID);
        NULL_FREE_TRIAL_END_DATE_STRING = 
                resourceBundle.getString(NULL_FREE_TRIAL_END_DATE_STRING_ID);
        FREE_TRIAL_TRUE_TEXT = 
                resourceBundle.getString(FREE_TRIAL_TRUE_TEXT_ID);
        FREE_TRIAL_FALSE_TEXT = 
                resourceBundle.getString(FREE_TRIAL_FALSE_TEXT_ID);
    }

    public ElectronicFulfilmentRequest createElectronicFulfilmentRequest(OrderLineSetId setDetails, 
                                                                         Set<OrderLine> orderLines, 
                                                                         CanonicalOrder order, 
                                                                         String electronicFulfilmentRequestId) {
        linkedOrderLineMap = new HashMap<String, LinkedOrderLine>();
        orderLineMap = new HashMap<String, CanonicalOLI>();
        parentLinkedOrderLines = new HashSet<String>();

        // Create a map of all order lines
        for (CanonicalOLI orderLine: order.getOrderLineItem()) {
            // Add the order line to a HashMap for easy lookup by Order Line ID
            orderLineMap.put(orderLine.getCRMOLIId(), orderLine);
        }

        logger.log(Level.FINEST, 
                   "orderLineMap created with size=" + orderLineMap.size());

        // Create a tree of Linked Order Lines
        for (OrderLine orderLine: orderLines) {
            // Add the order line to a HashMap for easy lookup by Order Line ID
            addOrderLinetoLinkedOrderLineMap(new LinkedOrderLine(orderLineMap.get(orderLine.getOrderLineId())));
        }

        logger.log(Level.FINEST, 
                   "linkedOrderLineMap created with size=" + linkedOrderLineMap.size());
        logger.log(Level.FINEST, 
                   "parentLinkedOrderLines created with size=" + parentLinkedOrderLines.size());

        /* Now construct the electronic fulfilment request
       * */
        ElectronicFulfilmentRequest electronicFulfilmentRequest = 
            new ElectronicFulfilmentRequest();

        electronicFulfilmentRequest.setElectronicFulfilmentRequestId(electronicFulfilmentRequestId);
        electronicFulfilmentRequest.setSubscriberAccount(setDetails.getSubscriber());
        electronicFulfilmentRequest.setUUID(setDetails.getUuid());
        electronicFulfilmentRequest.setModifyUserEntitlements(new ModifyUserEntitlements());

        List<Entitlement> entitlements = new Vector<Entitlement>();

        for (String linkedOrderLineId: parentLinkedOrderLines) {
            entitlements.add(createEntitlement(linkedOrderLineMap.get(linkedOrderLineId)));
        }

        electronicFulfilmentRequest.getModifyUserEntitlements().setEntitlement(entitlements.toArray(new Entitlement[entitlements.size()]));
        return electronicFulfilmentRequest;

    }

    /**
     * Adds a Linked order line and its parent, if appropriate, to the LinkedOrderLineMap. 
     * @param linkedOrderLine The order line to add.
     */
    private void addOrderLinetoLinkedOrderLineMap(LinkedOrderLine linkedOrderLine) {

        // Add this order line to the map if not already present
        if (!linkedOrderLineMap.containsKey(linkedOrderLine.getOrderLine().getCRMOLIId())) {
            // Add this linkedOrderLine to the Map
            linkedOrderLineMap.put(linkedOrderLine.getOrderLine().getCRMOLIId(), 
                                   linkedOrderLine);
        }

        // Check if this order line has a parent.
        String parentOrderItemId = 
            linkedOrderLine.getOrderLine().getParentOrderItemId();

        if ((null == parentOrderItemId) || ("".equals(parentOrderItemId))) {
            // This order line has no parent - must be a base product
            parentLinkedOrderLines.add(linkedOrderLine.getOrderLine().getCRMOLIId());
       } else {
            // Order line should have a parent, add that to the map
            if (null == orderLineMap.get(parentOrderItemId)) {
                /* The parent line ID cannot be found.  Possibly indicates that
                 * the parent order line id specified on the line item does not
                 * match any order line ID in the split set.
                 * */
                String message = 
                    "parent order item ID " + parentOrderItemId + " specified in order line ID " + 
                    linkedOrderLine.getOrderLine().getCRMOLIId() + 
                    " cannot be found in split set " + orderLineMap;

                logger.log(Level.WARNING, message);
                throw new RuntimeException(message);
            }
            addOrderLinetoLinkedOrderLineMap(new LinkedOrderLine(orderLineMap.get(parentOrderItemId)));

            // Set the parent for this order line
            linkedOrderLine.setParent(linkedOrderLineMap.get(parentOrderItemId));

            // Add this order line as a child of the parent
            linkedOrderLineMap.get(parentOrderItemId).getChildren().add(linkedOrderLine);
        }
    }

    /**
     * Creates an electronic fulfilment request entitlement based on the
     * linked order line.  Recurses into child order lines to create add-on
     * entitlements.
     * 
     * @param linkedOrderLine the order line to use as the startig point.
     * @return
     */
    protected Entitlement createEntitlement(LinkedOrderLine linkedOrderLine) {
        Entitlement e = new Entitlement();
        e.setActionCode(linkedOrderLine.getOrderLine().getActionCode());

        List<Entitlement> addOns = new Vector<Entitlement>();
        // Recurse down through the add-ons
        for (LinkedOrderLine child: linkedOrderLine.getChildren()) {
            addOns.add(createEntitlement(child));
        }
        e.setAddOn(addOns.toArray(new Entitlement[linkedOrderLine.getChildren().size()]));

        if (null == linkedOrderLine.getOrderLine().getFreeTrialEndDate() || 
            "".equals(linkedOrderLine.getOrderLine().getFreeTrialEndDate())) {
            // No free trial end date, set to default because using null causes parsing error
            e.setFreeTrialEndDate(convertDate(NULL_FREE_TRIAL_END_DATE_STRING, 
                                              FREE_TRIAL_END_DATE_STRING_FORMAT));
        } else {
            // Convert the free trial end date string according to formatting rules
            e.setFreeTrialEndDate(convertDate(linkedOrderLine.getOrderLine().getFreeTrialEndDate(), 
                                              FREE_TRIAL_END_DATE_STRING_FORMAT));
        }
        if (FREE_TRIAL_TRUE_TEXT.equals(linkedOrderLine.getOrderLine().getFreeTrailFlag())) {
            e.setFreeTrialIndicator(true);
        } else if (FREE_TRIAL_FALSE_TEXT.equals(linkedOrderLine.getOrderLine().getFreeTrailFlag())) {
            e.setFreeTrialIndicator(false);
        } else {
            logger.log(Level.WARNING, 
                       "Unexpected Free trial flag value: " + linkedOrderLine.getOrderLine().getFreeTrailFlag());
            throw new RuntimeException("Unexpected Free trial flag value: " + 
                                       linkedOrderLine.getOrderLine().getFreeTrailFlag());
        }

        List<AttributeValuePair> attributes = new Vector<AttributeValuePair>();
        for (CanonicalConfiguredAttribute sourceAttribute: 
             linkedOrderLine.getOrderLine().getConfiguredAttribute()) {
            AttributeValuePair targetAttribute = new AttributeValuePair();
            targetAttribute.setAttributeID(sourceAttribute.getAttributeIntegrationId());
            targetAttribute.setValueID(sourceAttribute.getValueIntegrationId());
            attributes.add(targetAttribute);
        }
        e.setProductAttribute(attributes.toArray(new AttributeValuePair[attributes.size()]));

        e.setProductID(linkedOrderLine.getOrderLine().getProductIntegrationId());

        return e;
    }

    /**
     * Converts from the input string date format into a Calendar
     * @param dateString GMT Date in string format
     * @param format the date format in Java standard format
     * @return
     */
    protected Calendar convertDate(String dateString, String format) {

        Date date;
        Calendar calendar;

        try {
            date = (new SimpleDateFormat(format)).parse(dateString);
            calendar = Calendar.getInstance();
            calendar.setTime(date);
        } catch (Exception e) {
            logger.log(Level.WARNING, e.toString());
            throw new RuntimeException(e);
        }
        return calendar;
    }
}
