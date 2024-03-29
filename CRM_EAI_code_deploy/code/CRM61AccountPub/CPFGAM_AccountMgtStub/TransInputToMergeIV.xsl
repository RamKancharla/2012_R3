<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="xsd/EAI.MSG.EXT.137_PropagateAccountHierarchyRequest.xsd"/>
      <rootElement name="propagateAccountHierarchyRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/external/CEP/AccountManagementServices"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="CPFGAccount_table.xsd"/>
      <rootElement name="CpfgAccountCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/CPFGAccount"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [FRI MAR 07 00:33:25 GMT 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/CPFGAccount" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/external/CEP/AccountManagementServices" exclude-result-prefixes="xsl xsd local ns0 xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:CpfgAccountCollection>
      <ns0:CpfgAccount>
        <ns0:id>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:accountID"/>
        </ns0:id>
        <ns0:parentId>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:parentAccountID"/>
        </ns0:parentId>
        <ns0:hierarchyType>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:accountType"/>
        </ns0:hierarchyType>
        <ns0:name>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:accountName"/>
        </ns0:name>
        <ns0:organisationType>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:organisationtype"/>
        </ns0:organisationType>
        <ns0:addressCity>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:city"/>
        </ns0:addressCity>
        <ns0:addressStateprovcountry>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:country"/>
        </ns0:addressStateprovcountry>
        <ns0:addressStreet>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:address"/>
        </ns0:addressStreet>
        <ns0:site>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:site"/>
        </ns0:site>
        <ns0:region>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:region"/>
        </ns0:region>
        <ns0:subregion>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:subregion"/>
        </ns0:subregion>
        <ns0:mccCode>
          <xsl:value-of select="/local:propagateAccountHierarchyRequest/local:account/local:mcccode"/>
        </ns0:mccCode>
      </ns0:CpfgAccount>
    </ns0:CpfgAccountCollection>
  </xsl:template>
</xsl:stylesheet>
