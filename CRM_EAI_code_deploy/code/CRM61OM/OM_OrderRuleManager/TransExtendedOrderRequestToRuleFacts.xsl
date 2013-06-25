<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="OM_OrderRuleManager.wsdl"/>
      <rootElement name="extendedOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="OrderLineRequestDictionary141008_DecisionService_1Wrapper1.wsdl"/>
      <rootElement name="callFunctionStateless" namespace="http://xmlns.oracle.com/OrderLineRequestDictionary141008/OrderLineRequestDictionary141008_DecisionService_1"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [THU AUG 04 16:42:54 IST 2011]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:java="http://schemas.xmlsoap.org/wsdl/java/"
                xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"
                xmlns:bpelpm="http://xmlns.oracle.com/bpel"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns5="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/OM/OrderManagement"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:format="http://schemas.xmlsoap.org/wsdl/formatbinding/"
                xmlns:client="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OM"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:tns="http://xmlns.oracle.com/OrderLineRequestDictionary141008/OrderLineRequestDictionary141008_DecisionService_1"
                xmlns:rules="http://xmlns.oracle.com/bpel/rules"
                xmlns:ns3="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement"
                xmlns:ns4="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/CS/OM/OrderManagement"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns2="http://schemas.oracle.com/bpel/extension"
                xmlns:pns1="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OM/correlationset"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl bpws ns0 xsdLocal ns5 client plnk cmt ns3 ns4 xsd ns2 pns1 java bpelpm soap12 format soap wsdl tns rules xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <tns:callFunctionStateless>
      <tns:parameterList>
   <xsdLocal:orderLineRepository>
      <xsl:for-each select="/xsdLocal:extendedOrderRequest/xsdLocal:orderLineItem">
        <xsdLocal:OrderLineRequestFacts>
          <xsdLocal:messageHeaderActionCode>
            <xsl:value-of select="../xsdLocal:messageHeader/xsdLocal:actionCode"/>
          </xsdLocal:messageHeaderActionCode>
          <xsdLocal:CRMOLIId>
            <xsl:value-of select="xsdLocal:CRMOLIId"/>
          </xsdLocal:CRMOLIId>
          <xsdLocal:parentOrderItemId>
            <xsl:value-of select="xsdLocal:parentOrderItemId"/>
          </xsdLocal:parentOrderItemId>
          <xsdLocal:rootItemId>
            <xsl:value-of select="xsdLocal:rootItemId"/>
          </xsdLocal:rootItemId>
          <xsdLocal:actionCode>
            <xsl:value-of select="xsdLocal:actionCode"/>
          </xsdLocal:actionCode>
          <xsdLocal:businessCase>
            <xsl:value-of select="xsdLocal:businessCase"/>
          </xsdLocal:businessCase>
          <xsdLocal:salesCode>
            <xsl:value-of select="xsdLocal:salesCode"/>
          </xsdLocal:salesCode>
          <xsdLocal:subscriber>
            <xsl:value-of select="xsdLocal:subscriber"/>
          </xsdLocal:subscriber>
          <xsdLocal:subAccount>
            <xsl:value-of select="xsdLocal:subAccount"/>
          </xsdLocal:subAccount>
          <xsdLocal:PLI>
            <xsl:value-of select="xsdLocal:PLI"/>
          </xsdLocal:PLI>
          <xsdLocal:permissioningSystem>
            <xsl:value-of select="xsdLocal:permissioningSystem"/>
          </xsdLocal:permissioningSystem>
          <xsdLocal:manualPermissioningRequired>
            <xsl:value-of select="xsdLocal:manualPermissioningRequired"/>
          </xsdLocal:manualPermissioningRequired>
          <xsdLocal:AKR>
            <xsl:value-of select="xsdLocal:AKR"/>
          </xsdLocal:AKR>
          <xsdLocal:userID>
            <xsl:value-of select="xsdLocal:userID"/>
          </xsdLocal:userID>
          <xsdLocal:userIDtype>
            <xsl:value-of select="xsdLocal:userIDtype"/>
          </xsdLocal:userIDtype>
          <xsdLocal:userNumber>
            <xsl:value-of select="xsdLocal:userNumber"/>
          </xsdLocal:userNumber>
          <xsdLocal:firstName>
            <xsl:value-of select="xsdLocal:firstName"/>
          </xsdLocal:firstName>
          <xsdLocal:lastname>
            <xsl:value-of select="xsdLocal:lastname"/>
          </xsdLocal:lastname>
          <xsdLocal:dob>
            <xsl:value-of select="xsdLocal:dob"/>
          </xsdLocal:dob>
          <xsdLocal:isNewUser>
            <xsl:value-of select="xsdLocal:isNewUser"/>
          </xsdLocal:isNewUser>
          <xsdLocal:installDate>
            <xsl:value-of select="xsdLocal:installDate"/>
          </xsdLocal:installDate>
          <xsdLocal:removalDate>
            <xsl:value-of select="xsdLocal:removalDate"/>
          </xsdLocal:removalDate>
          <xsdLocal:QUID>
            <xsl:value-of select="xsdLocal:QUID"/>
          </xsdLocal:QUID>
          <xsdLocal:discount>
            <xsl:value-of select="xsdLocal:discount"/>
          </xsdLocal:discount>
          <xsdLocal:specialPrice>
            <xsl:value-of select="xsdLocal:specialPrice"/>
          </xsdLocal:specialPrice>
          <xsdLocal:specialPriceCurr>
            <xsl:value-of select="xsdLocal:specialPriceCurr"/>
          </xsdLocal:specialPriceCurr>
          <xsdLocal:specialPriceRestrictionDate>
            <xsl:value-of select="xsdLocal:specialPriceRestrictionDate"/>
          </xsdLocal:specialPriceRestrictionDate>
          <xsdLocal:itemNumber>
            <xsl:value-of select="xsdLocal:itemNumber"/>
          </xsdLocal:itemNumber>
          <xsdLocal:startStopBillingDate>
            <xsl:value-of select="xsdLocal:startStopBillingDate"/>
          </xsdLocal:startStopBillingDate>
          <xsdLocal:billingType>
            <xsl:value-of select="xsdLocal:billingType"/>
          </xsdLocal:billingType>
          <xsdLocal:billingNote>
            <xsl:value-of select="xsdLocal:billingNote"/>
          </xsdLocal:billingNote>
          <xsdLocal:freeTrailFlag>
            <xsl:value-of select="xsdLocal:freeTrailFlag"/>
          </xsdLocal:freeTrailFlag>
          <xsdLocal:STB>
            <xsl:value-of select="xsdLocal:STB"/>
          </xsdLocal:STB>
          <xsdLocal:assetIntegrationId>
            <xsl:value-of select="xsdLocal:assetIntegrationId"/>
          </xsdLocal:assetIntegrationId>
          <xsdLocal:orderLineStatus>
            <xsl:value-of select="xsdLocal:orderLineStatus"/>
          </xsdLocal:orderLineStatus>
          <xsdLocal:permissioningStatus>
            <xsl:value-of select="xsdLocal:permissioningStatus"/>
          </xsdLocal:permissioningStatus>
          <xsdLocal:interfaceForBilling>
            <xsl:value-of select="xsdLocal:interfaceForBilling"/>
          </xsdLocal:interfaceForBilling>
          <xsdLocal:interfaceForFulfilment>
            <xsl:value-of select="xsdLocal:interfaceForFulfilment"/>
          </xsdLocal:interfaceForFulfilment>
          <xsdLocal:manualPermissioningComplete>
            <xsl:value-of select="xsdLocal:manualPermissioningComplete"/>
          </xsdLocal:manualPermissioningComplete>
          <xsdLocal:autoPermissioningComplete>
            <xsl:value-of select="xsdLocal:autoPermissioningComplete"/>
          </xsdLocal:autoPermissioningComplete>
          <xsdLocal:nextAction1>
            <xsl:value-of select="xsdLocal:nextAction1"/>
          </xsdLocal:nextAction1>
          <xsdLocal:nextAction2>
            <xsl:value-of select="xsdLocal:nextAction2"/>
          </xsdLocal:nextAction2>
          <xsdLocal:nextAction3>
            <xsl:value-of select="xsdLocal:nextAction3"/>
          </xsdLocal:nextAction3>
          <xsdLocal:nextAction4>
            <xsl:value-of select="xsdLocal:nextAction4"/>
          </xsdLocal:nextAction4>
          <xsdLocal:nextAction5>
            <xsl:value-of select="xsdLocal:nextAction5"/>
          </xsdLocal:nextAction5>
          <xsdLocal:billingStatusToBeSent>
            <xsl:value-of select="xsdLocal:billingStatusToBeSent"/>
          </xsdLocal:billingStatusToBeSent>
          <xsdLocal:permissioningStatusToBeSent>
            <xsl:value-of select="xsdLocal:permissioningStatusToBeSent"/>
          </xsdLocal:permissioningStatusToBeSent>
          <xsdLocal:productIntegrationId>
            <xsl:value-of select="xsdLocal:productIntegrationId"/>
          </xsdLocal:productIntegrationId>
          <xsdLocal:freeTrialEndDate>
            <xsl:value-of select="xsdLocal:freeTrialEndDate"/>
          </xsdLocal:freeTrialEndDate>
          <xsl:for-each select="xsdLocal:configuredAttribute">
            <xsdLocal:configuredAttribute>
              <xsdLocal:attributeIntegrationId>
                <xsl:value-of select="xsdLocal:attributeIntegrationId"/>
              </xsdLocal:attributeIntegrationId>
              <xsdLocal:attributeName>
                <xsl:value-of select="xsdLocal:attributeName"/>
              </xsdLocal:attributeName>
              <xsdLocal:valueIntegrationId>
                <xsl:value-of select="xsdLocal:valueIntegrationId"/>
              </xsdLocal:valueIntegrationId>
              <xsdLocal:value>
                <xsl:value-of select="xsdLocal:value"/>
              </xsdLocal:value>
            </xsdLocal:configuredAttribute>
          </xsl:for-each>
          <xsdLocal:workPhone>
            <xsl:value-of select="xsdLocal:WorkPhone"/>
          </xsdLocal:workPhone>
          <xsdLocal:responseCode>
            <xsl:value-of select="xsdLocal:ResponseCode"/>
          </xsdLocal:responseCode>
          <xsdLocal:ePlatformId>
            <xsl:value-of select="xsdLocal:RCRMePlatformId"/>
          </xsdLocal:ePlatformId>
          <xsdLocal:supportLanguage>
            <xsl:value-of select="xsdLocal:RCRMSupportLanguage"/>
          </xsdLocal:supportLanguage>
          <xsdLocal:segGrpEndUserActivity>
            <xsl:value-of select="xsdLocal:RCRMSegGrpEndUserActivity"/>
          </xsdLocal:segGrpEndUserActivity>
          <xsdLocal:regionalFocus>
            <xsl:value-of select="xsdLocal:RCRMRegionalFocus"/>
          </xsdLocal:regionalFocus>
          <xsdLocal:marketingConsentSetDate>
            <xsl:value-of select="xsdLocal:RCRMMarketingConsentSetDate"/>
          </xsdLocal:marketingConsentSetDate>
          <xsdLocal:localLastName>
            <xsl:value-of select="xsdLocal:RCRMLocalLastName"/>
          </xsdLocal:localLastName>
          <xsdLocal:localFirstName>
            <xsl:value-of select="xsdLocal:RCRMLocalFirstName"/>
          </xsdLocal:localFirstName>
          <xsdLocal:localDACSId>
            <xsl:value-of select="xsdLocal:RCRMLocalDACSId"/>
          </xsdLocal:localDACSId>
          <xsdLocal:legalConsentSetDate>
            <xsl:value-of select="xsdLocal:RCRMLegalConsentSetDate"/>
          </xsdLocal:legalConsentSetDate>
          <xsdLocal:legalConsent>
            <xsl:value-of select="xsdLocal:RCRMLegalConsent"/>
          </xsdLocal:legalConsent>
          <xsdLocal:lastUpdatedProfileDate>
            <xsl:value-of select="xsdLocal:RCRMLastUpdatedProfileDate"/>
          </xsdLocal:lastUpdatedProfileDate>
          <xsdLocal:fTLFlagSetDate>
            <xsl:value-of select="xsdLocal:RCRMFTLFlagSetDate"/>
          </xsdLocal:fTLFlagSetDate>
          <xsdLocal:fTLCompleteFlag>
            <xsl:value-of select="xsdLocal:RCRMFTLCompleteFlag"/>
          </xsdLocal:fTLCompleteFlag>
          <xsdLocal:errorContext>
            <xsl:value-of select="xsdLocal:RCRMErrorContext"/>
          </xsdLocal:errorContext>
          <xsdLocal:errorCode>
            <xsl:value-of select="xsdLocal:RCRMErrorCode"/>
          </xsdLocal:errorCode>
          <xsdLocal:directMarketing>
            <xsl:value-of select="xsdLocal:RCRMDirectMarketing"/>
          </xsdLocal:directMarketing>
          <xsdLocal:cPfGTempURL>
            <xsl:value-of select="xsdLocal:RCRMCPfGTempURL"/>
          </xsdLocal:cPfGTempURL>
          <xsdLocal:aaaUpdatedProfileDate>
            <xsl:value-of select="xsdLocal:RCRMAAAUpdatedProfileDate"/>
          </xsdLocal:aaaUpdatedProfileDate>
          <xsdLocal:primaryAccountId>
            <xsl:value-of select="xsdLocal:PrimaryAccountId"/>
          </xsdLocal:primaryAccountId>
          <xsdLocal:ModId>
            <xsl:value-of select="xsdLocal:ModId"/>
          </xsdLocal:ModId>
          <xsdLocal:MM>
            <xsl:value-of select="xsdLocal:MM"/>
          </xsdLocal:MM>
          <xsdLocal:EmailAddress>
            <xsl:value-of select="xsdLocal:EmailAddress"/>
          </xsdLocal:EmailAddress>
            <xsdLocal:extraInfo>
            <xsl:copy-of select="xsdLocal:extraInfo/child::node()"/>
          </xsdLocal:extraInfo>
          <xsdLocal:primaryUUID>
            <xsl:value-of select="xsdLocal:primaryUUID"/>
          </xsdLocal:primaryUUID>
          <xsdLocal:contactMarketFocus>
            <xsl:value-of select="xsdLocal:contactMarketFocus"/>
          </xsdLocal:contactMarketFocus>
          <xsdLocal:contactReutersMessagingId>
            <xsl:value-of select="xsdLocal:contactReutersMessagingId"/>
          </xsdLocal:contactReutersMessagingId>
          <xsdLocal:billingPlatform>
            <xsl:value-of select="xsdLocal:billingPlatform"/>
          </xsdLocal:billingPlatform>
          <xsdLocal:umbrellaProductIntegrationId>
            <xsl:value-of select="xsdLocal:umbrellaProductIntegrationId"/>
          </xsdLocal:umbrellaProductIntegrationId>
          <xsdLocal:field1>
            <xsl:value-of select="xsdLocal:field1"/>
          </xsdLocal:field1>
          <xsdLocal:field2>
            <xsl:value-of select="xsdLocal:field2"/>
          </xsdLocal:field2>
          <xsdLocal:field3>
            <xsl:value-of select="xsdLocal:field3"/>
          </xsdLocal:field3>
          <!--BAU R3 code Merge -->
          <xsdLocal:oldContactUserId>
            <xsl:value-of select="xsdLocal:oldContactUserId"/>
          </xsdLocal:oldContactUserId>
          <xsdLocal:CpfgErrorMessage>
            <xsl:value-of select="xsdLocal:CpfgErrorMessage"/>
          </xsdLocal:CpfgErrorMessage>
          <xsdLocal:installSubscriberNumber>
            <xsl:value-of select="xsdLocal:installSubscriberNumber"/>
          </xsdLocal:installSubscriberNumber>
          <xsdLocal:installSubscriberAccountId>
            <xsl:value-of select="xsdLocal:installSubscriberAccountId"/>
          </xsdLocal:installSubscriberAccountId>
          <xsdLocal:installSubAccountNumber>
            <xsl:value-of select="xsdLocal:installSubAccountNumber"/>
          </xsdLocal:installSubAccountNumber>
          <xsdLocal:installLocationAccountId>
            <xsl:value-of select="xsdLocal:installLocationAccountId"/>
          </xsdLocal:installLocationAccountId>
          <xsdLocal:CSAction>
            <xsl:value-of select="xsdLocal:CSAction"/>
          </xsdLocal:CSAction>
          <xsdLocal:permBillFlag>
            <xsl:value-of select="xsdLocal:permBillFlag"/>
          </xsdLocal:permBillFlag>
          <xsdLocal:targetSystem>
            <xsl:value-of select="xsdLocal:targetSystem"/>
          </xsdLocal:targetSystem>
          <xsdLocal:installLoccationAccountCustomerReferenceNumber>
            <xsl:value-of select="xsdLocal:installLoccationAccountCustomerReferenceNumber"/>
          </xsdLocal:installLoccationAccountCustomerReferenceNumber>
          <xsdLocal:installBillingAccountCustomerReferenceNumber>
            <xsl:value-of select="xsdLocal:installBillingAccountCustomerReferenceNumber"/>
          </xsdLocal:installBillingAccountCustomerReferenceNumber>
          <xsdLocal:legalEntityCustomerReferenceNumber>
            <xsl:value-of select="xsdLocal:legalEntityCustomerReferenceNumber"/>
          </xsdLocal:legalEntityCustomerReferenceNumber>
          <xsdLocal:legalEntityLocationAccountId>
            <xsl:value-of select="xsdLocal:legalEntityLocationAccountId"/>
          </xsdLocal:legalEntityLocationAccountId>
          <xsdLocal:billingSubscriberAccountId>
            <xsl:value-of select="xsdLocal:billingSubscriberAccountId"/>
          </xsdLocal:billingSubscriberAccountId>
          <xsdLocal:productDescription>
            <xsl:value-of select="xsdLocal:productDescription"/>
          </xsdLocal:productDescription>
          <xsdLocal:editedListPrice>
            <xsl:value-of select="xsdLocal:editedListPrice"/>
          </xsdLocal:editedListPrice>
          <xsdLocal:creditDebitFlag>
            <xsl:value-of select="xsdLocal:creditDebitFlag"/>
          </xsdLocal:creditDebitFlag>
          <xsdLocal:productName>
            <xsl:value-of select="xsdLocal:productName"/>
          </xsdLocal:productName>
          <xsdLocal:recurringBillingNotesIndicator>
            <xsl:value-of select="xsdLocal:recurringBillingNotesIndicator"/>
          </xsdLocal:recurringBillingNotesIndicator>
          <xsdLocal:delayedBillingPeriod>
            <xsl:value-of select="xsdLocal:delayedBillingPeriod"/>
          </xsdLocal:delayedBillingPeriod>
          <xsdLocal:PDPCode>
            <xsl:value-of select="xsdLocal:PDPCode"/>
          </xsdLocal:PDPCode>
          <xsdLocal:DummyField1>
            <xsl:value-of select="xsdLocal:SiebelContactId"/>
          </xsdLocal:DummyField1>
          <xsdLocal:DummyField2>
            <xsl:value-of select="xsdLocal:contactJobFunction"/>
          </xsdLocal:DummyField2>
          <xsdLocal:DummyField3>
            <xsl:value-of select="xsdLocal:userGroup"/>
          </xsdLocal:DummyField3>
          <xsdLocal:DummyField4>
            <xsl:value-of select="xsdLocal:userDomain"/>
          </xsdLocal:DummyField4>
          <xsdLocal:DummyField5>
            <xsl:value-of select="xsdLocal:serverId"/>
          </xsdLocal:DummyField5>
          <xsdLocal:DummyField6>
            <xsl:value-of select="xsdLocal:isDelete"/>
          </xsdLocal:DummyField6>
          
          <xsdLocal:DummyField8>
            <xsl:value-of select="xsdLocal:RCRMDiscountReason"/>
          </xsdLocal:DummyField8>
          <!--BAU R3 Code Merge End -->
          <xsdLocal:SAPBillable>
            <xsl:value-of select="xsdLocal:SAPBillable"/>
          </xsdLocal:SAPBillable>
          <!--xsdLocal:installLocationAccountId>
            <xsl:value-of select="xsdLocal:installLocationAccountId"/>
          </xsdLocal:installLocationAccountId-->
          <xsdLocal:SAPItemNumber>
            <xsl:value-of select="xsdLocal:SAPItemNumber"/>
          </xsdLocal:SAPItemNumber>
          <xsdLocal:PONumber>
            <xsl:value-of select="xsdLocal:PONumber"/>
          </xsdLocal:PONumber>
          <!--xsdLocal:PONumber>
            <xsl:value-of select="xsdLocal:PONumber"/>
          </xsdLocal:PONumber-->
          <xsdLocal:InstallLocationAccountNumber>
            <xsl:value-of select="xsdLocal:InstallLocationAccountNumber"/>
          </xsdLocal:InstallLocationAccountNumber>
          <xsdLocal:BillToAccountNumber>
            <xsl:value-of select="xsdLocal:BillToAccountNumber"/>
          </xsdLocal:BillToAccountNumber>
          <xsdLocal:quantity>
            <xsl:value-of select="xsdLocal:quantity"/>
          </xsdLocal:quantity>
          <xsdLocal:account>
            <xsl:value-of select="../xsdLocal:orderHeader/xsdLocal:account"/>
          </xsdLocal:account>
          <xsdLocal:RCRMBillingAccount>
            <xsl:value-of select="xsdLocal:RCRMBillingAccount"/>
          </xsdLocal:RCRMBillingAccount>
          <xsdLocal:accountLocId>
            <xsl:value-of select="xsdLocal:accountLocId"/>
          </xsdLocal:accountLocId>
          <xsdLocal:RCRMField1>
            <xsl:value-of select="../xsdLocal:orderHeader/xsdLocal:RCRMField1"/>
          </xsdLocal:RCRMField1>
          <xsdLocal:RCRMField2>
            <xsl:value-of select="xsdLocal:RCRMField2"/>
          </xsdLocal:RCRMField2>
          <xsdLocal:RCRMField3>
            <xsl:value-of select="xsdLocal:RCRMField3"/>
          </xsdLocal:RCRMField3>
          <xsdLocal:orderHeaderSoldToAccountNumber>
            <xsl:value-of select="../xsdLocal:orderHeader/xsdLocal:SoldToAccountNumber"/>
          </xsdLocal:orderHeaderSoldToAccountNumber>
          <xsdLocal:orderHeaderquoteNumber>
            <xsl:value-of select="../xsdLocal:orderHeader/xsdLocal:quoteNumber"/>
          </xsdLocal:orderHeaderquoteNumber>
          <xsdLocal:SAPOrderNumber>
            <xsl:value-of select="xsdLocal:SAPOrderNumber"/>
          </xsdLocal:SAPOrderNumber>
          <xsdLocal:OLIRCRMField6>
            <xsl:value-of select="xsdLocal:RCRMField6"/>
          </xsdLocal:OLIRCRMField6>
          <xsdLocal:OLIRCRMField1>
            <xsl:value-of select="xsdLocal:RCRMField1"/>
          </xsdLocal:OLIRCRMField1>
          <xsdLocal:SAPActionCode>
            <xsl:value-of select="xsdLocal:SAPActionCode"/>
          </xsdLocal:SAPActionCode>
          <xsdLocal:SAPBusinessCase>
            <xsl:value-of select="xsdLocal:SAPBusinessCase"/>
          </xsdLocal:SAPBusinessCase>
          <xsdLocal:CalculatedListPrice>
            <xsl:value-of select="xsdLocal:CalculatedListPrice"/>
          </xsdLocal:CalculatedListPrice>
          <xsdLocal:ListPrice>
            <xsl:value-of select="xsdLocal:ListPrice"/>
          </xsdLocal:ListPrice>
          <xsdLocal:BillingPeriod>
            <xsl:value-of select="xsdLocal:BillingPeriod"/>
          </xsdLocal:BillingPeriod>
          <xsdLocal:PublishContactToSAP>
            <xsl:value-of select="xsdLocal:PublishContactToSAP"/>
          </xsdLocal:PublishContactToSAP>
          <xsdLocal:ContactStatus>
            <xsl:value-of select="xsdLocal:ContactStatus"/>
          </xsdLocal:ContactStatus>
          <xsdLocal:product>
            <xsl:value-of select="xsdLocal:product"/>
          </xsdLocal:product>
          <xsdLocal:PPLId>
            <xsl:value-of select="xsdLocal:PPLId"/>
          </xsdLocal:PPLId>
        </xsdLocal:OrderLineRequestFacts>
      </xsl:for-each>
    </xsdLocal:orderLineRepository>
      </tns:parameterList>
    </tns:callFunctionStateless>
  </xsl:template>
</xsl:stylesheet>