<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="ExtendedOpportunityEvent.xsd"/>
      <rootElement name="extendedOpportunityEvent" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="EAI.SRV.EXT.SFDC.051_SendOpportunityToSFDCService.wsdl"/>
      <rootElement name="publishOpportunity" namespace="http://soap.sforce.com/schemas/class/OpportunityManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [FRI JUL 30 11:42:08 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOpportunityTypes" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://soap.sforce.com/schemas/class/OpportunityManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns0="http://www.example.org" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns4="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl ns1 xsdLocal ns2 xsd ns0 ns3 ns4 soap tns bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <tns:publishOpportunity>
      <tns:oppRequest>
        <tns:ActiveQuote>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CCRMTRUST_OptyPublishMap.dvm&quot;,&quot;CCRMValue&quot;,/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:activeQuote,&quot;TRUSTValue&quot;,&quot;0&quot;)"/>
        </tns:ActiveQuote>
        <tns:BlockedOpportunities>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:utahBlockedOpportunities"/>
        </tns:BlockedOpportunities>
        <tns:CloseDate>
          <xsl:value-of select="concat(substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:closeDate,7.0,4.0),&quot;-&quot;,substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:closeDate,1.0,2.0),&quot;-&quot;,substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:closeDate,4.0,2.0),&quot;T&quot;,substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:closeDate,12.0,2.0),&quot;:&quot;,substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:closeDate,15.0,2.0),&quot;:&quot;,substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:closeDate,18.0,2.0))"/>
        </tns:CloseDate>
        <tns:CurrencyCode>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:currencyCode"/>
        </tns:CurrencyCode>
        <tns:ExpectedRevenue>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:expectedRevenue"/>
        </tns:ExpectedRevenue>
        <tns:ExpectedRevenueDate>
          <xsl:value-of select="concat(substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:expectedRevenueDate,7.0,4.0),&quot;-&quot;,substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:expectedRevenueDate,1.0,2.0),&quot;-&quot;,substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:expectedRevenueDate,4.0,2.0),&quot;T&quot;,substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:expectedRevenueDate,12.0,2.0),&quot;:&quot;,substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:expectedRevenueDate,15.0,2.0),&quot;:&quot;,substring(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:expectedRevenueDate,18.0,2.0))"/>
        </tns:ExpectedRevenueDate>
        <xsl:choose>
          <xsl:when test="string-length(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:ftRecurringRevenue) > 0.0">
            <tns:FTMonthlyRecurring>
              <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:ftRecurringRevenue"/>
            </tns:FTMonthlyRecurring>
          </xsl:when>
          <xsl:otherwise>
            <tns:FTMonthlyRecurring>
              <xsl:value-of select="number(&quot;0&quot;)"/>
            </tns:FTMonthlyRecurring>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
          <xsl:when test="string-length(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:ftOnceOffRevenue) > 0.0">
            <tns:FTOneTimeRevenue>
              <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:ftOnceOffRevenue"/>
            </tns:FTOneTimeRevenue>
          </xsl:when>
          <xsl:otherwise>
            <tns:FTOneTimeRevenue>
              <xsl:value-of select="number(&quot;0&quot;)"/>
            </tns:FTOneTimeRevenue>
          </xsl:otherwise>
        </xsl:choose>
        <tns:IsPoRequired>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:IsPoRequired"/>
        </tns:IsPoRequired>
        <tns:MonthlyRecurring>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:monthlyRecurring"/>
        </tns:MonthlyRecurring>
        <tns:OneTimeRevenue>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:OnceOffRevenue"/>
        </tns:OneTimeRevenue>
        <xsl:for-each select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:campaignSourceCode">
          <tns:OpportunityCampaignData>
            <tns:CampaignSourceCode>
              <xsl:value-of select="xsdLocal:sourceCode"/>
            </tns:CampaignSourceCode>
          </tns:OpportunityCampaignData>
        </xsl:for-each>
        <tns:OpportunityDescription>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:opportunityDescription"/>
        </tns:OpportunityDescription>
        <tns:OpportunityName>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:optyname"/>
        </tns:OpportunityName>
        <tns:OpportunityNumber>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:optyNumber"/>
        </tns:OpportunityNumber>
        <xsl:for-each select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunityProduct">
          <tns:OpportunityProductData>
            <tns:FreeTrialFlag>
              <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CCRMTRUST_OptyPublishMap.dvm&quot;,&quot;CCRMValue&quot;,xsdLocal:freeTrialFlag,&quot;TRUSTValue&quot;,&quot;0&quot;)"/>
            </tns:FreeTrialFlag>
            <xsl:choose>
              <xsl:when test="string-length(xsdLocal:InstalledToId) > 0.0">
                <tns:InstalledTo>
                  <xsl:value-of select="xref:lookupXRef(&quot;oramds:/apps/EAIMetaData/Xref/CRM_SFDC_ACCTXREF.xref&quot;,&quot;SIEBELID&quot;,xsdLocal:InstalledToId,&quot;SFDCID&quot;,false())"/>
                </tns:InstalledTo>
              </xsl:when>
              <xsl:otherwise>
                <tns:InstalledTo>
                  <xsl:value-of select="xsdLocal:InstalledToId"/>
                </tns:InstalledTo>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="(xsdLocal:revenueType = &quot;Recurring&quot;) and (string-length(xsdLocal:monthlyReccuring) > 0.0)">
                <tns:MonthlyRecurringRevenue>
                  <xsl:value-of select="xsdLocal:monthlyReccuring"/>
                </tns:MonthlyRecurringRevenue>
              </xsl:when>
              <xsl:otherwise>
                <tns:MonthlyRecurringRevenue>
                  <xsl:value-of select="number(&quot;0&quot;)"/>
                </tns:MonthlyRecurringRevenue>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="(xsdLocal:revenueType = &quot;Once-Off&quot;) and (string-length(xsdLocal:revenueType) > 0.0)">
                <tns:OneTimeRevenue>
                  <xsl:value-of select="xsdLocal:oneTime"/>
                </tns:OneTimeRevenue>
              </xsl:when>
              <xsl:otherwise>
                <tns:OneTimeRevenue>
                  <xsl:value-of select="number(&quot;0&quot;)"/>
                </tns:OneTimeRevenue>
              </xsl:otherwise>
            </xsl:choose>
            <tns:ProductComments>
              <xsl:value-of select="xsdLocal:productComments"/>
            </tns:ProductComments>
            <tns:ProductFamily>
              <xsl:value-of select="xsdLocal:productFamily"/>
            </tns:ProductFamily>
            <xsl:choose>
              <xsl:when test="string-length(xsdLocal:quantity) > 0.0">
                <tns:Quantity>
                  <xsl:value-of select="xsdLocal:quantity"/>
                </tns:Quantity>
              </xsl:when>
              <xsl:otherwise>
                <tns:Quantity>
                  <xsl:value-of select="number(&quot;0&quot;)"/>
                </tns:Quantity>
              </xsl:otherwise>
            </xsl:choose>
            <tns:RevenueMasteringFlag>
             <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CCRMTRUST_OptyPublishMap.dvm&quot;,&quot;CCRMValue&quot;,xsdLocal:revenueMasterflag,&quot;TRUSTValue&quot;,&quot;0&quot;)"/>
            </tns:RevenueMasteringFlag>
            <tns:RevenueType>
              <xsl:value-of select="xsdLocal:revenueType"/>
            </tns:RevenueType>
            <tns:SiebelId>
              <xsl:value-of select="xsdLocal:siebelID"/>
            </tns:SiebelId>
          </tns:OpportunityProductData>
        </xsl:for-each>
        <xsl:for-each select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:opportunityTeam">
          <tns:OpportunityTeamData>
            <tns:EmployeeEmailAddress>
              <xsl:value-of select="xsdLocal:employeeEmailAddress"/>
            </tns:EmployeeEmailAddress>
          </tns:OpportunityTeamData>
        </xsl:for-each>
        <tns:OpportunityType>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:optyType"/>
        </tns:OpportunityType>
        <tns:OwnerEmailId>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:ownerEmail"/>
        </tns:OwnerEmailId>
        <xsl:choose>
          <xsl:when test="string-length(/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:probability) > 0.0">
            <tns:Probability>
              <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:probability"/>
            </tns:Probability>
          </xsl:when>
          <xsl:otherwise>
            <tns:Probability>
              <xsl:value-of select="number(&quot;0&quot;)"/>
            </tns:Probability>
          </xsl:otherwise>
        </xsl:choose>
        <tns:PurchaseOrderNumber>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:PurchaseOrderNumber"/>
        </tns:PurchaseOrderNumber>
        <tns:SFDCAccountId>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:SFDCAccountID"/>
        </tns:SFDCAccountId>
        <tns:SFDCOpptyId>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:SFDCOptyID"/>
        </tns:SFDCOpptyId>
        <tns:SiebelAccountId>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:siebelAccountID"/>
        </tns:SiebelAccountId>
        <tns:SiebelOpptyId>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:siebelOptyID"/>
        </tns:SiebelOpptyId>
        <tns:Stage>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:salesStage"/>
        </tns:Stage>
        <tns:WinLossReason>
          <xsl:value-of select="/xsdLocal:extendedOpportunityEvent/xsdLocal:opportunityEvent/xsdLocal:opportunity/xsdLocal:winLossReason"/>
        </tns:WinLossReason>
      </tns:oppRequest>
    </tns:publishOpportunity>
  </xsl:template>
</xsl:stylesheet>
