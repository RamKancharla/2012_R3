<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TOM.AM.179_PublishAccountEventRequest.xsd"/>
      <rootElement name="accountPubRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/AccountPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.TOM.AM.179_PublishAccountEventRequest.xsd"/>
      <rootElement name="accountPubRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/AccountPublish"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON FEB 15 16:59:47 IST 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:gcap-NAT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableAccountTypes" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/AccountPublish" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:gcap-cat="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl gcap-cmt xsd gcap-NAT local ns0 gcap-cat bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <local:accountPubRequest>
      <local:eaiHeader>
        <gcap-cmt:applicationId>
          <xsl:value-of select="/local:accountPubRequest/local:eaiHeader/gcap-cmt:applicationId"/>
        </gcap-cmt:applicationId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/local:accountPubRequest/local:eaiHeader/gcap-cmt:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageId>
          <xsl:value-of select="/local:accountPubRequest/local:eaiHeader/gcap-cmt:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/local:accountPubRequest/local:eaiHeader/gcap-cmt:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/local:accountPubRequest/local:eaiHeader/gcap-cmt:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="/local:accountPubRequest/local:eaiHeader/gcap-cmt:timeStamp"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:instanceId>
          <xsl:value-of select="/local:accountPubRequest/local:eaiHeader/gcap-cmt:instanceId"/>
        </gcap-cmt:instanceId>
        <gcap-cmt:timeToLive>
          <xsl:value-of select="/local:accountPubRequest/local:eaiHeader/gcap-cmt:timeToLive"/>
        </gcap-cmt:timeToLive>
        <gcap-cmt:payloadVersion>
          <xsl:value-of select="/local:accountPubRequest/local:eaiHeader/gcap-cmt:payloadVersion"/>
        </gcap-cmt:payloadVersion>
      </local:eaiHeader>
      <local:actionCode>
        <xsl:value-of select="/local:accountPubRequest/local:actionCode"/>
      </local:actionCode>
      <local:account>
        <local:accountID>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:accountID"/>
        </local:accountID>
        <local:parentAccountID>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:parentAccountID"/>
        </local:parentAccountID>
        <local:masterAccountID>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:masterAccountID"/>
        </local:masterAccountID>
        <local:hierarchyType>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:hierarchyType"/>
        </local:hierarchyType>
        <local:accountName>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:accountName"/>
        </local:accountName>
        <local:address>
          <local:city>
            <xsl:value-of select="/local:accountPubRequest/local:account/local:address/local:city"/>
          </local:city>
          <local:mainFaxNumber>
            <xsl:value-of select="/local:accountPubRequest/local:account/local:address/local:mainFaxNumber"/>
          </local:mainFaxNumber>
          <local:mainTelephoneNumber>
            <xsl:value-of select="/local:accountPubRequest/local:account/local:address/local:mainTelephoneNumber"/>
          </local:mainTelephoneNumber>
          <local:name>
            <xsl:value-of select="/local:accountPubRequest/local:account/local:address/local:name"/>
          </local:name>
          <local:postalCode>
            <xsl:value-of select="/local:accountPubRequest/local:account/local:address/local:postalCode"/>
          </local:postalCode>
          <local:stateProvinceCounty>
            <xsl:value-of select="/local:accountPubRequest/local:account/local:address/local:stateProvinceCounty"/>
          </local:stateProvinceCounty>
          <local:country>
            <xsl:value-of select="/local:accountPubRequest/local:account/local:address/local:country"/>
          </local:country>
          <local:streetAddress>
            <xsl:value-of select="/local:accountPubRequest/local:account/local:address/local:streetAddress"/>
          </local:streetAddress>
          <local:addressType>
            <xsl:value-of select="/local:accountPubRequest/local:account/local:address/local:addressType"/>
          </local:addressType>
          <local:isPrimaryAddress>
            <xsl:value-of select="/local:accountPubRequest/local:account/local:address/local:isPrimaryAddress"/>
          </local:isPrimaryAddress>
        </local:address>
        <local:subscriberNumber>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:subscriberNumber"/>
        </local:subscriberNumber>
        <local:subAccountNumber>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:subAccountNumber"/>
        </local:subAccountNumber>
        <local:status>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:status"/>
        </local:status>
        <local:site>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:site"/>
        </local:site>
        <local:region>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:region"/>
        </local:region>
        <local:subRegion>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:subRegion"/>
        </local:subRegion>
        <local:subscriberCountryCode>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:subscriberCountryCode"/>
        </local:subscriberCountryCode>
        <local:BusinessChannel>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:BusinessChannel"/>
        </local:BusinessChannel>
        <local:FieldServiceLocation>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:FieldServiceLocation"/>
        </local:FieldServiceLocation>
        <local:masterAccountClass>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:masterAccountClass"/>
        </local:masterAccountClass>
        <local:legalEntityFlag>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:legalEntityFlag"/>
        </local:legalEntityFlag>
        <local:customerReferenceNumber>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:customerReferenceNumber"/>
        </local:customerReferenceNumber>
      </local:account>
    </local:accountPubRequest>
  </xsl:template>
</xsl:stylesheet>
