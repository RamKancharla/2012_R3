<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TF.241_OrderStatus.xsd"/>
      <rootElement name="techFulfilmentOrderStatus" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://ukcq-eai05:7777/orabpel/ccrmasync/CCRMTF_PropagateOrderStatus/EAI.MSG.CCRM.OM.242_PropagateOrderStatus.xsd"/>
      <rootElement name="crmOrderStatus" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/CCRM/OM/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE JUN 30 12:38:26 GMT+05:30 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://www.reuters.com/ns/2007/01/25/GCAP/CCRM/OM/OrderManagement" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns0="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl cmt xsd xsdLocal ns1 ns2 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns2:crmOrderStatus>
      <ns2:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </ns2:eaiHeader>
      <ns2:messageHeader>
        <ns2:actionCode>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:messageHeader/xsdLocal:actionCode"/>
        </ns2:actionCode>
        <ns2:version>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:messageHeader/xsdLocal:version"/>
        </ns2:version>
        <ns2:userId>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:messageHeader/xsdLocal:userId"/>
        </ns2:userId>
      </ns2:messageHeader>
      <ns2:orderHeader>
        <ns2:OrderNumber>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderHeader/xsdLocal:orderNumber"/>
        </ns2:OrderNumber>
        <ns2:technicalFulfilmentStatus>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderHeader/xsdLocal:technicalFulfilmentStatus"/>
        </ns2:technicalFulfilmentStatus>
        <ns2:technicalFulfilmentStatusReason>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderHeader/xsdLocal:technicalFulfilmentStatusReason"/>
        </ns2:technicalFulfilmentStatusReason>
        <ns2:firstName>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderHeader/xsdLocal:firstName"/>
        </ns2:firstName>
        <ns2:lastname>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderHeader/xsdLocal:lastname"/>
        </ns2:lastname>
        <ns2:email>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderHeader/xsdLocal:email"/>
        </ns2:email>
        <ns2:phone>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderHeader/xsdLocal:phone"/>
        </ns2:phone>
        <ns2:technicalOrderNo>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderHeader/xsdLocal:technicalOrderNo"/>
        </ns2:technicalOrderNo>
        <ns2:plannedInstallationDate>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderHeader/xsdLocal:plannedInstallationDate"/>
        </ns2:plannedInstallationDate>
        <ns2:actualInstallationDate>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderHeader/xsdLocal:actualInstallationDate"/>
        </ns2:actualInstallationDate>
        <ns2:ExpectedTechnicallyReadyToMigrateDate>
          <xsl:value-of select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderHeader/xsdLocal:ExpectedTechnicallyReadyToMigrateDate"/>
        </ns2:ExpectedTechnicallyReadyToMigrateDate>
      </ns2:orderHeader>
      <xsl:for-each select="/xsdLocal:techFulfilmentOrderStatus/xsdLocal:orderLineItem">
        <ns2:orderLineItem>
          <ns2:CRMOLIId>
            <xsl:value-of select="xsdLocal:CRMOLIId"/>
          </ns2:CRMOLIId>
          <ns2:actualInstallationDate>
            <xsl:value-of select="xsdLocal:actualInstallationDate"/>
          </ns2:actualInstallationDate>
          <ns2:plannedInstallationDate>
            <xsl:value-of select="xsdLocal:plannedInstallationDate"/>
          </ns2:plannedInstallationDate>
          <ns2:technicalFulfilmentStatus>
            <xsl:value-of select="xsdLocal:technicalFulfilmentStatus"/>
          </ns2:technicalFulfilmentStatus>
        </ns2:orderLineItem>
      </xsl:for-each>
    </ns2:crmOrderStatus>
  </xsl:template>
</xsl:stylesheet>
