<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="EAI.SRV.EXT.TOM.024_PropogateQuoteStatusService.wsdl"/>
      <rootElement name="TFVettingStatus" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/external/TOM/TechFul"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://ukcq-eai05:7777/orabpel/ccrmsync/TOM_ValidateQuoteStatus/TOM_ValidateQuoteStatus?wsdl"/>
      <rootElement name="vettingStatus" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/TechFul"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE AUG 19 14:32:56 GMT+05:30 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:ns0="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/TOM/TF/TOM_ValidateQuoteStatus" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns5="http://www.reuters.com/ns/2007/09/01/GCAP/CommonQuoteTypes" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/TechFul" xmlns:ns6="http://schemas.oracle.com/bpel/extension" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns4="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns8="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/Common" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://www.reuters.com/ns/2007/09/01/GCAP/external/TOM/TechFul" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns7="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" exclude-result-prefixes="xsl mime wsdl http xsd soapenc soap tns tm ns3 ns0 plnk ns5 ns1 ns6 ns4 ns8 ns2 ns7 ehdr xp20 ora orcl bpws hwf xref ids" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns1:vettingStatus>
      <ns1:eaiHeader>
        <ns3:applicationId>
          <xsl:value-of select="string(&quot;TOM&quot;)"/>
        </ns3:applicationId>
        <ns3:transactionId>
          <xsl:value-of select="string(&quot;-1&quot;)"/>
        </ns3:transactionId>
        <ns3:messageId>
          <xsl:value-of select="string(&quot;-1&quot;)"/>
        </ns3:messageId>
        <ns3:messageHistory>
          <xsl:value-of select="string(&quot;TOM;EAI;&quot;)"/>
        </ns3:messageHistory>
        <ns3:tracingId>
          <xsl:value-of select="string(&quot;-1&quot;)"/>
        </ns3:tracingId>
        <ns3:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </ns3:timeStamp>
        <ns3:instanceId>
          <xsl:value-of select="string(&quot;-1&quot;)"/>
        </ns3:instanceId>
        <ns3:timeToLive>
          <xsl:value-of select="string(&quot;0&quot;)"/>
        </ns3:timeToLive>
        <ns3:payloadVersion>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns3:payloadVersion>
      </ns1:eaiHeader>
      <ns1:response>
        <ns5:quoteNumber>
          <xsl:value-of select="/tns:TFVettingStatus/tns:quoteNumber"/>
        </ns5:quoteNumber>
        <ns5:revisionNumber>
          <xsl:value-of select="/tns:TFVettingStatus/tns:revisionNumber"/>
        </ns5:revisionNumber>
        <ns5:vettingStatus>
          <xsl:value-of select="/tns:TFVettingStatus/tns:technicalQuoteStatus"/>
        </ns5:vettingStatus>
        <ns5:vettingStatusReason>
          <xsl:value-of select="/tns:TFVettingStatus/tns:technicalQuoteStatusReason"/>
        </ns5:vettingStatusReason>
        <ns5:vettingStatusReasonCode>
          <xsl:value-of select="/tns:TFVettingStatus/tns:technicalQuoteStatusReasonCode"/>
        </ns5:vettingStatusReasonCode>
        <ns5:allocatedIndividualFirstName>
          <xsl:value-of select="/tns:TFVettingStatus/tns:allocatedIndividualFirstName"/>
        </ns5:allocatedIndividualFirstName>
        <ns5:allocatedIndividualSurname>
          <xsl:value-of select="/tns:TFVettingStatus/tns:allocatedIndividualSurname"/>
        </ns5:allocatedIndividualSurname>
        <ns5:allocatedIndividualEmailAddress>
          <xsl:value-of select="/tns:TFVettingStatus/tns:allocatedIndividualEmailAddress"/>
        </ns5:allocatedIndividualEmailAddress>
        <ns5:allocatedIndividualTelNumber>
          <xsl:value-of select="/tns:TFVettingStatus/tns:allocatedIndividualTelNumber"/>
        </ns5:allocatedIndividualTelNumber>
        <ns5:vettingStatusUpdatedDate>
          <xsl:value-of select="/tns:TFVettingStatus/tns:technicalQuoteStatusUpdatedDate"/>
        </ns5:vettingStatusUpdatedDate>
        <ns5:allocatedIndividualCRMContactId>
          <xsl:value-of select="/tns:TFVettingStatus/tns:allocatedIndividualCRMContactId"/>
        </ns5:allocatedIndividualCRMContactId>
      </ns1:response>
    </ns1:vettingStatus>
  </xsl:template>
</xsl:stylesheet>