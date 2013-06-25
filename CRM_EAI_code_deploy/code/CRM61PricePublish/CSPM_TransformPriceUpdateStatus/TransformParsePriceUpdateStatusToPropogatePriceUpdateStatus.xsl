<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CS.PM.210_PriceUpdateStatus.xsd"/>
      <rootElement name="CSPriceUpdateStatus" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/PM/PriceUpdate"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://eaidev2:7777/orabpel/ccrmasync/CCRMPM_PropagatePriceUpdateStatus/EAI.MSG.CS.PM.221_PriceStatus.xsd"/>
      <rootElement name="priceStatus" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/CS/PM/PriceUpdate"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU JUL 01 16:35:03 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:gcap-cps="http://www.reuters.com/ns/2007/09/01/GCAP/CommonPriceStructures" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CommonNillablePriceTypes" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gcap-cpt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonPriceTypes" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/PM/PriceUpdate" xmlns:ns0="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/CS/PM/PriceUpdate" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl xsd xsdLocal gcap-sa gcap-cmt gcap-cps ns1 gcap-cpt ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:priceStatus>
      <ns0:eaiHeader>
        <gcap-cmt:applicationId>
          <xsl:value-of select="concat(&quot;;EAI;&quot;,/xsdLocal:CSPriceUpdateStatus/xsdLocal:eaiHeader/xsdLocal:applicationId)"/>
        </gcap-cmt:applicationId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:eaiHeader/xsdLocal:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageId>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:eaiHeader/xsdLocal:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:eaiHeader/xsdLocal:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:eaiHeader/xsdLocal:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:instanceId>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:eaiHeader/xsdLocal:instanceId"/>
        </gcap-cmt:instanceId>
        <gcap-cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:eaiHeader/xsdLocal:timeToLive"/>
        </gcap-cmt:timeToLive>
        <gcap-cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:eaiHeader/xsdLocal:payloadVersion"/>
        </gcap-cmt:payloadVersion>
      </ns0:eaiHeader>
      <ns0:parsingStatus>
        <gcap-cmt:response>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:parsingPriceUpdateStatus/xsdLocal:response"/>
        </gcap-cmt:response>
        <gcap-cmt:responseCode>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:parsingPriceUpdateStatus/xsdLocal:responseCode"/>
        </gcap-cmt:responseCode>
        <gcap-cmt:responseMessage>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:parsingPriceUpdateStatus/xsdLocal:responseMessage"/>
        </gcap-cmt:responseMessage>
      </ns0:parsingStatus>
      <ns0:logicalCountry>
        <xsl:value-of select="orcl:lookup-table(&quot;PRICELIST_COUNTRY_TRACING&quot;,&quot;TRACING_ID&quot;,/xsdLocal:CSPriceUpdateStatus/xsdLocal:messageHeader/xsdLocal:tracingId,&quot;COUNTRY&quot;,&quot;eai/ds/EAIReference&quot;)"/>
      </ns0:logicalCountry>
      <ns0:messageHeader>
        <gcap-cmt:messageId>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:messageHeader/xsdLocal:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:messageHeader/xsdLocal:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:messageHeader/xsdLocal:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:messageHeader/xsdLocal:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:messageCode>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:messageHeader/xsdLocal:messageCode"/>
        </gcap-cmt:messageCode>
        <gcap-cmt:version>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:messageHeader/xsdLocal:version"/>
        </gcap-cmt:version>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:userId>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:messageHeader/xsdLocal:userId"/>
        </gcap-cmt:userId>
        <gcap-cmt:objectSystem>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:messageHeader/xsdLocal:objectSystem"/>
        </gcap-cmt:objectSystem>
      </ns0:messageHeader>
      <ns0:priceHeader>
        <gcap-cps:messageStatus>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:priceUpdateReqHeader/xsdLocal:MessageStatus"/>
        </gcap-cps:messageStatus>
        <gcap-cps:messageResponseCode>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:priceUpdateReqHeader/xsdLocal:MessageResponseCode"/>
        </gcap-cps:messageResponseCode>
        <gcap-cps:priceListNumber>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:priceUpdateReqHeader/xsdLocal:PriceListNumber"/>
        </gcap-cps:priceListNumber>
        <gcap-cps:CRMPLHId>
          <xsl:value-of select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:messageHeader/xsdLocal:messageId"/>
        </gcap-cps:CRMPLHId>
        <gcap-cps:rcrmDummyField3>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </gcap-cps:rcrmDummyField3>
        <gcap-cps:rcrmMessage>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </gcap-cps:rcrmMessage>
      </ns0:priceHeader>
      <xsl:for-each select="/xsdLocal:CSPriceUpdateStatus/xsdLocal:priceUpdateReqLineItem">
        <ns0:priceLineItem>
          <gcap-cps:PLI>
            <xsl:value-of select="xsdLocal:PLI"/>
          </gcap-cps:PLI>
          <gcap-cps:startDate>
            <xsl:value-of select="xsdLocal:startDate"/>
          </gcap-cps:startDate>
          <gcap-cps:priceLineStatus>
            <xsl:value-of select="xsdLocal:PLIStatus"/>
          </gcap-cps:priceLineStatus>
          <gcap-cps:priceLineResponseCode>
            <xsl:value-of select="xsdLocal:PLIResponseCode"/>
          </gcap-cps:priceLineResponseCode>
          <gcap-cps:CRMPLIId>
            <xsl:value-of select="xsdLocal:pliId"/>
          </gcap-cps:CRMPLIId>
          <gcap-cps:rcrmHQNodePublish>
            <xsl:value-of select="string(&quot;&quot;)"/>
          </gcap-cps:rcrmHQNodePublish>
          <gcap-cps:rcrmCompassMessage>
            <xsl:value-of select="string(&quot;&quot;)"/>
          </gcap-cps:rcrmCompassMessage>
        </ns0:priceLineItem>
      </xsl:for-each>
    </ns0:priceStatus>
  </xsl:template>
</xsl:stylesheet>
