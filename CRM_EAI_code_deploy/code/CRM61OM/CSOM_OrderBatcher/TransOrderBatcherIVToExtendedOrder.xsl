<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CS.OM.132_COMPASSOrderRequest.xsd"/>
      <rootElement name="compassOrder" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/OM/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CS.OM.200_ExtendedCompassOrder.xsd"/>
      <rootElement name="ExtendedCompassOrder" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED MAR 09 10:16:50 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:comt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOrderTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/OM/OrderManagement" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl cmt ns3 xsd comt xsdLocal ns1 ns2 ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:ExtendedCompassOrder>
      <ns0:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </ns0:eaiHeader>
      <ns0:logicalCountry>
        <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:logicalCountry"/>
      </ns0:logicalCountry>
      <ns0:messageHeader>
        <comt:messageId>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:messageId"/>
        </comt:messageId>
        <comt:transactionId>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:transactionId"/>
        </comt:transactionId>
        <comt:messageHistory>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:messageHistory"/>
        </comt:messageHistory>
        <comt:tracingId>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:tracingId"/>
        </comt:tracingId>
        <xsl:choose>
          <xsl:when test="(/xsdLocal:compassOrder/xsdLocal:orderLineItem/comt:businessCase = &quot;FT Conversion&quot;) and (/xsdLocal:compassOrder/xsdLocal:orderLineItem/comt:permissioningSystem = &quot;Athena&quot;)">
            <comt:actionCode>
              <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:actionCode"/>
            </comt:actionCode>
          </xsl:when>
          <xsl:when test="((/xsdLocal:compassOrder/xsdLocal:logicalCountry = &quot;CA&quot;) or (/xsdLocal:compassOrder/xsdLocal:logicalCountry = &quot;US&quot;)) and ((/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:actionCode = &quot;OM60&quot;) or (/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:actionCode = &quot;OM90&quot;))">
            <comt:actionCode>
              <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:actionCode"/>
            </comt:actionCode>
          </xsl:when>
          <xsl:when test="((/xsdLocal:compassOrder/xsdLocal:logicalCountry != &quot;CA&quot;) or (/xsdLocal:compassOrder/xsdLocal:logicalCountry != &quot;US&quot;)) and ((/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:actionCode = &quot;OM60&quot;) or (/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:actionCode = &quot;OM90&quot;))">
            <comt:actionCode>
              <xsl:text disable-output-escaping="no">OM05</xsl:text>
            </comt:actionCode>
          </xsl:when>
          <xsl:otherwise>
            <comt:actionCode>
              <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:actionCode"/>
            </comt:actionCode>
          </xsl:otherwise>
        </xsl:choose>
        <comt:version>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:version"/>
        </comt:version>
        <comt:timeStamp>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:timeStamp"/>
        </comt:timeStamp>
        <comt:userId>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:userId"/>
        </comt:userId>
        <comt:objectSystem>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:messageHeader/comt:objectSystem"/>
        </comt:objectSystem>
      </ns0:messageHeader>
      <ns0:orderHeader>
        <comt:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:orderHeader/comt:CRMOrderNumber"/>
        </comt:CRMOrderNumber>
        <comt:subscriber>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:orderHeader/comt:subscriber"/>
        </comt:subscriber>
        <comt:installDate>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:orderHeader/comt:installDate"/>
        </comt:installDate>
        <comt:removalDate>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:orderHeader/comt:removalDate"/>
        </comt:removalDate>
        <comt:po>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:orderHeader/comt:po"/>
        </comt:po>
        <comt:orderNote>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:orderHeader/comt:orderNote"/>
        </comt:orderNote>
        <comt:ssPersonId>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:orderHeader/comt:ssPersonId"/>
        </comt:ssPersonId>
        <comt:slPersonId>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:orderHeader/comt:slPersonId"/>
        </comt:slPersonId>
        <comt:pricelistCurrency>
          <xsl:value-of select="/xsdLocal:compassOrder/xsdLocal:orderHeader/comt:pricelistCurrency"/>
        </comt:pricelistCurrency>
      </ns0:orderHeader>
      <ns0:index>
        <xsl:value-of select="string(&quot;&quot;)"/>
      </ns0:index>
      <xsl:for-each select="/xsdLocal:compassOrder/xsdLocal:orderLineItem">
        <ns0:orderLineItem>
          <ns0:CSOrderNumber>
            <xsl:value-of select="orcl:lookup-table(&quot;Order_Cache&quot;,&quot;CRM_OLI_ID&quot;,comt:CRMOLIId,&quot;CS_ORD_NO&quot;,&quot;eai/ds/EAIReference&quot;)"/>
          </ns0:CSOrderNumber>
          <ns0:CRMOLIId>
            <xsl:value-of select="comt:CRMOLIId"/>
          </ns0:CRMOLIId>
          <ns0:actionCode>
            <xsl:value-of select="comt:actionCode"/>
          </ns0:actionCode>
          <ns0:salesCode>
            <xsl:value-of select="comt:salesCode"/>
          </ns0:salesCode>
          <ns0:subAccount>
            <xsl:value-of select="comt:subAccount"/>
          </ns0:subAccount>
          <ns0:PLI>
            <xsl:value-of select="comt:PLI"/>
          </ns0:PLI>
          <ns0:AKR>
            <xsl:value-of select="comt:AKR"/>
          </ns0:AKR>
          <xsl:choose>
            <xsl:when test="(comt:permissioningSystem = &quot;Athena&quot;) and (comt:businessCase = &quot;FT Conversion&quot;)">
              <ns0:userID>
                <xsl:value-of select="comt:userID"/>
              </ns0:userID>
            </xsl:when>
            <xsl:when test="((../xsdLocal:logicalCountry != &quot;CA&quot;) and (../xsdLocal:logicalCountry != &quot;US&quot;)) and ((../xsdLocal:messageHeader/comt:actionCode = &quot;OM60&quot;) or (../xsdLocal:messageHeader/comt:actionCode = &quot;OM90&quot;))">
              <ns0:userID>
                <xsl:value-of select="string(&quot;&quot;)"/>
              </ns0:userID>
            </xsl:when>
            <xsl:otherwise>
              <ns0:userID>
                <xsl:value-of select="comt:userID"/>
              </ns0:userID>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test="(comt:permissioningSystem = &quot;Athena&quot;) and (comt:businessCase = &quot;FT Conversion&quot;)">
              <ns0:QUID>
                <xsl:value-of select="comt:QUID"/>
              </ns0:QUID>
            </xsl:when>
            <xsl:when test="((../xsdLocal:logicalCountry != &quot;CA&quot;) and (../xsdLocal:logicalCountry != &quot;US&quot;)) and ((../xsdLocal:messageHeader/comt:actionCode = &quot;OM60&quot;) or (../xsdLocal:messageHeader/comt:actionCode = &quot;OM90&quot;))">
              <ns0:QUID>
                <xsl:value-of select="string(&quot;&quot;)"/>
              </ns0:QUID>
            </xsl:when>
            <xsl:otherwise>
              <ns0:QUID>
                <xsl:value-of select="comt:QUID"/>
              </ns0:QUID>
            </xsl:otherwise>
          </xsl:choose>
          <ns0:permissionDate>
            <xsl:value-of select="comt:permissionDate"/>
          </ns0:permissionDate>
          <ns0:specialPrice>
            <xsl:value-of select="comt:specialPrice"/>
          </ns0:specialPrice>
          <ns0:specialPriceCurr>
            <xsl:value-of select="comt:specialPriceCurr"/>
          </ns0:specialPriceCurr>
          <ns0:specialPriceRestrictionDate>
            <xsl:value-of select="comt:specialPriceRestrictionDate"/>
          </ns0:specialPriceRestrictionDate>
          <ns0:itemNumber>
            <xsl:value-of select="comt:itemNumber"/>
          </ns0:itemNumber>
          <ns0:startStopBillingDate>
            <xsl:value-of select="comt:startStopBillingDate"/>
          </ns0:startStopBillingDate>
          <ns0:billingType>
            <xsl:value-of select="comt:billingType"/>
          </ns0:billingType>
          <ns0:billingNote>
            <xsl:value-of select="comt:billingNote"/>
          </ns0:billingNote>
          <ns0:STB>
            <xsl:value-of select="comt:STB"/>
          </ns0:STB>
          <ns0:PermBillFlag>
            <xsl:value-of select="comt:permBillFlag"/>
          </ns0:PermBillFlag>
          <ns0:installToSubscriber>
            <xsl:value-of select="comt:installToSubscriber"/>
          </ns0:installToSubscriber>
          <ns0:installToItemNumber>
            <xsl:value-of select="comt:installToItemNumber"/>
          </ns0:installToItemNumber>
        </ns0:orderLineItem>
      </xsl:for-each>
    </ns0:ExtendedCompassOrder>
  </xsl:template>
</xsl:stylesheet>
