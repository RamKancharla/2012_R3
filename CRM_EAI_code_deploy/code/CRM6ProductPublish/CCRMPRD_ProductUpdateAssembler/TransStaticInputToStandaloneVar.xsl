<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CCRM.264_RCRMCpfgProductPublish.xsd"/>
      <rootElement name="Product" namespace="http://www.siebel.com/xml/Test%20Product"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="StandaloneProductReferenceDataUpdate.xsd"/>
      <rootElement name="payload" namespace=""/>
      <rootElementDatatype name="ProductDefinitionUpdate" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/PRD/CCRMPRD_ProductUpdateAssembler"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [FRI JAN 09 10:18:50 GMT 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsdLocal="http://www.siebel.com/xml/Test%20Product" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/PRD/CCRMPRD_ProductUpdateAssembler" exclude-result-prefixes="xsl xsd xsdLocal ns0 xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <payload>
      <productID>
        <xsl:value-of select="/xsdLocal:Product/xsdLocal:Id"/>
      </productID>
      <actionCode>
        <xsl:text disable-output-escaping="no">EAI.SRV.EXT.0017.ACT001</xsl:text>
      </actionCode>
      <productName>
        <xsl:value-of select="/xsdLocal:Product/xsdLocal:Name"/>
      </productName>
      <productDescription>
        <xsl:value-of select="/xsdLocal:Product/xsdLocal:Description"/>
      </productDescription>
      <definitionVersion>
        <xsl:value-of select="/xsdLocal:Product/xsdLocal:ClassVersion"/>
      </definitionVersion>
      <productStatus>
        <xsl:value-of select="/xsdLocal:Product/xsdLocal:VersionStatus"/>
      </productStatus>
      <freeTrialAllowed>
        <xsl:text disable-output-escaping="no">true</xsl:text>
      </freeTrialAllowed>
      <productType>
        <xsl:value-of select="/xsdLocal:Product/xsdLocal:RCRMProductType"/>
      </productType>
      <productConfiguration>
        <configurationID>
          <xsl:value-of select="position()"/>
        </configurationID>
        <description>
          <xsl:value-of select="/xsdLocal:Product/xsdLocal:Description"/>
        </description>
        <globalPLI>
          <xsl:value-of select="/xsdLocal:Product/xsdLocal:Part"/>
        </globalPLI>
      </productConfiguration>
      <addOns>
        <xsl:for-each select="/xsdLocal:Product/xsdLocal:IssClassVodBuscomp/xsdLocal:CfgIssSubObjects">
          <addOn>
            <xsl:attribute name="productID">
              <xsl:value-of select="xsdLocal:SOId"/>
            </xsl:attribute>
          </addOn>
        </xsl:for-each>
      </addOns>
      <attributeDefinitionList>
        <xsl:for-each select="/xsdLocal:Product/xsdLocal:ProductAttribute">
          <attributeDefinition>
            <attributeID>
              <xsl:value-of select="xsdLocal:AttributeId"/>
            </attributeID>
            <attributeName>
              <xsl:value-of select="xsdLocal:Name2"/>
            </attributeName>
            <freeTextAllowed>
              <xsl:text disable-output-escaping="no">false</xsl:text>
            </freeTextAllowed>
            <isCommerciallyAffecting>
              <xsl:text disable-output-escaping="no">false</xsl:text>
            </isCommerciallyAffecting>
            <xsl:for-each select="xsdLocal:AttributeVodBuscomp">
              <xsl:for-each select="xsdLocal:AttributeValues">
                <allowedValue>
                  <valueName>
                    <xsl:value-of select="xsdLocal:Value"/>
                  </valueName>
                </allowedValue>
              </xsl:for-each>
            </xsl:for-each>
          </attributeDefinition>
        </xsl:for-each>
      </attributeDefinitionList>
    </payload>
  </xsl:template>
</xsl:stylesheet>