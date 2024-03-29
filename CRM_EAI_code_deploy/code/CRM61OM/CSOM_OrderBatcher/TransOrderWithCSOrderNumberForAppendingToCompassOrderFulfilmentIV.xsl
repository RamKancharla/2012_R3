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
      <schema location="EAI.MSG.CS.OM.132_COMPASSOrderRequest.xsd"/>
      <rootElement name="compassOrder" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/OM/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [FRI APR 23 12:13:14 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:comt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOrderTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/OM/OrderManagement" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:compassOrder>
      <ns0:eaiHeader>
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
          <xsl:value-of select="xp20:current-dateTime()"/>
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
      </ns0:eaiHeader>
      <ns0:logicalCountry>
        <xsl:value-of select="/xsdLocal:ExtendedCompassOrder/xsdLocal:logicalCountry"/>
      </ns0:logicalCountry>
      <ns0:messageHeader>
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
      </ns0:messageHeader>
      <ns0:orderHeader>
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
      </ns0:orderHeader>
      <xsl:for-each select="/xsdLocal:ExtendedCompassOrder/xsdLocal:orderLineItem">
        <ns0:orderLineItem>
          <comt:CRMOLIId>
            <xsl:value-of select="xsdLocal:CRMOLIId"/>
          </comt:CRMOLIId>
          <comt:actionCode>
            <xsl:value-of select="xsdLocal:actionCode"/>
          </comt:actionCode>
          <comt:salesCode>
            <xsl:value-of select="xsdLocal:salesCode"/>
          </comt:salesCode>
          <comt:subAccount>
            <xsl:value-of select="xsdLocal:subAccount"/>
          </comt:subAccount>
          <comt:PLI>
            <xsl:value-of select="xsdLocal:PLI"/>
          </comt:PLI>
          <comt:AKR>
            <xsl:value-of select="xsdLocal:AKR"/>
          </comt:AKR>
          <comt:userID>
            <xsl:value-of select="xsdLocal:userID"/>
          </comt:userID>
          <comt:QUID>
            <xsl:value-of select="xsdLocal:QUID"/>
          </comt:QUID>
          <comt:permissionDate>
            <xsl:value-of select="xsdLocal:permissionDate"/>
          </comt:permissionDate>
          <comt:specialPrice>
            <xsl:value-of select="xsdLocal:specialPrice"/>
          </comt:specialPrice>
          <comt:specialPriceCurr>
            <xsl:value-of select="xsdLocal:specialPriceCurr"/>
          </comt:specialPriceCurr>
          <comt:specialPriceRestrictionDate>
            <xsl:value-of select="xsdLocal:specialPriceRestrictionDate"/>
          </comt:specialPriceRestrictionDate>
          <comt:itemNumber>
            <xsl:value-of select="xsdLocal:itemNumber"/>
          </comt:itemNumber>
          <comt:startStopBillingDate>
            <xsl:value-of select="xsdLocal:startStopBillingDate"/>
          </comt:startStopBillingDate>
          <comt:billingType>
            <xsl:value-of select="xsdLocal:billingType"/>
          </comt:billingType>
          <comt:billingNote>
            <xsl:value-of select="xsdLocal:billingNote"/>
          </comt:billingNote>
          <comt:STB>
            <xsl:value-of select="xsdLocal:STB"/>
          </comt:STB>
          <comt:permBillFlag>
            <xsl:value-of select="xsdLocal:PermBillFlag"/>
          </comt:permBillFlag>
          <comt:installToSubscriber>
            <xsl:value-of select="xsdLocal:installToSubscriber"/>
          </comt:installToSubscriber>
          <comt:installToItemNumber>
            <xsl:value-of select="xsdLocal:installToItemNumber"/>
          </comt:installToItemNumber>
        </ns0:orderLineItem>
      </xsl:for-each>
    </ns0:compassOrder>
  </xsl:template>
</xsl:stylesheet>
