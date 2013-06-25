<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="UpdateInterfacebuffer_table.xsd"/>
      <rootElement name="InterfaceBufferCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateInterfacebuffer"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="UpdateInterfacebuffer_table.xsd"/>
      <rootElement name="InterfaceBufferCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateInterfacebuffer"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON JUL 05 22:22:06 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateInterfacebuffer" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateInterfaceBuffer" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/TOMAMPOLLINGV" exclude-result-prefixes="xsl xs ns2 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns2:InterfaceBufferCollection>
      <ns2:InterfaceBuffer>
        <ns2:id>
          <xsl:text disable-output-escaping="no">' '</xsl:text>
        </ns2:id>
        <ns2:created>
          <xsl:text disable-output-escaping="no">''</xsl:text>
        </ns2:created>
        <ns2:payload>
          <xsl:text disable-output-escaping="no">''</xsl:text>
        </ns2:payload>
        <ns2:interfaceId>
          <xsl:text disable-output-escaping="no">''</xsl:text>
        </ns2:interfaceId>
        <ns2:referenceId>
          <xsl:text disable-output-escaping="no">''</xsl:text>
        </ns2:referenceId>
        <ns2:state>
          <xsl:text disable-output-escaping="no">''</xsl:text>
        </ns2:state>
        <ns2:lastUpdated>
          <xsl:text disable-output-escaping="no">''</xsl:text>
        </ns2:lastUpdated>
        <ns2:createdBy>
          <xsl:text disable-output-escaping="no">''</xsl:text>
        </ns2:createdBy>
        <ns2:updatedBy>
          <xsl:text disable-output-escaping="no">''</xsl:text>
        </ns2:updatedBy>
        <ns2:errorMessage>
          <xsl:text disable-output-escaping="no">''</xsl:text>
        </ns2:errorMessage>
      </ns2:InterfaceBuffer>
    </ns2:InterfaceBufferCollection>
  </xsl:template>
</xsl:stylesheet>
