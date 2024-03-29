<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="SiebelSR.wsdl"/>
      <rootElement name="RCRMServiceRequestOutput_Output" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/RCRM"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="TrustServiceRequest.wsdl"/>
      <rootElement name="getSRRSResponse" namespace="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/AccountGateway/SR/TRUSTServiceRequest"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON OCT 24 14:39:56 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:xsdLocal1="http://www.siebel.com/xml/RCRM%20Account%20-%20Service" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://www.reuters.com/ns/2007/09/01/GCAP/RCRM" xmlns:s0="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/AccountGateway/SR/TRUSTServiceRequest" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" exclude-result-prefixes="xsl xsdLocal1 xsd tns soap soapenc mime wsdl http s0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <s0:getSRRSResponse>
      <s0:getSRRSResult>
        <s0:Error_spcCode>
          <xsl:value-of select="/tns:RCRMServiceRequestOutput_Output/xsdLocal1:SrThinBc/xsdLocal1:ErrorCode"/>
        </s0:Error_spcCode>
        <s0:Error_spcMessage>
          <xsl:value-of select="/tns:RCRMServiceRequestOutput_Output/xsdLocal1:SrThinBc/xsdLocal1:ErrorMessage"/>
        </s0:Error_spcMessage>
        <s0:rcrmAccountThin>
          <s0:Timestamp>
            <xsl:value-of select="/tns:RCRMServiceRequestOutput_Output/xsdLocal1:SrThinBc/xsdLocal1:TimeStamp"/>
          </s0:Timestamp>
          <s0:TargetSystem>
            <xsl:text disable-output-escaping="no">TRUST</xsl:text>
          </s0:TargetSystem>
          <s0:SourceSystem>
            <xsl:text disable-output-escaping="no">SIEBEL</xsl:text>
          </s0:SourceSystem>
          <s0:SrThinBc>
            <xsl:for-each select="/tns:RCRMServiceRequestOutput_Output/xsdLocal1:SrThinBc">
              <s0:SrThinBc>
                <s0:RCRMFieldL4>
                  <xsl:value-of select="xsdLocal1:RCRMField4"/>
                </s0:RCRMFieldL4>
                <s0:RCRMFieldL3>
                  <xsl:value-of select="xsdLocal1:RCRMField3"/>
                </s0:RCRMFieldL3>
                <s0:RCRMFieldL2>
                  <xsl:value-of select="xsdLocal1:RCRMField2"/>
                </s0:RCRMFieldL2>
                <s0:RCRMFieldL1>
                  <xsl:value-of select="xsdLocal1:RCRMField1"/>
                </s0:RCRMFieldL1>
                <s0:SRSubType>
                  <xsl:value-of select="xsdLocal1:SRSubType"/>
                </s0:SRSubType>
                <s0:Severity>
                  <xsl:value-of select="xsdLocal1:Severity"/>
                </s0:Severity>
                <s0:ContactFullName>
                  <xsl:value-of select="xsdLocal1:Contact"/>
                </s0:ContactFullName>
                <s0:Created>
                  <xsl:value-of select="xsdLocal1:Created"/>
                </s0:Created>
                <s0:Abstract>
                  <xsl:value-of select="xsdLocal1:Abstract"/>
                </s0:Abstract>
                <s0:Age>
                  <xsl:value-of select="xsdLocal1:Age"/>
                </s0:Age>
                <s0:SRType>
                  <xsl:value-of select="xsdLocal1:SRType"/>
                </s0:SRType>
                <s0:Description>
                  <xsl:value-of select="xsdLocal1:Description"/>
                </s0:Description>
                <s0:FrontLineOwner>
                  <xsl:value-of select="xsdLocal1:FrontLineOwner"/>
                </s0:FrontLineOwner>
                <s0:Priority>
                  <xsl:value-of select="xsdLocal1:Priority"/>
                </s0:Priority>
                <s0:Status>
                  <xsl:value-of select="xsdLocal1:Status"/>
                </s0:Status>
                <s0:SRNumber>
                  <xsl:value-of select="xsdLocal1:SRNumber"/>
                </s0:SRNumber>
                <s0:SubStatus>
                  <xsl:value-of select="xsdLocal1:SubStatus"/>
                </s0:SubStatus>
              </s0:SrThinBc>
            </xsl:for-each>
          </s0:SrThinBc>
          <s0:TotalNoOfRecords>
            <xsl:value-of select="/tns:RCRMServiceRequestOutput_Output/xsdLocal1:SrThinBc/xsdLocal1:TotalNoOfRecords"/>
          </s0:TotalNoOfRecords>
          <s0:PageNumber>
            <xsl:value-of select="/tns:RCRMServiceRequestOutput_Output/xsdLocal1:SrThinBc/xsdLocal1:PageNumber"/>
          </s0:PageNumber>
          <s0:AccountSiebelId>
            <xsl:value-of select="/tns:RCRMServiceRequestOutput_Output/xsdLocal1:SrThinBc/xsdLocal1:AccountId"/>
          </s0:AccountSiebelId>
        </s0:rcrmAccountThin>
      </s0:getSRRSResult>
    </s0:getSRRSResponse>
  </xsl:template>
</xsl:stylesheet>
