<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.SAP.OM.286_OrderRequest.xsd"/>
      <rootElement name="SAPOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/SAP/OrderRequest"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai01:7777/orabpel/ccrmasync/AsyncSequenceChecker/EAI.MSG.UTL.185_CheckSequenceRequest.xsd"/>
      <rootElement name="checkSequenceRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/UTL/Sequencer"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU OCT 07 18:03:44 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/UTL/Sequencer" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/SAP/OrderRequest" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl cmt xsd xsdLocal ns0 ns1 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns1:checkSequenceRequest>
      <ns1:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </ns1:eaiHeader>
      <ns1:seqRequestDetails>
        <ns1:context>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;SequencerContextForOrderCreate&quot;,&quot;Value&quot;,&quot;OrderManagement.OrderCreation&quot;)"/>
        </ns1:context>
        <ns1:messageType>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;SequencerMessageTypeCRM61OM&quot;,&quot;Value&quot;,&quot;Order.CRMOrderNumber&quot;)"/>
        </ns1:messageType>
        <ns1:contextId>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:orderHeader/xsdLocal:CRMOrderNumber"/>
        </ns1:contextId>
        <ns1:process>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:eaiHeader/cmt:transactionId"/>
        </ns1:process>
        <ns1:correlationID>
          <xsl:value-of select="/xsdLocal:SAPOrderRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </ns1:correlationID>
      </ns1:seqRequestDetails>
    </ns1:checkSequenceRequest>
  </xsl:template>
</xsl:stylesheet>
