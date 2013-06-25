<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.EXT.130_ProductReferenceDataUpdate.xsd"/>
      <rootElement name="productReferenceDataUpdate" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/external/CEP/ProductManagementServices"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="StandaloneProductReferenceDataUpdate.xsd"/>
      <rootElement name="productDefinitionUpdate" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/CPFG/PRD/CPFGPRD_ProductUpdateFormatter"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED MAR 03 18:57:02 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-mt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/CPFG/PRD/CPFGPRD_ProductUpdateFormatter" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:gcap-NPT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableProductTypes" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/external/CEP/ProductManagementServices" xmlns:gcap-pt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonProductTypes" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:util="http://www.oracle.com/XSL/Transform/java/com.reuters.eai.util.StringHasher" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl gcap-mt gcap-NPT local gcap-pt xsd gcap-sa ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:productDefinitionUpdate>
      <applicationId>
        <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:applicationId"/>
      </applicationId>
      <transactionId>
        <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:transactionId"/>
      </transactionId>
      <messageId>
        <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:messageId"/>
      </messageId>
      <messageHistory>
        <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:messageHistory"/>
      </messageHistory>
      <tracingId>
        <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:tracingId"/>
      </tracingId>
      <timeStamp>
        <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:timeStamp"/>
      </timeStamp>
      <instanceId>
        <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:instanceId"/>
      </instanceId>
      <timeToLive>
        <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:timeToLive"/>
      </timeToLive>
      <payloadVersion>
        <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:payloadVersion"/>
      </payloadVersion>
      <productID>
        <xsl:value-of select="/local:productReferenceDataUpdate/productDefinitionUpdate/productID"/>
      </productID>
      <actionCode>
        <xsl:value-of select="/local:productReferenceDataUpdate/productDefinitionUpdate/actionCode/@code"/>
      </actionCode>
      <productName>
        <xsl:value-of select="/local:productReferenceDataUpdate/productDefinitionUpdate/productName"/>
      </productName>
      <productDescription>
        <xsl:value-of select="/local:productReferenceDataUpdate/productDefinitionUpdate/productDescription"/>
      </productDescription>
      <definitionVersion>
        <xsl:value-of select="/local:productReferenceDataUpdate/productDefinitionUpdate/definitionVersion"/>
      </definitionVersion>
      <productStatus>
        <xsl:value-of select="/local:productReferenceDataUpdate/productDefinitionUpdate/productStatus"/>
      </productStatus>
      <freeTrialAllowed>
        <xsl:value-of select="/local:productReferenceDataUpdate/productDefinitionUpdate/freeTrialAllowed"/>
      </freeTrialAllowed>
      <productType>
        <xsl:value-of select="/local:productReferenceDataUpdate/productDefinitionUpdate/productType"/>
      </productType>
      <xsl:for-each select="/local:productReferenceDataUpdate/productDefinitionUpdate/productConfigurationList/productConfiguration">
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
          <xsl:for-each select="attributeList/attribute">
            <attribute>
              <xsl:attribute name="attributeID">
                <xsl:value-of select="@attributeID"/>
              </xsl:attribute>
              <xsl:attribute name="valueID">
                <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMtoAAAProductAttributeValueIdMap.dvm&quot;,&quot;CRM_PRODUCTID_ATTRIBUTEID_VALUEID&quot;,concat(../../../../productID,&quot;_&quot;,@attributeID,&quot;_&quot;,substring(util:hashString(string(@valueID)),1,15)),&quot;AAA_VALUEID&quot;,substring(util:hashString(string(@valueID)),1,15))"/>
              </xsl:attribute>
            </attribute>
          </xsl:for-each>
        </productConfiguration>
      </xsl:for-each>
      <addOns>
        <xsl:for-each select="/local:productReferenceDataUpdate/productDefinitionUpdate/addOns/addOn">
          <addOn>
            <xsl:attribute name="productID">
              <xsl:value-of select="@productID"/>
            </xsl:attribute>
          </addOn>
        </xsl:for-each>
      </addOns>
      <attributeDefinitionList>
        <xsl:for-each select="/local:productReferenceDataUpdate/productDefinitionUpdate/attributeDefinitionList/attributeDefinition">
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
            <xsl:for-each select="allowedValueList/allowedAttributeValue">
              <allowedValue>
                <valueID>
                  <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMtoAAAProductAttributeValueIdMap.dvm&quot;,&quot;CRM_PRODUCTID_ATTRIBUTEID_VALUEID&quot;,concat(../../../../productID,&quot;_&quot;,../../attributeID,&quot;_&quot;,substring(util:hashString(string(@valueName)),1,15)),&quot;AAA_VALUEID&quot;,substring(util:hashString(string(@valueName)),1,15))"/>
                </valueID>
                <valueName>
                  <xsl:value-of select="@valueName"/>
                </valueName>
              </allowedValue>
            </xsl:for-each>
          </attributeDefinition>
        </xsl:for-each>
      </attributeDefinitionList>
    </ns0:productDefinitionUpdate>
  </xsl:template>
</xsl:stylesheet>