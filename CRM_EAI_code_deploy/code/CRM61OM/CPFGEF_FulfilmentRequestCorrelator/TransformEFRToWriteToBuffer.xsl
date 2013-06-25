<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CPFG.EF.219_StandaloneElectronicFulfilmentRequest.xsd"/>
      <rootElement name="standaloneElectronicFulfilmentRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/ElectronicFulfilmentServices"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="INTERFACEBUFFER_table.xsd"/>
      <rootElement name="InterfaceBufferCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/INTERFACEBUFFER"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON APR 26 11:54:24 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/ElectronicFulfilmentServices" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/INTERFACEBUFFER" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" exclude-result-prefixes="xsl local xsd ns0 xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:InterfaceBufferCollection>
      <ns0:InterfaceBuffer>
        <ns0:payload>
          <xsl:value-of select="orcl:get-content-as-string(/local:standaloneElectronicFulfilmentRequest)"/>
        </ns0:payload>
        <ns0:interfaceId>
          <xsl:text disable-output-escaping="no">CPFGEF</xsl:text>
        </ns0:interfaceId>
        <ns0:referenceId>
          <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:electronicFulfilmentRequestId"/>
        </ns0:referenceId>
        <ns0:createdBy>
          <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:instanceId"/>
        </ns0:createdBy>
      </ns0:InterfaceBuffer>
    </ns0:InterfaceBufferCollection>
  </xsl:template>
</xsl:stylesheet>
