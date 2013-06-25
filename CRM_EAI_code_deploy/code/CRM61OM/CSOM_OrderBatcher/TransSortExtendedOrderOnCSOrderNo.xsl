<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CS.OM.200_ExtendedCompassOrder.xsd"/>
      <rootElement name="ExtendedCompassOrder" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CS.OM.200_ExtendedCompassOrder.xsd"/>
      <rootElement name="ExtendedCompassOrder" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [FRI APR 23 12:11:22 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:comt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOrderTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:ExtendedCompassOrder>
      <xsdLocal:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:logicalCountry>
        <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:logicalCountry"/>
      </xsdLocal:logicalCountry>
      <xsdLocal:messageHeader>
        <comt:messageId>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:messageHeader/comt:messageId"/>
        </comt:messageId>
        <comt:transactionId>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:messageHeader/comt:transactionId"/>
        </comt:transactionId>
        <comt:messageHistory>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:messageHeader/comt:messageHistory"/>
        </comt:messageHistory>
        <comt:tracingId>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:messageHeader/comt:tracingId"/>
        </comt:tracingId>
        <comt:actionCode>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:messageHeader/comt:actionCode"/>
        </comt:actionCode>
        <comt:version>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:messageHeader/comt:version"/>
        </comt:version>
        <comt:timeStamp>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:messageHeader/comt:timeStamp"/>
        </comt:timeStamp>
        <comt:userId>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:messageHeader/comt:userId"/>
        </comt:userId>
        <comt:objectSystem>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:messageHeader/comt:objectSystem"/>
        </comt:objectSystem>
      </xsdLocal:messageHeader>
      <xsdLocal:orderHeader>
        <comt:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:orderHeader/comt:CRMOrderNumber"/>
        </comt:CRMOrderNumber>
        <comt:subscriber>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:orderHeader/comt:subscriber"/>
        </comt:subscriber>
        <comt:installDate>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:orderHeader/comt:installDate"/>
        </comt:installDate>
        <comt:removalDate>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:orderHeader/comt:removalDate"/>
        </comt:removalDate>
        <comt:po>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:orderHeader/comt:po"/>
        </comt:po>
        <comt:orderNote>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:orderHeader/comt:orderNote"/>
        </comt:orderNote>
        <comt:ssPersonId>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:orderHeader/comt:ssPersonId"/>
        </comt:ssPersonId>
        <comt:slPersonId>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:orderHeader/comt:slPersonId"/>
        </comt:slPersonId>
		<comt:pricelistCurrency>
          <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:orderHeader/comt:pricelistCurrency"/>
        </comt:pricelistCurrency>
      </xsdLocal:orderHeader>
      <xsdLocal:index>
        <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:index"/>
      </xsdLocal:index>
      <xsl:for-each select="/xsdLocal:ExtendedCompassOrder/xsdLocal:orderLineItem">
        <xsdLocal:orderLineItem>
          <xsdLocal:CSOrderNumber>
            <xsl:value-of select="xsdLocal:CSOrderNumber"/>
          </xsdLocal:CSOrderNumber>
          <xsdLocal:CRMOLIId>
            <xsl:value-of select="xsdLocal:CRMOLIId"/>
          </xsdLocal:CRMOLIId>
          <xsdLocal:actionCode>
            <xsl:value-of select="xsdLocal:actionCode"/>
          </xsdLocal:actionCode>
          <xsdLocal:salesCode>
            <xsl:value-of select="xsdLocal:salesCode"/>
          </xsdLocal:salesCode>
          <xsdLocal:subAccount>
            <xsl:value-of select="xsdLocal:subAccount"/>
          </xsdLocal:subAccount>
          <xsdLocal:PLI>
            <xsl:value-of select="xsdLocal:PLI"/>
          </xsdLocal:PLI>
          <xsdLocal:AKR>
            <xsl:value-of select="xsdLocal:AKR"/>
          </xsdLocal:AKR>
          <xsdLocal:userID>
            <xsl:value-of select="xsdLocal:userID"/>
          </xsdLocal:userID>
          <xsdLocal:QUID>
            <xsl:value-of select="xsdLocal:QUID"/>
          </xsdLocal:QUID>
          <xsdLocal:permissionDate>
            <xsl:value-of select="xsdLocal:permissionDate"/>
          </xsdLocal:permissionDate>
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
          <xsdLocal:STB>
            <xsl:value-of select="xsdLocal:STB"/>
          </xsdLocal:STB>
          <xsdLocal:PermBillFlag>
            <xsl:value-of select="xsdLocal:PermBillFlag"/>
          </xsdLocal:PermBillFlag>
          <xsdLocal:installToSubscriber>
            <xsl:value-of select="xsdLocal:installToSubscriber"/>
          </xsdLocal:installToSubscriber>
          <xsdLocal:installToItemNumber>
            <xsl:value-of select="xsdLocal:installToItemNumber"/>
          </xsdLocal:installToItemNumber>
        </xsdLocal:orderLineItem>
      </xsl:for-each>
    </xsdLocal:ExtendedCompassOrder>
  </xsl:template>
</xsl:stylesheet>
