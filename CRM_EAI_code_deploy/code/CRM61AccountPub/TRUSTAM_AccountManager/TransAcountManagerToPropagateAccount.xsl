<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TRUST.269_PublishAccount.xsd"/>
      <rootElement name="publishTrustAccounts" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/AccountPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai01:7777/orabpel/ccrmasync/CCRMAM_PropagateTRUSTAccount/EAI.MSG.CCRM.172_PublishAccountRequestResponse.xsd"/>
      <rootElement name="AccountContactPublish" namespace="http://www.siebel.com/xml/RCRM%20Account%20Publish"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [FRI OCT 01 18:31:45 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns0="http://www.siebel.com/xml/RCRM%20Account%20Publish" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/AccountPublish" exclude-result-prefixes="xsl xsd xsdLocal ns0 xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:param name="prmTDOCheckPerformed" select="/xsdLocal:publishTrustAccounts/xsdLocal:TDOCheckDate"/>
  <xsl:param name="prmCreditStatusDate" select="/xsdLocal:publishTrustAccounts/xsdLocal:CreditCheckDate"/>
  <xsl:template match="/">
    <ns0:AccountContactPublish>
      <ns0:RcrmAccount-Thin>
        <ns0:KNOwned>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:KNOwned"/>
        </ns0:KNOwned>
        <ns0:RCRMTDOCheckPerformed>
          <xsl:value-of select="xp20:format-dateTime($prmTDOCheckPerformed,&quot;[M01]/[D01]/[Y0001] [H01]:[m01]:[s01]&quot;)"/>
        </ns0:RCRMTDOCheckPerformed>
        <ns0:RCRMTDOCheck>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:TDOStatus"/>
        </ns0:RCRMTDOCheck>
        <ns0:RCRMTCId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:TCID"/>
        </ns0:RCRMTCId>
        <ns0:RCRMSFDCId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:SFDCId"/>
        </ns0:RCRMSFDCId>
        <ns0:RCRMPrimaryAccountFlag>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:ISPrimaryAccount"/>
        </ns0:RCRMPrimaryAccountFlag>
        <ns0:RCRMNOMCustGroup>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:NomCustomerGroup"/>
        </ns0:RCRMNOMCustGroup>
        <ns0:RCRMLocalAccountName>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:LocalAccountName"/>
        </ns0:RCRMLocalAccountName>
        <ns0:RCRMDummy2>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:tracingId"/>
        </ns0:RCRMDummy2>
        <ns0:RCRMDummy1>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:tracingId"/>
        </ns0:RCRMDummy1>
        <ns0:RCRMCustomerJourney>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:CustomerJourney"/>
        </ns0:RCRMCustomerJourney>
        <ns0:RCRMCreditCheck>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:CreditCheckStatus"/>
        </ns0:RCRMCreditCheck>
        <ns0:RCRMCAID>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:AccountCAID"/>
        </ns0:RCRMCAID>
        <ns0:Owneremail>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:OwnerEmail"/>
        </ns0:Owneremail>
        <ns0:CreditStatusDate>
          <xsl:value-of select="xp20:format-dateTime($prmCreditStatusDate,&quot;[M01]/[D01]/[Y0001] [H01]:[m01]:[s01]&quot;)"/>
        </ns0:CreditStatusDate>
        <ns0:AccountTypeCode>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:AccountClass"/>
        </ns0:AccountTypeCode>
        <ns0:Id>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:SiebelId"/>
        </ns0:Id>
        <ns0:AccountStatus>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:SiebelAccountStatus"/>
        </ns0:AccountStatus>
        <ns0:CurrencyCode>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:CurrencyCode"/>
        </ns0:CurrencyCode>
        <ns0:Description>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:Description"/>
        </ns0:Description>
        <ns0:Name>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:Name"/>
        </ns0:Name>
        <ns0:RCRMAccountFamily>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:MCCCode"/>
        </ns0:RCRMAccountFamily>
        <ns0:RCRMBusinessChannel>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:BusinessChannel"/>
        </ns0:RCRMBusinessChannel>
	    <ns0:RCRMRelationShipModel>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:RelationshipModel"/>
        </ns0:RCRMRelationShipModel>
        <ns0:RCRMOrganisationType>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:Segment"/>
        </ns0:RCRMOrganisationType>
        <ns0:RCRMRegion>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:Region"/>
        </ns0:RCRMRegion>
        <ns0:Region>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:Region"/>
        </ns0:Region>
        <ns0:Homepage>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:Website"/>
        </ns0:Homepage>
        <ns0:CutAddress>
          <ns0:Mainfaxnumber>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:Fax"/>
          </ns0:Mainfaxnumber>
          <ns0:City>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:ShippingCity"/>
          </ns0:City>
          <ns0:Country>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:ShippingCountry"/>
          </ns0:Country>
          <ns0:PhoneNumber>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:Phone"/>
          </ns0:PhoneNumber>
          <ns0:PostalCode>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:ShippingPostal"/>
          </ns0:PostalCode>
          <ns0:RCRMLocalCity>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:LocalCity"/>
          </ns0:RCRMLocalCity>
          <ns0:RCRMLocalCountry>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:LocalCountry"/>
          </ns0:RCRMLocalCountry>
          <ns0:RCRMLocalPostalCode>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:LocalPostal"/>
          </ns0:RCRMLocalPostalCode>
          <ns0:RCRMLocalState>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:LocalState"/>
          </ns0:RCRMLocalState>
          <ns0:RCRMLocalStreetAddress>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:LocalStreet"/>
          </ns0:RCRMLocalStreetAddress>
          <ns0:RCRMRegion>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:Region"/>
          </ns0:RCRMRegion>
          <ns0:State>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:ShippingState"/>
          </ns0:State>
          <ns0:StreetAddress>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:ShippingStreet"/>
          </ns0:StreetAddress>
        </ns0:CutAddress>
        <ns0:Position>
           <ns0:ActiveEmail>
                  <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:OwnerEmail"/>
           </ns0:ActiveEmail>
           <ns0:ActiveJobTitle>
                  <xsl:value-of select='string("Account Manager")'/>
            </ns0:ActiveJobTitle>
         </ns0:Position>
        <xsl:for-each select="/xsdLocal:publishTrustAccounts/xsdLocal:AccountTeamData">
           <ns0:Position>
            <ns0:ActiveEmail>
              <xsl:value-of select="xsdLocal:AccountTeamEmail"/>
            </ns0:ActiveEmail>
            <ns0:ActiveJobTitle>
              <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/TrustTAMvaluetoSiebel.dvm&quot;,&quot;Trust&quot;,xsdLocal:AccountTeamJobTitle,&quot;Siebel&quot;,&quot;Technical Account Manager&quot;)"/>
	      </ns0:ActiveJobTitle>
            <ns0:ActionCode>
              <xsl:value-of select="xsdLocal:ActionCode"/>
            </ns0:ActionCode>
          </ns0:Position>
        </xsl:for-each>
        <ns0:ServiceAgreement>
          <ns0:AgreementType>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:AgreementType"/>
          </ns0:AgreementType>
          <ns0:AgreementStatus>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:AgreementStatus"/>
          </ns0:AgreementStatus>
          <ns0:AgreementNumber>
            <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:AgreementNumber"/>
          </ns0:AgreementNumber>
        </ns0:ServiceAgreement>
      </ns0:RcrmAccount-Thin>
    </ns0:AccountContactPublish>
  </xsl:template>
</xsl:stylesheet>
