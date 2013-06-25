<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.SFDC.OP.248_PublishOpportunityEventRequest.xsd"/>
      <rootElement name="SFDCOpportunityEvent" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.SFDC.OP.248_PublishOpportunityEventRequest.xsd"/>
      <rootElement name="SFDCOpportunityEvent" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED SEP 22 21:55:27 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-message="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/OpportunityManagement" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:gcap-opportunity="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOpportunityTypes" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:gcap-account="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl gcap-message xsdLocal gcap-opportunity xsd gcap-sa gcap-account bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:SFDCOpportunityEvent>
      <xsdLocal:eaiHeader>
        <gcap-message:applicationId>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:eaiHeader/gcap-message:applicationId"/>
        </gcap-message:applicationId>
        <gcap-message:transactionId>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:eaiHeader/gcap-message:transactionId"/>
        </gcap-message:transactionId>
        <gcap-message:messageId>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:eaiHeader/gcap-message:messageId"/>
        </gcap-message:messageId>
        <gcap-message:messageHistory>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:eaiHeader/gcap-message:messageHistory"/>
        </gcap-message:messageHistory>
        <gcap-message:tracingId>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:eaiHeader/gcap-message:tracingId"/>
        </gcap-message:tracingId>
        <gcap-message:timeStamp>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:eaiHeader/gcap-message:timeStamp"/>
        </gcap-message:timeStamp>
        <gcap-message:instanceId>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:eaiHeader/gcap-message:instanceId"/>
        </gcap-message:instanceId>
        <gcap-message:timeToLive>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:eaiHeader/gcap-message:timeToLive"/>
        </gcap-message:timeToLive>
        <gcap-message:payloadVersion>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:eaiHeader/gcap-message:payloadVersion"/>
        </gcap-message:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:actionCode>
        <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:actionCode"/>
      </xsdLocal:actionCode>
      <xsdLocal:opportunityHeader>
        <xsdLocal:siebelOptyID>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:siebelOptyID"/>
        </xsdLocal:siebelOptyID>
        <xsdLocal:SFDCOptyID>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:SFDCOptyID"/>
        </xsdLocal:SFDCOptyID>
        <xsdLocal:optyNumber>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:optyNumber"/>
        </xsdLocal:optyNumber>
        <xsdLocal:optyname>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:optyname"/>
        </xsdLocal:optyname>
        <xsdLocal:SFDCAccountID>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:SFDCAccountID"/>
        </xsdLocal:SFDCAccountID>
        <xsdLocal:siebelAccountID>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:siebelAccountID"/>
        </xsdLocal:siebelAccountID>
        <xsdLocal:accountName>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:accountName"/>
        </xsdLocal:accountName>
        <xsdLocal:optyType>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:optyType"/>
        </xsdLocal:optyType>
        <xsdLocal:expectedRevenue>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:expectedRevenue"/>
        </xsdLocal:expectedRevenue>
        <xsdLocal:closeDate>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:closeDate"/>
        </xsdLocal:closeDate>
        <xsdLocal:monthlyRecurring>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:monthlyRecurring"/>
        </xsdLocal:monthlyRecurring>
        <xsdLocal:OnceOffRevenue>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:OnceOffRevenue"/>
        </xsdLocal:OnceOffRevenue>
        <xsdLocal:probability>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:probability"/>
        </xsdLocal:probability>
        <xsdLocal:salesStage>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:salesStage"/>
        </xsdLocal:salesStage>
        <xsdLocal:currencyCode>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:currencyCode"/>
        </xsdLocal:currencyCode>
        <xsdLocal:winLossReason>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:winLossReason"/>
        </xsdLocal:winLossReason>
        <xsdLocal:expectedRevenueDate>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:expectedRevenueDate"/>
        </xsdLocal:expectedRevenueDate>
        <xsdLocal:ownerEmail>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:ownerEmail"/>
        </xsdLocal:ownerEmail>
        <xsdLocal:ftOnceOffRevenue>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:ftOnceOffRevenue"/>
        </xsdLocal:ftOnceOffRevenue>
        <xsdLocal:ftRecurringRevenue>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:ftRecurringRevenue"/>
        </xsdLocal:ftRecurringRevenue>
        <xsdLocal:activeQuote>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:activeQuote"/>
        </xsdLocal:activeQuote>
        <xsdLocal:lastUpdatedBy>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:lastUpdatedBy"/>
        </xsdLocal:lastUpdatedBy>
        <xsdLocal:lastUpdated>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:lastUpdated"/>
        </xsdLocal:lastUpdated>
        <xsdLocal:opportunityDescription>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:opportunityDescription"/>
        </xsdLocal:opportunityDescription>
        <xsdLocal:blockedOpportunities>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:blockedOpportunities"/>
        </xsdLocal:blockedOpportunities>
        <xsdLocal:IsPoRequired>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:IsPoRequired"/>
        </xsdLocal:IsPoRequired>
        <xsdLocal:PurchaseOrderNumber>
          <xsl:value-of select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:PurchaseOrderNumber"/>
        </xsdLocal:PurchaseOrderNumber>
        <xsl:for-each select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:campaignSrcCode">
          <xsdLocal:campaignSrcCode>
            <xsdLocal:sourceCode>
              <xsl:value-of select="xsdLocal:sourceCode"/>
            </xsdLocal:sourceCode>
          </xsdLocal:campaignSrcCode>
        </xsl:for-each>
        <xsl:for-each select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityHeader/xsdLocal:opportyTeam">
          <xsdLocal:opportyTeam>
            <xsdLocal:siebelOptyID>
              <xsl:value-of select="xsdLocal:siebelOptyID"/>
            </xsdLocal:siebelOptyID>
            <xsdLocal:SFDCOptyID>
              <xsl:value-of select="xsdLocal:SFDCOptyID"/>
            </xsdLocal:SFDCOptyID>
            <xsdLocal:employeeEmailAddress>
              <xsl:value-of select="xsdLocal:employeeEmailAddress"/>
            </xsdLocal:employeeEmailAddress>
          </xsdLocal:opportyTeam>
        </xsl:for-each>
      </xsdLocal:opportunityHeader>
      <xsl:for-each select="/xsdLocal:SFDCOpportunityEvent/xsdLocal:opportunityPrdct">
        <xsdLocal:opportunityPrdct>
          <xsdLocal:siebelID>
            <xsl:value-of select="xsdLocal:siebelID"/>
          </xsdLocal:siebelID>
          <xsdLocal:siebelOptyID>
            <xsl:value-of select="xsdLocal:siebelOptyID"/>
          </xsdLocal:siebelOptyID>
          <xsdLocal:productFamily>
            <xsl:value-of select="xsdLocal:productFamily"/>
          </xsdLocal:productFamily>
          <xsdLocal:quantity>
            <xsl:value-of select="xsdLocal:quantity"/>
          </xsdLocal:quantity>
          <xsdLocal:revenueType>
            <xsl:value-of select="xsdLocal:revenueType"/>
          </xsdLocal:revenueType>
          <xsdLocal:oneTime>
            <xsl:value-of select="xsdLocal:oneTime"/>
          </xsdLocal:oneTime>
          <xsdLocal:monthlyReccuring>
            <xsl:value-of select="xsdLocal:monthlyReccuring"/>
          </xsdLocal:monthlyReccuring>
          <xsdLocal:productComments>
            <xsl:value-of select="xsdLocal:productComments"/>
          </xsdLocal:productComments>
          <xsdLocal:freeTrialFlag>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CCRMTRUST_OptyPublishMap.dvm&quot;,&quot;TRUSTValue&quot;,xsdLocal:freeTrialFlag,&quot;CCRMValue&quot;,&quot;N&quot;)"/>
          </xsdLocal:freeTrialFlag>
          <xsdLocal:revenueMasteringflag>
           <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CCRMTRUST_OptyPublishMap.dvm&quot;,&quot;TRUSTValue&quot;,xsdLocal:revenueMasteringflag,&quot;CCRMValue&quot;,&quot;N&quot;)"/>
          </xsdLocal:revenueMasteringflag>
          <xsdLocal:InstalledToId>
            <xsl:value-of select="xsdLocal:InstalledToId"/>
          </xsdLocal:InstalledToId>
        </xsdLocal:opportunityPrdct>
      </xsl:for-each>
    </xsdLocal:SFDCOpportunityEvent>
  </xsl:template>
</xsl:stylesheet>
