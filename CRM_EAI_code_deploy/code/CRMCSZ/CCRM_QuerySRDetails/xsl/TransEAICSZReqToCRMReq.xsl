<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="CSZ_QuerySRDetails.wsdl"/>
      <rootElement name="EAICSZServiceRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CSZ/ServiceRequest"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="EAI.SRV.CCRM.044_QuerySRDetailsService.wsdl"/>
      <rootElement name="RCRM_spcKNOVA_spcService_spcRequest_Input" namespace="http://www.reuters.com/2008/07/12/GCAP/RCRM"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE JUL 15 14:24:47 BST 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:out1="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CSZ/ServiceRequest" xmlns:xsdLocal1="http://www.siebel.com/xml/RCRM%20Service%20Request" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonServiceRequestTypes" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://www.reuters.com/2008/07/12/GCAP/RCRM" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns0="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CCRM/CSZ" exclude-result-prefixes="xsl ns1 xsd out1 ns2 ns3 ns0 xsdLocal1 soap soapenc tns bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <tns:RCRM_spcKNOVA_spcService_spcRequest_Input>
      <xsdLocal1:RcrmServiceRequestNoBrs>
        <xsdLocal1:UserId>
          <xsl:value-of select="/out1:EAICSZServiceRequest/out1:eaiHeader/ns1:applicationId"/>
        </xsdLocal1:UserId>
        <xsdLocal1:Timestamp>
          <xsl:value-of select="/out1:EAICSZServiceRequest/out1:eaiHeader/ns1:timeStamp"/>
        </xsdLocal1:Timestamp>
        <xsdLocal1:MessageId>
          <xsl:value-of select="/out1:EAICSZServiceRequest/out1:eaiHeader/ns1:messageId"/>
        </xsdLocal1:MessageId>
        <xsdLocal1:MessageHistory>
          <xsl:value-of select="/out1:EAICSZServiceRequest/out1:eaiHeader/ns1:messageHistory"/>
        </xsdLocal1:MessageHistory>
        <xsdLocal1:SRNumber>
          <xsl:value-of select="/out1:EAICSZServiceRequest/out1:SRNumber"/>
        </xsdLocal1:SRNumber>
      </xsdLocal1:RcrmServiceRequestNoBrs>
    </tns:RCRM_spcKNOVA_spcService_spcRequest_Input>
  </xsl:template>
</xsl:stylesheet>
