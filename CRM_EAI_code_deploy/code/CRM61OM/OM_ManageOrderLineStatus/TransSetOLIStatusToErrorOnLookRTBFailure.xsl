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
      <schema location="EAI.MSG.OM.180_ExtendedOrderStatus.xsd"/>
      <rootElement name="orderStatus" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED MAR 17 23:37:41 GMT 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl cmt xsd xsdLocal ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:orderStatus>
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
      <xsdLocal:logicalCountry>
        <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:logicalCountry"/>
      </xsdLocal:logicalCountry>
      <xsdLocal:orderHeader>
        <xsdLocal:response>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:orderHeader/xsdLocal:response"/>
        </xsdLocal:response>
        <xsdLocal:requestStatus>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:orderHeader/xsdLocal:requestStatus"/>
        </xsdLocal:requestStatus>
        <xsdLocal:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:orderHeader/xsdLocal:CRMOrderNumber"/>
        </xsdLocal:CRMOrderNumber>
        <xsdLocal:orderNumber>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:orderHeader/xsdLocal:orderNumber"/>
        </xsdLocal:orderNumber>
        <xsdLocal:entrepriseCode>
          <xsl:value-of select="/xsdLocal:orderStatus/xsdLocal:orderHeader/xsdLocal:entrepriseCode"/>
        </xsdLocal:entrepriseCode>
      </xsdLocal:orderHeader>
      <xsl:for-each select="/xsdLocal:orderStatus/xsdLocal:orderLineItem">
        <xsdLocal:orderLineItem>
          <xsdLocal:CRMOLIId>
            <xsl:value-of select="xsdLocal:CRMOLIId"/>
          </xsdLocal:CRMOLIId>
          <xsdLocal:businessCase>
            <xsl:value-of select="xsdLocal:businessCase"/>
          </xsdLocal:businessCase>
          <xsdLocal:actionCode>
            <xsl:value-of select="xsdLocal:actionCode"/>
          </xsdLocal:actionCode>
          <xsdLocal:rootItemId>
            <xsl:value-of select="xsdLocal:rootItemId"/>
          </xsdLocal:rootItemId>
          <xsdLocal:itemNumber>
            <xsl:value-of select="xsdLocal:itemNumber"/>
          </xsdLocal:itemNumber>
          <xsdLocal:ILA>
            <xsl:value-of select="xsdLocal:ILA"/>
          </xsdLocal:ILA>
          <xsdLocal:userNumber>
            <xsl:value-of select="xsdLocal:userNumber"/>
          </xsdLocal:userNumber>
          <xsdLocal:userId>
            <xsl:value-of select="xsdLocal:userId"/>
          </xsdLocal:userId>
          <xsdLocal:userIdType>
            <xsl:value-of select="xsdLocal:userIdType"/>
          </xsdLocal:userIdType>
          <xsdLocal:QUID>
            <xsl:value-of select="xsdLocal:QUID"/>
          </xsdLocal:QUID>
          <xsdLocal:orderLinestatus>
            <xsl:value-of select="xsdLocal:orderLinestatus"/>
          </xsdLocal:orderLinestatus>
          <xsdLocal:orderPermissionStatus>
            <xsl:value-of select="xsdLocal:orderPermissionStatus"/>
          </xsdLocal:orderPermissionStatus>
          <xsdLocal:requestStatus>
            <xsl:value-of select="xsdLocal:requestStatus"/>
          </xsdLocal:requestStatus>
          <xsdLocal:assetIntegrationId>
            <xsl:value-of select="xsdLocal:assetIntegrationId"/>
          </xsdLocal:assetIntegrationId>
          <xsdLocal:billingIntegrationFlag>
            <xsl:value-of select="xsdLocal:billingIntegrationFlag"/>
          </xsdLocal:billingIntegrationFlag>
          <xsdLocal:permissioningIntegrationFlag>
            <xsl:value-of select="xsdLocal:permissioningIntegrationFlag"/>
          </xsdLocal:permissioningIntegrationFlag>
          <xsdLocal:permissioningSystem>
            <xsl:value-of select="xsdLocal:permissioningSystem"/>
          </xsdLocal:permissioningSystem>
          <xsdLocal:manualPermissioningRequired>
            <xsl:value-of select="xsdLocal:manualPermissioningRequired"/>
          </xsdLocal:manualPermissioningRequired>
          <xsdLocal:STB>
            <xsl:value-of select="xsdLocal:STB"/>
          </xsdLocal:STB>
          <xsdLocal:freeTrailFlag>
            <xsl:value-of select="xsdLocal:freeTrailFlag"/>
          </xsdLocal:freeTrailFlag>
          <xsdLocal:manualPermissioningComplete>
            <xsl:value-of select="xsdLocal:manualPermissioningComplete"/>
          </xsdLocal:manualPermissioningComplete>
          <xsdLocal:autoPermissioningComplete>
            <xsl:value-of select="xsdLocal:autoPermissioningComplete"/>
          </xsdLocal:autoPermissioningComplete>
          <xsdLocal:nextAction1>
            <xsl:value-of select="xsdLocal:nextAction1"/>
          </xsdLocal:nextAction1>
          <xsdLocal:nextAction2>
            <xsl:value-of select="xsdLocal:nextAction2"/>
          </xsdLocal:nextAction2>
          <xsdLocal:billingStatusToBeSent>
            <xsl:value-of select="string(&quot;Error&quot;)"/>
          </xsdLocal:billingStatusToBeSent>
          <xsdLocal:orderPermissionStatusToBeSent>
            <xsl:value-of select="xsdLocal:orderPermissionStatusToBeSent"/>
          </xsdLocal:orderPermissionStatusToBeSent>
          <xsdLocal:SID>
            <xsl:value-of select="xsdLocal:SID"/>
          </xsdLocal:SID>
          <xsdLocal:billingPlatform>
            <xsl:value-of select="xsdLocal:billingPlatform"/>
          </xsdLocal:billingPlatform>
          <xsdLocal:field1>
            <xsl:value-of select="xsdLocal:field1"/>
          </xsdLocal:field1>
          <xsdLocal:field2>
            <xsl:value-of select="xsdLocal:field2"/>
          </xsdLocal:field2>
          <xsdLocal:field3>
            <xsl:value-of select="xsdLocal:field3"/>
          </xsdLocal:field3>
          <xsdLocal:permBillFlag>
            <xsl:value-of select="xsdLocal:permBillFlag"/>
          </xsdLocal:permBillFlag>
        </xsdLocal:orderLineItem>
      </xsl:for-each>
    </xsdLocal:orderStatus>
  </xsl:template>
</xsl:stylesheet>
