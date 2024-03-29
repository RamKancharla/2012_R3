<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="OrderLineStatusDictionary_DecisionServiceRef.wsdl"/>
      <rootElement name="callFunctionStatelessDecision" namespace="http://xmlns.oracle.com/OrderLineStatusDictionary141008/OrderLineStatusDictionary141008_DecisionService_1"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.OM.180_ExtendedOrderStatus.xsd"/>
      <rootElement name="orderStatus" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [THU AUG 04 18:43:42 IST 2011]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
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
                xmlns:ns0="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement/rules"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
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
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl java bpelpm soap12 format tns plnk soap wsdl xsdLocal rules xsd ns1 xsdLocal cmt xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
   <xsdLocal:orderStatus>
      <xsdLocal:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:messageHeader>
        <xsdLocal:actionCode>
          <xsl:value-of select="/tns:callFunctionStatelessDecision/tns:resultList/ns0:orderLineRepository/ns0:OrderLineStatusFacts/ns0:messageHeaderActionCode"/>
        </xsdLocal:actionCode>
        <xsdLocal:version>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:version>
        <xsdLocal:userId>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:userId>
      </xsdLocal:messageHeader>
      <xsdLocal:logicalCountry>
        <xsl:value-of select="string(&quot;&quot;)"/>
      </xsdLocal:logicalCountry>
      <xsdLocal:orderHeader>
        <xsdLocal:response>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:response>
        <xsdLocal:requestStatus>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:requestStatus>
        <xsdLocal:CRMOrderNumber>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:CRMOrderNumber>
        <xsdLocal:orderNumber>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:orderNumber>
        <xsdLocal:entrepriseCode>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </xsdLocal:entrepriseCode>
      </xsdLocal:orderHeader>
      <xsl:for-each select="/tns:callFunctionStatelessDecision/tns:resultList/ns0:orderLineRepository/ns0:OrderLineStatusFacts">
        <xsdLocal:orderLineItem>
          <xsdLocal:CRMOLIId>
            <xsl:value-of select="ns0:CRMOLIId"/>
          </xsdLocal:CRMOLIId>
          <xsdLocal:businessCase>
            <xsl:value-of select="ns0:businessCase"/>
          </xsdLocal:businessCase>
          <xsdLocal:actionCode>
            <xsl:value-of select="ns0:actionCode"/>
          </xsdLocal:actionCode>
          <xsdLocal:rootItemId>
            <xsl:value-of select="ns0:rootItemId"/>
          </xsdLocal:rootItemId>
          <xsdLocal:itemNumber>
            <xsl:value-of select="ns0:itemNumber"/>
          </xsdLocal:itemNumber>
          <xsdLocal:SAPItemNumber>
            <xsl:value-of select="ns0:SAPItemNumber"/>
          </xsdLocal:SAPItemNumber>
          <xsdLocal:SAPOrderNumber>
            <xsl:value-of select="ns0:SAPOrderNumber"/>
          </xsdLocal:SAPOrderNumber>
          <xsdLocal:ILA>
            <xsl:value-of select="ns0:ILA"/>
          </xsdLocal:ILA>
          <xsdLocal:userNumber>
            <xsl:value-of select="ns0:userNumber"/>
          </xsdLocal:userNumber>
          <xsdLocal:userId>
            <xsl:value-of select="ns0:userId"/>
          </xsdLocal:userId>
          <xsdLocal:userIdType>
            <xsl:value-of select="ns0:userIdType"/>
          </xsdLocal:userIdType>
          <xsdLocal:QUID>
            <xsl:value-of select="ns0:QUID"/>
          </xsdLocal:QUID>
          <xsdLocal:orderLinestatus>
            <xsl:value-of select="ns0:orderLinestatus"/>
          </xsdLocal:orderLinestatus>
          <xsdLocal:orderPermissionStatus>
            <xsl:value-of select="ns0:orderPermissionStatus"/>
          </xsdLocal:orderPermissionStatus>
          <xsdLocal:requestStatus>
            <xsl:value-of select="ns0:requestStatus"/>
          </xsdLocal:requestStatus>
          <xsdLocal:assetIntegrationId>
            <xsl:value-of select="ns0:assetIntegrationId"/>
          </xsdLocal:assetIntegrationId>
          <xsdLocal:billingIntegrationFlag>
            <xsl:value-of select="ns0:billingIntegrationFlag"/>
          </xsdLocal:billingIntegrationFlag>
          <xsdLocal:permissioningIntegrationFlag>
            <xsl:value-of select="ns0:permissioningIntegrationFlag"/>
          </xsdLocal:permissioningIntegrationFlag>
          <xsdLocal:permissioningSystem>
            <xsl:value-of select="ns0:permissioningSystem"/>
          </xsdLocal:permissioningSystem>
          <xsdLocal:manualPermissioningRequired>
            <xsl:value-of select="ns0:manualPermissioningRequired"/>
          </xsdLocal:manualPermissioningRequired>
          <xsdLocal:STB>
            <xsl:value-of select="ns0:STB"/>
          </xsdLocal:STB>
          <xsdLocal:freeTrailFlag>
            <xsl:value-of select="ns0:freeTrailFlag"/>
          </xsdLocal:freeTrailFlag>
          <xsdLocal:manualPermissioningComplete>
            <xsl:value-of select="ns0:manualPermissioningComplete"/>
          </xsdLocal:manualPermissioningComplete>
          <xsdLocal:autoPermissioningComplete>
            <xsl:value-of select="ns0:autoPermissioningComplete"/>
          </xsdLocal:autoPermissioningComplete>
          <xsdLocal:nextAction1>
            <xsl:value-of select="ns0:nextAction1"/>
          </xsdLocal:nextAction1>
          <xsdLocal:nextAction2>
            <xsl:value-of select="ns0:nextAction2"/>
          </xsdLocal:nextAction2>
          <xsdLocal:billingStatusToBeSent>
            <xsl:value-of select="ns0:billingStatusToBeSent"/>
          </xsdLocal:billingStatusToBeSent>
          <xsdLocal:orderPermissionStatusToBeSent>
            <xsl:value-of select="ns0:orderPermissionStatusToBeSent"/>
          </xsdLocal:orderPermissionStatusToBeSent>
          <xsdLocal:SID>
            <xsl:value-of select="ns0:SID"/>
          </xsdLocal:SID>
          <xsdLocal:billingPlatform>
            <xsl:value-of select="ns0:billingPlatform"/>
          </xsdLocal:billingPlatform>
          <xsdLocal:field1>
            <xsl:value-of select="ns0:field1"/>
          </xsdLocal:field1>
          <xsdLocal:field2>
            <xsl:value-of select="ns0:field2"/>
          </xsdLocal:field2>
          <xsl:choose>
            <xsl:when test="(ns0:userIdType = &quot;ATHENA&quot;) and (ns0:permissioningSystem != &quot;Athena&quot;)">
              <xsdLocal:field3>
                <xsl:text disable-output-escaping="no">B</xsl:text>
              </xsdLocal:field3>
            </xsl:when>
            <xsl:otherwise>
              <xsdLocal:field3>
                <xsl:value-of select="ns0:field3"/>
              </xsdLocal:field3>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test="(ns0:userIdType = &quot;ATHENA&quot;) and (ns0:permissioningSystem != &quot;Athena&quot;)">
              <xsdLocal:permBillFlag>
                <xsl:text disable-output-escaping="no">B</xsl:text>
              </xsdLocal:permBillFlag>
            </xsl:when>
            <xsl:otherwise>
              <xsdLocal:permBillFlag>
                <xsl:value-of select="ns0:field3"/>
              </xsdLocal:permBillFlag>
            </xsl:otherwise>
          </xsl:choose>
          <xsdLocal:serverId>
            <xsl:value-of select="ns0:serverId"/>
          </xsdLocal:serverId>
        </xsdLocal:orderLineItem>
      </xsl:for-each>
    </xsdLocal:orderStatus>
  </xsl:template>
</xsl:stylesheet>
