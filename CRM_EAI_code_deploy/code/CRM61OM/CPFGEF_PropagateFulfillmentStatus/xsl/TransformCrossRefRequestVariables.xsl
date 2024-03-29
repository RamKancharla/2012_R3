<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="../EAI.MSG.CPFG.EF.208_FulfilmentStatusUpdate.xsd"/>
      <rootElement name="PropagateCPFGStatusUpdateRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/eai/cpfg"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../CrossRefService.wsdl"/>
      <rootElement name="getOrderDetailsRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/OrderFulfilmentCrossRefService"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [THU OCT 20 18:36:44 IST 2011]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap11-enc="http://schemas.xmlsoap.org/soap/encoding/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
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
                xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/eai/cpfg"
				xmlns:gcap-mt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                exclude-result-prefixes="xsi xsl xsd xsdLocal xsi soap12 soap11-enc soap mime wsdl tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <tns:getOrderDetailsRequest>
      <tns:eaiHeader>
        <tns:applicationId>
          <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:applicationId"/>
        </tns:applicationId>
        <tns:transactionId>
          <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:transactionId"/>
        </tns:transactionId>
        <tns:messageId>
          <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:messageId"/>
        </tns:messageId>
        <tns:messageHistory>
          <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:messageHistory"/>
        </tns:messageHistory>
        <tns:tracingId>
          <xsl:if test="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:tracingId/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:tracingId/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:tracingId"/>
        </tns:tracingId>
        <tns:timeStamp>
          <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:timeStamp"/>
        </tns:timeStamp>
        <tns:instanceId>
          <xsl:if test="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:instanceId/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:instanceId/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:instanceId"/>
        </tns:instanceId>
        <tns:timeToLive>
          <xsl:if test="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:timeToLive/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:timeToLive/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:timeToLive"/>
        </tns:timeToLive>
        <tns:payloadVersion>
          <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:eaiHeader/gcap-mt:payloadVersion"/>
        </tns:payloadVersion>
      </tns:eaiHeader>
      <tns:electronicFulfilmentRequestId>
        <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:electronicFulfilmentRequestId"/>
      </tns:electronicFulfilmentRequestId>
      <tns:permissioningStatus>
        <xsl:value-of select="/xsdLocal:PropagateCPFGStatusUpdateRequest/xsdLocal:status"/>
      </tns:permissioningStatus>
    </tns:getOrderDetailsRequest>
  </xsl:template>
</xsl:stylesheet>
