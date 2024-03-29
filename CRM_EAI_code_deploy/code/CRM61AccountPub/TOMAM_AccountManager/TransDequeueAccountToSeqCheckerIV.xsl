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
      <schema location="http://inkaban3ua-eai01:7777/orabpel/ccrmsync/SequenceChecker/EAI.MSG.UTL.185_CheckSequenceRequest.xsd"/>
      <rootElement name="checkSequenceRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/UTL/Sequencer"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [FRI JUL 03 19:13:53 GMT+05:30 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/UTL/Sequencer" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:gcap-NAT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableAccountTypes" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/AccountPublish" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:gcap-cat="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl gcap-cmt xsd gcap-NAT local gcap-sa gcap-cat xsdLocal bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:checkSequenceRequest>
      <xsdLocal:eaiHeader>
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
      </xsdLocal:eaiHeader>
      <xsdLocal:seqRequestDetails>
        <xsdLocal:context>
          <xsl:value-of select="dvm:lookupValue('oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm','Reference','SequenceContextForAccount','Value','TOMAccountManager')"/>
        </xsdLocal:context>
        <xsdLocal:messageType>
          <xsl:value-of select="dvm:lookupValue('oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm','Reference','SequencerMessageTypeAccount','Value','AccountDetails.MasterAccountID')"/>
        </xsdLocal:messageType>
        <xsdLocal:contextId>
          <xsl:value-of select="/local:accountPubRequest/local:account/local:masterAccountID"/>
        </xsdLocal:contextId>
        <xsdLocal:process>
          <xsl:value-of select="dvm:lookupValue('oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm','Reference','TOMAccountManagerBPELProcess','Value','TOMAM_AccountManager')"/>
        </xsdLocal:process>
        <xsdLocal:correlationID>
          <xsl:value-of select="/local:accountPubRequest/local:eaiHeader/gcap-cmt:tracingId"/>
        </xsdLocal:correlationID>
      </xsdLocal:seqRequestDetails>
    </xsdLocal:checkSequenceRequest>
  </xsl:template>
</xsl:stylesheet>
