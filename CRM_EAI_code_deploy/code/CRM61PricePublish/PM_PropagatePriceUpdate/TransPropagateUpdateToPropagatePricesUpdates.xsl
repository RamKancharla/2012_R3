<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CCRM.PM.211_PriceUpdateRequest.xsd"/>
      <rootElement name="priceUpdateRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CCRM/PM/PriceUpdate"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CCRM.PM.211_PriceUpdateRequest.xsd"/>
      <rootElement name="priceUpdateRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CCRM/PM/PriceUpdate"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU JUL 16 18:59:42 GMT+05:30 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:gcap-cps="http://www.reuters.com/ns/2007/09/01/GCAP/CommonPriceStructures" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/CommonNillablePriceTypes" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CCRM/PM/PriceUpdate" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CommonPriceTypes" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl cmt gcap-cps xsd ns0 xsdLocal ns1 gcap-sa bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:priceUpdateRequest>
      <xsdLocal:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:messageHeader>
        <cmt:actionCode>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:messageHeader/cmt:actionCode"/>
        </cmt:actionCode>
        <cmt:version>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:messageHeader/cmt:version"/>
        </cmt:version>
        <cmt:userId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:messageHeader/cmt:userId"/>
        </cmt:userId>
      </xsdLocal:messageHeader>
      <xsdLocal:priceUpdateReqHeader>
        <gcap-cps:CRMPLHId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:CRMPLHId"/>
        </gcap-cps:CRMPLHId>
        <gcap-cps:actionCode>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:actionCode"/>
        </gcap-cps:actionCode>
        <gcap-cps:currencyCode>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:currencyCode"/>
        </gcap-cps:currencyCode>
        <gcap-cps:integrationId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:integrationId"/>
        </gcap-cps:integrationId>
        <gcap-cps:loginName>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:loginName"/>
        </gcap-cps:loginName>
        <gcap-cps:name>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:name"/>
        </gcap-cps:name>
        <gcap-cps:rcrmCompassPriceListNumber>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmCompassPriceListNumber"/>
        </gcap-cps:rcrmCompassPriceListNumber>
        <gcap-cps:rcrmCountry>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmCountry"/>
        </gcap-cps:rcrmCountry>
        <gcap-cps:rcrmMessage>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmMessage"/>
        </gcap-cps:rcrmMessage>
        <gcap-cps:rcrmPriceListType>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmPriceListType"/>
        </gcap-cps:rcrmPriceListType>
        <gcap-cps:rcrmRevenueType>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmRevenueType"/>
        </gcap-cps:rcrmRevenueType>
        <gcap-cps:rcrmStatus>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmStatus"/>
        </gcap-cps:rcrmStatus>
        <gcap-cps:startDate>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:startDate"/>
        </gcap-cps:startDate>
        <gcap-cps:endDate>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:endDate"/>
        </gcap-cps:endDate>
        <gcap-cps:type>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:type"/>
        </gcap-cps:type>
        <gcap-cps:season>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:season"/>
        </gcap-cps:season>
        <gcap-cps:rcrmLastParentRefreshDate>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmLastParentRefreshDate"/>
        </gcap-cps:rcrmLastParentRefreshDate>
        <gcap-cps:costList>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:costList"/>
        </gcap-cps:costList>
        <gcap-cps:description>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:description"/>
        </gcap-cps:description>
        <gcap-cps:updated>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:updated"/>
        </gcap-cps:updated>
        <gcap-cps:rcrmPropagationSelected>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmPropagationSelected"/>
        </gcap-cps:rcrmPropagationSelected>
        <gcap-cps:rcrmApplyRulesFlag>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmApplyRulesFlag"/>
        </gcap-cps:rcrmApplyRulesFlag>
        <gcap-cps:rcrmAllowOrder>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmAllowOrder"/>
        </gcap-cps:rcrmAllowOrder>
        <gcap-cps:RCRMAllowDraftReportFlag>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:RCRMAllowDraftReportFlag"/>
        </gcap-cps:RCRMAllowDraftReportFlag>
        <gcap-cps:primaryOrganizationId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:primaryOrganizationId"/>
        </gcap-cps:primaryOrganizationId>
        <gcap-cps:pricingProcedure>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:pricingProcedure"/>
        </gcap-cps:pricingProcedure>
        <gcap-cps:lastName>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:lastName"/>
        </gcap-cps:lastName>
        <gcap-cps:rcrmPricePublish>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmPricePublish"/>
        </gcap-cps:rcrmPricePublish>
        <gcap-cps:isAdminMode>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:isAdminMode"/>
        </gcap-cps:isAdminMode>
        <gcap-cps:UpdatedDate>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:UpdatedDate"/>
        </gcap-cps:UpdatedDate>
        <gcap-cps:rcrmDummyField1>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmDummyField1"/>
        </gcap-cps:rcrmDummyField1>
        <gcap-cps:rcrmDummyField2>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:rcrmDummyField2"/>
        </gcap-cps:rcrmDummyField2>
        <gcap-cps:rcrmDummyField3>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;RCRMDummyField3forHQNodePublish&quot;,&quot;Value&quot;,&quot;Publish to HQ&quot;)"/>
        </gcap-cps:rcrmDummyField3>
        <gcap-cps:paymentIntegrationId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:paymentIntegrationId"/>
        </gcap-cps:paymentIntegrationId>
        <gcap-cps:volumeDiscount>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:volumeDiscount"/>
        </gcap-cps:volumeDiscount>
        <gcap-cps:paymentTerm>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:paymentTerm"/>
        </gcap-cps:paymentTerm>
        <gcap-cps:priceBookName>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:priceBookName"/>
        </gcap-cps:priceBookName>
        <gcap-cps:primaryOrganization>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:primaryOrganization"/>
        </gcap-cps:primaryOrganization>
        <gcap-cps:costListId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:costListId"/>
        </gcap-cps:costListId>
        <gcap-cps:paymentTermId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:paymentTermId"/>
        </gcap-cps:paymentTermId>
        <gcap-cps:priceBookId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:priceBookId"/>
        </gcap-cps:priceBookId>
        <gcap-cps:xaClassId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:xaClassId"/>
        </gcap-cps:xaClassId>
        <gcap-cps:periodId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:periodId"/>
        </gcap-cps:periodId>
        <gcap-cps:volumeDiscountId>
          <xsl:value-of select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqHeader/gcap-cps:volumeDiscountId"/>
        </gcap-cps:volumeDiscountId>
      </xsdLocal:priceUpdateReqHeader>
      <xsl:for-each select="/xsdLocal:priceUpdateRequest/xsdLocal:priceUpdateReqItems">
        <xsl:if test="gcap-cps:RCRMHQNodePublish =dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;HQStatusforPriceListPublishtoHQ&quot;,&quot;Value&quot;,&quot;Publish to HQ&quot;)">
          <xsdLocal:priceUpdateReqItems>
            <gcap-cps:rcrmProductExchangeFlag>
              <xsl:value-of select="gcap-cps:rcrmProductExchangeFlag"/>
            </gcap-cps:rcrmProductExchangeFlag>
            <gcap-cps:rcrmLocalStatus>
              <xsl:value-of select="gcap-cps:rcrmLocalStatus"/>
            </gcap-cps:rcrmLocalStatus>
            <gcap-cps:rcrmGlobalStatus>
              <xsl:value-of select="gcap-cps:rcrmGlobalStatus"/>
            </gcap-cps:rcrmGlobalStatus>
            <gcap-cps:CRMPLIId>
              <xsl:value-of select="gcap-cps:CRMPLIId"/>
            </gcap-cps:CRMPLIId>
            <gcap-cps:endDate>
              <xsl:value-of select="gcap-cps:endDate"/>
            </gcap-cps:endDate>
            <gcap-cps:integrationId>
              <xsl:value-of select="gcap-cps:integrationId"/>
            </gcap-cps:integrationId>
            <gcap-cps:originalListPrice>
              <xsl:value-of select="gcap-cps:originalListPrice"/>
            </gcap-cps:originalListPrice>
            <gcap-cps:priceAdjustmentType>
              <xsl:value-of select="gcap-cps:priceAdjustmentType"/>
            </gcap-cps:priceAdjustmentType>
            <gcap-cps:priceListId>
              <xsl:value-of select="gcap-cps:priceListId"/>
            </gcap-cps:priceListId>
            <gcap-cps:priceType>
              <xsl:value-of select="gcap-cps:priceType"/>
            </gcap-cps:priceType>
            <gcap-cps:pricingMethod>
              <xsl:value-of select="gcap-cps:pricingMethod"/>
            </gcap-cps:pricingMethod>
            <gcap-cps:primaryProductLineId>
              <xsl:value-of select="gcap-cps:primaryProductLineId"/>
            </gcap-cps:primaryProductLineId>
            <gcap-cps:productId>
              <xsl:value-of select="gcap-cps:productId"/>
            </gcap-cps:productId>
            <gcap-cps:productName>
              <xsl:value-of select="gcap-cps:productName"/>
            </gcap-cps:productName>
            <gcap-cps:rcrmCompassMessage>
              <xsl:value-of select="gcap-cps:rcrmCompassMessage"/>
            </gcap-cps:rcrmCompassMessage>
            <gcap-cps:rcrmCurrencyCode>
              <xsl:value-of select="gcap-cps:rcrmCurrencyCode"/>
            </gcap-cps:rcrmCurrencyCode>
            <gcap-cps:rcrmDateLastPropChange>
              <xsl:value-of select="gcap-cps:rcrmDateLastPropChange"/>
            </gcap-cps:rcrmDateLastPropChange>
            <gcap-cps:rcrmExchangeDate>
              <xsl:value-of select="gcap-cps:rcrmExchangeDate"/>
            </gcap-cps:rcrmExchangeDate>
            <gcap-cps:rcrmInactiveFlag>
              <xsl:value-of select="gcap-cps:rcrmInactiveFlag"/>
            </gcap-cps:rcrmInactiveFlag>
            <gcap-cps:rcrmLocalPLI>
              <xsl:value-of select="gcap-cps:rcrmLocalPLI"/>
            </gcap-cps:rcrmLocalPLI>
            <gcap-cps:rcrmNativeCurrencyCode>
              <xsl:value-of select="gcap-cps:rcrmNativeCurrencyCode"/>
            </gcap-cps:rcrmNativeCurrencyCode>
            <gcap-cps:rcrmNativePrice>
              <xsl:value-of select="gcap-cps:rcrmNativePrice"/>
            </gcap-cps:rcrmNativePrice>
            <gcap-cps:rcrmPLIQuoteType>
              <xsl:value-of select="gcap-cps:rcrmPLIQuoteType"/>
            </gcap-cps:rcrmPLIQuoteType>
            <gcap-cps:rcrmPLIRevenueType>
              <xsl:value-of select="gcap-cps:rcrmPLIRevenueType"/>
            </gcap-cps:rcrmPLIRevenueType>
            <gcap-cps:rcrmPriceListItemStatus>
              <xsl:value-of select="gcap-cps:rcrmPriceListItemStatus"/>
            </gcap-cps:rcrmPriceListItemStatus>
            <gcap-cps:startDate>
              <xsl:value-of select="gcap-cps:startDate"/>
            </gcap-cps:startDate>
            <gcap-cps:margin>
              <xsl:value-of select="gcap-cps:margin"/>
            </gcap-cps:margin>
            <gcap-cps:referencePrice>
              <xsl:value-of select="gcap-cps:referencePrice"/>
            </gcap-cps:referencePrice>
            <gcap-cps:rcrmSupplierExchRate>
              <xsl:value-of select="gcap-cps:rcrmSupplierExchRate"/>
            </gcap-cps:rcrmSupplierExchRate>
            <gcap-cps:rcrmSupplierCurrencyCode>
              <xsl:value-of select="gcap-cps:rcrmSupplierCurrencyCode"/>
            </gcap-cps:rcrmSupplierCurrencyCode>
            <gcap-cps:rcrmSellingPrice>
              <xsl:value-of select="gcap-cps:rcrmSellingPrice"/>
            </gcap-cps:rcrmSellingPrice>
            <gcap-cps:rcrmProductOperatingSystem>
              <xsl:value-of select="gcap-cps:rcrmProductOperatingSystem"/>
            </gcap-cps:rcrmProductOperatingSystem>
            <gcap-cps:rcrmPLIRIN>
              <xsl:value-of select="gcap-cps:rcrmPLIRIN"/>
            </gcap-cps:rcrmPLIRIN>
            <gcap-cps:rcrmPLIMaintPercent>
              <xsl:value-of select="gcap-cps:rcrmPLIMaintPercent"/>
            </gcap-cps:rcrmPLIMaintPercent>
            <gcap-cps:rcrmPLILocalLanguageName>
              <xsl:value-of select="gcap-cps:rcrmPLILocalLanguageName"/>
            </gcap-cps:rcrmPLILocalLanguageName>
            <gcap-cps:rcrmPLILocalDescription>
              <xsl:value-of select="gcap-cps:rcrmPLILocalDescription"/>
            </gcap-cps:rcrmPLILocalDescription>
            <gcap-cps:rcrmLocal>
              <xsl:value-of select="gcap-cps:rcrmLocal"/>
            </gcap-cps:rcrmLocal>
            <gcap-cps:rcrmIgnoreUpdateFlag>
              <xsl:value-of select="gcap-cps:rcrmIgnoreUpdateFlag"/>
            </gcap-cps:rcrmIgnoreUpdateFlag>
            <gcap-cps:rcrmGlobal>
              <xsl:value-of select="gcap-cps:rcrmGlobal"/>
            </gcap-cps:rcrmGlobal>
            <gcap-cps:rcrmCoresuiteUpdated>
              <xsl:value-of select="gcap-cps:rcrmCoresuiteUpdated"/>
            </gcap-cps:rcrmCoresuiteUpdated>
            <gcap-cps:servicePricePercent>
              <xsl:value-of select="gcap-cps:servicePricePercent"/>
            </gcap-cps:servicePricePercent>
            <gcap-cps:priceListSubtypeCode>
              <xsl:value-of select="gcap-cps:priceListSubtypeCode"/>
            </gcap-cps:priceListSubtypeCode>
            <gcap-cps:priceListName>
              <xsl:value-of select="gcap-cps:priceListName"/>
            </gcap-cps:priceListName>
            <gcap-cps:rcrmActiveFlag>
              <xsl:value-of select="gcap-cps:rcrmActiveFlag"/>
            </gcap-cps:rcrmActiveFlag>
            <gcap-cps:isAdminMode>
              <xsl:value-of select="gcap-cps:isAdminMode"/>
            </gcap-cps:isAdminMode>
            <gcap-cps:isComplexProductBundle>
              <xsl:value-of select="gcap-cps:isComplexProductBundle"/>
            </gcap-cps:isComplexProductBundle>
            <gcap-cps:isComplexProductNotBundle>
              <xsl:value-of select="gcap-cps:isComplexProductNotBundle"/>
            </gcap-cps:isComplexProductNotBundle>
            <gcap-cps:dynamicMatrixId>
              <xsl:value-of select="gcap-cps:dynamicMatrixId"/>
            </gcap-cps:dynamicMatrixId>
            <gcap-cps:listPrice>
              <xsl:value-of select="gcap-cps:listPrice"/>
            </gcap-cps:listPrice>
            <gcap-cps:dynamicMatrix>
              <xsl:value-of select="gcap-cps:dynamicMatrix"/>
            </gcap-cps:dynamicMatrix>
            <gcap-cps:maxSalePrice>
              <xsl:value-of select="gcap-cps:maxSalePrice"/>
            </gcap-cps:maxSalePrice>
            <gcap-cps:costListItemCurrencyCode>
              <xsl:value-of select="gcap-cps:costListItemCurrencyCode"/>
            </gcap-cps:costListItemCurrencyCode>
            <gcap-cps:CfgLatestReleasedFlag>
              <xsl:value-of select="gcap-cps:CfgLatestReleasedFlag"/>
            </gcap-cps:CfgLatestReleasedFlag>
            <gcap-cps:BundleSequenceReadOnlyFlag>
              <xsl:value-of select="gcap-cps:BundleSequenceReadOnlyFlag"/>
            </gcap-cps:BundleSequenceReadOnlyFlag>
            <gcap-cps:BonusThreshold>
              <xsl:value-of select="gcap-cps:BonusThreshold"/>
            </gcap-cps:BonusThreshold>
            <gcap-cps:MinSalePrice>
              <xsl:value-of select="gcap-cps:MinSalePrice"/>
            </gcap-cps:MinSalePrice>
            <gcap-cps:Part>
              <xsl:value-of select="gcap-cps:Part"/>
            </gcap-cps:Part>
            <gcap-cps:Cost>
              <xsl:value-of select="gcap-cps:Cost"/>
            </gcap-cps:Cost>
            <gcap-cps:rcrmDummyField1>
              <xsl:value-of select="gcap-cps:rcrmDummyField1"/>
            </gcap-cps:rcrmDummyField1>
            <gcap-cps:rcrmDummyField2>
              <xsl:value-of select="gcap-cps:rcrmDummyField2"/>
            </gcap-cps:rcrmDummyField2>
            <gcap-cps:rcrmDummyField3>
              <xsl:value-of select="gcap-cps:rcrmDummyField3"/>
            </gcap-cps:rcrmDummyField3>
            <gcap-cps:rcrmDummyField4>
              <xsl:value-of select="gcap-cps:rcrmDummyField4"/>
            </gcap-cps:rcrmDummyField4>
            <gcap-cps:ComplexProductPricingModelName>
              <xsl:value-of select="gcap-cps:ComplexProductPricingModelName"/>
            </gcap-cps:ComplexProductPricingModelName>
            <gcap-cps:name>
              <xsl:value-of select="gcap-cps:name"/>
            </gcap-cps:name>
            <gcap-cps:VolumeDiscount>
              <xsl:value-of select="gcap-cps:VolumeDiscount"/>
            </gcap-cps:VolumeDiscount>
            <gcap-cps:RCRMHQNodePublish>
              <xsl:value-of select="gcap-cps:RCRMHQNodePublish"/>
            </gcap-cps:RCRMHQNodePublish>
            <gcap-cps:priceListStartDate>
              <xsl:value-of select="gcap-cps:priceListStartDate"/>
            </gcap-cps:priceListStartDate>
            <gcap-cps:priceListType>
              <xsl:value-of select="gcap-cps:priceListType"/>
            </gcap-cps:priceListType>
            <gcap-cps:coresuiteStartDate>
              <xsl:value-of select="gcap-cps:coresuiteStartDate"/>
            </gcap-cps:coresuiteStartDate>
            <gcap-cps:listPriceTypeCode>
              <xsl:value-of select="gcap-cps:listPriceTypeCode"/>
            </gcap-cps:listPriceTypeCode>
          </xsdLocal:priceUpdateReqItems>
        </xsl:if>
      </xsl:for-each>
    </xsdLocal:priceUpdateRequest>
  </xsl:template>
</xsl:stylesheet>
