<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TF.152_VettingRequest.xsd"/>
      <rootElement name="vettingRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/TechFul"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://eaidev1:8888/orabpel/SandBox/DynaXRef/EAI%20MSG.139_DynamicXReferenceRequest.xsd"/>
      <rootElement name="dynaXRefRequest" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/DynamicXReference"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED JAN 02 10:23:03 GMT 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/TechFul" xmlns:cqt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonQuoteTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns0="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/DynamicXReference" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl cmt xsd xsdLocal cqt gcap-sa ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:dynaXRefRequest>
      <ns0:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </ns0:eaiHeader>
      <ns0:actionCode>
        <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;CreateDynaXActionCode&quot;,&quot;Value&quot;,&quot;C&quot;)"/>
      </ns0:actionCode>
      <ns0:refType>
        <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;QuoteApprovalRecordDynaXRefType&quot;,&quot;Value&quot;,&quot;QNoVNo_APPID&quot;)"/>
      </ns0:refType>
      <ns0:source>
        <xsl:value-of select="concat(/xsdLocal:vettingRequest/xsdLocal:quoteHeader/cqt:quoteNumber,&quot;#&quot;,/xsdLocal:vettingRequest/xsdLocal:quoteHeader/cqt:revisionNumber)"/>
      </ns0:source>
      <ns0:target>
        <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:quoteHeader/cqt:approvalRecordNumber"/>
      </ns0:target>
      <ns0:linkRefType>
        <xsl:value-of select="string(&quot;&quot;)"/>
      </ns0:linkRefType>
    </ns0:dynaXRefRequest>
  </xsl:template>
</xsl:stylesheet>