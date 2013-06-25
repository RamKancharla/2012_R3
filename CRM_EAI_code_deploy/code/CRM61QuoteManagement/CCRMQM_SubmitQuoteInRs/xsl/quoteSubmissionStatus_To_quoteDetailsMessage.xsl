<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="http://inkaban3ua-eai01:7777/orabpel/CCRMSync/CCRMTF_QuoteRequestValidator/CCRMTF_QuoteRequestValidator?wsdl"/>
      <rootElement name="quoteSubmissionStatus" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/TechFul"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="CCRMQM_SubmitQuoteInRs.wsdl"/>
      <rootElement name="quoteDetailsMessage" namespace="http://www.siebel.com/xml/RCRM%20Quote%20External"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE MAR 18 16:23:19 GMT 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:ns4="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:ns0="http://www.w3.org/2001/XMLSchema" xmlns:out1="http://www.siebel.com/xml/RCRM%20Quote%20External" xmlns:ns6="http://www.reuters.com/ns/2007/09/01/GCAP/CommonQuoteTypes" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/TechFul" xmlns:ns3="http://schemas.oracle.com/bpel/extension" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns1="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CCRM/TF" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/QuoteManagementServices" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns5="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl ns4 plnk ns0 ns6 ns2 ns3 ns1 soap ns5 out1 tns bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <out1:quoteDetailsMessage>
      <out1:MessageId>
        <xsl:value-of select="/ns2:quoteSubmissionStatus/ns2:eaiHeader/ns4:messageId"/>
      </out1:MessageId>
      <out1:Quote>
        <out1:QuoteNumber>
          <xsl:value-of select="/ns2:quoteSubmissionStatus/ns2:response/ns6:quoteNumber"/>
        </out1:QuoteNumber>
        <out1:Revision>
          <xsl:value-of select="/ns2:quoteSubmissionStatus/ns2:response/ns6:revisionNumber"/>
        </out1:Revision>
        <out1:Status>
          <xsl:value-of select="dvm:lookupValue('oramds:/apps/EAIMetaData/dvm/OrderResponseCodeMap.dvm','CSResponseCode',/ns2:quoteSubmissionStatus/ns2:response/ns6:vettingStatus,'SiebelResponse',/ns2:quoteSubmissionStatus/ns2:response/ns6:vettingStatus)"/>
        </out1:Status>
      </out1:Quote>
    </out1:quoteDetailsMessage>
  </xsl:template>
</xsl:stylesheet>