<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="http://ukcq-eai05:7777/orabpel/ccrmsync/CCRMMG_SubmitTicket/CCRMMG_SubmitTicket?wsdl"/>
      <rootElement name="ticketRequestResponse" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/CCRMMG/TktRqst"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="CCRMMG_SubmitTicketInRS.wsdl"/>
      <rootElement name="RCRMTeamTrack" namespace="http://www.siebel.com/xml/RCRMTeamTrack"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU MAR 26 18:23:20 GMT 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:client="http://www.reuters.com/ns/2007/09/01/GCAP/CCRMMG/CCRMMG_SubmitTicket" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:ns0="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://www.reuters.com/ns/2007/09/01/GCAP/CCRMMG/MigrationTicketServices" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:out1="http://www.siebel.com/xml/RCRMTeamTrack" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CCRMMG/TktRqst" exclude-result-prefixes="xsl ns2 plnk client ns0 soap ns3 ns1 tns out1 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <out1:RCRMTeamTrack>
      <out1:Timestamp>
        <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:Timestamp"/>
      </out1:Timestamp>
      <out1:TargetSystem>
        <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:TargetSystem"/>
      </out1:TargetSystem>
      <out1:SourceSystem>
        <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:SourceSystem"/>
      </out1:SourceSystem>
      <out1:MessageType>
        <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:MessageType"/>
      </out1:MessageType>
      <out1:MessageId>
        <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:MessageId"/>
      </out1:MessageId>
      <out1:IntObjectName>
        <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:IntObjectName"/>
      </out1:IntObjectName>
      <out1:IntObjectFormat>
        <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:IntObjectFormat"/>
      </out1:IntObjectFormat>
      <out1:ActionCode>
        <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:ActionCode"/>
      </out1:ActionCode>
      <out1:RCRMAction>
        <out1:UUID>
          <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:Action/ns1:UUID"/>
        </out1:UUID>
        <out1:Status>
          <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:Action/ns1:Status"/>
        </out1:Status>
        <out1:ProductName>
          <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:Action/ns1:ProductName"/>
        </out1:ProductName>
        <out1:MigrationDate>
          <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:Action/ns1:MigrationDate"/>
        </out1:MigrationDate>
        <out1:LegacyID>
          <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:Action/ns1:LegacyID"/>
        </out1:LegacyID>
        <out1:Id>
          <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:Action/ns1:Id"/>
        </out1:Id>
        <out1:Field3>
          <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:Action/ns1:Field3"/>
        </out1:Field3>
        <out1:Field2>
          <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:Action/ns1:Field2"/>
        </out1:Field2>
        <out1:Field1>
          <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:Action/ns1:Field1"/>
        </out1:Field1>
        <out1:CID>
          <xsl:value-of select="/ns1:ticketRequestResponse/ns1:TeamTrack/ns1:Action/ns1:CID"/>
        </out1:CID>
      </out1:RCRMAction>
    </out1:RCRMTeamTrack>
  </xsl:template>
</xsl:stylesheet>
