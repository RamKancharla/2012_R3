<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="CSZ_CSZQueryDetails.wsdl"/>
      <rootElement name="CSZServiceRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CSZ/ServiceRequest"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://ukcq-eai05:7777/esb/wsil/CSZ/QuerySRDetails?wsdl"/>
      <rootElement name="EAICSZServiceRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CSZ/ServiceRequest"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE JUL 15 15:08:43 BST 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:ns0="http://www.w3.org/2001/XMLSchema" xmlns:out1="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CSZ/ServiceRequest" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonServiceRequestTypes" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:tns="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CCRM/CSZ" exclude-result-prefixes="xsl ns1 ns0 out1 ns2 ns3 tns bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <out1:EAICSZServiceRequest>
      <out1:eaiHeader>
        <ns1:applicationId>
          <xsl:value-of select="/out1:CSZServiceRequest/out1:eaiHeader/ns1:applicationId"/>
        </ns1:applicationId>
        <ns1:transactionId>
          <xsl:value-of select="/out1:CSZServiceRequest/out1:eaiHeader/ns1:transactionId"/>
        </ns1:transactionId>
        <ns1:messageId>
          <xsl:value-of select="/out1:CSZServiceRequest/out1:eaiHeader/ns1:messageId"/>
        </ns1:messageId>
        <ns1:messageHistory>
          <xsl:value-of select="/out1:CSZServiceRequest/out1:eaiHeader/ns1:messageHistory"/>
        </ns1:messageHistory>
        <ns1:tracingId>
          <xsl:value-of select="/out1:CSZServiceRequest/out1:eaiHeader/ns1:tracingId"/>
        </ns1:tracingId>
        <ns1:timeStamp>
          <xsl:value-of select="/out1:CSZServiceRequest/out1:eaiHeader/ns1:timeStamp"/>
        </ns1:timeStamp>
        <ns1:instanceId>
          <xsl:value-of select="/out1:CSZServiceRequest/out1:eaiHeader/ns1:instanceId"/>
        </ns1:instanceId>
        <ns1:timeToLive>
          <xsl:value-of select="/out1:CSZServiceRequest/out1:eaiHeader/ns1:timeToLive"/>
        </ns1:timeToLive>
        <ns1:payloadVersion>
          <xsl:value-of select="/out1:CSZServiceRequest/out1:eaiHeader/ns1:payloadVersion"/>
        </ns1:payloadVersion>
      </out1:eaiHeader>
      <out1:SRNumber>
        <xsl:value-of select="/out1:CSZServiceRequest/out1:SRNumber"/>
      </out1:SRNumber>
    </out1:EAICSZServiceRequest>
  </xsl:template>
</xsl:stylesheet>
