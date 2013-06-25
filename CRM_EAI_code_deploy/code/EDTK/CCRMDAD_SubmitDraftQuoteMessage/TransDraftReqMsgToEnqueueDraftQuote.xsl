<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CCRM.DAD.309_DraftQuotePublishRequest.xsd"/>
      <rootElement name="ListOfQuoteInterface" namespace="http://www.reuters.com/ns/2011/03/03/GCAP/EAI/DraftQuoteUpload"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CCRM.DAD.308_DraftQuotePublishRequest.xsd"/>
      <rootElement name="ListOfGenQuoteInterface" namespace="http://www.siebel.com/xml/RCRMGenericQuoteInterface"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [WED MAR 21 20:02:27 GMT+05:30 2012]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsdLocal="http://www.reuters.com/ns/2011/03/03/GCAP/EAI/DraftQuoteUpload"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ns0="http://www.siebel.com/xml/RCRMGenericQuoteInterface"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl xsdLocal xsd ns0 nxsd bpws xp20 mhdr bpel orcl dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <ns0:ListOfGenQuoteInterface>
      <ns0:Quote>
        <ns0:InterfaceName>
          <xsl:value-of select="/xsdLocal:ListOfQuoteInterface/xsdLocal:Quote/xsdLocal:InterfaceName"/>
        </ns0:InterfaceName>
        <ns0:TransactionId>
          <xsl:value-of select="/xsdLocal:ListOfQuoteInterface/xsdLocal:Quote/xsdLocal:TransactionId"/>
        </ns0:TransactionId>
        <xsl:for-each select="/xsdLocal:ListOfQuoteInterface/xsdLocal:Quote/xsdLocal:LineItems">
          <ns0:LineItems>
            <ns0:ActionCode>
              <xsl:value-of select="xsdLocal:ActionCode"/>
            </ns0:ActionCode>
            <ns0:BillingAccountNumber>
              <xsl:value-of select="xsdLocal:BillingAccountNumber"/>
            </ns0:BillingAccountNumber>
            <ns0:BillingStartDate>
              <xsl:value-of select="xsdLocal:BillingStartDate"/>
            </ns0:BillingStartDate>
            <ns0:BillingStopDate>
              <xsl:value-of select="xsdLocal:BillingStopDate"/>
            </ns0:BillingStopDate>
            <ns0:GlobalPLI>
              <xsl:value-of select="xsdLocal:GlobalPLI"/>
            </ns0:GlobalPLI>
            <ns0:InstallAccountNumber>
              <xsl:value-of select="xsdLocal:InstallToAccountNumber"/>
            </ns0:InstallAccountNumber>
            <ns0:InstalledQuantity>
              <xsl:value-of select="xsdLocal:InstalledQuantity"/>
            </ns0:InstalledQuantity>
            <ns0:LineNumber>
              <xsl:value-of select="xsdLocal:LineNumber"/>
            </ns0:LineNumber>
            <ns0:LineStatus>
              <xsl:value-of select="xsdLocal:LineStatus"/>
            </ns0:LineStatus>
            <ns0:LocationAccountNumber>
              <xsl:value-of select="xsdLocal:LocationAccountNumber"/>
            </ns0:LocationAccountNumber>
            <ns0:Operation>
              <xsl:value-of select="xsdLocal:Operation"/>
            </ns0:Operation>
            <xsl:choose>
              <xsl:when test='xsdLocal:ActionCode = "Delete"'>
                <ns0:PDPCode>
                  <xsl:value-of select='dvm:lookupValue("oramds:/apps/EAIMetaData/dvm/eDTKPDPCodeToSiebelPDPCode.dvm","eDTKPDP",concat(substring(../xsdLocal:TransactionId,1.0,2.0),xsdLocal:PDPCode),"SiebelPDP",xsdLocal:PDPCode)'/>
                </ns0:PDPCode>
              </xsl:when>
              <xsl:otherwise>
                <ns0:PDPCode>
                  <xsl:value-of select="xsdLocal:PDPCode"/>
                </ns0:PDPCode>
              </xsl:otherwise>
            </xsl:choose>
            <ns0:PONumber>
              <xsl:value-of select="xsdLocal:PONumber"/>
            </ns0:PONumber>
            <ns0:QuantityRequested>
              <xsl:value-of select="xsdLocal:QuantityRequested"/>
            </ns0:QuantityRequested>
            <ns0:SalesReasonCode>
              <xsl:value-of select="xsdLocal:SalesReason"/>
            </ns0:SalesReasonCode>
            <ns0:ClientRequestedQuantity>
              <xsl:value-of select="xsdLocal:ClientRequestedQuantity"/>
            </ns0:ClientRequestedQuantity>
          </ns0:LineItems>
        </xsl:for-each>
      </ns0:Quote>
    </ns0:ListOfGenQuoteInterface>
  </xsl:template>
</xsl:stylesheet>