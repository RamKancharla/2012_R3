<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.OM.193_ExtendedOrderRequest.xsd"/>
      <rootElement name="extendedOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://ukcq-eai03:7777/orabpel/ccrmasync/CSOM_OrderSplitter/EAI.MSG.OM.259_OrderRequest.xsd"/>
      <rootElement name="CSOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CS/OrderRequest"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED MAR 09 14:48:08 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns1="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CS/OrderRequest" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl cmt xsd xsdLocal ns0 ns1 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns1:CSOrderRequest>
      <ns1:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </ns1:eaiHeader>
      <ns1:logicalCountry>
        <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:logicalCountry"/>
      </ns1:logicalCountry>
      <ns1:messageHeader>
        <ns1:actionCode>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:messageHeader/xsdLocal:actionCode"/>
        </ns1:actionCode>
        <ns1:version>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:messageHeader/xsdLocal:version"/>
        </ns1:version>
        <ns1:userId>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:messageHeader/xsdLocal:userId"/>
        </ns1:userId>
      </ns1:messageHeader>
      <ns1:orderHeader>
        <ns1:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:orderHeader/xsdLocal:CRMOrderNumber"/>
        </ns1:CRMOrderNumber>
        <ns1:installDate>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:orderHeader/xsdLocal:installDate"/>
        </ns1:installDate>
        <ns1:removalDate>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:orderHeader/xsdLocal:removalDate"/>
        </ns1:removalDate>
        <ns1:po>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:orderHeader/xsdLocal:po"/>
        </ns1:po>
        <ns1:orderNote>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:orderHeader/xsdLocal:orderNote"/>
        </ns1:orderNote>
        <ns1:orderStatus>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:orderHeader/xsdLocal:orderStatus"/>
        </ns1:orderStatus>
        <ns1:ssPersonId>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:orderHeader/xsdLocal:ssPersonId"/>
        </ns1:ssPersonId>
        <ns1:slPersonId>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:orderHeader/xsdLocal:slPersonId"/>
        </ns1:slPersonId>
        <ns1:pricelistCurrency>
          <xsl:value-of select="/xsdLocal:extendedOrderRequest/xsdLocal:orderHeader/xsdLocal:pricelistCurrency"/>
        </ns1:pricelistCurrency>
      </ns1:orderHeader>
      <xsl:for-each select="/xsdLocal:extendedOrderRequest/xsdLocal:orderLineItem">
        <xsl:if test="(xsdLocal:nextAction1 = &quot;Create User&quot;) or starts-with(xsdLocal:nextAction1,&quot;Create Order&quot;)">
          <ns1:orderLineItem>
            <ns1:CRMOLIId>
              <xsl:value-of select="xsdLocal:CRMOLIId"/>
            </ns1:CRMOLIId>
            <ns1:parentOrderItemId>
              <xsl:value-of select="xsdLocal:parentOrderItemId"/>
            </ns1:parentOrderItemId>
            <ns1:rootItemId>
              <xsl:value-of select="xsdLocal:rootItemId"/>
            </ns1:rootItemId>
            <ns1:actionCode>
              <xsl:value-of select="xsdLocal:actionCode"/>
            </ns1:actionCode>
            <ns1:businessCase>
              <xsl:value-of select="xsdLocal:businessCase"/>
            </ns1:businessCase>
            <ns1:salesCode>
              <xsl:value-of select="xsdLocal:salesCode"/>
            </ns1:salesCode>
            <ns1:subscriber>
              <xsl:value-of select="xsdLocal:subscriber"/>
            </ns1:subscriber>
            <ns1:subAccount>
              <xsl:value-of select="xsdLocal:subAccount"/>
            </ns1:subAccount>
            <ns1:PLI>
              <xsl:value-of select="xsdLocal:PLI"/>
            </ns1:PLI>
            <ns1:permissioningSystem>
              <xsl:value-of select="xsdLocal:permissioningSystem"/>
            </ns1:permissioningSystem>
            <ns1:billingSystem>
              <xsl:value-of select="xsdLocal:billingPlatform"/>
            </ns1:billingSystem>
            <ns1:manualPermissioningRequired>
              <xsl:value-of select="xsdLocal:manualPermissioningRequired"/>
            </ns1:manualPermissioningRequired>
            <ns1:AKR>
              <xsl:value-of select="xsdLocal:AKR"/>
            </ns1:AKR>
            <ns1:userID>
              <xsl:value-of select="xsdLocal:userID"/>
            </ns1:userID>
            <ns1:userIDtype>
              <xsl:value-of select="xsdLocal:userIDtype"/>
            </ns1:userIDtype>
            <ns1:userNumber>
              <xsl:value-of select="xsdLocal:userNumber"/>
            </ns1:userNumber>
            <ns1:firstName>
              <xsl:value-of select="xsdLocal:firstName"/>
            </ns1:firstName>
            <ns1:lastname>
              <xsl:value-of select="xsdLocal:lastname"/>
            </ns1:lastname>
            <ns1:dob>
              <xsl:value-of select="xsdLocal:dob"/>
            </ns1:dob>
            <ns1:isNewUser>
              <xsl:value-of select="xsdLocal:isNewUser"/>
            </ns1:isNewUser>
            <ns1:installDate>
              <xsl:value-of select="xsdLocal:installDate"/>
            </ns1:installDate>
            <ns1:removalDate>
              <xsl:value-of select="xsdLocal:removalDate"/>
            </ns1:removalDate>
            <ns1:QUID>
              <xsl:value-of select="xsdLocal:QUID"/>
            </ns1:QUID>
            <ns1:discount>
              <xsl:value-of select="xsdLocal:discount"/>
            </ns1:discount>
            <ns1:specialPrice>
              <xsl:value-of select="xsdLocal:specialPrice"/>
            </ns1:specialPrice>
            <ns1:specialPriceCurr>
              <xsl:value-of select="xsdLocal:specialPriceCurr"/>
            </ns1:specialPriceCurr>
            <ns1:specialPriceRestrictionDate>
              <xsl:value-of select="xsdLocal:specialPriceRestrictionDate"/>
            </ns1:specialPriceRestrictionDate>
            <ns1:itemNumber>
              <xsl:value-of select="xsdLocal:itemNumber"/>
            </ns1:itemNumber>
            <ns1:startStopBillingDate>
              <xsl:value-of select="xsdLocal:startStopBillingDate"/>
            </ns1:startStopBillingDate>
            <ns1:billingType>
              <xsl:value-of select="xsdLocal:billingType"/>
            </ns1:billingType>
            <ns1:billingNote>
              <xsl:value-of select="xsdLocal:billingNote"/>
            </ns1:billingNote>
            <ns1:freeTrailFlag>
              <xsl:value-of select="xsdLocal:freeTrailFlag"/>
            </ns1:freeTrailFlag>
            <ns1:STB>
              <xsl:value-of select="xsdLocal:STB"/>
            </ns1:STB>
            <ns1:assetIntegrationId>
              <xsl:value-of select="xsdLocal:assetIntegrationId"/>
            </ns1:assetIntegrationId>
            <ns1:orderLineStatus>
              <xsl:value-of select="xsdLocal:orderLineStatus"/>
            </ns1:orderLineStatus>
            <ns1:permissioningStatus>
              <xsl:value-of select="xsdLocal:permissioningStatus"/>
            </ns1:permissioningStatus>
            <ns1:interfaceForBilling>
              <xsl:value-of select="xsdLocal:interfaceForBilling"/>
            </ns1:interfaceForBilling>
            <ns1:interfaceForFulfilment>
              <xsl:value-of select="xsdLocal:interfaceForFulfilment"/>
            </ns1:interfaceForFulfilment>
            <ns1:productIntegrationId>
              <xsl:value-of select="xsdLocal:productIntegrationId"/>
            </ns1:productIntegrationId>
            <ns1:freeTrialEndDate>
              <xsl:value-of select="xsdLocal:freeTrialEndDate"/>
            </ns1:freeTrialEndDate>
            <ns1:permBillFlag>
              <xsl:value-of select="xsdLocal:permBillFlag"/>
            </ns1:permBillFlag>
            <ns1:installToSubscriber>
              <xsl:value-of select="xsdLocal:installSubscriberNumber"/>
            </ns1:installToSubscriber>
            <ns1:installToItemNumber>
              <xsl:value-of select="string(&quot;&quot;)"/>
            </ns1:installToItemNumber>
          </ns1:orderLineItem>
        </xsl:if>
      </xsl:for-each>
    </ns1:CSOrderRequest>
  </xsl:template>
</xsl:stylesheet>
