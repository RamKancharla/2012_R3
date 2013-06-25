<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../SFDCCM_ContactPublish.wsdl"/>
      <rootElement name="TRUSTOutboundContact" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/ContactPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://inkaban3ua-eai05:8000/soa-infra/services/CRMASYNC/CCRMCM_PropagateSFDCContact/CCRMCM_PropagateSFDCContact.wsdl"/>
      <rootElement name="TRUSTOutboundContact" namespace="http://soap.sforce.com/schemas/class/ContactManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.5.0(build 110418.1550.0174) AT [TUE JAN 03 13:09:49 GMT+05:30 2012]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:tns="http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/ContactPublish"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns5="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                xmlns:ns0="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:client="http://xmlns.oracle.com/CRM61ContactPub/CCRMCM_PropagateSFDCContact/CCRMCM_PropagateSFDCContact"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:ns1="http://soap.sforce.com/schemas/class/ContactManagement"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ns6="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOpportunityTypes"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns4="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes"
                xmlns:ns2="http://schemas.oracle.com/bpel/extension"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns soap ns0 xsd ns3 plnk ns5 client ns1 ns6 ns4 ns2 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <ns1:TRUSTOutboundContact>
      <ns1:eaiHeader>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:eaiHeader/@xsi:nil">
          <xsl:attribute name="xsi:nil">
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/@xsi:nil"/>
          </xsl:attribute>
        </xsl:if>
        <ns5:applicationId>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:applicationId"/>
        </ns5:applicationId>
        <ns5:transactionId>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:transactionId"/>
        </ns5:transactionId>
        <ns5:messageId>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:messageId"/>
        </ns5:messageId>
        <ns5:messageHistory>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:messageHistory"/>
        </ns5:messageHistory>
        <ns5:tracingId>
          <xsl:if test="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:tracingId/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:tracingId/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:tracingId"/>
        </ns5:tracingId>
        <ns5:timeStamp>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:timeStamp"/>
        </ns5:timeStamp>
        <ns5:instanceId>
          <xsl:if test="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:instanceId/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:instanceId/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:instanceId"/>
        </ns5:instanceId>
        <ns5:timeToLive>
          <xsl:if test="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:timeToLive/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:timeToLive/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:timeToLive"/>
        </ns5:timeToLive>
        <ns5:payloadVersion>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:eaiHeader/tns:payloadVersion"/>
        </ns5:payloadVersion>
      </ns1:eaiHeader>
      <ns1:ConRequest>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/@xsi:nil">
          <xsl:attribute name="xsi:nil">
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/@xsi:nil"/>
          </xsl:attribute>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ActionCode">
          <ns1:ActionCode>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ActionCode/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ActionCode/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ActionCode"/>
          </ns1:ActionCode>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus1">
          <ns1:AssetFocus1>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus1/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus1/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus1"/>
          </ns1:AssetFocus1>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus2">
          <ns1:AssetFocus2>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus2/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus2/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus2"/>
          </ns1:AssetFocus2>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus3">
          <ns1:AssetFocus3>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus3/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus3/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:AssetFocus3"/>
          </ns1:AssetFocus3>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:BuySellCorpSide">
          <ns1:BuySellCorpSide>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:BuySellCorpSide/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:BuySellCorpSide/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:BuySellCorpSide"/>
          </ns1:BuySellCorpSide>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ComplianceJobRole">
          <ns1:ComplianceJobRole>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ComplianceJobRole/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ComplianceJobRole/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ComplianceJobRole"/>
          </ns1:ComplianceJobRole>
        </xsl:if>
        <xsl:for-each select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ContactAccountData">
          <ns1:ContactAccountData>
            <xsl:if test="@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <ns1:AccountANumber>
              <xsl:value-of select="tns:AccountANumber"/>
            </ns1:AccountANumber>
            <xsl:if test="tns:ActionCode">
              <ns1:ActionCode>
                <xsl:if test="tns:ActionCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="tns:ActionCode/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="tns:ActionCode"/>
              </ns1:ActionCode>
            </xsl:if>
            <xsl:if test="tns:PrimaryFlag">
              <ns1:PrimaryFlag>
                <xsl:if test="tns:PrimaryFlag/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="tns:PrimaryFlag/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="tns:PrimaryFlag"/>
              </ns1:PrimaryFlag>
            </xsl:if>
          </ns1:ContactAccountData>
        </xsl:for-each>
        <xsl:for-each select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ContactFunctionData">
          <ns1:ContactFunctionData>
            <xsl:if test="@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <ns1:AccountANumber>
              <xsl:value-of select="tns:AccountANumber"/>
            </ns1:AccountANumber>
            <xsl:if test="tns:ActionCode">
              <ns1:ActionCode>
                <xsl:if test="tns:ActionCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="tns:ActionCode/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="tns:ActionCode"/>
              </ns1:ActionCode>
            </xsl:if>
            <ns1:FunctionValue>
              <xsl:value-of select="tns:FunctionValue"/>
            </ns1:FunctionValue>
            <xsl:if test="tns:PrimaryFlag">
              <ns1:PrimaryFlag>
                <xsl:if test="tns:PrimaryFlag/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="tns:PrimaryFlag/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="tns:PrimaryFlag"/>
              </ns1:PrimaryFlag>
            </xsl:if>
          </ns1:ContactFunctionData>
        </xsl:for-each>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ContactUniqueNumber">
          <ns1:ContactUniqueNumber>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ContactUniqueNumber/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ContactUniqueNumber/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:ContactUniqueNumber"/>
          </ns1:ContactUniqueNumber>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Department">
          <ns1:Department>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Department/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Department/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Department"/>
          </ns1:Department>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:DirectMarketing">
          <ns1:DirectMarketing>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:DirectMarketing/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:DirectMarketing/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:DirectMarketing"/>
          </ns1:DirectMarketing>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:EmailAddress">
          <ns1:EmailAddress>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:EmailAddress/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:EmailAddress/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:EmailAddress"/>
          </ns1:EmailAddress>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:EndUserActivity">
          <ns1:EndUserActivity>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:EndUserActivity/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:EndUserActivity/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:EndUserActivity"/>
          </ns1:EndUserActivity>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FaxNumber">
          <ns1:FaxNumber>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FaxNumber/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FaxNumber/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FaxNumber"/>
          </ns1:FaxNumber>
        </xsl:if>
        <ns1:FirstName>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FirstName"/>
        </ns1:FirstName>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Floor">
          <ns1:Floor>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Floor/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Floor/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Floor"/>
          </ns1:Floor>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FTLDate">
          <ns1:FTLDate>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FTLDate/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FTLDate/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FTLDate"/>
          </ns1:FTLDate>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FTLFlag">
          <ns1:FTLFlag>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FTLFlag/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FTLFlag/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:FTLFlag"/>
          </ns1:FTLFlag>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:JobTitle">
          <ns1:JobTitle>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:JobTitle/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:JobTitle/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:JobTitle"/>
          </ns1:JobTitle>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:KNLastTrained">
          <ns1:KNLastTrained>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:KNLastTrained/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:KNLastTrained/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:KNLastTrained"/>
          </ns1:KNLastTrained>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Language">
          <ns1:Language>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Language/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Language/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Language"/>
          </ns1:Language>
        </xsl:if>
        <ns1:LastName>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LastName"/>
        </ns1:LastName>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LastUpdatedBy">
          <ns1:LastUpdatedBy>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LastUpdatedBy/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LastUpdatedBy/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LastUpdatedBy"/>
          </ns1:LastUpdatedBy>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LastUpdatedDate">
          <ns1:LastUpdatedDate>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LastUpdatedDate/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LastUpdatedDate/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LastUpdatedDate"/>
          </ns1:LastUpdatedDate>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LegalConsent">
          <ns1:LegalConsent>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LegalConsent/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LegalConsent/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LegalConsent"/>
          </ns1:LegalConsent>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalFirstName">
          <ns1:LocalFirstName>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalFirstName/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalFirstName/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalFirstName"/>
          </ns1:LocalFirstName>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalLastName">
          <ns1:LocalLastName>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalLastName/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalLastName/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalLastName"/>
          </ns1:LocalLastName>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalSalutation">
          <ns1:LocalSalutation>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalSalutation/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalSalutation/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:LocalSalutation"/>
          </ns1:LocalSalutation>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:MobileNumber">
          <ns1:MobileNumber>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:MobileNumber/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:MobileNumber/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:MobileNumber"/>
          </ns1:MobileNumber>
        </xsl:if>
        <ns1:PrimaryAccountANumber>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:PrimaryAccountANumber"/>
        </ns1:PrimaryAccountANumber>
        <ns1:Salutation>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Salutation"/>
        </ns1:Salutation>
        <ns1:SFDCId>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:SFDCId"/>
        </ns1:SFDCId>
        <ns1:SourceSystem>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:SourceSystem"/>
        </ns1:SourceSystem>
        <ns1:Status>
          <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:Status"/>
        </ns1:Status>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:VIPFlag">
          <ns1:VIPFlag>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:VIPFlag/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:VIPFlag/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:VIPFlag"/>
          </ns1:VIPFlag>
        </xsl:if>
        <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:WorkPhoneNumber">
          <ns1:WorkPhoneNumber>
            <xsl:if test="/tns:TRUSTOutboundContact/tns:ConRequest/tns:WorkPhoneNumber/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:WorkPhoneNumber/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ConRequest/tns:WorkPhoneNumber"/>
          </ns1:WorkPhoneNumber>
        </xsl:if>
      </ns1:ConRequest>
      <xsl:for-each select="/tns:TRUSTOutboundContact/tns:ContactAccount">
        <ns1:ContactAccount>
          <xsl:if test="/tns:TRUSTOutboundContact/tns:ContactAccount/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactAccount/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <ns1:AccountANumber>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactAccount/tns:AccountANumber"/>
          </ns1:AccountANumber>
          <xsl:if test="/tns:TRUSTOutboundContact/tns:ContactAccount/tns:ActionCode">
            <ns1:ActionCode>
              <xsl:if test="/tns:TRUSTOutboundContact/tns:ContactAccount/tns:ActionCode/@xsi:nil">
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactAccount/tns:ActionCode/@xsi:nil"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactAccount/tns:ActionCode"/>
            </ns1:ActionCode>
          </xsl:if>
          <xsl:if test="/tns:TRUSTOutboundContact/tns:ContactAccount/tns:PrimaryFlag">
            <ns1:PrimaryFlag>
              <xsl:if test="/tns:TRUSTOutboundContact/tns:ContactAccount/tns:PrimaryFlag/@xsi:nil">
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactAccount/tns:PrimaryFlag/@xsi:nil"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactAccount/tns:PrimaryFlag"/>
            </ns1:PrimaryFlag>
          </xsl:if>
        </ns1:ContactAccount>
      </xsl:for-each>
      <xsl:for-each select="/tns:TRUSTOutboundContact/tns:ContactFunction">
        <ns1:ContactFunction>
          <xsl:if test="/tns:TRUSTOutboundContact/tns:ContactFunction/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactFunction/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <ns1:AccountANumber>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactFunction/tns:AccountANumber"/>
          </ns1:AccountANumber>
          <xsl:if test="/tns:TRUSTOutboundContact/tns:ContactFunction/tns:ActionCode">
            <ns1:ActionCode>
              <xsl:if test="/tns:TRUSTOutboundContact/tns:ContactFunction/tns:ActionCode/@xsi:nil">
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactFunction/tns:ActionCode/@xsi:nil"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactFunction/tns:ActionCode"/>
            </ns1:ActionCode>
          </xsl:if>
          <ns1:FunctionValue>
            <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactFunction/tns:FunctionValue"/>
          </ns1:FunctionValue>
          <xsl:if test="/tns:TRUSTOutboundContact/tns:ContactFunction/tns:PrimaryFlag">
            <ns1:PrimaryFlag>
              <xsl:if test="/tns:TRUSTOutboundContact/tns:ContactFunction/tns:PrimaryFlag/@xsi:nil">
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactFunction/tns:PrimaryFlag/@xsi:nil"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="/tns:TRUSTOutboundContact/tns:ContactFunction/tns:PrimaryFlag"/>
            </ns1:PrimaryFlag>
          </xsl:if>
        </ns1:ContactFunction>
      </xsl:for-each>
    </ns1:TRUSTOutboundContact>
  </xsl:template>
</xsl:stylesheet>
