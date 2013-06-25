<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="EAI.SRV.EXT.SFDC.051_SendOpportunityToSFDCService.wsdl"/>
      <rootElement name="publishOpportunityResponse" namespace="http://soap.sforce.com/schemas/class/OpportunityManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="EAI.SRV.EXT.SFDC.051_SendOpportunityToSFDCService.wsdl"/>
      <rootElement name="publishOpportunityResponse" namespace="http://soap.sforce.com/schemas/class/OpportunityManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED APR 13 16:32:15 IST 2011]. -->
?>
<xsl:stylesheet version="1.0" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:tns="http://soap.sforce.com/schemas/class/OpportunityManagement" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" exclude-result-prefixes="xsl tns xsd soap xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <tns:publishOpportunityResponse>
      <tns:result>
        <tns:Comments>
          <xsl:value-of select="/tns:publishOpportunityResponse/tns:result/tns:Comments"/>
        </tns:Comments>
        <tns:SFDCId>
          <xsl:value-of select="xref:populateXRefRow(&quot;oramds:/apps/EAIMetaData/Xref/CRM_SFDC_OPPTYXREF.xref&quot;,&quot;SIEBELOPPTYID&quot;,/tns:publishOpportunityResponse/tns:result/tns:SiebelId,&quot;SFDCOPPTYID&quot;,/tns:publishOpportunityResponse/tns:result/tns:SFDCId,&quot;ADD&quot;)"/>
        </tns:SFDCId>
        <tns:SFDCOpptyNumber>
          <xsl:value-of select="/tns:publishOpportunityResponse/tns:result/tns:SFDCOpptyNumber"/>
        </tns:SFDCOpptyNumber>
        <tns:SiebelId>
          <xsl:value-of select="/tns:publishOpportunityResponse/tns:result/tns:SiebelId"/>
        </tns:SiebelId>
        <tns:StatusCode>
          <xsl:value-of select="/tns:publishOpportunityResponse/tns:result/tns:StatusCode"/>
        </tns:StatusCode>
        <tns:StatusDescription>
          <xsl:value-of select="/tns:publishOpportunityResponse/tns:result/tns:StatusDescription"/>
        </tns:StatusDescription>
      </tns:result>
    </tns:publishOpportunityResponse>
  </xsl:template>
</xsl:stylesheet>
