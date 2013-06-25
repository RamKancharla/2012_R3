<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.OM.225_OrderStatus.xsd"/>
      <rootElement name="crmOrderStatus" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement/CCRM"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.OM.225_ExtendedOrderStatus.xsd"/>
      <rootElement name="ExtendedcrmOrderStatus" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement/CCRM"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU OCT 14 16:46:37 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:xsdLocal="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement/CCRM" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl xsdLocal cmt xsd ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:ExtendedcrmOrderStatus>
      <xsdLocal:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:messageHeader>
        <xsdLocal:actionCode>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:messageHeader/xsdLocal:actionCode"/>
        </xsdLocal:actionCode>
        <xsdLocal:version>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:messageHeader/xsdLocal:version"/>
        </xsdLocal:version>
        <xsdLocal:userId>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:messageHeader/xsdLocal:userId"/>
        </xsdLocal:userId>
      </xsdLocal:messageHeader>
      <xsdLocal:orderHeader>
        <xsdLocal:response>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:response"/>
        </xsdLocal:response>
        <xsdLocal:requestStatus>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:requestStatus"/>
        </xsdLocal:requestStatus>
        <xsdLocal:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:CRMOrderNumber"/>
        </xsdLocal:CRMOrderNumber>
        <xsdLocal:orderNumber>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:orderNumber"/>
        </xsdLocal:orderNumber>
        <xsdLocal:entrepriseCode>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:entrepriseCode"/>
        </xsdLocal:entrepriseCode>
        <xsdLocal:technicalOrderNo>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:technicalOrderNo"/>
        </xsdLocal:technicalOrderNo>
        <xsdLocal:technicalFulfilmentStatusReason>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:technicalFulfilmentStatusReason"/>
        </xsdLocal:technicalFulfilmentStatusReason>
        <xsdLocal:technicalFulfilmentStatus>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:technicalFulfilmentStatus"/>
        </xsdLocal:technicalFulfilmentStatus>
        <xsdLocal:firstName>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:firstName"/>
        </xsdLocal:firstName>
        <xsdLocal:lastname>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:lastname"/>
        </xsdLocal:lastname>
        <xsdLocal:email>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:email"/>
        </xsdLocal:email>
        <xsdLocal:phone>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:phone"/>
        </xsdLocal:phone>
        <xsdLocal:plannedInstallationDate>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:plannedInstallationDate"/>
        </xsdLocal:plannedInstallationDate>
        <xsdLocal:actualInstallationDate>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:actualInstallationDate"/>
        </xsdLocal:actualInstallationDate>
      </xsdLocal:orderHeader>
      <xsdLocal:index>
        <xsl:value-of select="string(&quot;&quot;)"/>
      </xsdLocal:index>
      <xsl:for-each select="/xsdLocal:crmOrderStatus/xsdLocal:orderLineItem">
        <xsdLocal:orderLineItem>
          <xsdLocal:CRMOLIId>
            <xsl:value-of select="xsdLocal:CRMOLIId"/>
          </xsdLocal:CRMOLIId>
          <xsdLocal:rootItemId>
            <xsl:value-of select="xsdLocal:rootItemId"/>
          </xsdLocal:rootItemId>
          <xsdLocal:itemNumber>
            <xsl:value-of select="xsdLocal:itemNumber"/>
          </xsdLocal:itemNumber>
          <xsdLocal:actionCode>
            <xsl:value-of select="xsdLocal:actionCode"/>
          </xsdLocal:actionCode>
          <xsdLocal:SAPItemNumber>
            <xsl:value-of select="xsdLocal:SAPItemNumber"/>
          </xsdLocal:SAPItemNumber>
          <xsdLocal:SAPOrderNumber>
            <xsl:value-of select="xsdLocal:SAPOrderNumber"/>
          </xsdLocal:SAPOrderNumber>
          <xsdLocal:ILA>
            <xsl:value-of select="xsdLocal:ILA"/>
          </xsdLocal:ILA>
          <xsdLocal:userNumber>
            <xsl:value-of select="xsdLocal:userNumber"/>
          </xsdLocal:userNumber>
          <xsdLocal:userId>
            <xsl:value-of select="xsdLocal:userId"/>
          </xsdLocal:userId>
          <xsdLocal:userIDtype>
            <xsl:value-of select="xsdLocal:userIDtype"/>
          </xsdLocal:userIDtype>
          <xsdLocal:QUID>
            <xsl:value-of select="xsdLocal:QUID"/>
          </xsdLocal:QUID>
          <xsdLocal:orderLinestatus>
            <xsl:value-of select="xsdLocal:orderLinestatus"/>
          </xsdLocal:orderLinestatus>
          <xsdLocal:orderPermissionStatus>
            <xsl:value-of select="xsdLocal:orderPermissionStatus"/>
          </xsdLocal:orderPermissionStatus>
          <xsdLocal:orderLineStatusReasonCode>
            <xsl:value-of select="xsdLocal:orderLineStatusReasonCode"/>
          </xsdLocal:orderLineStatusReasonCode>
          <xsdLocal:orderLinePermissioningStatusReasonCode>
            <xsl:value-of select="xsdLocal:orderLinePermissioningStatusReasonCode"/>
          </xsdLocal:orderLinePermissioningStatusReasonCode>
          <xsdLocal:assetIntegrationId>
            <xsl:value-of select="xsdLocal:assetIntegrationId"/>
          </xsdLocal:assetIntegrationId>
          <xsdLocal:SID>
            <xsl:value-of select="xsdLocal:SID"/>
          </xsdLocal:SID>
          <xsdLocal:ServerId>
            <xsl:value-of select="xsdLocal:ServerId"/>
          </xsdLocal:ServerId>
        </xsdLocal:orderLineItem>
      </xsl:for-each>
    </xsdLocal:ExtendedcrmOrderStatus>
  </xsl:template>
</xsl:stylesheet>