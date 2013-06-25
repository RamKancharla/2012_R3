<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.OM.180_ExtendedOrderStatus.xsd"/>
      <rootElement name="orderStatus" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://ukcq-eai05:7777/orabpel/default/TF_OrderDispatcher/EAI.MSG.TF.240_UpdateOrderRequest.xsd"/>
      <rootElement name="tfOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE OCT 14 12:47:17 BST 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl cmt xsd xsdLocal ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:tfOrderRequest>
      <xsdLocal:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:messageHeader>
        <xsdLocal:actionCode>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:messageHeader/xsdLocal:actionCode"/>
        </xsdLocal:actionCode>
        <xsdLocal:version>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:messageHeader/xsdLocal:version"/>
        </xsdLocal:version>
        <xsdLocal:userId>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:messageHeader/xsdLocal:userId"/>
        </xsdLocal:userId>
      </xsdLocal:messageHeader>
      <xsdLocal:orderHeader>
        <xsdLocal:OrderNumber>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:orderHeader/xsdLocal:CRMOrderNumber"/>
        </xsdLocal:OrderNumber>
      </xsdLocal:orderHeader>
      <xsl:for-each select="/xsdLocal:orderStatus/xsdLocal:orderLineItem">
        <xsdLocal:orderLineItem>
          <xsdLocal:CRMOLIId>
            <xsl:value-of select="xsdLocal:CRMOLIId"/>
          </xsdLocal:CRMOLIId>
          <xsdLocal:rootItemId>
            <xsl:value-of select="xsdLocal:rootItemId"/>
          </xsdLocal:rootItemId>
          <xsdLocal:actionCode>
            <xsl:value-of select="xsdLocal:actionCode"/>
          </xsdLocal:actionCode>
          <xsdLocal:businessCase>
            <xsl:value-of select="xsdLocal:businessCase"/>
          </xsdLocal:businessCase>
          <xsdLocal:userId>
            <xsl:value-of select="xsdLocal:userId"/>
          </xsdLocal:userId>
          <xsdLocal:QUID>
            <xsl:value-of select="xsdLocal:QUID"/>
          </xsdLocal:QUID>
          <xsdLocal:assetIntegrationId>
            <xsl:value-of select="xsdLocal:assetIntegrationId"/>
          </xsdLocal:assetIntegrationId>
          <xsdLocal:orderLineStatus>
            <xsl:value-of select="xsdLocal:billingStatusToBeSent"/>
          </xsdLocal:orderLineStatus>
          <xsdLocal:permissioningStatus>
            <xsl:value-of select="xsdLocal:orderPermissionStatusToBeSent"/>
          </xsdLocal:permissioningStatus>
          <xsdLocal:ILA>
            <xsl:value-of select="xsdLocal:ILA"/>
          </xsdLocal:ILA>
          <xsdLocal:CSOrderNumber>
            <xsl:value-of select="../xsdLocal:orderHeader/xsdLocal:orderNumber"/>
          </xsdLocal:CSOrderNumber>
          <xsdLocal:lastUpdateDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </xsdLocal:lastUpdateDate>
        </xsdLocal:orderLineItem>
      </xsl:for-each>
      <xsdLocal:updateType>
        <xsl:text disable-output-escaping="no">REDUCED</xsl:text>
      </xsdLocal:updateType>
    </xsdLocal:tfOrderRequest>
  </xsl:template>
</xsl:stylesheet>
