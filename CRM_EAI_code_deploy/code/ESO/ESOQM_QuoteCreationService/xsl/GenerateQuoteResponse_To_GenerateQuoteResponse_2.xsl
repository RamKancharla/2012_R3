<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="http://inkaban3ua-eai01:7777/orabpel/ccrmsync/CCRMQM_PropagateQuoteRequestMsg/CCRMQM_PropagateQuoteRequestMsg?wsdl"/>
      <rootElement name="GenerateQuoteResponse" namespace="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/QM/QuoteRequestResponseMessage"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="EAI.SRV.EXT.ESO.312_ReceiveESOQuotePublish.wsdl"/>
      <rootElement name="GenerateQuoteResponse" namespace="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/ESO/QM/ESOQuotePublish"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE OCT 11 11:48:02 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns0="http://xmlns.oracle.com/CCRMQM_PropagateQuoteRequestMsg"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:tns="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/ESO/QM/ESOQuotePublish"
                xmlns:http="http://schemas.xmlsoap.org/wsdl/http/"
                xmlns:s="http://www.w3.org/2001/XMLSchema"
                xmlns:ns2="http://schemas.oracle.com/bpel/extension"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/"
                xmlns:ns1="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/QM/QuoteRequestResponseMessage"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:ns4="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                exclude-result-prefixes="xsl ns3 plnk ns0 s ns2 soap ns1 ns4 mime wsdl tns http soapenc bpws ehdr hwf xp20 xref ora ids orcl">
  <xsl:template match="/">
    <tns:GenerateQuoteResponse>
      <tns:GenerateQuoteResult>
        <xsl:value-of select="/ns1:GenerateQuoteResponse/ns1:ResponseHeader/ns1:basicResponse/ns3:response"/>
      </tns:GenerateQuoteResult>
    </tns:GenerateQuoteResponse>
  </xsl:template>
</xsl:stylesheet>
