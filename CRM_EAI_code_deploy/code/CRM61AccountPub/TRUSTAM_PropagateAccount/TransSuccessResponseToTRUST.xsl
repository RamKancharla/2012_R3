<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TRUST.269_PublishAccount.xsd"/>
      <rootElement name="publishTrustAccounts" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/AccountPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.EAI.169_BasicResponse.xsd"/>
      <rootElement name="basicResponse" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/Common"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON MAR 30 14:29:30 GMT+05:30 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-mt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/AccountPublish" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/Common" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl xsd xsdLocal gcap-mt ns0 ns1 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:basicResponse>
      <ns0:eaiHeader>
        <gcap-mt:applicationId>
          <xsl:value-of select="string(&quot;EAI&quot;)"/>
        </gcap-mt:applicationId>
        <gcap-mt:transactionId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:transactionId"/>
        </gcap-mt:transactionId>
        <gcap-mt:messageId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:messageId"/>
        </gcap-mt:messageId>
        <gcap-mt:messageHistory>
          <xsl:value-of select="string(&quot;TRUST;EAI;&quot;)"/>
        </gcap-mt:messageHistory>
        <gcap-mt:tracingId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:instanceId"/>
        </gcap-mt:tracingId>
        <gcap-mt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </gcap-mt:timeStamp>
        <gcap-mt:instanceId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:instanceId"/>
        </gcap-mt:instanceId>
        <gcap-mt:timeToLive>
          <xsl:value-of select="number(0)"/>
        </gcap-mt:timeToLive>
        <gcap-mt:payloadVersion>
          <xsl:value-of select="string('V')"/>
        </gcap-mt:payloadVersion>
      </ns0:eaiHeader>
      <ns0:basicResponse>
        <gcap-mt:response>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;SuccessCode&quot;,&quot;Value&quot;,&quot;0&quot;)"/>
        </gcap-mt:response>
        <gcap-mt:responseCode>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;SuccessResponseCode&quot;,&quot;Value&quot;,&quot;00100-EAI-SUCCESS&quot;)"/>
        </gcap-mt:responseCode>
        <gcap-mt:responseMessage>
          <xsl:value-of select="string(&quot;SUCCESS&quot;)"/>
        </gcap-mt:responseMessage>
      </ns0:basicResponse>
    </ns0:basicResponse>
  </xsl:template>
</xsl:stylesheet>
