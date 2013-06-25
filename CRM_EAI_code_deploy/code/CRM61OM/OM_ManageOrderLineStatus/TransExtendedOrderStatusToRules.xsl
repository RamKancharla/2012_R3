<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.OM.180_ExtendedOrderStatus.xsd"/>
      <rootElement name="orderStatus" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="OrderLineStatusDictionary_DecisionServiceRef.wsdl"/>
      <rootElement name="callFunctionStateless" namespace="http://xmlns.oracle.com/OrderLineStatusDictionary141008/OrderLineStatusDictionary141008_DecisionService_1"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [THU AUG 04 18:41:19 IST 2011]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:java="http://schemas.xmlsoap.org/wsdl/java/"
                xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"
                xmlns:bpelpm="http://xmlns.oracle.com/bpel"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:format="http://schemas.xmlsoap.org/wsdl/formatbinding/"
                xmlns:tns="http://xmlns.oracle.com/OrderLineStatusDictionary141008/OrderLineStatusDictionary141008_DecisionService_1"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns0="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement/rules"
                xmlns:rules="http://xmlns.oracle.com/bpel/rules"
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
                xmlns:ns1="http://www.w3.org/1999/XMLSchema-instance"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                exclude-result-prefixes="xsi xsl ns2 xsdLocal cmt xsd java bpelpm soap12 format tns plnk soap wsdl ns0 rules xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <tns:callFunctionStateless>
      <tns:parameterList>
        <ns0:orderLineRepository>
         <xsl:for-each select="/xsdLocal:orderStatus/xsdLocal:orderLineItem">
        <ns0:OrderLineStatusFacts>
          <ns0:messageHeaderActionCode>
            <xsl:value-of select="../xsdLocal:messageHeader/xsdLocal:actionCode"/>
          </ns0:messageHeaderActionCode>
          <ns0:CRMOLIId>
            <xsl:value-of select="xsdLocal:CRMOLIId"/>
          </ns0:CRMOLIId>
          <ns0:businessCase>
            <xsl:value-of select="xsdLocal:businessCase"/>
          </ns0:businessCase>
          <ns0:actionCode>
            <xsl:value-of select="xsdLocal:actionCode"/>
          </ns0:actionCode>
          <ns0:rootItemId>
            <xsl:value-of select="xsdLocal:rootItemId"/>
          </ns0:rootItemId>
          <ns0:itemNumber>
            <xsl:value-of select="xsdLocal:itemNumber"/>
          </ns0:itemNumber>
          <ns0:ILA>
            <xsl:value-of select="xsdLocal:ILA"/>
          </ns0:ILA>
          <ns0:userNumber>
            <xsl:value-of select="xsdLocal:userNumber"/>
          </ns0:userNumber>
          <ns0:userId>
            <xsl:value-of select="xsdLocal:userId"/>
          </ns0:userId>
          <ns0:QUID>
            <xsl:value-of select="xsdLocal:QUID"/>
          </ns0:QUID>
          <ns0:orderLinestatus>
            <xsl:value-of select="xsdLocal:orderLinestatus"/>
          </ns0:orderLinestatus>
          <ns0:orderPermissionStatus>
            <xsl:value-of select="xsdLocal:orderPermissionStatus"/>
          </ns0:orderPermissionStatus>
          <ns0:requestStatus>
            <xsl:value-of select="xsdLocal:requestStatus"/>
          </ns0:requestStatus>
          <ns0:assetIntegrationId>
            <xsl:value-of select="xsdLocal:assetIntegrationId"/>
          </ns0:assetIntegrationId>
          <ns0:billingIntegrationFlag>
            <xsl:value-of select="xsdLocal:billingIntegrationFlag"/>
          </ns0:billingIntegrationFlag>
          <ns0:permissioningIntegrationFlag>
            <xsl:value-of select="xsdLocal:permissioningIntegrationFlag"/>
          </ns0:permissioningIntegrationFlag>
          <ns0:permissioningSystem>
            <xsl:value-of select="xsdLocal:permissioningSystem"/>
          </ns0:permissioningSystem>
          <ns0:manualPermissioningRequired>
            <xsl:value-of select="xsdLocal:manualPermissioningRequired"/>
          </ns0:manualPermissioningRequired>
          <ns0:STB>
            <xsl:value-of select="xsdLocal:STB"/>
          </ns0:STB>
          <ns0:freeTrailFlag>
            <xsl:value-of select="xsdLocal:freeTrailFlag"/>
          </ns0:freeTrailFlag>
          <ns0:manualPermissioningComplete>
            <xsl:value-of select="xsdLocal:manualPermissioningComplete"/>
          </ns0:manualPermissioningComplete>
          <ns0:autoPermissioningComplete>
            <xsl:value-of select="xsdLocal:autoPermissioningComplete"/>
          </ns0:autoPermissioningComplete>
          <ns0:nextAction1>
            <xsl:value-of select="xsdLocal:nextAction1"/>
          </ns0:nextAction1>
          <ns0:nextAction2>
            <xsl:value-of select="xsdLocal:nextAction2"/>
          </ns0:nextAction2>
          <ns0:billingStatusToBeSent>
            <xsl:value-of select="xsdLocal:billingStatusToBeSent"/>
          </ns0:billingStatusToBeSent>
          <ns0:orderPermissionStatusToBeSent>
            <xsl:value-of select="xsdLocal:orderPermissionStatusToBeSent"/>
          </ns0:orderPermissionStatusToBeSent>
          <ns0:SID>
            <xsl:value-of select="xsdLocal:SID"/>
          </ns0:SID>
          <ns0:userIdType>
            <xsl:value-of select="xsdLocal:userIdType"/>
          </ns0:userIdType>
          <ns0:billingPlatform>
            <xsl:value-of select="xsdLocal:billingPlatform"/>
          </ns0:billingPlatform>
          <ns0:field1>
            <xsl:value-of select="xsdLocal:field1"/>
          </ns0:field1>
          <ns0:field2>
            <xsl:value-of select="xsdLocal:field2"/>
          </ns0:field2>
          <xsl:choose>
            <xsl:when test="(xsdLocal:userIdType = &quot;ATHENA&quot;) and (xsdLocal:permissioningSystem != &quot;Athena&quot;)">
              <ns0:field3>
                <xsl:text disable-output-escaping="no">C</xsl:text>
              </ns0:field3>
            </xsl:when>
            <xsl:otherwise>
              <ns0:field3>
                <xsl:value-of select="xsdLocal:permBillFlag"/>
              </ns0:field3>
            </xsl:otherwise>
          </xsl:choose>
          <ns0:SAPItemNumber>
            <xsl:value-of select="xsdLocal:SAPItemNumber"/>
          </ns0:SAPItemNumber>
          <ns0:SAPOrderNumber>
            <xsl:value-of select="xsdLocal:SAPOrderNumber"/>
          </ns0:SAPOrderNumber>
          <ns0:serverId>
            <xsl:value-of select="xsdLocal:serverId"/>
          </ns0:serverId>
        </ns0:OrderLineStatusFacts>
      </xsl:for-each>
        </ns0:orderLineRepository>
      </tns:parameterList>
    </tns:callFunctionStateless>
  </xsl:template>
</xsl:stylesheet>