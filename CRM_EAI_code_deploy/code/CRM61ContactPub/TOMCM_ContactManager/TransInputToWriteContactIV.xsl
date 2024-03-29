<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TOM.CM.198_PublishContactEventRequest.xsd"/>
      <rootElement name="pubContactRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/ContactPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="WriteContact_table.xsd"/>
      <rootElement name="InterfaceBufferCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/WriteContact"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED SEP 23 16:15:51 GMT+05:30 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:gcap-cut="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:gcap-NAT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableAccountTypes" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/ContactPublish" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/WriteContact" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:gcap-cat="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl gcap-cmt gcap-cut xsd gcap-NAT local ns1 gcap-cat ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:InterfaceBufferCollection>
      <ns0:InterfaceBuffer>
        <ns0:payload>
          <xsl:value-of select="orcl:get-content-as-string(/local:pubContactRequest)"/>
        </ns0:payload>
        <ns0:interfaceId>
          <xsl:text disable-output-escaping="no">TOMCM</xsl:text>
        </ns0:interfaceId>
        <ns0:referenceId>
          <xsl:value-of select="/local:pubContactRequest/local:contact/local:UUID"/>
        </ns0:referenceId>
        <ns0:createdBy>
          <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:instanceId"/>
        </ns0:createdBy>
      </ns0:InterfaceBuffer>
    </ns0:InterfaceBufferCollection>
  </xsl:template>
</xsl:stylesheet>
