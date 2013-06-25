<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="EAI.SRV.EXT.CCRM.047_UpdatePriceChangeToHQNode.wsdl"/>
      <rootElement name="RCRMHQNodePricePublish_Input" namespace="http://www.reuters.com/2008/07/23/GCAP/RCRM"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://ukcq-eai04:7777/orabpel/ccrmasync/CCRMPM_PropagatePriceUpdateStatus/EAI.MSG.CS.PM.221_PriceStatus.xsd"/>
      <rootElement name="priceStatus" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/CS/PM/PriceUpdate"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED NOV 19 11:13:22 GMT 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:tns="http://www.reuters.com/2008/07/23/GCAP/RCRM" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:gcap-cps="http://www.reuters.com/ns/2007/09/01/GCAP/CommonPriceStructures" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/CommonNillablePriceTypes" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gcap-cpt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonPriceTypes" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:xsdLocal="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/CS/PM/PriceUpdate" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:xsdLocal1="http://www.siebel.com/xml/Price%20List" exclude-result-prefixes="xsl tns xsd soap soapenc xsdLocal1 gcap-cmt gcap-cps ns0 gcap-cpt xsdLocal ns1 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:priceStatus>
      <xsdLocal:eaiHeader>
        <gcap-cmt:applicationId>
          <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/xsdLocal1:SourceSystem"/>
        </gcap-cmt:applicationId>
        <gcap-cmt:messageId>
          <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/@MessageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="string(&quot;;EAI;&quot;)"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </gcap-cmt:timeStamp>
      </xsdLocal:eaiHeader>
      <xsdLocal:logicalCountry>
        <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/xsdLocal1:PriceList/xsdLocal1:RCRMCountry"/>
      </xsdLocal:logicalCountry>
      <xsdLocal:messageHeader>
        <gcap-cmt:messageId>
          <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/@MessageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/@MessageId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="concat(&quot;CRM;EAI&quot;,&quot;&quot;)"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/@MessageId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:messageCode>
          <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/xsdLocal1:ActionCode"/>
        </gcap-cmt:messageCode>
        <gcap-cmt:version>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </gcap-cmt:version>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:userId>
          <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/xsdLocal1:PriceList/xsdLocal1:LoginName"/>
        </gcap-cmt:userId>
        <gcap-cmt:objectSystem>
          <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/xsdLocal1:TargetSystem"/>
        </gcap-cmt:objectSystem>
      </xsdLocal:messageHeader>
      <xsdLocal:priceHeader>
        <gcap-cps:messageResponseCode>
          <xsl:value-of select="string(&quot;A000&quot;)"/>
        </gcap-cps:messageResponseCode>
        <gcap-cps:priceListNumber>
          <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/xsdLocal1:PriceList/xsdLocal1:RCRMCompassPriceListNumber"/>
        </gcap-cps:priceListNumber>
        <gcap-cps:CRMPLHId>
          <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/xsdLocal1:PriceList/xsdLocal1:Id"/>
        </gcap-cps:CRMPLHId>
        <gcap-cps:rcrmDummyField3>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;FailureCode&quot;,&quot;Value&quot;,&quot;1&quot;)"/>
        </gcap-cps:rcrmDummyField3>
        <gcap-cps:rcrmMessage>
          <xsl:value-of select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/xsdLocal1:PriceList/xsdLocal1:RCRMMessage"/>
        </gcap-cps:rcrmMessage>
      </xsdLocal:priceHeader>
      <xsl:for-each select="/tns:RCRMHQNodePricePublish_Input/xsdLocal1:PricePublish/xsdLocal1:PriceList/xsdLocal1:PriceListItem">
        <xsdLocal:priceLineItem>
          <gcap-cps:PLI>
            <xsl:value-of select="xsdLocal1:RCRMLocalPLI"/>
          </gcap-cps:PLI>
          <gcap-cps:startDate>
            <xsl:value-of select="xsdLocal1:StartDate"/>
          </gcap-cps:startDate>
          <gcap-cps:priceLineStatus>
            <xsl:value-of select="xsdLocal1:RCRMPriceListItemStatus"/>
          </gcap-cps:priceLineStatus>
          <xsl:choose>
            <xsl:when test="../../../tns:Error_spcCode = xsdLocal1:Id">
              <gcap-cps:priceLineResponseCode>
                <xsl:value-of select="../../../tns:Error_spcMessage"/>
              </gcap-cps:priceLineResponseCode>
            </xsl:when>
            <xsl:otherwise>
              <gcap-cps:priceLineResponseCode>
                <xsl:value-of select="string(&quot;&quot;)"/>
              </gcap-cps:priceLineResponseCode>
            </xsl:otherwise>
          </xsl:choose>
          <gcap-cps:CRMPLIId>
            <xsl:value-of select="xsdLocal1:Id"/>
          </gcap-cps:CRMPLIId>
          <gcap-cps:rcrmHQNodePublish>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;FailureCode&quot;,&quot;Value&quot;,&quot;1&quot;)"/>
          </gcap-cps:rcrmHQNodePublish>
          <gcap-cps:rcrmCompassMessage>
            <xsl:value-of select="string(&quot;&quot;)"/>
          </gcap-cps:rcrmCompassMessage>
        </xsdLocal:priceLineItem>
      </xsl:for-each>
    </xsdLocal:priceStatus>
  </xsl:template>
</xsl:stylesheet>
