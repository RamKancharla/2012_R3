<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CS.ACM.235_PublishAccountContactEventRequest.xsd"/>
      <rootElement name="CSPublishAccountContactRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CS.ACM.235_PublishAccountContactEventRequest_Extended.xsd"/>
      <rootElement name="CSPublishAccountContactRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublishExtended"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU FEB 11 19:10:08 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublishExtended" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:gcap-cut="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublish" xmlns:gcap-NUT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableUserTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:gcap-NAT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableAccountTypes" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:gcap-cat="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl gcap-cmt gcap-cut xsd xsdLocal gcap-NUT gcap-NAT gcap-sa gcap-cat ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:CSPublishAccountContactRequest>
      <ns0:eaiHeader>
        <gcap-cmt:applicationId>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:eaiHeader/gcap-cmt:applicationId"/>
        </gcap-cmt:applicationId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:eaiHeader/gcap-cmt:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageId>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:eaiHeader/gcap-cmt:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:eaiHeader/gcap-cmt:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:eaiHeader/gcap-cmt:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:eaiHeader/gcap-cmt:timeStamp"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:instanceId>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:eaiHeader/gcap-cmt:instanceId"/>
        </gcap-cmt:instanceId>
        <gcap-cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:eaiHeader/gcap-cmt:timeToLive"/>
        </gcap-cmt:timeToLive>
        <gcap-cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:eaiHeader/gcap-cmt:payloadVersion"/>
        </gcap-cmt:payloadVersion>
      </ns0:eaiHeader>
      <ns0:messageHeader>
        <gcap-cmt:messageId>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:messageHeader/gcap-cmt:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:messageHeader/gcap-cmt:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:messageHeader/gcap-cmt:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:messageHeader/gcap-cmt:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:messageCode>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:messageHeader/gcap-cmt:messageCode"/>
        </gcap-cmt:messageCode>
        <gcap-cmt:version>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:messageHeader/gcap-cmt:version"/>
        </gcap-cmt:version>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:messageHeader/gcap-cmt:timeStamp"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:userId>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:messageHeader/gcap-cmt:userId"/>
        </gcap-cmt:userId>
        <gcap-cmt:objectSystem>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:messageHeader/gcap-cmt:objectSystem"/>
        </gcap-cmt:objectSystem>
      </ns0:messageHeader>
      <ns0:country>
        <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:country"/>
      </ns0:country>
      <ns0:actionCode>
        <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:actionCode"/>
      </ns0:actionCode>
      <ns0:AccountId>
        <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:AccountId"/>
      </ns0:AccountId>
      <ns0:account>
        <ns0:subscriberNumber>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:subscriberNumber"/>
        </ns0:subscriberNumber>
        <ns0:subscriberName>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:subscriberName"/>
        </ns0:subscriberName>
        <ns0:irasRef>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:irasRef"/>
        </ns0:irasRef>
        <ns0:subscriberType>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:subscriberType"/>
        </ns0:subscriberType>
        <ns0:subscriberRelation>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:subscriberRelation"/>
        </ns0:subscriberRelation>
        <ns0:ifaceInd>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:ifaceInd"/>
        </ns0:ifaceInd>
        <ns0:billingFrequency>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:billingFrequency"/>
        </ns0:billingFrequency>
        <ns0:businessCategory>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:businessCategory"/>
        </ns0:businessCategory>
        <ns0:businessArea>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:businessArea"/>
        </ns0:businessArea>
        <ns0:subFG1>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:subFG1"/>
        </ns0:subFG1>
        <ns0:subFG2>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:subFG2"/>
        </ns0:subFG2>
        <ns0:TaxCode>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:TaxCode"/>
        </ns0:TaxCode>
        <ns0:subscriberPayTerms>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/SAPAMPaymentTerms.dvm&quot;,&quot;SIEBEL&quot;,/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:subscriberPayTerms,&quot;CS&quot;,/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:subscriberPayTerms)"/>
        </ns0:subscriberPayTerms>
        <ns0:accountFamily>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:accountFamily"/>
        </ns0:accountFamily>
        <ns0:subMulticSubno>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:subMulticSubno"/>
        </ns0:subMulticSubno>
        <ns0:shortName>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:shortName"/>
        </ns0:shortName>
        <ns0:cityCode>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:cityCode"/>
        </ns0:cityCode>
        <ns0:dirName>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:dirName"/>
        </ns0:dirName>
        <ns0:enterpriseCode>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:enterpriseCode"/>
        </ns0:enterpriseCode>
        <ns0:VATNumber>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:VATNumber"/>
        </ns0:VATNumber>
        <ns0:billingSubscriberNumber>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:billingSubscriberNumber"/>
        </ns0:billingSubscriberNumber>
        <ns0:status>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:status"/>
        </ns0:status>
        <ns0:perClient>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:perClient"/>
        </ns0:perClient>
        <ns0:billingSuspensionRequired>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:billingSuspensionRequired"/>
        </ns0:billingSuspensionRequired>
        <ns0:invoicingSummary>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:invoicingSummary"/>
        </ns0:invoicingSummary>
        <ns0:CRHoldRequired>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:CRHoldRequired"/>
        </ns0:CRHoldRequired>
        <ns0:accountDescription>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:accountDescription"/>
        </ns0:accountDescription>
        <ns0:accountNotes>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:accountNotes"/>
        </ns0:accountNotes>
        <ns0:customerReference>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:customerReference"/>
        </ns0:customerReference>
        <ns0:contractType>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:contractType"/>
        </ns0:contractType>
        <ns0:globalSubNum>
          <xsl:value-of select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:account/xsdLocal:globalSubNum"/>
        </ns0:globalSubNum>
      </ns0:account>
      <xsl:for-each select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:address">
        <ns0:address>
          <ns0:subAccount>
            <xsl:value-of select="xsdLocal:subAccount"/>
          </ns0:subAccount>
          <ns0:name1>
            <xsl:value-of select="xsdLocal:name1"/>
          </ns0:name1>
          <ns0:name2>
            <xsl:value-of select="xsdLocal:name2"/>
          </ns0:name2>
          <ns0:addressType>
            <xsl:value-of select="xsdLocal:addressType"/>
          </ns0:addressType>
          <ns0:building>
            <xsl:value-of select="xsdLocal:building"/>
          </ns0:building>
          <ns0:street>
            <xsl:value-of select="xsdLocal:street"/>
          </ns0:street>
          <ns0:city>
            <xsl:value-of select="xsdLocal:city"/>
          </ns0:city>
          <ns0:state>
            <xsl:value-of select="xsdLocal:state"/>
          </ns0:state>
          <ns0:country>
            <xsl:value-of select="xsdLocal:country"/>
          </ns0:country>
          <ns0:zipCode>
            <xsl:value-of select="xsdLocal:zipCode"/>
          </ns0:zipCode>
          <ns0:GeoCode>
            <xsl:value-of select="xsdLocal:GeoCode"/>
          </ns0:GeoCode>
          <ns0:status>
            <xsl:value-of select="xsdLocal:status"/>
          </ns0:status>
          <ns0:perClient>
            <xsl:value-of select="xsdLocal:perClient"/>
          </ns0:perClient>
          <ns0:billingSuspensionRequired>
            <xsl:value-of select="xsdLocal:billingSuspensionRequired"/>
          </ns0:billingSuspensionRequired>
        </ns0:address>
      </xsl:for-each>
      <xsl:for-each select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:employee">
        <ns0:employee>
          <ns0:contactId>
            <xsl:value-of select="xsdLocal:contactId"/>
          </ns0:contactId>
          <ns0:personId>
            <xsl:value-of select="xsdLocal:personId"/>
          </ns0:personId>
          <ns0:contactType>
            <xsl:value-of select="xsdLocal:contactType"/>
          </ns0:contactType>
          <ns0:responsibilityCode>
            <xsl:value-of select="xsdLocal:responsibilityCode"/>
          </ns0:responsibilityCode>
          <ns0:firstName>
            <xsl:value-of select="xsdLocal:firstName"/>
          </ns0:firstName>
          <ns0:lastName>
            <xsl:value-of select="xsdLocal:lastName"/>
          </ns0:lastName>
          <ns0:title>
            <xsl:value-of select="xsdLocal:title"/>
          </ns0:title>
          <ns0:jobTitle>
            <xsl:value-of select="xsdLocal:jobTitle"/>
          </ns0:jobTitle>
          <ns0:businessTelephoneNumber>
            <xsl:value-of select="xsdLocal:businessTelephoneNumber"/>
          </ns0:businessTelephoneNumber>
          <ns0:homeTelephoneNumber>
            <xsl:value-of select="xsdLocal:homeTelephoneNumber"/>
          </ns0:homeTelephoneNumber>
        </ns0:employee>
      </xsl:for-each>
      <xsl:for-each select="/xsdLocal:CSPublishAccountContactRequest/xsdLocal:contact">
        <ns0:contact>
          <ns0:contactId>
            <xsl:value-of select="xsdLocal:contactId"/>
          </ns0:contactId>
          <ns0:personId>
            <xsl:value-of select="xsdLocal:personId"/>
          </ns0:personId>
          <ns0:contactType>
            <xsl:value-of select="xsdLocal:contactType"/>
          </ns0:contactType>
          <ns0:responsibilityCode>
            <xsl:value-of select="xsdLocal:responsibilityCode"/>
          </ns0:responsibilityCode>
          <ns0:firstName>
            <xsl:value-of select="xsdLocal:firstName"/>
          </ns0:firstName>
          <ns0:lastName>
            <xsl:value-of select="xsdLocal:lastName"/>
          </ns0:lastName>
          <ns0:title>
            <xsl:value-of select="xsdLocal:title"/>
          </ns0:title>
          <ns0:jobTitle>
            <xsl:value-of select="xsdLocal:jobTitle"/>
          </ns0:jobTitle>
          <ns0:businessTelephoneNumber>
            <xsl:value-of select="xsdLocal:businessTelephoneNumber"/>
          </ns0:businessTelephoneNumber>
          <ns0:homeTelephoneNumber>
            <xsl:value-of select="xsdLocal:homeTelephoneNumber"/>
          </ns0:homeTelephoneNumber>
        </ns0:contact>
      </xsl:for-each>
      <ns0:CountrySpecAttributes>
        <ns0:directDebitRequired>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns0:directDebitRequired>
        <ns0:exPostel>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns0:exPostel>
        <ns0:taxOffice>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns0:taxOffice>
        <ns0:RIOIndicator>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns0:RIOIndicator>
        <ns0:RIPurchaseOrder>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns0:RIPurchaseOrder>
        <ns0:ERPurchaseOrder>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns0:ERPurchaseOrder>
      </ns0:CountrySpecAttributes>
    </ns0:CSPublishAccountContactRequest>
  </xsl:template>
</xsl:stylesheet>
