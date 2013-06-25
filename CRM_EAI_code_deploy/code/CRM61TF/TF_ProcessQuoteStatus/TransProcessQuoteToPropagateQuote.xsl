<?xml version = '1.0' encoding = 'UTF-8'?>
<!--********************************************************************************
* Module:      TransProcessQuoteToPropagateQuote.xsl
* Type:        XSL file
* Description: The xsl file transforms quote status to CCRMTF_PropagateQuoteStatus.
* Change History
* Version     	Date      Author              	Description Of Change
*
*  1.2         19/08/08  Sreeja Prasad          Mapped allocatedIndividualCRMContactId for PBI-872. 		
**********************************************************************************-->
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TF.155_VettingStatus.xsd"/>
      <rootElement name="vettingStatus" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/TechFul"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://ukcq-eai05:7777/orabpel/ccrmasync/CCRMTF_PropagateQuoteStatus/EAI.MSG.CCRM.TF.156_VettingStatus.xsd"/>
      <rootElement name="vettingStatus" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/TechFul"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE AUG 19 12:22:14 GMT+05:30 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/TechFul" xmlns:cqt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonQuoteTypes" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/TechFul" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl cmt ns2 xsd xsdLocal cqt gcap-sa ns1 ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:vettingStatus>
      <ns0:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </ns0:eaiHeader>
      <ns0:response>
        <cqt:quoteNumber>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:quoteNumber"/>
        </cqt:quoteNumber>
        <cqt:revisionNumber>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:revisionNumber"/>
        </cqt:revisionNumber>
        <cqt:vettingStatus>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:vettingStatus"/>
        </cqt:vettingStatus>
        <cqt:vettingStatusReason>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:vettingStatusReason"/>
        </cqt:vettingStatusReason>
        <cqt:vettingStatusReasonCode>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:vettingStatusReasonCode"/>
        </cqt:vettingStatusReasonCode>
        <cqt:approvalRecordNumber>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:approvalRecordNumber"/>
        </cqt:approvalRecordNumber>
        <cqt:allocatedIndividualFirstName>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:allocatedIndividualFirstName"/>
        </cqt:allocatedIndividualFirstName>
        <cqt:allocatedIndividualSurname>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:allocatedIndividualSurname"/>
        </cqt:allocatedIndividualSurname>
        <cqt:allocatedIndividualEmailAddress>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:allocatedIndividualEmailAddress"/>
        </cqt:allocatedIndividualEmailAddress>
        <cqt:allocatedIndividualTelNumber>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:allocatedIndividualTelNumber"/>
        </cqt:allocatedIndividualTelNumber>
        <cqt:vettingStatusUpdatedDate>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:vettingStatusUpdatedDate"/>
        </cqt:vettingStatusUpdatedDate>
        <cqt:allocatedIndividualCRMContactId>
          <xsl:value-of select="/xsdLocal:vettingStatus/xsdLocal:response/cqt:allocatedIndividualCRMContactId"/>
        </cqt:allocatedIndividualCRMContactId>
      </ns0:response>
    </ns0:vettingStatus>
  </xsl:template>
</xsl:stylesheet>
