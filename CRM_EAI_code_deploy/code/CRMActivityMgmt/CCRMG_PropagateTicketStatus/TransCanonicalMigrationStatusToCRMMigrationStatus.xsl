<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="../../../../../../Documents%20and%20Settings/Surya.Gannavarapu/Desktop/TeamTrack/CCRMG_PropagateTicketStatus/bpel/EAI.MSG.CCRM.MG.273_MigrationStatus.xsd"/>
      <rootElement name="crmMigrationStatus" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/CCRMMG/XtraMigrationStatus"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../../../../../../Documents%20and%20Settings/Surya.Gannavarapu/Desktop/TeamTrack/CCRMG_PropagateTicketStatus/bpel/EAI.SRV.CCRM.058_PropagateMigrationStatusService.wsdl"/>
      <rootElement name="InvokeInbound_Input" namespace="http://www.reuters.com/ns/2009/26/03/GCAP/RCRM"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU APR 02 23:55:44 BST 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/CCRMMG/XtraMigrationStatus" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://www.reuters.com/ns/2009/26/03/GCAP/RCRM" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:xsdLocal1="http://www.siebel.com/xml/RCRMTeamTrack" exclude-result-prefixes="xsl cmt xsd xsdLocal gcap-sa soap soapenc tns xsdLocal1 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <tns:InvokeInbound_Input>
      <xsdLocal1:RCRMTeamTrack>
        <xsdLocal1:Timestamp>
          <xsl:value-of select="/xsdLocal:crmMigrationStatus/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </xsdLocal1:Timestamp>
        <xsdLocal1:RCRMAction>
          <xsdLocal1:UUID>
            <xsl:value-of select="/xsdLocal:crmMigrationStatus/xsdLocal:UUID"/>
          </xsdLocal1:UUID>
          <xsdLocal1:Status>
            <xsl:value-of select="/xsdLocal:crmMigrationStatus/xsdLocal:Status"/>
          </xsdLocal1:Status>
          <xsdLocal1:ProductName>
            <xsl:value-of select="/xsdLocal:crmMigrationStatus/xsdLocal:ProductName"/>
          </xsdLocal1:ProductName>
          <xsdLocal1:Id>
            <xsl:value-of select="/xsdLocal:crmMigrationStatus/xsdLocal:CRMActivityID"/>
          </xsdLocal1:Id>
        </xsdLocal1:RCRMAction>
      </xsdLocal1:RCRMTeamTrack>
      <tns:Error_spcCode>
        <xsl:value-of select="/xsdLocal:crmMigrationStatus/xsdLocal:ErrorCode"/>
      </tns:Error_spcCode>
      <tns:Error_spcMessage>
        <xsl:value-of select="/xsdLocal:crmMigrationStatus/xsdLocal:ErrorMessage"/>
      </tns:Error_spcMessage>
    </tns:InvokeInbound_Input>
  </xsl:template>
</xsl:stylesheet>
