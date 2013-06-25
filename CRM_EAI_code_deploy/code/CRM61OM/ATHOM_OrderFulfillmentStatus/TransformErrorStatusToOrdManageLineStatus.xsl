<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.ATH.UOM.304_UserOrderResponse.xsd"/>
      <rootElement name="userProvisionResponse" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/ATH/UOM/UserOrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai01:7777/orabpel/ccrmasync/OM_ManageOrderLineStatus/EAI.MSG.OM.141_OrderStatus.xsd"/>
      <rootElement name="orderStatus" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [FRI SEP 24 14:24:09 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/ATH/UOM/UserOrderManagement" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsdLocal="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:gcap-cuot="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserOrderTypes" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gcap-nuot="http://www.reuters.com/ns/2007/09/01/GCAP/NillableUserOrderTypes" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl gcap-cmt xsd local gcap-cuot gcap-nuot ns0 xsdLocal bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:orderStatus>
      <xsdLocal:eaiHeader>
        <gcap-cmt:applicationId>
          <xsl:value-of select="/local:userProvisionResponse/local:eaiHeader/gcap-cmt:applicationId"/>
        </gcap-cmt:applicationId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/local:userProvisionResponse/local:eaiHeader/gcap-cmt:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageId>
          <xsl:value-of select="/local:userProvisionResponse/local:eaiHeader/gcap-cmt:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/local:userProvisionResponse/local:eaiHeader/gcap-cmt:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/local:userProvisionResponse/local:eaiHeader/gcap-cmt:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="/local:userProvisionResponse/local:eaiHeader/gcap-cmt:timeStamp"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:instanceId>
          <xsl:value-of select="/local:userProvisionResponse/local:eaiHeader/gcap-cmt:instanceId"/>
        </gcap-cmt:instanceId>
        <gcap-cmt:timeToLive>
          <xsl:value-of select="/local:userProvisionResponse/local:eaiHeader/gcap-cmt:timeToLive"/>
        </gcap-cmt:timeToLive>
        <gcap-cmt:payloadVersion>
          <xsl:value-of select="/local:userProvisionResponse/local:eaiHeader/gcap-cmt:payloadVersion"/>
        </gcap-cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:messageHeader>
        <xsdLocal:actionCode>
          <xsl:value-of select="/local:userProvisionResponse/local:userMessageHeader/local:ActionCode"/>
        </xsdLocal:actionCode>
        <xsdLocal:version>
          <xsl:text disable-output-escaping="no"> </xsl:text>
        </xsdLocal:version>
        <xsdLocal:userId>
          <xsl:text disable-output-escaping="no"> </xsl:text>
        </xsdLocal:userId>
      </xsdLocal:messageHeader>
      <xsdLocal:orderLineItem>
        <xsdLocal:orderLinestatus>
          <xsl:value-of select="/local:userProvisionResponse/local:userMessageBody/local:ErrorMsg"/>
        </xsdLocal:orderLinestatus>
      </xsdLocal:orderLineItem>
    </xsdLocal:orderStatus>
  </xsl:template>
</xsl:stylesheet>