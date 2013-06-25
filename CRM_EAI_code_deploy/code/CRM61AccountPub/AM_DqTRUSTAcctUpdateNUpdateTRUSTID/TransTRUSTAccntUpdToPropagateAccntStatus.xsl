<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CCRM.172_PublishAccountRequestResponse.xsd"/>
      <rootElement name="AccountContactPublish" namespace="http://www.siebel.com/xml/RCRM%20Account%20Publish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CCRM.172_PublishAccountRequestResponse.xsd"/>
      <rootElement name="AccountContactPublish" namespace="http://www.siebel.com/xml/RCRM%20Account%20Publish"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE MAR 23 15:46:07 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsdLocal="http://www.siebel.com/xml/RCRM%20Account%20Publish" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" exclude-result-prefixes="xsl xsd xsdLocal xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:AccountContactPublish>
      <xsl:attribute name="MessageType">
        <xsl:value-of select="/xsdLocal:AccountContactPublish/@MessageType"/>
      </xsl:attribute>
      <xsl:attribute name="MessageId">
        <xsl:value-of select="/xsdLocal:AccountContactPublish/@MessageId"/>
      </xsl:attribute>
      <xsdLocal:RcrmAccount-Thin>
        <xsdLocal:RCRMSFDCId>
          <xsl:value-of select="/xsdLocal:AccountContactPublish/xsdLocal:RcrmAccount-Thin/xsdLocal:RCRMSFDCId"/>
        </xsdLocal:RCRMSFDCId>
        <xsdLocal:RCRMNOMCustGroup>
          <xsl:value-of select="/xsdLocal:AccountContactPublish/xsdLocal:RcrmAccount-Thin/xsdLocal:RCRMNOMCustGroup"/>
        </xsdLocal:RCRMNOMCustGroup>
        <xsdLocal:CustomerReferenceNumber>
          <xsl:value-of select="/xsdLocal:AccountContactPublish/xsdLocal:RcrmAccount-Thin/xsdLocal:CustomerReferenceNumber"/>
        </xsdLocal:CustomerReferenceNumber>
        <xsdLocal:Id>
          <xsl:value-of select="/xsdLocal:AccountContactPublish/xsdLocal:RcrmAccount-Thin/xsdLocal:Id"/>
        </xsdLocal:Id>
        <xsdLocal:RCRMErrorMessage>
          <xsl:value-of select="/xsdLocal:AccountContactPublish/xsdLocal:RcrmAccount-Thin/xsdLocal:RCRMErrorMessage"/>
        </xsdLocal:RCRMErrorMessage>
      </xsdLocal:RcrmAccount-Thin>
      <xsdLocal:ActionCode>
        <xsl:value-of select="/xsdLocal:AccountContactPublish/xsdLocal:ActionCode"/>
      </xsdLocal:ActionCode>
      <xsdLocal:Timestamp>
        <xsl:value-of select="/xsdLocal:AccountContactPublish/xsdLocal:Timestamp"/>
      </xsdLocal:Timestamp>
      <xsdLocal:SourceSystem>
        <xsl:value-of select="/xsdLocal:AccountContactPublish/xsdLocal:SourceSystem"/>
      </xsdLocal:SourceSystem>
      <xsdLocal:TargetSystem>
        <xsl:value-of select="/xsdLocal:AccountContactPublish/xsdLocal:TargetSystem"/>
      </xsdLocal:TargetSystem>
    </xsdLocal:AccountContactPublish>
  </xsl:template>
</xsl:stylesheet>