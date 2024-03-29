<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="CSOM_ApplyXRefOnOrderStatusInRS.wsdl"/>
      <rootElement name="orderResponseStatus" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/CS/OM/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://eaidev2:7777/orabpel/ccrmasync/OM_ManageOrderLineStatus/OM_ManageOrderLineStatus?wsdl"/>
      <rootElement name="orderStatus" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE APR 27 17:10:05 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:ns0="http://www.w3.org/2001/XMLSchema" xmlns:ns6="http://schemas.oracle.com/bpel/extension" xmlns:ns4="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns9="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOrderTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:wsa="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:client="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OM" xmlns:ns7="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement/rules" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns5="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:inp1="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/CS/OM/OrderManagement" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:tns="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/OM" xmlns:ns8="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl ns1 ns0 ns2 ns9 ns3 inp1 tns ns8 plnk ns6 ns4 wsa client ns7 soap ns5 ehdr xp20 ora orcl bpws hwf xref ids" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns4:orderStatus>
      <ns4:eaiHeader>
        <ns1:applicationId>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:eaiHeader/ns1:applicationId"/>
        </ns1:applicationId>
        <ns1:transactionId>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:eaiHeader/ns1:transactionId"/>
        </ns1:transactionId>
        <ns1:messageId>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:eaiHeader/ns1:messageId"/>
        </ns1:messageId>
        <ns1:messageHistory>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:eaiHeader/ns1:messageHistory"/>
        </ns1:messageHistory>
        <ns1:tracingId>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:eaiHeader/ns1:tracingId"/>
        </ns1:tracingId>
        <ns1:timeStamp>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:eaiHeader/ns1:timeStamp"/>
        </ns1:timeStamp>
        <ns1:instanceId>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:eaiHeader/ns1:instanceId"/>
        </ns1:instanceId>
        <ns1:timeToLive>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:eaiHeader/ns1:timeToLive"/>
        </ns1:timeToLive>
        <ns1:payloadVersion>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:eaiHeader/ns1:payloadVersion"/>
        </ns1:payloadVersion>
      </ns4:eaiHeader>
      <ns4:messageHeader>
        <ns4:actionCode>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/OrderActionCodeMap_CStoCRM.dvm&quot;,&quot;CSActionCode&quot;,/inp1:orderResponseStatus/inp1:messageHeader/ns3:actionCode,&quot;SiebelActionCode&quot;,/inp1:orderResponseStatus/inp1:messageHeader/ns3:actionCode)"/>
        </ns4:actionCode>
        <ns4:version>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:messageHeader/ns3:version"/>
        </ns4:version>
        <ns4:userId>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:messageHeader/ns3:userId"/>
        </ns4:userId>
      </ns4:messageHeader>
      <ns4:orderHeader>
        <ns4:response>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/OrderResponseCodeMap.dvm&quot;,&quot;CSResponseCode&quot;,/inp1:orderResponseStatus/inp1:orderHeader/ns3:response,&quot;SiebelResponse&quot;,/inp1:orderResponseStatus/inp1:orderHeader/ns3:response)"/>
        </ns4:response>
        <ns4:requestStatus>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/ResponseCodes.dvm&quot;,&quot;CSResponse&quot;,/inp1:orderResponseStatus/inp1:orderHeader/ns3:requestStatus,&quot;CRMResponse&quot;,/inp1:orderResponseStatus/inp1:orderHeader/ns3:requestStatus)"/>
        </ns4:requestStatus>
        <ns4:CRMOrderNumber>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:orderHeader/ns3:CRMOrderNumber"/>
        </ns4:CRMOrderNumber>
        <ns4:orderNumber>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:orderHeader/ns3:orderNumber"/>
        </ns4:orderNumber>
        <ns4:entrepriseCode>
          <xsl:value-of select="/inp1:orderResponseStatus/inp1:orderHeader/ns3:entrepriseCode"/>
        </ns4:entrepriseCode>
      </ns4:orderHeader>
      <xsl:for-each select="/inp1:orderResponseStatus/inp1:orderLineItem">
        <ns4:orderLineItem>
          <ns4:CRMOLIId>
            <xsl:value-of select="ns3:CRMOLIId"/>
          </ns4:CRMOLIId>
          <ns4:rootItemId>
            <xsl:value-of select="ns3:rootItemId"/>
          </ns4:rootItemId>
          <ns4:itemNumber>
            <xsl:value-of select="ns3:itemNumber"/>
          </ns4:itemNumber>
          <ns4:ILA>
            <xsl:value-of select="ns3:ILA"/>
          </ns4:ILA>
          <ns4:userNumber>
            <xsl:value-of select="ns3:userNumber"/>
          </ns4:userNumber>
          <ns4:userId>
            <xsl:value-of select="ns3:userId"/>
          </ns4:userId>
          <ns4:QUID>
            <xsl:value-of select="ns3:QUID"/>
          </ns4:QUID>
          <xsl:choose>
            <xsl:when test="(../inp1:messageHeader/ns3:actionCode = &quot;OM30&quot;) and (../inp1:orderHeader/ns3:response != &quot;0&quot;)">
              <ns4:orderLinestatus>
                <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;CRMReleaseToBillError&quot;,&quot;Value&quot;,&quot;Release to Bill Error&quot;)"/>
              </ns4:orderLinestatus>
            </xsl:when>
            <xsl:when test="../inp1:messageHeader/ns3:actionCode = &quot;OM38&quot;">
              <ns4:orderLinestatus>
                <xsl:value-of select="string(&quot;Amend Bill Date Before RTB&quot;)"/>
              </ns4:orderLinestatus>
            </xsl:when>
            <xsl:when test="(../inp1:messageHeader/ns3:actionCode = &quot;OM25&quot;) and (../inp1:orderHeader/ns3:response = &quot;0&quot;)">
              <ns4:orderLinestatus>
                <xsl:value-of select="string(&quot;AmendPermisisonDate&quot;)"/>
              </ns4:orderLinestatus>
            </xsl:when>
            <xsl:when test="(../inp1:messageHeader/ns3:actionCode = &quot;OM25&quot;) and (../inp1:orderHeader/ns3:response = &quot;1&quot;)">
              <ns4:orderLinestatus>
                <xsl:value-of select="string(&quot;Permission Date Error&quot;)"/>
              </ns4:orderLinestatus>
            </xsl:when>
            <xsl:when test="../inp1:orderHeader/ns3:response = &quot;0&quot;">
              <ns4:orderLinestatus>
                <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/OrderLineStatus.dvm&quot;,&quot;CSOrdeLineStatus&quot;,ns3:orderLinestatus,&quot;EAIOrderLineStatus&quot;,ns3:orderLinestatus)"/>
              </ns4:orderLinestatus>
            </xsl:when>
            <xsl:when test="../inp1:messageHeader/ns3:actionCode = &quot;OM95&quot;">
              <ns4:orderLinestatus>
                <xsl:value-of select="string(&quot;Athena Manual Permission&quot;)"/>
              </ns4:orderLinestatus>
            </xsl:when>
            <xsl:otherwise>
              <ns4:orderLinestatus>
                <xsl:value-of select="string(&quot;Error&quot;)"/>
              </ns4:orderLinestatus>
            </xsl:otherwise>
          </xsl:choose>
          <ns4:orderPermissionStatus>
            <xsl:value-of select="string(&quot;&quot;)"/>
          </ns4:orderPermissionStatus>
          <xsl:choose>
            <xsl:when test="../inp1:orderHeader/ns3:requestStatus = &quot;A000&quot;">
              <ns4:requestStatus>
                <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/ResponseCodes.dvm&quot;,&quot;CSResponse&quot;,ns3:requestStatus,&quot;CRMResponse&quot;,ns3:requestStatus)"/>
              </ns4:requestStatus>
            </xsl:when>
            <xsl:otherwise>
              <ns4:requestStatus>
                <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/ResponseCodes.dvm&quot;,&quot;CSResponse&quot;,../inp1:orderHeader/ns3:requestStatus,&quot;CRMResponse&quot;,../inp1:orderHeader/ns3:requestStatus)"/>
              </ns4:requestStatus>
            </xsl:otherwise>
          </xsl:choose>
          <ns4:assetIntegrationId>
            <xsl:value-of select="ns3:assetIntegrationId"/>
          </ns4:assetIntegrationId>
          <ns4:SID>
            <xsl:value-of select="ns3:SID"/>
          </ns4:SID>
          <ns4:PermBillFlag>
            <xsl:value-of select="ns3:permBillFlag"/>
          </ns4:PermBillFlag>
        </ns4:orderLineItem>
      </xsl:for-each>
    </ns4:orderStatus>
  </xsl:template>
</xsl:stylesheet>
