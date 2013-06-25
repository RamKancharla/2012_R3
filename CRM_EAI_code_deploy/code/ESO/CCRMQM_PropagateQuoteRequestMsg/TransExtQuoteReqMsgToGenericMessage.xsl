<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSQ.QM.313_QuoteRequestResponseMessage.xsd"/>
      <rootElement name="GenerateQuote" namespace="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/QM/QuoteRequestResponseMessage"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai01:7777/orabpel/ccrmasync/CCRMQM_EnqueueGenericQuoteMessage/EAI.MSG.CCRM.Quote.312_GenericQuoteMessage.xsd"/>
      <rootElement name="ListOfGenQuoteInterface" namespace="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/CRM/GenericQuoteMessage"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON OCT 17 13:14:03 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/QM/QuoteRequestResponseMessage" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns1="http://www.reuters.com/ns/2011/09/12/GCAP/EAI/CRM/GenericQuoteMessage" exclude-result-prefixes="xsl cmt xsd xsdLocal ns0 ns1 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns1:ListOfGenQuoteInterface>
      <ns1:Quote>
        <ns1:RequesterRowId>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:RequesterRowId"/>
        </ns1:RequesterRowId>
        <ns1:RequesterPhone>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:RequesterPhone"/>
        </ns1:RequesterPhone>
        <ns1:RequesterLastName>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:RequesterLastName"/>
        </ns1:RequesterLastName>
        <ns1:RequesterFirstName>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:RequesterFirstName"/>
        </ns1:RequesterFirstName>
        <ns1:RequesterExternalFlag>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:RequesterExternalFlag"/>
        </ns1:RequesterExternalFlag>
        <ns1:RequesterEmail>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:RequesterEmail"/>
        </ns1:RequesterEmail>
        <ns1:RequesterContactId>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:RequesterContactId"/>
        </ns1:RequesterContactId>
        <ns1:ProjectContactTitle>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:ProjectContactTitle"/>
        </ns1:ProjectContactTitle>
        <ns1:ProjectContactRowId>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:ProjectContactRowId"/>
        </ns1:ProjectContactRowId>
        <ns1:ProjectContactPhone>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:ProjectContactPhone"/>
        </ns1:ProjectContactPhone>
        <ns1:ProjectContactLastName>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:ProjectContactLastName"/>
        </ns1:ProjectContactLastName>
        <ns1:ProjectContactId>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:ProjectContactId"/>
        </ns1:ProjectContactId>
        <ns1:ProjectContactFirstName>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:ProjectContactFirstName"/>
        </ns1:ProjectContactFirstName>
        <ns1:ProjectContactEmail>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:ProjectContactEmail"/>
        </ns1:ProjectContactEmail>
        <ns1:OpportunityId>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:OpportunityId"/>
        </ns1:OpportunityId>
        <ns1:Id>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:ProjectContactId"/>
        </ns1:Id>
        <ns1:BillingAccountNumber>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:BillingAccountNumber"/>
        </ns1:BillingAccountNumber>
        <ns1:DePermissionDate>
          <!--  <xsl:text disable-output-escaping="no">mm/dd/yyyy</xsl:text> -->
          <xsl:value-of select="xp20:format-dateTime(/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:DePermissionDate,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
        </ns1:DePermissionDate>
        <ns1:InterfaceName>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:InterfaceName"/>
        </ns1:InterfaceName>
        <ns1:LocationAccountNumber>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:LocationAccountNumber"/>
        </ns1:LocationAccountNumber>
        <ns1:Name>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:ProjectContactFirstName"/>
        </ns1:Name>
        <ns1:PermissionDate>
          <!-- <xsl:text disable-output-escaping="no">mm/dd/yyyy</xsl:text> -->
          <xsl:value-of select="xp20:format-dateTime(/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:PermissionDate,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
        </ns1:PermissionDate>
        <ns1:TransactionId>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:TransactionId"/>
        </ns1:TransactionId>
        <ns1:WinLossReason>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:WinLossReason"/>
        </ns1:WinLossReason>
        <ns1:DummyField1>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:DummyField1"/>
        </ns1:DummyField1>
        <ns1:DummyField2>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:DummyField2"/>
        </ns1:DummyField2>
        <ns1:DummyField3>
          <xsl:value-of select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:DummyField3"/>
        </ns1:DummyField3>
        <xsl:for-each select="/xsdLocal:GenerateQuote/xsdLocal:quote/xsdLocal:LineItems/xsdLocal:LineItem">
          <ns1:LineItems>
            <ns1:SAPPPLIId>
              <xsl:value-of select="xsdLocal:ProductReference"/>
            </ns1:SAPPPLIId>
            <ns1:ContactTitle>
              <xsl:value-of select="xsdLocal:ContactTitle"/>
            </ns1:ContactTitle>
            <ns1:ContactRowId>
              <xsl:value-of select="xsdLocal:ContactRowId"/>
            </ns1:ContactRowId>
            <ns1:ContactPhone>
              <xsl:value-of select="xsdLocal:ContactPhone"/>
            </ns1:ContactPhone>
            <ns1:ContactLanguage>
              <xsl:value-of select="xsdLocal:ContactLanguage"/>
            </ns1:ContactLanguage>
            <ns1:ContactId>
              <xsl:value-of select="xsdLocal:ContactId"/>
            </ns1:ContactId>
            <ns1:ContactCJR>
              <xsl:value-of select="xsdLocal:ContactCJR"/>
            </ns1:ContactCJR>
            <ns1:AssetIntegrationId>
              <xsl:value-of select="xsdLocal:AssetIntegrationId"/>
            </ns1:AssetIntegrationId>
            <xsl:if test="xsdLocal:ESOAction = &quot;SWAP-ASSETS&quot;">
              <ns1:ApplyDate>
                <xsl:value-of select="xp20:format-dateTime(xsdLocal:ApplyDate,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
              </ns1:ApplyDate>
            </xsl:if>
            <ns1:ActionCode>
              <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/ESOActionToCRMActionCodeAndOperation.dvm&quot;,&quot;ESOAction&quot;,xsdLocal:ESOAction,&quot;CRMActionCode&quot;,&quot;INVALID-ACTION-CODE&quot;)"/>
            </ns1:ActionCode>
            <ns1:BillingAccountNumber>
              <xsl:value-of select="xsdLocal:BillingAccountNumber"/>
            </ns1:BillingAccountNumber>
            <ns1:ContactEmailAddress>
              <xsl:value-of select="xsdLocal:ContactEmailAddress"/>
            </ns1:ContactEmailAddress>
            <ns1:ContactFirstName>
              <xsl:value-of select="xsdLocal:ContactFirstName"/>
            </ns1:ContactFirstName>
            <ns1:ContactLastName>
              <xsl:value-of select="xsdLocal:ContactLastName"/>
            </ns1:ContactLastName>
            <xsl:if test="(xsdLocal:ESOAction = &quot;REMOVE-SERVICE&quot;) or (xsdLocal:ESOAction = &quot;CANCEL-ALL-SERVICES&quot;)">
              <ns1:DePermissionDate>
                <xsl:value-of select="xp20:format-dateTime(xsdLocal:ApplyDate,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
              </ns1:DePermissionDate>
            </xsl:if>
            <ns1:FreeTrialFlag>
              <xsl:value-of select="xsdLocal:FreeTrialFlag"/>
            </ns1:FreeTrialFlag>
            <ns1:LineNumber>
              <xsl:value-of select="xsdLocal:LineNumber"/>
            </ns1:LineNumber>
            <ns1:LineNumber2>
              <xsl:value-of select="xsdLocal:LineNumber2"/>
            </ns1:LineNumber2>
            <ns1:LocationAccountNumber>
              <xsl:value-of select="xsdLocal:LocationAccountNumber"/>
            </ns1:LocationAccountNumber>
            <ns1:Operation>
              <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/ESOActionToCRMActionCodeAndOperation.dvm&quot;,&quot;ESOAction&quot;,xsdLocal:ESOAction,&quot;CRMOperation&quot;,&quot;INVALID-OPERATION&quot;)"/>
            </ns1:Operation>
            <xsl:if test="(xsdLocal:ESOAction = &quot;ADD-SERVICE&quot;) or (xsdLocal:ESOAction = &quot;CLONE-ASSETS&quot;)">
              <ns1:PermissionDate>
                <xsl:value-of select="xp20:format-dateTime(xsdLocal:ApplyDate,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
              </ns1:PermissionDate>
            </xsl:if>
            <ns1:QuantityRequested>
              <xsl:value-of select="xsdLocal:QuantityRequested"/>
            </ns1:QuantityRequested>
            <ns1:DummyField1>
              <xsl:value-of select="xsdLocal:ESOAction"/>
            </ns1:DummyField1>
            <ns1:DummyField2>
              <xsl:value-of select="xsdLocal:DummyField2"/>
            </ns1:DummyField2>
            <ns1:DummyField3>
              <xsl:value-of select="xsdLocal:DummyField3"/>
            </ns1:DummyField3>
            <xsl:for-each select="xsdLocal:Attributes/xsdLocal:Attribute">
              <ns1:Attributes>
                <ns1:Name>
                  <xsl:value-of select="xsdLocal:Name"/>
                </ns1:Name>
                <ns1:Value>
                  <xsl:value-of select="xsdLocal:Value"/>
                </ns1:Value>
              </ns1:Attributes>
            </xsl:for-each>
          </ns1:LineItems>
        </xsl:for-each>
      </ns1:Quote>
    </ns1:ListOfGenQuoteInterface>
  </xsl:template>
</xsl:stylesheet>