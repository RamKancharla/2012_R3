<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="http://ukcq-eai04:7777/OrderFulfilmentCrossRefService/CrossRefServiceSplitOrderSOAPPort?WSDL"/>
      <rootElement name="getOrderDetailsResponse" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/OrderFulfilmentCrossRefService"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://ukcq-eai04:7777/orabpel/ccrmasync/OM_ManageOrderLineStatus/EAI.MSG.OM.141_OrderStatus.xsd"/>
      <rootElement name="orderStatus" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED MAY 26 13:02:23 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:util="http://www.oracle.com/XSL/Transform/java/com.reuters.eai.util.OrderCacheDBAccess" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/OrderFulfilmentCrossRefService" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsdLocal="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:soap11-enc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl mime wsdl soap12 xsd tns soap soap11-enc xsi cmt xsdLocal ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:orderStatus>
      <xsdLocal:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:payloadVersion"/>
        </cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:messageHeader>
        <xsdLocal:actionCode>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:actionCode>
        <xsdLocal:version>
          <xsl:value-of select="string(&quot;A&quot;)"/>
        </xsdLocal:version>
        <xsdLocal:userId>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:userId>
      </xsdLocal:messageHeader>
      <xsdLocal:orderHeader>
        <xsdLocal:response>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:response>
        <xsdLocal:requestStatus>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:requestStatus>
        <xsdLocal:CRMOrderNumber>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:crmOrder/tns:orderHeader/tns:CRMOrderNumber"/>
        </xsdLocal:CRMOrderNumber>
        <xsdLocal:orderNumber>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:orderNumber>
        <xsdLocal:entrepriseCode>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:entrepriseCode>
      </xsdLocal:orderHeader>
      <xsl:for-each select="/tns:getOrderDetailsResponse/tns:crmOrder/tns:orderLineItem">
        <xsdLocal:orderLineItem>
         <!-- <xsl:choose>
            <xsl:when test='tns:permissioningStatus = "Permissioned"'>
              <xsdLocal:CRMOLIId>
                <xsl:value-of select='util:updateOrderCache("eai/ds/EAIReference",tns:CRMOLIId,"AUTO_PERM_COMPLETE","Y")'/>
              </xsdLocal:CRMOLIId>
            </xsl:when>
            <xsl:otherwise>
              <xsdLocal:CRMOLIId>
                <xsl:value-of select='util:updateOrderCache("eai/ds/EAIReference",tns:CRMOLIId,"AUTO_PERM_COMPLETE","N")'/>
              </xsdLocal:CRMOLIId>
            </xsl:otherwise>
          </xsl:choose> -->
          <!-- Added Newly -->
          <xsdLocal:CRMOLIId>
                <xsl:value-of select="tns:CRMOLIId"/>
          </xsdLocal:CRMOLIId>
          <xsdLocal:rootItemId>
            <xsl:value-of select="tns:rootItemId"/>
          </xsdLocal:rootItemId>
          <xsdLocal:itemNumber>
            <xsl:value-of select="tns:itemNumber"/>
          </xsdLocal:itemNumber>
          <xsdLocal:ILA>
            <xsl:value-of select="string(&quot;&quot;)"/>
          </xsdLocal:ILA>
          <xsdLocal:userNumber>
            <xsl:value-of select="tns:userNumber"/>
          </xsdLocal:userNumber>
          <xsdLocal:userId>
            <xsl:value-of select="tns:userID"/>
          </xsdLocal:userId>
          <xsdLocal:QUID>
            <xsl:value-of select="tns:QUID"/>
          </xsdLocal:QUID>
          <xsdLocal:orderLinestatus>
            <xsl:value-of select="tns:permissioningStatus"/>
          </xsdLocal:orderLinestatus>
          <xsdLocal:requestStatus>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CPFGEF_PropagateFulfilmentStatusReasonCodeMap.dvm&quot;,&quot;CPFGResponseCode&quot;,tns:billingNote,&quot;CCRMResponseCode&quot;,tns:billingNote)"/>
          </xsdLocal:requestStatus>
          <xsdLocal:assetIntegrationId>
          <xsl:value-of select="orcl:lookup-table(&quot;ORDER_CACHE&quot;,&quot;CRM_OLI_ID&quot;,tns:CRMOLIId,&quot;ASSET_INTEGRATION_ID&quot;,&quot;eai/ds/EAIReference&quot;)"/>
          </xsdLocal:assetIntegrationId>
          <xsdLocal:PermBillFlag>
            <xsl:text disable-output-escaping="no">P</xsl:text>
          </xsdLocal:PermBillFlag>
        </xsdLocal:orderLineItem>
      </xsl:for-each>
    </xsdLocal:orderStatus>
  </xsl:template>
</xsl:stylesheet>
