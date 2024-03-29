<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TF.240_UpdateOrderRequest.xsd"/>
      <rootElement name="tfOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="UpdateOrderCache_table.xsd"/>
      <rootElement name="OrderCacheCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateOrderCache"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE OCT 07 01:49:39 BST 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateOrderCache" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl cmt xs xsdLocal ns1 ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:OrderCacheCollection>
      <xsl:for-each select="/xsdLocal:tfOrderRequest/xsdLocal:orderLineItem">
        <ns0:OrderCache>
          <ns0:crmOrdNo>
            <xsl:value-of select="../xsdLocal:orderHeader/xsdLocal:OrderNumber"/>
          </ns0:crmOrdNo>
          <ns0:crmOliId>
            <xsl:value-of select="xsdLocal:CRMOLIId"/>
          </ns0:crmOliId>
          <ns0:tomaction>
            <xsl:value-of select="string('Filter')"/>
          </ns0:tomaction>
        </ns0:OrderCache>
      </xsl:for-each>
    </ns0:OrderCacheCollection>
  </xsl:template>
</xsl:stylesheet>
