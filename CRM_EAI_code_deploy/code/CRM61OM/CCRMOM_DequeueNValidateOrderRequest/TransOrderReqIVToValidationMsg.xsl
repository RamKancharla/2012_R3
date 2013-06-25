<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CCRM.OM.148_OrderRequest.xsd"/>
      <rootElement name="OrderRequest" namespace="http://www.siebel.com/xml/RCRM%20Order%20Entry"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CCRM.OM.148_OrderRequest.xsd"/>
      <rootElement name="OrderRequest" namespace="http://www.siebel.com/xml/RCRM%20Order%20Entry"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.3.0(build 100415.2045.2557) AT [WED DEC 14 19:28:04 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsdLocal="http://www.siebel.com/xml/RCRM%20Order%20Entry"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl xsdLocal xsd bpws xp20 mhdr bpel2 orcl dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <xsdLocal:OrderRequest>
      <xsdLocal:MessageId>
        <xsl:value-of select="/xsdLocal:OrderRequest/xsdLocal:MessageId"/>
      </xsdLocal:MessageId>
      <xsdLocal:OrderEntry-Orders>
        <xsdLocal:OrderNumber>
          <xsl:value-of select="/xsdLocal:OrderRequest/xsdLocal:OrderEntry-Orders/xsdLocal:OrderNumber"/>
        </xsdLocal:OrderNumber>
        <xsdLocal:Status>
          <xsl:value-of select='string("Error")'/>
        </xsdLocal:Status>
        <xsdLocal:OrderEntry-LineItems>
          <xsdLocal:RCRMErrorMessage>
            <xsl:value-of select='dvm:lookupValue("oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm","Reference","OrderValidationFailureCode","Value","X004")'/>
          </xsdLocal:RCRMErrorMessage>
          <xsdLocal:RCRMPrimaryContactUUID>
            <xsl:value-of select="/xsdLocal:OrderRequest/xsdLocal:OrderEntry-Orders/xsdLocal:OrderEntry-LineItems/xsdLocal:RCRMPrimaryContactUUID"/>
          </xsdLocal:RCRMPrimaryContactUUID>
        </xsdLocal:OrderEntry-LineItems>
      </xsdLocal:OrderEntry-Orders>
      <xsdLocal:MessageHistory>
        <xsl:value-of select="/xsdLocal:OrderRequest/xsdLocal:MessageHistory"/>
      </xsdLocal:MessageHistory>
      <xsdLocal:Timestamp>
        <xsl:value-of select="xp20:current-dateTime()"/>
      </xsdLocal:Timestamp>
      <xsdLocal:UserId>
        <xsl:value-of select="/xsdLocal:OrderRequest/xsdLocal:UserId"/>
      </xsdLocal:UserId>
      <xsdLocal:SourceSystem>
        <xsl:value-of select="/xsdLocal:OrderRequest/xsdLocal:SourceSystem"/>
      </xsdLocal:SourceSystem>
    </xsdLocal:OrderRequest>
  </xsl:template>
</xsl:stylesheet>
