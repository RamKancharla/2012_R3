<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CS.UOM.280_MoveUserRequest.xsd"/>
      <rootElement name="MoveUser" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/UOM/UserOrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://eaidev2:7777/TransformMoveUserToCSFormat/TransformMoveUserToCSFormatRequest?WSDL"/>
      <rootElement name="CSMoveUser" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/UOM/UserOrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE AUG 04 16:03:13 GMT+05:30 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:gcap-cuot="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserOrderTypes" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/UOM/UserOrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gcap-nuot="http://www.reuters.com/ns/2007/09/01/GCAP/NillableUserOrderTypes" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl gcap-cmt xsd gcap-cuot local gcap-nuot ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <local:CSMoveUser>
      <local:eaiHeader>
        <local:applicationId>
          <xsl:value-of select="/local:MoveUser/local:eaiHeader/gcap-cmt:applicationId"/>
        </local:applicationId>
        <local:transactionId>
          <xsl:value-of select="/local:MoveUser/local:eaiHeader/gcap-cmt:transactionId"/>
        </local:transactionId>
        <local:messageId>
          <xsl:value-of select="/local:MoveUser/local:eaiHeader/gcap-cmt:messageId"/>
        </local:messageId>
        <local:messageHistory>
          <xsl:value-of select="/local:MoveUser/local:eaiHeader/gcap-cmt:messageHistory"/>
        </local:messageHistory>
        <local:tracingId>
          <xsl:value-of select="/local:MoveUser/local:eaiHeader/gcap-cmt:tracingId"/>
        </local:tracingId>
        <local:timeStamp>
          <xsl:value-of select="/local:MoveUser/local:eaiHeader/gcap-cmt:timeStamp"/>
        </local:timeStamp>
        <local:instanceId>
          <xsl:value-of select="/local:MoveUser/local:eaiHeader/gcap-cmt:instanceId"/>
        </local:instanceId>
        <local:timeToLive>
          <xsl:value-of select="/local:MoveUser/local:eaiHeader/gcap-cmt:timeToLive"/>
        </local:timeToLive>
        <local:payloadVersion>
          <xsl:value-of select="/local:MoveUser/local:eaiHeader/gcap-cmt:payloadVersion"/>
        </local:payloadVersion>
      </local:eaiHeader>
      <local:messageHeader>
        <local:logicalCountry>
          <xsl:value-of select="/local:MoveUser/local:country"/>
        </local:logicalCountry>
        <local:messageId>
          <xsl:value-of select="/local:MoveUser/local:messageHeader/gcap-cmt:messageId"/>
        </local:messageId>
        <local:transactionId>
          <xsl:value-of select="/local:MoveUser/local:messageHeader/gcap-cmt:transactionId"/>
        </local:transactionId>
        <local:messageHistory>
          <xsl:value-of select="/local:MoveUser/local:messageHeader/gcap-cmt:messageHistory"/>
        </local:messageHistory>
        <local:tracingId>
          <xsl:value-of select="/local:MoveUser/local:messageHeader/gcap-cmt:tracingId"/>
        </local:tracingId>
        <local:actionCode>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/ATHCS_OrderActionCodeMap.dvm&quot;,&quot;AthenaActionCode&quot;,/local:MoveUser/local:userOrderHeader/local:actionCode,&quot;CSActionCode&quot;,substring(/local:MoveUser/local:userOrderHeader/local:actionCode,1.0,4.0))"/>
        </local:actionCode>
        <local:version>
          <xsl:value-of select="/local:MoveUser/local:messageHeader/gcap-cmt:version"/>
        </local:version>
        <local:timeStamp>
          <xsl:value-of select="/local:MoveUser/local:messageHeader/gcap-cmt:timeStamp"/>
        </local:timeStamp>
        <local:userId>
          <xsl:value-of select="/local:MoveUser/local:messageHeader/gcap-cmt:userId"/>
        </local:userId>
        <local:objectSystem>
          <xsl:value-of select="/local:MoveUser/local:messageHeader/gcap-cmt:objectSystem"/>
        </local:objectSystem>
        <local:sourceSystem>
          <xsl:value-of select="/local:MoveUser/local:sourceSystem"/>
        </local:sourceSystem>
      </local:messageHeader>
      <local:userOrderHeader>
        <local:transactionId>
          <xsl:value-of select="/local:MoveUser/local:userOrderHeader/local:transactionId"/>
        </local:transactionId>
        <local:subscriber>
          <xsl:value-of select="/local:MoveUser/local:userOrderHeader/local:subscriber"/>
        </local:subscriber>
        <local:subAccount>
          <xsl:value-of select="/local:MoveUser/local:userOrderHeader/local:subAccount"/>
        </local:subAccount>
        <local:newSubscriber>
          <xsl:value-of select="/local:MoveUser/local:userOrderHeader/local:newSubscriber"/>
        </local:newSubscriber>
        <local:newSubAccount>
          <xsl:value-of select="/local:MoveUser/local:userOrderHeader/local:newSubAccount"/>
        </local:newSubAccount>
        <local:actionCode>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/ATHCS_OrderActionCodeMap.dvm&quot;,&quot;AthenaActionCode&quot;,/local:MoveUser/local:userOrderHeader/local:actionCode,&quot;CSActionCode&quot;,substring(/local:MoveUser/local:userOrderHeader/local:actionCode,1.0,4.0))"/>
        </local:actionCode>
      </local:userOrderHeader>
      <xsl:for-each select="/local:MoveUser/local:userOrderLineItem">
        <local:userOrderLineItem>
          <local:uniqueUserLineId>
            <xsl:value-of select="local:uniqueUserLineId"/>
          </local:uniqueUserLineId>
          <local:athenSubId>
            <xsl:value-of select="local:athenSubId"/>
          </local:athenSubId>
        </local:userOrderLineItem>
      </xsl:for-each>
    </local:CSMoveUser>
  </xsl:template>
</xsl:stylesheet>