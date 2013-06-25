<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="EAI.SRV.EXT.TOM.042_PropagateOrderLineStatusService.wsdl"/>
      <rootElement name="TFOrderLineStatus" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/external/TOM/OrderTechFul"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://ukcq-eai05:7777/orabpel/ccrmsync/TOMOM_UpdateOrderRequestValidator/TOMOM_UpdateOrderRequestValidator?wsdl"/>
      <rootElement name="orderResponseStatus" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/TOM/OM/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE JUN 30 12:46:44 GMT+05:30 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns6="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ns4="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOrderTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/Common" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/external/TOM/OrderTechFul" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns1="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/TOM/OM/OrderManagement" xmlns:ns5="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" xmlns:tns="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/TOM/OM/TOMOM_UpdateOrderRequestValidator" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" exclude-result-prefixes="xsl mime wsdl http xsd soapenc soap xsdLocal tm ns0 plnk ns3 ns6 ns4 ns2 ns1 ns5 tns ehdr xp20 ora orcl bpws hwf xref ids" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns1:orderResponseStatus>
      <ns1:eaiHeader>
        <ns0:applicationId>
          <xsl:value-of select="string(&quot;TOM&quot;)"/>
        </ns0:applicationId>
        <ns0:transactionId>
          <xsl:value-of select="string(&quot;-1&quot;)"/>
        </ns0:transactionId>
        <ns0:messageId>
          <xsl:value-of select="string(&quot;-1&quot;)"/>
        </ns0:messageId>
        <ns0:messageHistory>
          <xsl:value-of select="string(&quot;TOM;EAI;&quot;)"/>
        </ns0:messageHistory>
        <ns0:tracingId>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:tracingId"/>
        </ns0:tracingId>
        <ns0:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </ns0:timeStamp>
        <ns0:instanceId>
          <xsl:value-of select="string(&quot;-1&quot;)"/>
        </ns0:instanceId>
        <ns0:timeToLive>
          <xsl:value-of select="string(&quot;0&quot;)"/>
        </ns0:timeToLive>
        <ns0:payloadVersion>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns0:payloadVersion>
      </ns1:eaiHeader>
      <ns1:orderHeader>
        <ns4:CRMOrderId>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:CRMOrderId"/>
        </ns4:CRMOrderId>
        <ns4:actualInstallationDate>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:orderActualInstallationDate"/>
        </ns4:actualInstallationDate>
        <ns4:plannedInstallationDate>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:orderPlannedInstallationDate"/>
        </ns4:plannedInstallationDate>
        <ns4:technicalFulfilmentStatus>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:orderTechnicalFulfilmentStatus"/>
        </ns4:technicalFulfilmentStatus>
        <ns4:technicalFulfilmentStatusReason>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:orderTechnicalFulfilmentStatusReason"/>
        </ns4:technicalFulfilmentStatusReason>
        <ns4:firstName>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:firstName"/>
        </ns4:firstName>
        <ns4:lastname>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:lastname"/>
        </ns4:lastname>
        <ns4:email>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:email"/>
        </ns4:email>
        <ns4:phone>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:phone"/>
        </ns4:phone>
        <ns4:technicalOrderNumber>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:technicalOrderNumber"/>
        </ns4:technicalOrderNumber>
        <ns4:ExpectedTechnicallyReadyToMigrateDate>
          <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:ExpectedTechnicallyReadyToMigrateDate"/>
        </ns4:ExpectedTechnicallyReadyToMigrateDate>
      </ns1:orderHeader>
      <xsl:if test="/xsdLocal:TFOrderLineStatus/xsdLocal:CRMOLIId != &quot;&quot;">
        <ns1:orderLineItem>
          <ns4:CRMOLIId>
            <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:CRMOLIId"/>
          </ns4:CRMOLIId>
          <ns4:plannedInstallationDate>
            <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:OLIplannedInstallationDate"/>
          </ns4:plannedInstallationDate>
          <ns4:actualInstallationDate>
            <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:OLIactualInstallationDate"/>
          </ns4:actualInstallationDate>
          <ns4:technicalFulfilmentStatus>
            <xsl:value-of select="/xsdLocal:TFOrderLineStatus/xsdLocal:OLItechnicalFulfilmentStatus"/>
          </ns4:technicalFulfilmentStatus>
        </ns1:orderLineItem>
      </xsl:if>
    </ns1:orderResponseStatus>
  </xsl:template>
</xsl:stylesheet>