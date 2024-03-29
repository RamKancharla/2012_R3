<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="SIEBELACCOUNTSTG_table.xsd"/>
      <rootElement name="SiebelAccountStgCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/SIEBELACCOUNTSTG"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="SIEBELACCOUNTSTGUPDATE_table.xsd"/>
      <rootElement name="SiebelAccountStgCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/SIEBELACCOUNTSTGUPDATE"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU DEC 10 21:26:26 GMT 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/SIEBELACCOUNTSTG" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/SIEBELACCOUNTSTGUPDATE" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" exclude-result-prefixes="xsl xs ns0 ns1 xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns1:SiebelAccountStgCollection>
      <xsl:for-each select="/ns0:SiebelAccountStgCollection/ns0:SiebelAccountStg">
        <ns1:SiebelAccountStg>
          <ns1:accountRowId>
            <xsl:value-of select="ns0:accountRowId"/>
          </ns1:accountRowId>
          <ns1:eaiState>
            <xsl:text disable-output-escaping="no">C</xsl:text>
          </ns1:eaiState>
        </ns1:SiebelAccountStg>
      </xsl:for-each>
    </ns1:SiebelAccountStgCollection>
  </xsl:template>
</xsl:stylesheet>
