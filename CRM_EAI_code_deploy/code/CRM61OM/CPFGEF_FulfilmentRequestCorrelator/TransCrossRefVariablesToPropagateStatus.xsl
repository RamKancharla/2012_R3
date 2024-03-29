<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="CrossRefService.wsdl"/>
      <rootElement name="getOrderDetailsResponse" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/OrderFulfilmentCrossRefService"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://10.136.164.216:8000/soa-infra/services/CRMASYNC/CCRMOM_PropagateOrderStatus/EAI.MSG.OM.225_OrderStatus.xsd"/>
      <rootElement name="crmOrderStatus" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement/CCRM"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [THU MAR 15 18:20:32 GMT+05:30 2012]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap11-enc="http://schemas.xmlsoap.org/soap/encoding/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsdLocal="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement/CCRM"
                xmlns:tns="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/OrderFulfilmentCrossRefService"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl xsi soap12 soap11-enc soap mime wsdl tns xsd ns0 cmt xsdLocal xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
   <xsdLocal:crmOrderStatus>
      <xsdLocal:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:eaiHeader/tns:payloadVersion"/>
        </cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:orderHeader>
        <xsdLocal:CRMOrderNumber>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:crmOrder/tns:orderHeader/tns:CRMOrderNumber"/>
        </xsdLocal:CRMOrderNumber>
        <xsdLocal:orderNumber>
          <xsl:value-of select="/tns:getOrderDetailsResponse/tns:crmOrder/tns:orderHeader/tns:CRMOrderNumber"/>
        </xsdLocal:orderNumber>
      </xsdLocal:orderHeader>
      <xsl:for-each select="/tns:getOrderDetailsResponse/tns:crmOrder/tns:orderLineItem">
        <xsdLocal:orderLineItem>
          <xsdLocal:CRMOLIId>
            <xsl:value-of select="tns:CRMOLIId"/>
          </xsdLocal:CRMOLIId>
          <xsdLocal:rootItemId>
            <xsl:value-of select="tns:rootItemId"/>
          </xsdLocal:rootItemId>
          <xsdLocal:itemNumber>
            <xsl:value-of select="tns:itemNumber"/>
          </xsdLocal:itemNumber>
          <xsdLocal:actionCode>
            <xsl:value-of select="tns:actionCode"/>
          </xsdLocal:actionCode>
          <xsdLocal:SAPItemNumber>
            <xsl:value-of select="tns:itemNumber"/>
          </xsdLocal:SAPItemNumber>
          <xsdLocal:userNumber>
            <xsl:value-of select="tns:userNumber"/>
          </xsdLocal:userNumber>
          <xsdLocal:userId>
            <xsl:value-of select="tns:userID"/>
          </xsdLocal:userId>
          <xsdLocal:userIDtype>
            <xsl:value-of select="tns:userIDtype"/>
          </xsdLocal:userIDtype>
          <xsdLocal:QUID>
            <xsl:value-of select="tns:QUID"/>
          </xsdLocal:QUID>
          <xsdLocal:orderLinestatus>
            <xsl:value-of select="tns:orderLineStatus"/>
          </xsdLocal:orderLinestatus>
          <xsdLocal:orderLineStatusReasonCode>
            <xsl:value-of select="tns:orderLineStatus"/>
          </xsdLocal:orderLineStatusReasonCode>
          <xsdLocal:orderLinePermissioningStatusReasonCode>
            <xsl:text disable-output-escaping="no">'Error'</xsl:text>
          </xsdLocal:orderLinePermissioningStatusReasonCode>
          <xsdLocal:assetIntegrationId>
            <xsl:value-of select="tns:assetIntegrationId"/>
          </xsdLocal:assetIntegrationId>
        </xsdLocal:orderLineItem>
      </xsl:for-each>
    </xsdLocal:crmOrderStatus>
  </xsl:template>
</xsl:stylesheet>
