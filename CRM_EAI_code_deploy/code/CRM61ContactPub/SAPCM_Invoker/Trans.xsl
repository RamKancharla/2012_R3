<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CM.287_CreateContactRequest.xsd"/>
      <rootElement name="Create_Contacts" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/SAP/ContactRequest"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="SI_CreateContacts_OB_Async.wsdl"/>
      <rootElement name="MT_Create_Contacts" namespace="http://trm.com:I046:OrderProcessing:Send_ContactUserInformation"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON APR 26 15:29:46 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://trm.com:I046:OrderProcessing:Send_ContactUserInformation" xmlns:ns0="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/SAP/ContactRequest" exclude-result-prefixes="xsl xsd ns0 wsdl wsu wsp ns1 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns1:MT_Create_Contacts>
      <xsl:for-each select="/ns0:Create_Contacts/Record">
        <Record>
          <SIEBEL_ID>
            <xsl:value-of select="SIEBEL_ID"/>
          </SIEBEL_ID>
          <NAME1>
            <xsl:value-of select="NAME1"/>
          </NAME1>
          <NAME2>
            <xsl:value-of select="NAME2"/>
          </NAME2>
          <TELEPHONE>
            <xsl:value-of select="TELEPHONE"/>
          </TELEPHONE>
          <EMAIL>
            <xsl:value-of select="EMAIL"/>
          </EMAIL>
          <STATUS>
            <xsl:value-of select="STATUS"/>
          </STATUS>
        </Record>
      </xsl:for-each>
    </ns1:MT_Create_Contacts>
  </xsl:template>
</xsl:stylesheet>
