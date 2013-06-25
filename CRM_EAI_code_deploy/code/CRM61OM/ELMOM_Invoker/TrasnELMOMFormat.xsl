<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.ELM.101_UpdateOrderRequest.xsd"/>
      <rootElement name="elmOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="OrderService.wsdl"/>
      <rootElement name="onData" namespace="http://order.service.eai.trls.thomsonreuters.com/"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.3.0(build 100415.2045.2557) AT [TUE FEB 28 17:05:14 IST 2012]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:tns="http://order.service.eai.trls.thomsonreuters.com/"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl xsdLocal xsd cmt soap tns bpws xp20 mhdr bpel2 orcl dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <tns:onData>
      <arg0>
        <sourcesystem>
          <xsl:text disable-output-escaping="no">SIEBEL</xsl:text>
        </sourcesystem>
        <targetsystem>
          <xsl:text disable-output-escaping="no">ELM</xsl:text>
        </targetsystem>
        <messageid>
          <xsl:value-of select="orcl:generate-guid()"/>
        </messageid>
        <timestamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </timestamp>
        <orderNumber>
          <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderHeader/xsdLocal:OrderNumber"/>
        </orderNumber>
        <orderStatus>
          <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderHeader/xsdLocal:orderStatus"/>
        </orderStatus>
        <orderType>
          <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderHeader/xsdLocal:orderType"/>
        </orderType>
        <createdOn>
          <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderHeader/xsdLocal:RCRMField3"/>
        </createdOn>
        <quoteNumber>
          <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderHeader/xsdLocal:quoteNumber"/>
        </quoteNumber>
        <LocationAccountRowID>
          <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderHeader/xsdLocal:accountId"/>
        </LocationAccountRowID>
        <xsl:for-each select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem">
          <lineItems>
            <billtosubscribernumber>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:BillToSubscriberNum"/>
            </billtosubscribernumber>
            <billtosubaccountnumber>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:BillToSubAccountNum"/>
            </billtosubaccountnumber>
            <billtoaccountrowid>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:billingAccountId"/>
            </billtoaccountrowid>
            <assetintegrationid>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:assetIntegrationId"/>
            </assetintegrationid>
            <olirowid>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:CRMOLIId"/>
            </olirowid>
            <globalPLI>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:PLI"/>
            </globalPLI>
            <productName>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:productName"/>
            </productName>
            <quantity>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:quantity"/>
            </quantity>
            <billingNote>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:BillingNote"/>
            </billingNote>
            <action>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:actionCode"/>
            </action>
            <businesscase>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:businessCase"/>
            </businesscase>
            <status>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:orderLineStatus"/>
            </status>
            <permissioningstatus>
              <xsl:value-of select="/xsdLocal:elmOrderRequest/xsdLocal:orderLineItem/xsdLocal:permissioningStatus"/>
            </permissioningstatus>
          </lineItems>
        </xsl:for-each>
      </arg0>
    </tns:onData>
  </xsl:template>
</xsl:stylesheet>