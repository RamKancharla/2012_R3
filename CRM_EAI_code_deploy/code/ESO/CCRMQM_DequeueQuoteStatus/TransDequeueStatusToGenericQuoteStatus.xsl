<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="ListOfGenQuoteInterface.xsd"/>
      <rootElement name="ListOfGenQuoteInterface" namespace="http://www.siebel.com/xml/RCRMGenericQuoteInterface"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai05:8000/soa-infra/services/CRMASYNC/CCRMQM_QuoteStatusDispatcher/EAI.MSQ.QM.314_QuoteRequestResponseMessageStatus.xsd"/>
      <rootElement name="UpdateQuoteStatusRequest" namespace="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/QM/QuoteRequestResponseMessageStatus"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.3.0(build 100415.2045.2557) AT [SUN DEC 04 23:40:34 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns0="http://www.example.org"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsdLocal="http://www.siebel.com/xml/RCRMGenericQuoteInterface"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                xmlns:tns="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/QM/QuoteRequestResponseMessageStatus"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl xsdLocal xsd ns1 ns0 cmt tns bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <tns:UpdateQuoteStatusRequest>
      <tns:updateQuoteStatusRequest>
        <tns:Actioncode>
          <xsl:value-of select="/xsdLocal:ListOfGenQuoteInterface/xsdLocal:Quote/xsdLocal:ActionCode"/>
        </tns:Actioncode>
        <tns:ErrorMessage>
          <xsl:value-of select="/xsdLocal:ListOfGenQuoteInterface/xsdLocal:Quote/xsdLocal:ErrorMessage"/>
        </tns:ErrorMessage>
        <tns:QuoteNumber>
          <xsl:value-of select="/xsdLocal:ListOfGenQuoteInterface/xsdLocal:Quote/xsdLocal:QuoteNumber"/>
        </tns:QuoteNumber>
        <tns:Sourcesystem>
          <xsl:value-of select="/xsdLocal:ListOfGenQuoteInterface/xsdLocal:Quote/xsdLocal:SourceSystem"/>
        </tns:Sourcesystem>
        <tns:Timestamp>
          <xsl:value-of select="/xsdLocal:ListOfGenQuoteInterface/xsdLocal:Quote/xsdLocal:Timestamp"/>
        </tns:Timestamp>
        <tns:TransactionId>
          <xsl:value-of select="/xsdLocal:ListOfGenQuoteInterface/xsdLocal:Quote/xsdLocal:TransactionId"/>
        </tns:TransactionId>
      </tns:updateQuoteStatusRequest>
    </tns:UpdateQuoteStatusRequest>
  </xsl:template>
</xsl:stylesheet>
