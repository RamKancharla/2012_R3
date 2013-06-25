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
      <schema location="http://ukcq-eai03:7777/orabpel/ccrmsync/SequenceChecker/EAI.MSG.UTL.185_CheckSequenceRequest.xsd"/>
      <rootElement name="checkSequenceRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/UTL/Sequencer"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE MAR 03 17:57:24 GMT+05:30 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/UTL/Sequencer" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/AccountPublish" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl xsd xsdLocal gcap-cmt ns0 gcap-sa bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:checkSequenceRequest>
      <ns0:eaiHeader>
        <gcap-cmt:applicationId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:applicationId"/>
        </gcap-cmt:applicationId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:timeStamp"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:instanceId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:instanceId"/>
        </gcap-cmt:instanceId>
        <gcap-cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:timeToLive"/>
        </gcap-cmt:timeToLive>
        <gcap-cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:payloadVersion"/>
        </gcap-cmt:payloadVersion>
      </ns0:eaiHeader>
      <ns0:seqRequestDetails>
        <ns0:context>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;SequenceContextPropagateAccountFromTrust&quot;,&quot;Value&quot;,&quot;TRUST-CRM Account Management&quot;)"/>
        </ns0:context>
        <ns0:messageType>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;SequencerMessageTypePropagateAccountFromTrust&quot;,&quot;Value&quot;,&quot;PropagateAccountDetails.SFDCId&quot;)"/>
        </ns0:messageType>
        <ns0:process>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;TRUSTAMPropagateAccount&quot;,&quot;Value&quot;,&quot;TRUSTAM_PropagateAccount&quot;)"/>
        </ns0:process>
        <ns0:contextId>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:SiebelId"/>
        </ns0:contextId>
        <ns0:correlationID>
          <xsl:value-of select="/xsdLocal:publishTrustAccounts/xsdLocal:eaiHeader/xsdLocal:tracingId"/>
        </ns0:correlationID>
      </ns0:seqRequestDetails>
    </ns0:checkSequenceRequest>
  </xsl:template>
</xsl:stylesheet>