<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="EAI.SRV.EXT.SFDC.051_ReceiveOpportunityFromTRUST.wsdl"/>
      <rootElement name="publishOpportunity" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/AccountPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://inkaban3ua-eai01:7777/orabpel/ccrmsync/TRUSTOP_PropagateOpportunity/TRUSTOP_PropagateOpportunity?wsdl"/>
      <rootElement name="SFDCOpportunityEvent" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON SEP 27 14:21:33 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:ns4="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOpportunityTypes" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="http://schemas.oracle.com/bpel/extension" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:client="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement/TRUSTOP_PropagateOpportunity" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns5="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/SFDC/AccountPublish" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/Common" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns6="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl mime wsdl http xsd soapenc soap xsdLocal ns0 plnk ns2 ns4 ns3 client ns5 ns1 ns6 ehdr xp20 ora orcl bpws hwf xref ids" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns2:SFDCOpportunityEvent>
      <ns2:eaiHeader>
        <ns0:applicationId>
          <xsl:value-of select="/xsdLocal:publishOpportunity/eaiHeader/applicationId"/>
        </ns0:applicationId>
        <ns0:transactionId>
          <xsl:value-of select="/xsdLocal:publishOpportunity/eaiHeader/transactionId"/>
        </ns0:transactionId>
        <ns0:messageId>
          <xsl:value-of select="/xsdLocal:publishOpportunity/eaiHeader/messageId"/>
        </ns0:messageId>
        <ns0:messageHistory>
          <xsl:value-of select="/xsdLocal:publishOpportunity/eaiHeader/messageHistory"/>
        </ns0:messageHistory>
        <ns0:tracingId>
          <xsl:value-of select="/xsdLocal:publishOpportunity/eaiHeader/tracingId"/>
        </ns0:tracingId>
        <ns0:timeStamp>
          <xsl:value-of select="/xsdLocal:publishOpportunity/eaiHeader/timeStamp"/>
        </ns0:timeStamp>
        <ns0:instanceId>
          <xsl:value-of select="/xsdLocal:publishOpportunity/eaiHeader/instanceId"/>
        </ns0:instanceId>
        <ns0:timeToLive>
          <xsl:value-of select="/xsdLocal:publishOpportunity/eaiHeader/timeToLive"/>
        </ns0:timeToLive>
        <ns0:payloadVersion>
          <xsl:value-of select="/xsdLocal:publishOpportunity/eaiHeader/payloadVersion"/>
        </ns0:payloadVersion>
      </ns2:eaiHeader>
      <ns2:opportunityHeader>
        <ns2:siebelOptyID>
          <xsl:value-of select="/xsdLocal:publishOpportunity/SiebelOpptyId"/>
        </ns2:siebelOptyID>
        <ns2:SFDCOptyID>
          <xsl:value-of select="/xsdLocal:publishOpportunity/SFDCOpptyId"/>
        </ns2:SFDCOptyID>
        <ns2:optyNumber>
          <xsl:value-of select="/xsdLocal:publishOpportunity/OpportunityNumber"/>
        </ns2:optyNumber>
        <ns2:optyname>
          <xsl:value-of select="/xsdLocal:publishOpportunity/OpportunityName"/>
        </ns2:optyname>
        <ns2:SFDCAccountID>
          <xsl:value-of select="/xsdLocal:publishOpportunity/SFDCAccountId"/>
        </ns2:SFDCAccountID>
        <ns2:siebelAccountID>
          <xsl:value-of select="/xsdLocal:publishOpportunity/SiebelAccountId"/>
        </ns2:siebelAccountID>
        <ns2:optyType>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/SFDCOP_InvokerOpportunityTypeMap.dvm&quot;,&quot;SFDC&quot;,/xsdLocal:publishOpportunity/OpportunityType,&quot;Siebel&quot;,/xsdLocal:publishOpportunity/OpportunityType)"/>
        </ns2:optyType>
        <ns2:expectedRevenue>
          <xsl:value-of select="/xsdLocal:publishOpportunity/ExpectedRevenue"/>
        </ns2:expectedRevenue>
        <ns2:closeDate>
          <xsl:value-of select="/xsdLocal:publishOpportunity/CloseDate"/>
        </ns2:closeDate>
        <ns2:monthlyRecurring>
          <xsl:value-of select="/xsdLocal:publishOpportunity/MonthlyRecurring"/>
        </ns2:monthlyRecurring>
        <ns2:OnceOffRevenue>
          <xsl:value-of select="/xsdLocal:publishOpportunity/OneTimeRevenue"/>
        </ns2:OnceOffRevenue>
        <ns2:probability>
          <xsl:value-of select="/xsdLocal:publishOpportunity/Probability"/>
        </ns2:probability>
        <ns2:salesStage>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/SFDCOP_SalesStageMap.dvm&quot;,&quot;SFDC&quot;,/xsdLocal:publishOpportunity/Stage,&quot;Siebel&quot;,/xsdLocal:publishOpportunity/Stage)"/>
        </ns2:salesStage>
        <ns2:currencyCode>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/SFDCOP_CurrencyCodes.dvm&quot;,&quot;SFDC&quot;,/xsdLocal:publishOpportunity/CurrencyCode,&quot;CANONICAL&quot;,/xsdLocal:publishOpportunity/CurrencyCode)"/>
        </ns2:currencyCode>
        <ns2:winLossReason>
          <xsl:value-of select="/xsdLocal:publishOpportunity/WinLossReason"/>
        </ns2:winLossReason>
        <ns2:expectedRevenueDate>
          <xsl:value-of select="/xsdLocal:publishOpportunity/ExpectedRevenueDate"/>
        </ns2:expectedRevenueDate>
        <ns2:ownerEmail>
          <xsl:value-of select="/xsdLocal:publishOpportunity/OwnerEmailId"/>
        </ns2:ownerEmail>
        <ns2:ftOnceOffRevenue>
          <xsl:value-of select="/xsdLocal:publishOpportunity/FTOneTimeRevenue"/>
        </ns2:ftOnceOffRevenue>
        <ns2:ftRecurringRevenue>
          <xsl:value-of select="/xsdLocal:publishOpportunity/FTMonthlyRecurring"/>
        </ns2:ftRecurringRevenue>
        <ns2:activeQuote>
          <xsl:value-of select="/xsdLocal:publishOpportunity/ActiveQuote"/>
        </ns2:activeQuote>
        <ns2:opportunityDescription>
          <xsl:value-of select="/xsdLocal:publishOpportunity/OpportunityDescription"/>
        </ns2:opportunityDescription>
        <ns2:blockedOpportunities>
          <xsl:value-of select="/xsdLocal:publishOpportunity/UtahBlockedOpportunities"/>
        </ns2:blockedOpportunities>
        <ns2:IsPoRequired>
          <xsl:value-of select="/xsdLocal:publishOpportunity/IsPoRequired"/>
        </ns2:IsPoRequired>
        <ns2:PurchaseOrderNumber>
          <xsl:value-of select="/xsdLocal:publishOpportunity/PurchaseOrderNumber"/>
        </ns2:PurchaseOrderNumber>
        <xsl:for-each select="/xsdLocal:publishOpportunity/OpportunityCampaignData">
          <ns2:campaignSrcCode>
            <ns2:sourceCode>
              <xsl:value-of select="CampaignSourceCode"/>
            </ns2:sourceCode>
          </ns2:campaignSrcCode>
        </xsl:for-each>
        <xsl:for-each select="/xsdLocal:publishOpportunity/OpportunityTeamData">
          <ns2:opportyTeam>
            <ns2:employeeEmailAddress>
              <xsl:value-of select="EmployeeEmailAddress"/>
            </ns2:employeeEmailAddress>
          </ns2:opportyTeam>
        </xsl:for-each>
      </ns2:opportunityHeader>
      <xsl:for-each select="/xsdLocal:publishOpportunity/OpportunityProductData">
        <ns2:opportunityPrdct>
          <ns2:siebelID>
            <xsl:value-of select="SiebelId"/>
          </ns2:siebelID>
          <ns2:productFamily>
            <xsl:value-of select="ProductFamily"/>
          </ns2:productFamily>
          <ns2:quantity>
            <xsl:value-of select="Quantity"/>
          </ns2:quantity>
          <ns2:revenueType>
            <xsl:value-of select="RevenueType"/>
          </ns2:revenueType>
          <ns2:oneTime>
            <xsl:value-of select="OneTimeRevenue"/>
          </ns2:oneTime>
          <ns2:monthlyReccuring>
            <xsl:value-of select="MonthlyRecurringRevenue"/>
          </ns2:monthlyReccuring>
          <ns2:productComments>
            <xsl:value-of select="ProductComments"/>
          </ns2:productComments>
          <ns2:freeTrialFlag>
            <xsl:value-of select="FreeTrialFlag"/>
          </ns2:freeTrialFlag>
          <ns2:revenueMasteringflag>
            <xsl:value-of select="RevenueMasteringFlag"/>
          </ns2:revenueMasteringflag>
          <ns2:InstalledToId>
            <xsl:value-of select="InstalledTo"/>
          </ns2:InstalledToId>
        </ns2:opportunityPrdct>
      </xsl:for-each>
    </ns2:SFDCOpportunityEvent>
  </xsl:template>
</xsl:stylesheet>
