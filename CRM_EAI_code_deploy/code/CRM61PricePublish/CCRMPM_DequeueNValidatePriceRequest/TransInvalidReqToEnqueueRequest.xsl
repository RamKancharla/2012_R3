<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.EXT.CCRM.PM.223_PriceUpdateRequest.xsd"/>
      <rootElement name="PricePublish" namespace="http://www.siebel.com/xml/Price%20List"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.EXT.CCRM.PM.223_PriceUpdateRequest.xsd"/>
      <rootElement name="PricePublish" namespace="http://www.siebel.com/xml/Price%20List"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [FRI JUL 02 12:40:56 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsdLocal="http://www.siebel.com/xml/Price%20List" exclude-result-prefixes="xsl xsd xsdLocal xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:PricePublish>
      <xsl:attribute name="MessageId">
        <xsl:value-of select="/xsdLocal:PricePublish/@MessageId"/>
      </xsl:attribute>
      <xsl:attribute name="IntObjectName">
        <xsl:value-of select="/xsdLocal:PricePublish/@IntObjectName"/>
      </xsl:attribute>
      <xsl:attribute name="IntObjectFormat">
        <xsl:value-of select="/xsdLocal:PricePublish/@IntObjectFormat"/>
      </xsl:attribute>
      <xsdLocal:PriceList>
        <xsdLocal:Id>
          <xsl:value-of select="/xsdLocal:PricePublish/xsdLocal:PriceList/xsdLocal:Id"/>
        </xsdLocal:Id>
        <xsdLocal:RCRMStatus>
          <xsl:value-of select="string(&quot;Error&quot;)"/>
        </xsdLocal:RCRMStatus>
        <xsl:for-each select="/xsdLocal:PricePublish/xsdLocal:PriceList/xsdLocal:PriceListItem">
          <xsdLocal:PriceListItem>
            <xsdLocal:Id>
              <xsl:value-of select="xsdLocal:Id"/>
            </xsdLocal:Id>
          </xsdLocal:PriceListItem>
        </xsl:for-each>
      </xsdLocal:PriceList>
      <xsdLocal:ActionCode>
        <xsl:value-of select="/xsdLocal:PricePublish/xsdLocal:ActionCode"/>
      </xsdLocal:ActionCode>
      <xsdLocal:Timestamp>
        <xsl:value-of select="xp20:current-dateTime()"/>
      </xsdLocal:Timestamp>
      <xsdLocal:SourceSystem>
        <xsl:value-of select="/xsdLocal:PricePublish/xsdLocal:SourceSystem"/>
      </xsdLocal:SourceSystem>
      <xsdLocal:TargetSystem>
        <xsl:value-of select="/xsdLocal:PricePublish/xsdLocal:TargetSystem"/>
      </xsdLocal:TargetSystem>
    </xsdLocal:PricePublish>
  </xsl:template>
</xsl:stylesheet>
