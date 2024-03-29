<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="StandaloneProductReferenceDataUpdate.xsd"/>
      <rootElement name="payload" namespace=""/>
      <rootElementDatatype name="ProductDefinitionUpdate" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/PRD/CCRMPRD_ProductUpdateAssembler"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://ukcq-eai05:7777/orabpel/ccrmasync/CPFGPRD_ProductUpdateFormatter/EAI.MSG.EXT.130_ProductReferenceDataUpdate.xsd"/>
      <rootElement name="productReferenceDataUpdate" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/external/CEP/ProductManagementServices"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU JAN 22 12:52:05 GMT 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-mt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:gcap-NPT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableProductTypes" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/external/CEP/ProductManagementServices" xmlns:gcap-pt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonProductTypes" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:util="http://www.oracle.com/XSL/Transform/java/com.reuters.eai.util.StringHasher" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/PRD/CCRMPRD_ProductUpdateAssembler" exclude-result-prefixes="xsl xsd ns0 gcap-mt gcap-NPT local gcap-pt gcap-sa bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <local:productReferenceDataUpdate>
      <eaiHeader>
        <gcap-mt:applicationId>
          <xsl:text disable-output-escaping="no">EAI</xsl:text>
        </gcap-mt:applicationId>
        <gcap-mt:transactionId>
          <xsl:value-of select="substring(orcl:generate-guid(),0,30)"/>
        </gcap-mt:transactionId>
        <gcap-mt:messageId>
          <xsl:value-of select="substring(orcl:generate-guid(),0,30)"/>
        </gcap-mt:messageId>
        <gcap-mt:messageHistory>
          <xsl:text disable-output-escaping="no">CRM;EAI</xsl:text>
        </gcap-mt:messageHistory>
        <gcap-mt:tracingId>
          <xsl:value-of select="substring(orcl:generate-guid(),0,30)"/>
        </gcap-mt:tracingId>
        <gcap-mt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </gcap-mt:timeStamp>
        <gcap-mt:instanceId>
          <xsl:value-of select="substring(orcl:generate-guid(),0,30)"/>
        </gcap-mt:instanceId>
        <gcap-mt:timeToLive>
          <xsl:text disable-output-escaping="no">0</xsl:text>
        </gcap-mt:timeToLive>
        <gcap-mt:payloadVersion>
          <xsl:text disable-output-escaping="no">0</xsl:text>
        </gcap-mt:payloadVersion>
      </eaiHeader>
      <productDefinitionUpdate>
        <productID>
          <xsl:value-of select="/payload/productID"/>
        </productID>
        <actionCode>
          <xsl:attribute name="code">
            <xsl:value-of select="/payload/actionCode"/>
          </xsl:attribute>
        </actionCode>
        <productName>
          <xsl:value-of select="/payload/productName"/>
        </productName>
        <productDescription>
          <xsl:value-of select="/payload/productDescription"/>
        </productDescription>
        <definitionVersion>
          <xsl:value-of select="/payload/definitionVersion"/>
        </definitionVersion>
        <productStatus>
          <xsl:value-of select="/payload/productStatus"/>
        </productStatus>
        <freeTrialAllowed>
          <xsl:value-of select="/payload/freeTrialAllowed"/>
        </freeTrialAllowed>
        <productType>
          <xsl:value-of select="/payload/productType"/>
        </productType>
        <productConfigurationList>
          <xsl:for-each select="/payload/productConfiguration">
            <productConfiguration>
              <configurationID>
                <xsl:value-of select="configurationID"/>
              </configurationID>
              <description>
                <xsl:value-of select="description"/>
              </description>
              <globalPLI>
                <xsl:value-of select="globalPLI"/>
              </globalPLI>
              <permissioningSystem>
                <xsl:value-of select="permissioningSystem"/>
              </permissioningSystem>
              <attributeList>
                <xsl:for-each select="attribute">
                  <attribute>
                    <xsl:attribute name="attributeID">
                      <xsl:value-of select="@attributeID"/>
                    </xsl:attribute>
                    <xsl:attribute name="valueID">
                      <xsl:value-of select="@valueID"/>
                    </xsl:attribute>
                  </attribute>
                </xsl:for-each>
              </attributeList>
            </productConfiguration>
          </xsl:for-each>
        </productConfigurationList>
        <addOns>
          <xsl:for-each select="/payload/addOns/addOn">
            <addOn>
              <xsl:attribute name="productID">
                <xsl:value-of select="@productID"/>
              </xsl:attribute>
            </addOn>
          </xsl:for-each>
        </addOns>
        <attributeDefinitionList>
          <xsl:for-each select="/payload/attributeDefinitionList/attributeDefinition">
            <attributeDefinition>
              <attributeID>
                <xsl:value-of select="attributeID"/>
              </attributeID>
              <attributeName>
                <xsl:value-of select="attributeName"/>
              </attributeName>
              <freeTextAllowed>
                <xsl:value-of select="freeTextAllowed"/>
              </freeTextAllowed>
              <isCommerciallyAffecting>
                <xsl:value-of select="isCommerciallyAffecting"/>
              </isCommerciallyAffecting>
              <allowedValueList>
                <xsl:for-each select="allowedValue">
                  <allowedAttributeValue>
                    <xsl:attribute name="valueID">
                      <xsl:value-of select="valueID"/>
                    </xsl:attribute>
                    <xsl:attribute name="valueName">
                      <xsl:value-of select="valueName"/>
                    </xsl:attribute>
                  </allowedAttributeValue>
                </xsl:for-each>
              </allowedValueList>
            </attributeDefinition>
          </xsl:for-each>
        </attributeDefinitionList>
      </productDefinitionUpdate>
    </local:productReferenceDataUpdate>
  </xsl:template>
</xsl:stylesheet>
