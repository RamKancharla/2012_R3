<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="http://ukcq-eai03:7777/orabpel/ccrmasync/CSOM_OrderSplitter/EAI.MSG.OM.259_OrderRequest.xsd"/>
      <rootElement name="CSOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CS/OrderRequest"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://ukcq-eai03:7777/orabpel/ccrmasync/CSOM_OrderSplitter/EAI.MSG.OM.259_OrderRequest.xsd"/>
      <rootElement name="CSOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CS/OrderRequest"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED MAR 09 14:24:56 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CS/OrderRequest" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl cmt xsd xsdLocal ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:CSOrderRequest>
      <xsdLocal:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:logicalCountry>
        <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:logicalCountry"/>
      </xsdLocal:logicalCountry>
      <xsdLocal:messageHeader>
        <xsdLocal:actionCode>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:messageHeader/xsdLocal:actionCode"/>
        </xsdLocal:actionCode>
        <xsdLocal:version>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:messageHeader/xsdLocal:version"/>
        </xsdLocal:version>
        <xsdLocal:userId>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:messageHeader/xsdLocal:userId"/>
        </xsdLocal:userId>
      </xsdLocal:messageHeader>
      <xsdLocal:orderHeader>
        <xsdLocal:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:orderHeader/xsdLocal:CRMOrderNumber"/>
        </xsdLocal:CRMOrderNumber>
        <xsdLocal:installDate>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:orderHeader/xsdLocal:installDate"/>
        </xsdLocal:installDate>
        <xsdLocal:removalDate>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:orderHeader/xsdLocal:removalDate"/>
        </xsdLocal:removalDate>
        <xsdLocal:po>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:orderHeader/xsdLocal:po"/>
        </xsdLocal:po>
        <xsdLocal:orderNote>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:orderHeader/xsdLocal:orderNote"/>
        </xsdLocal:orderNote>
        <xsdLocal:orderStatus>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:orderHeader/xsdLocal:orderStatus"/>
        </xsdLocal:orderStatus>
        <xsdLocal:ssPersonId>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:orderHeader/xsdLocal:ssPersonId"/>
        </xsdLocal:ssPersonId>
        <xsdLocal:slPersonId>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:orderHeader/xsdLocal:slPersonId"/>
        </xsdLocal:slPersonId>
        <xsdLocal:pricelistCurrency>
          <xsl:value-of select="/xsdLocal:CSOrderRequest/xsdLocal:orderHeader/xsdLocal:pricelistCurrency"/>
        </xsdLocal:pricelistCurrency>
      </xsdLocal:orderHeader>
      <xsl:for-each select="/xsdLocal:CSOrderRequest/xsdLocal:orderLineItem">
        <xsdLocal:orderLineItem>
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
          <xsdLocal:billingSystem>
            <xsl:value-of select="xsdLocal:billingSystem"/>
          </xsdLocal:billingSystem>
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
          <xsdLocal:productIntegrationId>
            <xsl:value-of select="xsdLocal:productIntegrationId"/>
          </xsdLocal:productIntegrationId>
          <xsdLocal:freeTrialEndDate>
            <xsl:value-of select="xsdLocal:freeTrialEndDate"/>
          </xsdLocal:freeTrialEndDate>
          <xsdLocal:permBillFlag>
            <xsl:value-of select="xsdLocal:permBillFlag"/>
          </xsdLocal:permBillFlag>
          <xsdLocal:installToSubscriber>
            <xsl:value-of select="xsdLocal:installToSubscriber"/>
          </xsdLocal:installToSubscriber>
          <xsdLocal:installToItemNumber>
            <xsl:value-of select="xsdLocal:installToItemNumber"/>
          </xsdLocal:installToItemNumber>
        </xsdLocal:orderLineItem>
      </xsl:for-each>
    </xsdLocal:CSOrderRequest>
  </xsl:template>
</xsl:stylesheet>
