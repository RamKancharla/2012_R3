<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="Update_Interfacebuffer_table.xsd"/>
      <rootElement name="InterfaceBufferCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/Update_Interfacebuffer"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="Update_Interfacebuffer_table.xsd"/>
      <rootElement name="InterfaceBufferCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/Update_Interfacebuffer"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [MON DEC 26 13:14:41 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/Update_Interfacebuffer"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl ns0 xsd xp20 bpws bpel mhdr oraext dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <ns0:InterfaceBufferCollection>
      <ns0:InterfaceBuffer>
        <ns0:id>
          <xsl:text disable-output-escaping="no">' '</xsl:text>
        </ns0:id>
        <ns0:created>
          <xsl:text disable-output-escaping="no">' '</xsl:text>
        </ns0:created>
        <ns0:payload>
          <xsl:text disable-output-escaping="no">' '</xsl:text>
        </ns0:payload>
        <ns0:interfaceId>
          <xsl:text disable-output-escaping="no">' '</xsl:text>
        </ns0:interfaceId>
        <ns0:referenceId>
          <xsl:text disable-output-escaping="no">' '</xsl:text>
        </ns0:referenceId>
        <ns0:state>
          <xsl:text disable-output-escaping="no">' '</xsl:text>
        </ns0:state>
        <ns0:lastUpdated>
          <xsl:text disable-output-escaping="no">' '</xsl:text>
        </ns0:lastUpdated>
        <ns0:createdBy>
          <xsl:text disable-output-escaping="no">' '</xsl:text>
        </ns0:createdBy>
        <ns0:updatedBy>
          <xsl:text disable-output-escaping="no">' '</xsl:text>
        </ns0:updatedBy>
        <ns0:errorMessage>
          <xsl:text disable-output-escaping="no">' '</xsl:text>
        </ns0:errorMessage>
      </ns0:InterfaceBuffer>
    </ns0:InterfaceBufferCollection>
  </xsl:template>
</xsl:stylesheet>
