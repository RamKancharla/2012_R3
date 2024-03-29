<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CPFG.262_SingleUserOrder.xsd"/>
      <rootElement name="orderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement/CPFGOM_UserOrderManager"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai05:8000/soa-infra/services/CRMASYNC/OM_ManageOrderLineStatus/EAI.MSG.OM.141_OrderStatus.xsd"/>
      <rootElement name="orderStatus" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.3.0(build 100415.2045.2557) AT [TUE DEC 13 15:59:14 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:util="http://www.oracle.com/XSL/Transform/java/com.reuters.eai.util.OrderCacheDBAccess"
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
                xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement/CPFGOM_UserOrderManager"
                xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns1="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl ns0 xsd xsdLocal cmt ns1 bpws xp20 mhdr bpel2 orcl dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <ns1:orderStatus>
      <ns1:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </ns1:eaiHeader>
      <ns1:messageHeader>
        <ns1:actionCode>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:messageHeader/xsdLocal:actionCode"/>
        </ns1:actionCode>
        <ns1:version>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:messageHeader/xsdLocal:version"/>
        </ns1:version>
        <ns1:userId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:messageHeader/xsdLocal:userId"/>
        </ns1:userId>
      </ns1:messageHeader>
      <ns1:orderHeader>
        <ns1:response>
          <xsl:text disable-output-escaping="no"> </xsl:text>
        </ns1:response>
        <ns1:requestStatus>
          <xsl:text disable-output-escaping="no"> </xsl:text>
        </ns1:requestStatus>
        <ns1:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/xsdLocal:CRMOrderNumber"/>
        </ns1:CRMOrderNumber>
        <ns1:orderNumber>
          <xsl:text disable-output-escaping="no"> </xsl:text>
        </ns1:orderNumber>
        <ns1:entrepriseCode>
          <xsl:text disable-output-escaping="no"> </xsl:text>
        </ns1:entrepriseCode>
      </ns1:orderHeader>
      <xsl:for-each select="/xsdLocal:orderRequest/xsdLocal:orderLineItem">
        <xsl:if test='(xsdLocal:permissioningStatus != "") and (xsdLocal:businessCase = "User Swap")'>
          <ns1:orderLineItem>
            <ns1:CRMOLIId>
              <xsl:value-of select="xsdLocal:CRMOLIId"/>
            </ns1:CRMOLIId>
            <ns1:rootItemId>
              <xsl:value-of select="xsdLocal:rootItemId"/>
            </ns1:rootItemId>
            <ns1:itemNumber>
              <xsl:value-of select="xsdLocal:itemNumber"/>
            </ns1:itemNumber>
            <ns1:userNumber>
              <xsl:value-of select="xsdLocal:userNumber"/>
            </ns1:userNumber>
            <ns1:userId>
              <xsl:value-of select="xsdLocal:userID"/>
            </ns1:userId>
            <ns1:QUID>
              <xsl:value-of select="xsdLocal:QUID"/>
            </ns1:QUID>
            <xsl:choose>
              <xsl:when test='xsdLocal:permissioningStatus = "COMPLETE"'>
                <ns1:orderLinestatus>
                  <xsl:text disable-output-escaping="no">Permissioned</xsl:text>
                </ns1:orderLinestatus>
              </xsl:when>
              <xsl:otherwise>
                <ns1:orderLinestatus>
                  <xsl:text disable-output-escaping="no">Permissioning Error</xsl:text>
                </ns1:orderLinestatus>
              </xsl:otherwise>
            </xsl:choose>
            <ns1:requestStatus>
              <xsl:value-of select="xsdLocal:billingNote"/>
            </ns1:requestStatus>
            <ns1:assetIntegrationId>
              <xsl:value-of select='orcl:lookup-table("ORDER_CACHE","CRM_OLI_ID",xsdLocal:CRMOLIId,"ASSET_INTEGRATION_ID","eai/ds/EAIReference")'/>
            </ns1:assetIntegrationId>
            <ns1:PermBillFlag>
              <xsl:text disable-output-escaping="no">P</xsl:text>
            </ns1:PermBillFlag>
            <ns1:primaryUUID>
              <xsl:value-of select="xsdLocal:primaryUUID"/>
            </ns1:primaryUUID>
          </ns1:orderLineItem>
        </xsl:if>
      </xsl:for-each>
    </ns1:orderStatus>
  </xsl:template>
</xsl:stylesheet>
