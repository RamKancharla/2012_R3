<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="oramds:/apps/EAIMetaData/schemas/EAI.MSG.CM.197_ContactEvent.xsd"/>
      <rootElement name="contactEvent" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CM/ContactPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai05:8000/soa-infra/services/CRMASYNC/AsyncSequenceChecker/EAI.MSG.UTL.185_CheckSequenceRequest.xsd"/>
      <rootElement name="checkSequenceRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/UTL/Sequencer"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [THU DEC 29 17:30:50 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:gcap-cut="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes"
                xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:gcap-NAT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableAccountTypes"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/UTL/Sequencer"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CM/ContactPublish"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:gcap-cat="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl gcap-cut ns0 gcap-NAT gcap-cmt local xsd gcap-cat xsdLocal xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <xsdLocal:checkSequenceRequest>
      <xsdLocal:eaiHeader>
        <gcap-cmt:applicationId>
          <xsl:value-of select="/local:contactEvent/local:eaiHeader/gcap-cmt:applicationId"/>
        </gcap-cmt:applicationId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/local:contactEvent/local:eaiHeader/gcap-cmt:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageId>
          <xsl:value-of select="/local:contactEvent/local:eaiHeader/gcap-cmt:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/local:contactEvent/local:eaiHeader/gcap-cmt:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/local:contactEvent/local:eaiHeader/gcap-cmt:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="/local:contactEvent/local:eaiHeader/gcap-cmt:timeStamp"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:instanceId>
          <xsl:value-of select="/local:contactEvent/local:eaiHeader/gcap-cmt:instanceId"/>
        </gcap-cmt:instanceId>
        <gcap-cmt:timeToLive>
          <xsl:value-of select="/local:contactEvent/local:eaiHeader/gcap-cmt:timeToLive"/>
        </gcap-cmt:timeToLive>
        <gcap-cmt:payloadVersion>
          <xsl:value-of select="/local:contactEvent/local:eaiHeader/gcap-cmt:payloadVersion"/>
        </gcap-cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:seqRequestDetails>
        <xsdLocal:context>
          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm","Reference","SequenceContextForSFDCContact","Value","CRM-Trust.ContactManagement")'/>
        </xsdLocal:context>
        <xsdLocal:messageType>
          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm","Reference","SequenceMessageForSFDCContact","Value","SFDC.ContactID")'/>
        </xsdLocal:messageType>
        <xsdLocal:contextId>
          <xsl:value-of select="/local:contactEvent/local:contact/local:ContactNumber"/>
        </xsdLocal:contextId>
        <xsdLocal:process>
          <xsl:value-of select='dvm:lookupValue("oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm","Reference","SFDCCMEventManagerProcess","Value","SFDCCM_ContactEventManager")'/>
        </xsdLocal:process>
        <xsdLocal:correlationID>
          <xsl:value-of select="/local:contactEvent/local:eaiHeader/gcap-cmt:tracingId"/>
        </xsdLocal:correlationID>
      </xsdLocal:seqRequestDetails>
    </xsdLocal:checkSequenceRequest>
  </xsl:template>
</xsl:stylesheet>
