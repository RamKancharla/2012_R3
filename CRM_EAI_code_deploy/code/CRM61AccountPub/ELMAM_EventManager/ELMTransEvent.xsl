<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="oramds:/apps/EAIMetaData/schemas/EAI.MSG.AM.176_AccountEvent.xsd"/>
      <rootElement name="accountEvent" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/AM/AccountPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.ELM.AM.301_PublishAccount.xsd"/>
      <rootElement name="AccountPublish" namespace="http://www.reuters.com/ns/2010/07/07/SAMI/ELM/AM/AccountPublish"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [SUN OCT 09 14:59:52 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0" xmlns:elmam="http://www.reuters.com/ns/2010/07/07/SAMI/EAI/AM/AccountPublish" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:gcap-cut="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:gcap-NUT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableUserTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:gcap-NAT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableAccountTypes" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/AM/AccountPublish" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:gcap-cat="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl gcap-cmt gcap-cut xsd gcap-NUT gcap-NAT local ns0 gcap-cat elmam bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <elmam:AccountPublish>
      <elmam:Accounts>
        <elmam:RCRMFinancialCharges>
          <xsl:value-of select="/local:accountEvent/local:account/local:RCRMFinancialCharges"/>
        </elmam:RCRMFinancialCharges>
        <elmam:vatCode>
          <xsl:value-of select="/local:accountEvent/local:account/local:vatCode"/>
        </elmam:vatCode>
        <elmam:payTerms>
          <xsl:value-of select="/local:accountEvent/local:account/local:payTerms"/>
        </elmam:payTerms>
        <elmam:Name>
          <xsl:value-of select="/local:accountEvent/local:account/local:name"/>
        </elmam:Name>
        <elmam:Name1>
          <xsl:value-of select="/local:accountEvent/local:account/local:name"/>
        </elmam:Name1>
        <elmam:Name2>
          <xsl:value-of select="/local:accountEvent/local:account/local:name"/>
        </elmam:Name2>
        <elmam:Name3>
          <xsl:value-of select="/local:accountEvent/local:account/local:name"/>
        </elmam:Name3>
        <elmam:PhoneNumber>
          <xsl:value-of select="/local:accountEvent/local:account/local:phoneNumber"/>
        </elmam:PhoneNumber>
        <elmam:AccountClass>
          <xsl:value-of select="/local:accountEvent/local:account/local:accountClass"/>
        </elmam:AccountClass>
        <elmam:site>
          <xsl:value-of select="/local:accountEvent/local:account/local:site"/>
        </elmam:site>
        <elmam:subscribernumber>
          <xsl:value-of select="/local:accountEvent/local:account/local:subscriberNumber"/>
        </elmam:subscribernumber>
        <elmam:internalaccountflag>
          <xsl:value-of select="/local:accountEvent/local:account/local:internalAccountFlag"/>
        </elmam:internalaccountflag>
        <elmam:BillingCurrency>
          <xsl:value-of select="/local:accountEvent/local:account/local:billingCurrency"/>
        </elmam:BillingCurrency>
        <elmam:BillingFrequency>
          <xsl:value-of select="/local:accountEvent/local:account/local:billingFrequency"/>
        </elmam:BillingFrequency>
        <elmam:AccountStatus>
          <xsl:value-of select="/local:accountEvent/local:account/local:accountStatus"/>
        </elmam:AccountStatus>
        <elmam:AccountFamily>
          <xsl:value-of select="/local:accountEvent/local:account/local:accountFamily"/>
        </elmam:AccountFamily>
        <elmam:InvoiceDeliveryMethod>
          <xsl:value-of select="/local:accountEvent/local:account/local:invoiceDeliveryMethod"/>
        </elmam:InvoiceDeliveryMethod>
        <elmam:ExtBillingAcc>
          <xsl:value-of select="/local:accountEvent/local:account/local:extBillingAccountDesc"/>
        </elmam:ExtBillingAcc>
        <elmam:SoftDollarCode>
          <xsl:value-of select="/local:accountEvent/local:account/local:softDollarCode"/>
        </elmam:SoftDollarCode>
        <elmam:SAPPublishedFlag>
          <xsl:value-of select="/local:accountEvent/local:account/local:SAPPublishedFlag"/>
        </elmam:SAPPublishedFlag>
        <elmam:ContractType>
          <xsl:value-of select="/local:accountEvent/local:account/local:ContractType"/>
        </elmam:ContractType>
        <elmam:LegalEntityFlag>
          <xsl:value-of select="/local:accountEvent/local:account/local:legalEntityFlag"/>
        </elmam:LegalEntityFlag>
        <elmam:BusinessChannel>
          <xsl:value-of select="/local:accountEvent/local:account/local:businessChannel"/>
        </elmam:BusinessChannel>
        <elmam:BillingLanguageDesc>
          <xsl:value-of select="/local:accountEvent/local:account/local:billingLanguage"/>
        </elmam:BillingLanguageDesc>
        <elmam:FaxNumber>
          <xsl:value-of select="/local:accountEvent/local:account/local:faxNumber"/>
        </elmam:FaxNumber>
        <elmam:UrgentBillingFlag>
          <xsl:value-of select="/local:accountEvent/local:account/local:urgentBillingFlag"/>
        </elmam:UrgentBillingFlag>
      </elmam:Accounts>
      <elmam:Address>
        <elmam:FloorAddress>
          <xsl:value-of select="/local:accountEvent/local:accountAddress/local:floorAddress"/>
        </elmam:FloorAddress>
        <elmam:AddressName_Street>
          <xsl:value-of select="/local:accountEvent/local:accountAddress/local:addressName"/>
        </elmam:AddressName_Street>
        <elmam:AddressName_Street1>
          <xsl:value-of select="/local:accountEvent/local:accountAddress/local:addressName"/>
        </elmam:AddressName_Street1>
        <elmam:AddressName_Street2>
          <xsl:value-of select="/local:accountEvent/local:accountAddress/local:addressName"/>
        </elmam:AddressName_Street2>
        <elmam:AddressName_Street3>
          <xsl:value-of select="/local:accountEvent/local:accountAddress/local:addressName"/>
        </elmam:AddressName_Street3>
        <elmam:PostalCode>
          <xsl:value-of select="/local:accountEvent/local:accountAddress/local:postalCode"/>
        </elmam:PostalCode>
        <elmam:City>
          <xsl:value-of select="/local:accountEvent/local:accountAddress/local:city"/>
        </elmam:City>
        <elmam:Country>
          <xsl:value-of select="/local:accountEvent/local:accountAddress/local:country"/>
        </elmam:Country>
        <elmam:State>
          <xsl:value-of select="/local:accountEvent/local:accountAddress/local:state"/>
        </elmam:State>
        <elmam:Region>
          <xsl:value-of select="/local:accountEvent/local:accountAddress/local:region"/>
        </elmam:Region>
      </elmam:Address>
      <elmam:ActionCode>
        <xsl:value-of select="/local:accountEvent/local:actionCode"/>
      </elmam:ActionCode>
      <elmam:timeStamp>
        <xsl:value-of select="/local:accountEvent/local:Timestamp"/>
      </elmam:timeStamp>
      <elmam:Id>
        <xsl:value-of select="/local:accountEvent/local:account/local:id"/>
      </elmam:Id>
    </elmam:AccountPublish>
  </xsl:template>
</xsl:stylesheet>
