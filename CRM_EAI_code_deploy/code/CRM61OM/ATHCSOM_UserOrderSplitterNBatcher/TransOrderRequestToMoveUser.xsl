<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CS.UOM.281_ExtendedUserOrderRequest.xsd"/>
      <rootElement name="ExtendedCSUserOrder" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/UOM/UserOrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://eaidev2:7777/orabpel/ccrmasync/ATHCSOM_MoveUser/EAI.MSG.CS.UOM.280_MoveUserRequest.xsd"/>
      <rootElement name="MoveUser" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/UOM/UserOrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE AUG 04 16:29:35 GMT+05:30 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:gcap-cuot="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserOrderTypes" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/UOM/UserOrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gcap-nuot="http://www.reuters.com/ns/2007/09/01/GCAP/NillableUserOrderTypes" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl gcap-cmt xsd gcap-cuot local gcap-nuot ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <local:MoveUser>
      <local:eaiHeader>
        <gcap-cmt:applicationId>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:eaiHeader/gcap-cmt:applicationId"/>
        </gcap-cmt:applicationId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:eaiHeader/gcap-cmt:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageId>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:eaiHeader/gcap-cmt:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:eaiHeader/gcap-cmt:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:eaiHeader/gcap-cmt:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:eaiHeader/gcap-cmt:timeStamp"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:instanceId>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:eaiHeader/gcap-cmt:instanceId"/>
        </gcap-cmt:instanceId>
        <gcap-cmt:timeToLive>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:eaiHeader/gcap-cmt:timeToLive"/>
        </gcap-cmt:timeToLive>
        <gcap-cmt:payloadVersion>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:eaiHeader/gcap-cmt:payloadVersion"/>
        </gcap-cmt:payloadVersion>
      </local:eaiHeader>
      <local:country>
        <xsl:value-of select="/local:ExtendedCSUserOrder/local:country"/>
      </local:country>
      <local:messageHeader>
        <gcap-cmt:messageId>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:messageHeader/gcap-cmt:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:messageHeader/gcap-cmt:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:messageHeader/gcap-cmt:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:messageHeader/gcap-cmt:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:messageCode>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:messageHeader/gcap-cmt:messageCode"/>
        </gcap-cmt:messageCode>
        <gcap-cmt:version>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:messageHeader/gcap-cmt:version"/>
        </gcap-cmt:version>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:messageHeader/gcap-cmt:timeStamp"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:userId>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:messageHeader/gcap-cmt:userId"/>
        </gcap-cmt:userId>
        <gcap-cmt:objectSystem>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:messageHeader/gcap-cmt:objectSystem"/>
        </gcap-cmt:objectSystem>
      </local:messageHeader>
      <local:sourceSystem>
        <xsl:value-of select="/local:ExtendedCSUserOrder/local:sourceSystem"/>
      </local:sourceSystem>
      <local:userOrderHeader>
        <local:transactionId>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:userOrderHeader/local:transactionId"/>
        </local:transactionId>
        <local:subscriber>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:userOrderHeader/local:subscriber"/>
        </local:subscriber>
        <local:subAccount>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:userOrderHeader/local:subAccount"/>
        </local:subAccount>
        <local:newSubscriber>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:moveuserHeader/local:subscriberId"/>
        </local:newSubscriber>
        <local:newSubAccount>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:moveuserHeader/local:subAccountId"/>
        </local:newSubAccount>
        <local:actionCode>
          <xsl:value-of select="/local:ExtendedCSUserOrder/local:userOrderHeader/local:actionCode"/>
        </local:actionCode>
      </local:userOrderHeader>
      <xsl:for-each select="/local:ExtendedCSUserOrder/local:userOrderLineItem[position() >= (../local:index * ../local:noOfUOLIToSplit) + 1.0 and position() &lt;= (../local:index + 1.0) * ../local:noOfUOLIToSplit]">
        <local:userOrderLineItem>
          <local:uniqueUserLineId>
            <xsl:value-of select="local:UOLIId"/>
          </local:uniqueUserLineId>
          <local:athenSubId>
            <xsl:value-of select="local:athenaSubId"/>
          </local:athenSubId>
        </local:userOrderLineItem>
      </xsl:for-each>
    </local:MoveUser>
  </xsl:template>
</xsl:stylesheet>
