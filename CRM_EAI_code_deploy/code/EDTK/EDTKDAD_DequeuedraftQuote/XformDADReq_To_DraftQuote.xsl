<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.eDTK.QM.307_DraftQuoteMessage.xsd"/>
      <rootElement name="DAD" namespace="http://www.reuters.com/ns/2011/03/03/GCAP/EAI/eDTK/QM/DraftQuote"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai01:7777/orabpel/ccrmasync/CCRMDAD_SubmitdraftQuote/EAI.MSG.CCRM.DAD.309_DraftQuotePublishRequest.xsd"/>
      <rootElement name="ListOfGenQuoteInterface" namespace="http://www.siebel.com/xml/RCRMGenericQuoteInterface"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON MAR 28 14:09:14 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsdLocal="http://www.reuters.com/ns/2011/03/03/GCAP/EAI/eDTK/QM/DraftQuote" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://www.siebel.com/xml/RCRMGenericQuoteInterface" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" exclude-result-prefixes="xsl xsdLocal xsd ns0 xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:ListOfGenQuoteInterface>
      <ns0:Quote>
        <ns0:InterfaceName>
          <xsl:text disable-output-escaping="no">eDTK</xsl:text>
        </ns0:InterfaceName>
        <ns0:TransactionId>
          <xsl:value-of select="/xsdLocal:DAD/xsdLocal:DADheader/xsdLocal:DADId"/>
        </ns0:TransactionId>
        <xsl:for-each select="/xsdLocal:DAD/xsdLocal:QuoteItem">
          <ns0:LineItems>
           <xsl:choose>
              <xsl:when test="xsdLocal:Status = &quot;I&quot;">
                <ns0:ActionCode>
                  <xsl:text disable-output-escaping="no">Add</xsl:text>
                </ns0:ActionCode>
                <ns0:BillingStartDate>
                  <xsl:value-of select="../xsdLocal:DADheader/xsdLocal:BillingStartDate"/>
                </ns0:BillingStartDate>
                <ns0:BillingStopDate> 
                  <xsl:text disable-output-escaping="no"/>
                </ns0:BillingStopDate> 
                 <ns0:Operation>
                  <xsl:text disable-output-escaping="no">New</xsl:text>
                </ns0:Operation>
              </xsl:when>
              <xsl:when test="xsdLocal:Status = &quot;R&quot;">
                <ns0:ActionCode>
                  <xsl:text disable-output-escaping="no">Delete</xsl:text>
                </ns0:ActionCode>
                <ns0:BillingStartDate>
                  <xsl:text disable-output-escaping="no"/>
                </ns0:BillingStartDate>
                <ns0:BillingStopDate>
                  <xsl:value-of select="../xsdLocal:DADheader/xsdLocal:BillingStopDate"/>
                </ns0:BillingStopDate>
                <ns0:Operation>
                  <xsl:text disable-output-escaping="no">Cancellation</xsl:text>
                </ns0:Operation>
              </xsl:when>
            </xsl:choose>
            <ns0:GlobalPLI>
              <xsl:value-of select="xsdLocal:DefaultPli"/>
            </ns0:GlobalPLI>
            <ns0:InstalledQuantity>
              <xsl:value-of select="xsdLocal:InstallQuantity"/>
            </ns0:InstalledQuantity>
            <ns0:LineNumber>
              <xsl:value-of select="position()"/>
            </ns0:LineNumber>
            <ns0:LineStatus>
              <xsl:value-of select="xsdLocal:LineStatus"/>
            </ns0:LineStatus>
            <ns0:PDPCode>
              <xsl:value-of select="xsdLocal:PDPCode"/>
            </ns0:PDPCode>
            <ns0:QuantityRequested>
              <xsl:value-of select="xsdLocal:DifferenceQuantity"/>
            </ns0:QuantityRequested>
            <ns0:SalesReasonCode>
              <xsl:text disable-output-escaping="no">DAD Movement</xsl:text>
            </ns0:SalesReasonCode>
            <ns0:SubscriberNumber>
              <xsl:value-of select="xsdLocal:BillingAccountSubscriberNumber"/>
            </ns0:SubscriberNumber>
            <ns0:SubAccountNumber>
              <xsl:value-of select="xsdLocal:BillingAccountSubAccountNumber"/>
            </ns0:SubAccountNumber>
            <ns0:ClientRequestedQuantity>
              <xsl:value-of select="xsdLocal:UserRequestedQuantity"/>
            </ns0:ClientRequestedQuantity>
          </ns0:LineItems>
        </xsl:for-each>
      </ns0:Quote>
    </ns0:ListOfGenQuoteInterface>
  </xsl:template>
</xsl:stylesheet>