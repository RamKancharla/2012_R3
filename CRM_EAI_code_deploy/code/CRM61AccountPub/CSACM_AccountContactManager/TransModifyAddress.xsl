<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CS.ACM.228_AccountContactPublishRequest.xsd"/>
      <rootElement name="CSAccountContactPublish" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CS.ACM.228_AccountContactPublishRequest.xsd"/>
      <rootElement name="CSAccountContactPublish" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublish"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU FEB 11 19:14:08 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublish" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" exclude-result-prefixes="xsl xsd xsdLocal gcap-sa xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:CSAccountContactPublish>
      <xsdLocal:eaiHeader>
        <xsdLocal:applicationId>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:eaiHeader/xsdLocal:applicationId"/>
        </xsdLocal:applicationId>
        <xsdLocal:transactionId>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:eaiHeader/xsdLocal:transactionId"/>
        </xsdLocal:transactionId>
        <xsdLocal:messageId>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:eaiHeader/xsdLocal:messageId"/>
        </xsdLocal:messageId>
        <xsdLocal:messageHistory>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:eaiHeader/xsdLocal:messageHistory"/>
        </xsdLocal:messageHistory>
        <xsdLocal:tracingId>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:eaiHeader/xsdLocal:tracingId"/>
        </xsdLocal:tracingId>
        <xsdLocal:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </xsdLocal:timeStamp>
        <xsdLocal:instanceId>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:eaiHeader/xsdLocal:instanceId"/>
        </xsdLocal:instanceId>
        <xsdLocal:timeToLive>
          <xsl:value-of select="number(1.0)"/>
        </xsdLocal:timeToLive>
        <xsdLocal:payloadVersion>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:eaiHeader/xsdLocal:payloadVersion"/>
        </xsdLocal:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:messageHeader>
        <xsdLocal:messageId>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:messageHeader/xsdLocal:messageId"/>
        </xsdLocal:messageId>
        <xsdLocal:transactionId>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:messageHeader/xsdLocal:transactionId"/>
        </xsdLocal:transactionId>
        <xsdLocal:messageHistory>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:messageHeader/xsdLocal:messageHistory"/>
        </xsdLocal:messageHistory>
        <xsdLocal:tracingId>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:messageHeader/xsdLocal:tracingId"/>
        </xsdLocal:tracingId>
        <xsdLocal:messageCode>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:messageHeader/xsdLocal:messageCode"/>
        </xsdLocal:messageCode>
        <xsdLocal:version>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:messageHeader/xsdLocal:version"/>
        </xsdLocal:version>
        <xsdLocal:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </xsdLocal:timeStamp>
        <xsdLocal:userId>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:messageHeader/xsdLocal:userId"/>
        </xsdLocal:userId>
        <xsdLocal:objectSystem>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:messageHeader/xsdLocal:objectSystem"/>
        </xsdLocal:objectSystem>
      </xsdLocal:messageHeader>
      <xsdLocal:country>
        <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:country"/>
      </xsdLocal:country>
      <xsdLocal:AccountId>
        <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:AccountId"/>
      </xsdLocal:AccountId>
      <xsdLocal:account>
        <xsdLocal:subscriberNumber>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:subscriberNumber"/>
        </xsdLocal:subscriberNumber>
        <xsdLocal:subscriberName>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:subscriberName)"/>
        </xsdLocal:subscriberName>
        <xsdLocal:irasRef>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:irasRef)"/>
        </xsdLocal:irasRef>
        <xsdLocal:subscriberType>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:subscriberType)"/>
        </xsdLocal:subscriberType>
        <xsdLocal:subscriberRelation>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:subscriberRelation)"/>
        </xsdLocal:subscriberRelation>
        <xsdLocal:ifaceInd>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:ifaceInd)"/>
        </xsdLocal:ifaceInd>
        <xsdLocal:billingFrequency>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:billingFrequency"/>
        </xsdLocal:billingFrequency>
        <xsdLocal:businessCategory>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:businessCategory)"/>
        </xsdLocal:businessCategory>
        <xsdLocal:businessArea>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:businessArea)"/>
        </xsdLocal:businessArea>
        <xsdLocal:subFG1>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:subFG1)"/>
        </xsdLocal:subFG1>
        <xsdLocal:subFG2>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:subFG2)"/>
        </xsdLocal:subFG2>
        <xsdLocal:subscriberTaxCode>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:subscriberTaxCode)"/>
        </xsdLocal:subscriberTaxCode>
        <xsdLocal:subscriberPayTerms>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:subscriberPayTerms)"/>
        </xsdLocal:subscriberPayTerms>
        <xsdLocal:MCCCode>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:MCCCode)"/>
        </xsdLocal:MCCCode>
        <xsdLocal:subMulticSubno>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:subMulticSubno"/>
        </xsdLocal:subMulticSubno>
        <xsdLocal:shortName>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:shortName)"/>
        </xsdLocal:shortName>
        <xsdLocal:cityCode>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:cityCode)"/>
        </xsdLocal:cityCode>
        <xsdLocal:subUserShortName>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:subUserShortName)"/>
        </xsdLocal:subUserShortName>
        <xsdLocal:dirName>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:dirName)"/>
        </xsdLocal:dirName>
        <xsdLocal:enterpriseCode>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:enterpriseCode)"/>
        </xsdLocal:enterpriseCode>
        <xsdLocal:VATNumber>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:VATNumber)"/>
        </xsdLocal:VATNumber>
        <xsdLocal:billingSubscriberNumber>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:billingSubscriberNumber"/>
        </xsdLocal:billingSubscriberNumber>
        <xsdLocal:status>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:status"/>
        </xsdLocal:status>
        <xsdLocal:perClient>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:perClient"/>
        </xsdLocal:perClient>
        <xsdLocal:billingSuspensionRequired>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:billingSuspensionRequired"/>
        </xsdLocal:billingSuspensionRequired>
        <xsdLocal:invoicingSummary>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:invoicingSummary)"/>
        </xsdLocal:invoicingSummary>
        <xsdLocal:CRHoldRequired>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:CRHoldRequired"/>
        </xsdLocal:CRHoldRequired>
        <xsdLocal:directDebitRequired>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:directDebitRequired)"/>
        </xsdLocal:directDebitRequired>
        <xsdLocal:exPostel>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:exPostel)"/>
        </xsdLocal:exPostel>
        <xsdLocal:taxOffice>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:taxOffice)"/>
        </xsdLocal:taxOffice>
        <xsdLocal:RIOIndicator>
          <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:RIOIndicator)"/>
        </xsdLocal:RIOIndicator>
        <xsdLocal:contractType>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:contractType"/>
        </xsdLocal:contractType>
        <xsdLocal:globalSubNum>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:globalSubNum"/>
        </xsdLocal:globalSubNum>
        <xsdLocal:messageId>
          <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:account/xsdLocal:messageId"/>
        </xsdLocal:messageId>
      </xsdLocal:account>
      <xsl:choose>
        <xsl:when test="/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:subAccount = &quot;&quot;">
          <xsdLocal:installAddress>
            <xsdLocal:subAccount>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:subAccount"/>
            </xsdLocal:subAccount>
            <xsdLocal:name1>
              <xsl:value-of select="xp20:upper-case(substring(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:name1,1.0,30.0))"/>
            </xsdLocal:name1>
            <xsdLocal:name2>
              <xsl:value-of select="xp20:upper-case(substring(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:name1,31.0))"/>
            </xsdLocal:name2>
            <xsdLocal:building>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:building)"/>
            </xsdLocal:building>
            <xsdLocal:street>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:street)"/>
            </xsdLocal:street>
            <xsdLocal:city>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:city)"/>
            </xsdLocal:city>
            <xsdLocal:state>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:state)"/>
            </xsdLocal:state>
            <xsdLocal:country>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:country)"/>
            </xsdLocal:country>
            <xsdLocal:zipCode>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:zipCode)"/>
            </xsdLocal:zipCode>
            <xsdLocal:GeoCode>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:GeoCode)"/>
            </xsdLocal:GeoCode>
            <xsdLocal:status>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:status"/>
            </xsdLocal:status>
            <xsdLocal:perClient>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:perClient"/>
            </xsdLocal:perClient>
            <xsdLocal:billingSuspensionRequired>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:billingSuspensionRequired)"/>
            </xsdLocal:billingSuspensionRequired>
            <xsdLocal:accountNotes>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:accountNotes)"/>
            </xsdLocal:accountNotes>
            <xsdLocal:accountDescription>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:accountDescription)"/>
            </xsdLocal:accountDescription>
            <xsdLocal:customerReference>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:customerReference)"/>
            </xsdLocal:customerReference>
            <xsdLocal:RIPurchaseOrder>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:RIPurchaseOrder)"/>
            </xsdLocal:RIPurchaseOrder>
            <xsdLocal:ERPurchaseOrder>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:ERPurchaseOrder)"/>
            </xsdLocal:ERPurchaseOrder>
          </xsdLocal:installAddress>
        </xsl:when>
        <xsl:otherwise>
          <xsdLocal:installAddress>
            <xsdLocal:subAccount>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:subAccount"/>
            </xsdLocal:subAccount>
            <xsdLocal:name1>
              <xsl:value-of select="xp20:upper-case(substring(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:name1,1.0,30.0))"/>
            </xsdLocal:name1>
            <xsdLocal:name2>
              <xsl:value-of select="xp20:upper-case(substring(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:name1,31.0))"/>
            </xsdLocal:name2>
            <xsdLocal:building>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:building)"/>
            </xsdLocal:building>
            <xsdLocal:street>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:street)"/>
            </xsdLocal:street>
            <xsdLocal:city>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:city)"/>
            </xsdLocal:city>
            <xsdLocal:state>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:state)"/>
            </xsdLocal:state>
            <xsdLocal:country>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:country)"/>
            </xsdLocal:country>
            <xsdLocal:zipCode>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:zipCode)"/>
            </xsdLocal:zipCode>
            <xsdLocal:GeoCode>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:GeoCode)"/>
            </xsdLocal:GeoCode>
            <xsdLocal:status>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:status"/>
            </xsdLocal:status>
            <xsdLocal:perClient>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:perClient"/>
            </xsdLocal:perClient>
            <xsdLocal:billingSuspensionRequired>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:billingSuspensionRequired)"/>
            </xsdLocal:billingSuspensionRequired>
            <xsdLocal:accountNotes>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:accountNotes)"/>
            </xsdLocal:accountNotes>
            <xsdLocal:accountDescription>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:accountDescription)"/>
            </xsdLocal:accountDescription>
            <xsdLocal:customerReference>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:customerReference)"/>
            </xsdLocal:customerReference>
            <xsdLocal:RIPurchaseOrder>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:RIPurchaseOrder)"/>
            </xsdLocal:RIPurchaseOrder>
            <xsdLocal:ERPurchaseOrder>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:ERPurchaseOrder)"/>
            </xsdLocal:ERPurchaseOrder>
          </xsdLocal:installAddress>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:subAccount = &quot;&quot;">
          <xsdLocal:billingAddress>
            <xsdLocal:subAccount>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:subAccount"/>
            </xsdLocal:subAccount>
            <xsdLocal:name1>
              <xsl:value-of select="xp20:upper-case(substring(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:name2,1.0,30.0))"/>
            </xsdLocal:name1>
            <xsdLocal:name2>
              <xsl:value-of select="xp20:upper-case(substring(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:name2,31.0))"/>
            </xsdLocal:name2>
            <xsdLocal:building>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:building)"/>
            </xsdLocal:building>
            <xsdLocal:street>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:street)"/>
            </xsdLocal:street>
            <xsdLocal:city>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:city)"/>
            </xsdLocal:city>
            <xsdLocal:state>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:state)"/>
            </xsdLocal:state>
            <xsdLocal:country>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:country)"/>
            </xsdLocal:country>
            <xsdLocal:zipCode>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:zipCode)"/>
            </xsdLocal:zipCode>
            <xsdLocal:GeoCode>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:GeoCode)"/>
            </xsdLocal:GeoCode>
            <xsdLocal:status>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:status"/>
            </xsdLocal:status>
            <xsdLocal:perClient>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:perClient"/>
            </xsdLocal:perClient>
            <xsdLocal:billingSuspensionRequired>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:billingSuspensionRequired)"/>
            </xsdLocal:billingSuspensionRequired>
            <xsdLocal:accountNotes>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:accountNotes)"/>
            </xsdLocal:accountNotes>
            <xsdLocal:accountDescription>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:accountDescription)"/>
            </xsdLocal:accountDescription>
            <xsdLocal:customerReference>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:customerReference)"/>
            </xsdLocal:customerReference>
            <xsdLocal:RIPurchaseOrder>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:RIPurchaseOrder)"/>
            </xsdLocal:RIPurchaseOrder>
            <xsdLocal:ERPurchaseOrder>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:installAddress/xsdLocal:ERPurchaseOrder)"/>
            </xsdLocal:ERPurchaseOrder>
          </xsdLocal:billingAddress>
        </xsl:when>
        <xsl:otherwise>
          <xsdLocal:billingAddress>
            <xsdLocal:subAccount>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:subAccount"/>
            </xsdLocal:subAccount>
            <xsdLocal:name1>
              <xsl:value-of select="xp20:upper-case(substring(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:name2,1.0,30.0))"/>
            </xsdLocal:name1>
            <xsdLocal:name2>
              <xsl:value-of select="xp20:upper-case(substring(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:name2,31.0))"/>
            </xsdLocal:name2>
            <xsdLocal:building>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:building)"/>
            </xsdLocal:building>
            <xsdLocal:street>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:street)"/>
            </xsdLocal:street>
            <xsdLocal:city>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:city)"/>
            </xsdLocal:city>
            <xsdLocal:state>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:state)"/>
            </xsdLocal:state>
            <xsdLocal:country>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:country)"/>
            </xsdLocal:country>
            <xsdLocal:zipCode>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:zipCode)"/>
            </xsdLocal:zipCode>
            <xsdLocal:GeoCode>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:GeoCode)"/>
            </xsdLocal:GeoCode>
            <xsdLocal:status>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:status"/>
            </xsdLocal:status>
            <xsdLocal:perClient>
              <xsl:value-of select="/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:perClient"/>
            </xsdLocal:perClient>
            <xsdLocal:billingSuspensionRequired>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:billingSuspensionRequired)"/>
            </xsdLocal:billingSuspensionRequired>
            <xsdLocal:accountNotes>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:accountNotes)"/>
            </xsdLocal:accountNotes>
            <xsdLocal:accountDescription>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:accountDescription)"/>
            </xsdLocal:accountDescription>
            <xsdLocal:customerReference>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:customerReference)"/>
            </xsdLocal:customerReference>
            <xsdLocal:RIPurchaseOrder>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:RIPurchaseOrder)"/>
            </xsdLocal:RIPurchaseOrder>
            <xsdLocal:ERPurchaseOrder>
              <xsl:value-of select="xp20:upper-case(/xsdLocal:CSAccountContactPublish/xsdLocal:billingAddress/xsdLocal:ERPurchaseOrder)"/>
            </xsdLocal:ERPurchaseOrder>
          </xsdLocal:billingAddress>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:for-each select="/xsdLocal:CSAccountContactPublish/xsdLocal:contact">
        <xsdLocal:contact>
          <xsdLocal:contactId>
            <xsl:value-of select="xsdLocal:contactId"/>
          </xsdLocal:contactId>
          <xsdLocal:personId>
            <xsl:value-of select="xsdLocal:personId"/>
          </xsdLocal:personId>
          <xsdLocal:contactType>
            <xsl:value-of select="xsdLocal:contactType"/>
          </xsdLocal:contactType>
          <xsdLocal:responsibilityCode>
            <xsl:value-of select="xsdLocal:responsibilityCode"/>
          </xsdLocal:responsibilityCode>
          <xsdLocal:firstName>
            <xsl:value-of select="xp20:upper-case(xsdLocal:firstName)"/>
          </xsdLocal:firstName>
          <xsdLocal:lastName>
            <xsl:value-of select="xp20:upper-case(xsdLocal:lastName)"/>
          </xsdLocal:lastName>
          <xsdLocal:title>
            <xsl:value-of select="xp20:upper-case(xsdLocal:title)"/>
          </xsdLocal:title>
          <xsdLocal:jobTitle>
            <xsl:value-of select="xp20:upper-case(xsdLocal:jobTitle)"/>
          </xsdLocal:jobTitle>
          <xsdLocal:businessTelephoneNumber>
            <xsl:value-of select="xsdLocal:businessTelephoneNumber"/>
          </xsdLocal:businessTelephoneNumber>
          <xsdLocal:homeTelephoneNumber>
            <xsl:value-of select="xsdLocal:homeTelephoneNumber"/>
          </xsdLocal:homeTelephoneNumber>
          <xsdLocal:messageId>
            <xsl:value-of select="xsdLocal:messageId"/>
          </xsdLocal:messageId>
        </xsdLocal:contact>
      </xsl:for-each>
    </xsdLocal:CSAccountContactPublish>
  </xsl:template>
</xsl:stylesheet>