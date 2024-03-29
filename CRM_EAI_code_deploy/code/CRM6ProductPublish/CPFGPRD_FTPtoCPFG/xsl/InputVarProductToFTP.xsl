<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="../EAI.MSG.EXT.130_ProductReferenceDataUpdate.xsd"/>
      <rootElement name="productReferenceDataUpdate" namespace="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/ProductManagementServices"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="../EAI.MSG.EXT.130_ProductReferenceDataUpdate.xsd"/>
      <rootElement name="productReferenceDataUpdate" namespace="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/ProductManagementServices"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [TUE FEB 21 18:31:40 GMT+05:30 2012]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:gcap-pt="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/CommonProductTypes"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:gcap-mt="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/CommonMessageTypes"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:gcap-sa="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/SchemaAnnotations"
                xmlns:local="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/ProductManagementServices"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl gcap-pt gcap-mt xsd gcap-sa local bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <local:productReferenceDataUpdate>
      <eaiHeader>
        <gcap-mt:applicationId>
          <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:applicationId"/>
        </gcap-mt:applicationId>
        <gcap-mt:transactionId>
          <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:transactionId"/>
        </gcap-mt:transactionId>
        <gcap-mt:messageId>
          <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:messageId"/>
        </gcap-mt:messageId>
        <gcap-mt:messageHistory>
          <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:messageHistory"/>
        </gcap-mt:messageHistory>
        <gcap-mt:tracingId>
          <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:tracingId"/>
        </gcap-mt:tracingId>
        <gcap-mt:timeStamp>
          <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:timeStamp"/>
        </gcap-mt:timeStamp>
        <gcap-mt:instanceId>
          <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:instanceId"/>
        </gcap-mt:instanceId>
        <gcap-mt:timeToLive>
          <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:timeToLive"/>
        </gcap-mt:timeToLive>
        <gcap-mt:payloadVersion>
          <xsl:value-of select="/local:productReferenceDataUpdate/eaiHeader/gcap-mt:payloadVersion"/>
        </gcap-mt:payloadVersion>
      </eaiHeader>
      <productDefinitionUpdate>
        <productID>
          <xsl:value-of select="/local:productReferenceDataUpdate/productDefinitionUpdate/productID"/>
        </productID>
        <actionCode>
          <xsl:attribute name="code">
            <xsl:value-of select="/local:productReferenceDataUpdate/productDefinitionUpdate/actionCode/@code"/>
          </xsl:attribute>
          <xsl:value-of select="/local:productReferenceDataUpdate/productDefinitionUpdate/actionCode"/>
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
        <productConfigurationList>
          <xsl:for-each select="/local:productReferenceDataUpdate/productDefinitionUpdate/productConfigurationList/productConfiguration">
            <productConfiguration>
              <configurationID>
                <xsl:value-of select="configurationID"/>
              </configurationID>
              <description>
                <xsl:value-of select="description"/>
              </description>
              <GlobalPLI>
                <xsl:value-of select="GlobalPLI"/>
              </GlobalPLI>
              <attributeList>
                <xsl:for-each select="attributeList/attribute">
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
              <allowedValueList>
                <xsl:for-each select="allowedValueList/allowedAttributeValue">
                  <allowedAttributeValue>
                    <xsl:attribute name="valueID">
                      <xsl:value-of select="@valueID"/>
                    </xsl:attribute>
                    <xsl:attribute name="valueName">
                      <xsl:value-of select="@valueName"/>
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
