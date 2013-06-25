<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CCRM.TF.151_VettingRequest.xsd"/>
      <rootElement name="vettingRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/TechFul"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CCRM.TF.159_VetRequestSubmissionStatus.xsd"/>
      <rootElement name="quoteSubmissionStatus" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/TechFul"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE JAN 15 14:20:36 GMT 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:cqt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonQuoteTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/TechFul" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl cmt xsd cqt xsdLocal gcap-sa bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:quoteSubmissionStatus>
      <xsdLocal:eaiHeader>
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
      </xsdLocal:eaiHeader>
      <xsdLocal:response>
        <cqt:quoteNumber>
          <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:quoteHeader/cqt:quoteNumber"/>
        </cqt:quoteNumber>
        <cqt:revisionNumber>
          <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:quoteHeader/cqt:revisionNumber"/>
        </cqt:revisionNumber>
        <cqt:vettingStatus>
          <xsl:value-of select="string('0')"/>
        </cqt:vettingStatus>
        <cqt:vettingStatusReason>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </cqt:vettingStatusReason>
        <cqt:vettingStatusReasonCode>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </cqt:vettingStatusReasonCode>
        <cqt:approvalRecordNumber>
          <xsl:value-of select="/xsdLocal:vettingRequest/xsdLocal:quoteHeader/cqt:approvalRecordNumber"/>
        </cqt:approvalRecordNumber>
      </xsdLocal:response>
    </xsdLocal:quoteSubmissionStatus>
  </xsl:template>
</xsl:stylesheet>