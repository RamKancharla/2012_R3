<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="EAI.SRV.CCRM.044_QuerySRDetailsService.wsdl"/>
      <rootElement name="RCRM_spcKNOVA_spcService_spcRequest_Output" namespace="http://www.reuters.com/2008/07/12/GCAP/RCRM"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="CSZ_QuerySRDetails.wsdl"/>
      <rootElement name="EAICSZServiceResponse" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CSZ/ServiceRequest"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON JUL 21 10:10:54 BST 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:out1="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CSZ/ServiceRequest" xmlns:xsdLocal1="http://www.siebel.com/xml/RCRM%20Service%20Request" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonServiceRequestTypes" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://www.reuters.com/2008/07/12/GCAP/RCRM" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns0="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CCRM/CSZ" exclude-result-prefixes="xsl xsd xsdLocal1 soap soapenc tns ns1 out1 ns2 ns3 ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <out1:EAICSZServiceResponse>
      <out1:eaiHeader>
        <ns1:applicationId>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:UserId"/>
        </ns1:applicationId>
        <ns1:timeStamp>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:Timestamp"/>
        </ns1:timeStamp>
      </out1:eaiHeader>
      <out1:SRDetails>
        <out1:SRNumber>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:SRNumber"/>
        </out1:SRNumber>
        <out1:Abstract>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:Abstract"/>
        </out1:Abstract>
        <out1:SRType>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:Area"/>
        </out1:SRType>
        <out1:SRSubType>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:Sub-Area"/>
        </out1:SRSubType>
        <out1:Component>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:RCRMComponentProduct"/>
        </out1:Component>
        <out1:Product>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:Product"/>
        </out1:Product>
        <out1:ProductVersion>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:RCRMProductVersion"/>
        </out1:ProductVersion>
        <out1:DeliveryInfrastructure>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:RCRMDeliveryInfrastructure"/>
        </out1:DeliveryInfrastructure>
        <out1:MarketSector>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:RCRMMarketSector"/>
        </out1:MarketSector>
        <out1:Description>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:Description"/>
        </out1:Description>
        <out1:Resolution>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:RCRMResolutionText"/>
        </out1:Resolution>
        <out1:ContactFirstName>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:ContactFirstName"/>
        </out1:ContactFirstName>
        <out1:ContactLastName>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:ContactLastName"/>
        </out1:ContactLastName>
        <out1:ContactEmail>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:ContactEmailAddress"/>
        </out1:ContactEmail>
        <out1:Account>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:Account"/>
        </out1:Account>
        <out1:Status>
          <xsl:value-of select="/tns:RCRM_spcKNOVA_spcService_spcRequest_Output/xsdLocal1:RcrmServiceRequestNoBrs/xsdLocal1:Status"/>
        </out1:Status>
      </out1:SRDetails>
    </out1:EAICSZServiceResponse>
  </xsl:template>
</xsl:stylesheet>
