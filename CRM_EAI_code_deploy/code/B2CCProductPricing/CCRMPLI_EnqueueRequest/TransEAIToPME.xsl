<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.SAP.PPL.290_ProductPricingRequest.xsd"/>
      <rootElement name="ProductPricing_Request" namespace="http://www.reuters.com/ns/2010/06/10/SAMI/EAI/ProductPricing"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CCRM.PPL.291_ProductPricingPublishRequest.xsd"/>
      <rootElement name="ListOfRcrmSapProductPricing" namespace="http://www.siebel.com/xml/RCRM%20SAP%20Product%20Pricing"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.4.0(build 080718.0645) AT [WED AUG 25 14:49:02 EDT 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsdLocal="http://www.siebel.com/xml/RCRM%20SAP%20Product%20Pricing" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns0="http://www.reuters.com/ns/2010/06/10/SAMI/EAI/ProductPricing" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" exclude-result-prefixes="xsl xsd ns0 xsdLocal xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:ListOfRcrmSapProductPricing>
      <xsdLocal:InternalProduct-IssAdmin>
        <xsdLocal:ListOfPriceListItem>
          <!-- <xsl:for-each select="/ns0:ProductPricing_Request/Header_Details/PLI_Details">
            <xsdLocal:PriceListItem>
              <xsdLocal:RCRMSAPPricingId>
                <xsl:value-of select="PriceCID"/>
              </xsdLocal:RCRMSAPPricingId>
              <xsl:choose>
                <xsl:when test='CRMValidToDate != string("99991231")'>
                  <xsdLocal:EndDate>
                    <xsl:value-of select='concat(concat(substring(CRMValidToDate,5.0,2.0),"/"),concat(substring(CRMValidToDate,7.0,2.0),"/"),substring(CRMValidToDate,1.0,4.0)," 00:01:00")'/>
                  </xsdLocal:EndDate>
                </xsl:when>
                <xsl:otherwise>
                  <xsdLocal:EndDate>
                    <xsl:value-of select='string("")'/>
                  </xsdLocal:EndDate>
                </xsl:otherwise>
              </xsl:choose>
              <xsdLocal:OriginalListPrice>
                <xsl:value-of select="normalize-space(Rate)"/>
              </xsdLocal:OriginalListPrice>
              <xsdLocal:PriceListCurrencyCode>
                <xsl:value-of select="CurrencyKey"/>
              </xsdLocal:PriceListCurrencyCode>
              <xsdLocal:PriceListName>
                <xsl:value-of select="PriceListName"/>
              </xsdLocal:PriceListName>
              <xsdLocal:RCRMIgnoreUpdateFlag>
                <xsl:value-of select="CRMIgnoreUpdate"/>
              </xsdLocal:RCRMIgnoreUpdateFlag>
              <xsdLocal:RCRMInactiveFlag>
                <xsl:value-of select="CRMInactiveFlag"/>
              </xsdLocal:RCRMInactiveFlag>
              <xsdLocal:RCRMLocalPLI>
                <xsl:value-of select="CRMLocalPLI"/>
              </xsdLocal:RCRMLocalPLI>
              <xsdLocal:RCRMLocalStatus>
                <xsl:value-of select="CRMLocalStatus"/>
              </xsdLocal:RCRMLocalStatus>
              <xsdLocal:RCRMPLILocalLanguageName>
                <xsl:value-of select="CRMLocalLangName"/>
              </xsdLocal:RCRMPLILocalLanguageName>
              <xsdLocal:RCRMPLIMaintPercent>
                <xsl:value-of select="normalize-space(CRMPLIPercent)"/>
              </xsdLocal:RCRMPLIMaintPercent>
              <xsdLocal:StartDate>
                <xsl:value-of select='concat(concat(substring(CRMValidFrmDate,5.0,2.0),"/"),concat(substring(CRMValidFrmDate,7.0,2.0),"/"),substring(CRMValidFrmDate,1.0,4.0)," 00:01:00")'/>
              </xsdLocal:StartDate>
            </xsdLocal:PriceListItem>
          </xsl:for-each> -->
        </xsdLocal:ListOfPriceListItem>
        <xsdLocal:AllocateBelowSafetyFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdFRTRL"/>
        </xsdLocal:AllocateBelowSafetyFlag>
        <xsdLocal:ClientTrainingFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMClientTraining"/>
        </xsdLocal:ClientTrainingFlag>
        <xsdLocal:Description>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdDESC"/>
        </xsdLocal:Description>
        <xsdLocal:ItemSize>
          <xsl:value-of select="normalize-space(/ns0:ProductPricing_Request/Header_Details/CRMBandedQTY)"/>
        </xsdLocal:ItemSize>
        <xsdLocal:Name>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdName"/>
        </xsdLocal:Name>
        <xsdLocal:Orderable>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMORDBL"/>
        </xsdLocal:Orderable>
        <xsdLocal:ParentInternalProductName>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMOprtntyProd"/>
        </xsdLocal:ParentInternalProductName>
        <xsdLocal:Part>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/PLICode"/>
        </xsdLocal:Part>
        <xsdLocal:ProductLevel>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdLevel"/>
        </xsdLocal:ProductLevel>
        <xsdLocal:RCRMAdherancePercent>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMAdherencePer"/>
        </xsdLocal:RCRMAdherancePercent>
        <xsdLocal:RCRMAssignmentCategory>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMAssignmentCAT"/>
        </xsdLocal:RCRMAssignmentCategory>
        <xsdLocal:RCRMBillingPlatform>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMBLNPLTFRM"/>
        </xsdLocal:RCRMBillingPlatform>
        <xsdLocal:RCRMBusinessClassification>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMBusClass"/>
        </xsdLocal:RCRMBusinessClassification>
        <xsdLocal:RCRMConsumablePartFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMConsumablePartNo"/>
        </xsdLocal:RCRMConsumablePartFlag>
        <xsdLocal:RCRMDeviceFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMDevice"/>
        </xsdLocal:RCRMDeviceFlag>
        <xsdLocal:RCRMDiscountGroup>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMDiscountGRP"/>
        </xsdLocal:RCRMDiscountGroup>
        <xsdLocal:RCRMEmbeddedProduct>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMEMBSWProd"/>
        </xsdLocal:RCRMEmbeddedProduct>
        <xsdLocal:RCRMEmergencyPartFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMEmergencyPort"/>
        </xsdLocal:RCRMEmergencyPartFlag>
        <xsdLocal:RCRMExchangeType>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMAGRTYP"/>
        </xsdLocal:RCRMExchangeType>
        <xsdLocal:RCRMGADiscountable>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdGADiscountable"/>
        </xsdLocal:RCRMGADiscountable>
        <xsdLocal:RCRMGlobalPricingProduct>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMGLBPRCProd"/>
        </xsdLocal:RCRMGlobalPricingProduct>
        <xsdLocal:RCRMGuaranteeHours>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMGuaranteeHrs"/>
        </xsdLocal:RCRMGuaranteeHours>
        <xsdLocal:RCRMGuaranteePercent>
          <xsl:value-of select="normalize-space(/ns0:ProductPricing_Request/Header_Details/CRMGuaranteePer)"/>
        </xsdLocal:RCRMGuaranteePercent>
        <xsdLocal:RCRMMaintenancePercent>
          <xsl:value-of select="normalize-space(/ns0:ProductPricing_Request/Header_Details/CRMMaintenancePer)"/>
        </xsdLocal:RCRMMaintenancePercent>
        <xsdLocal:RCRMMaintenanceProduct>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMMaintProd"/>
        </xsdLocal:RCRMMaintenanceProduct>
        <xsdLocal:RCRMMandatoryCommercialAppFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMCommercialAPRVL"/>
        </xsdLocal:RCRMMandatoryCommercialAppFlag>
        <xsdLocal:RCRMMandatoryConsultAppFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMSolutnAPP"/>
        </xsdLocal:RCRMMandatoryConsultAppFlag>
        <xsdLocal:RCRMMandatoryTechAppFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMTechApproval"/>
        </xsdLocal:RCRMMandatoryTechAppFlag>
        <xsdLocal:RCRMMandatoryTechFulfilmentFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMTechFulfilment"/>
        </xsdLocal:RCRMMandatoryTechFulfilmentFlag>
        <xsdLocal:RCRMManualPermissioningFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMManualPermReq"/>
        </xsdLocal:RCRMManualPermissioningFlag>
        <xsdLocal:RCRMManufacturerName>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMManfctrNAME"/>
        </xsdLocal:RCRMManufacturerName>
        <xsdLocal:RCRMMarginCategory>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMMarginCat"/>
        </xsdLocal:RCRMMarginCategory>
        <xsdLocal:RCRMOperatingSystem>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMOperatingSYS"/>
        </xsdLocal:RCRMOperatingSystem>
        <xsdLocal:RCRMPermissioningKey>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMPermsnKey"/>
        </xsdLocal:RCRMPermissioningKey>
        <xsdLocal:RCRMPermissioningSystem>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMAUTOPrmsn"/>
        </xsdLocal:RCRMPermissioningSystem>
        <xsdLocal:RCRMPrimaryManualPermissioningSystem>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMPrimManualPermSystem"/>
        </xsdLocal:RCRMPrimaryManualPermissioningSystem>
        <xsdLocal:RCRMProductLine>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdLineReport"/>
        </xsdLocal:RCRMProductLine>
        <xsdLocal:RCRMProductLoginType>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdLoginTYP"/>
        </xsdLocal:RCRMProductLoginType>
        <xsdLocal:RCRMProductRating>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMInvBank"/>
        </xsdLocal:RCRMProductRating>
        <xsdLocal:RCRMProductType>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdTYPE"/>
        </xsdLocal:RCRMProductType>
        <xsdLocal:RCRMProductUserType>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdUserTYP"/>
        </xsdLocal:RCRMProductUserType>
        <xsdLocal:RCRMQuoteType>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMAdmQuoteType"/>
        </xsdLocal:RCRMQuoteType>
        <xsdLocal:RCRMReportingCategory>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMContCategry"/>
        </xsdLocal:RCRMReportingCategory>
        <xsdLocal:RCRMReqLicenceType>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMLicTyp"/>
        </xsdLocal:RCRMReqLicenceType>
        <xsdLocal:RCRMReutersItemNumber>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMRIN"/>
        </xsdLocal:RCRMReutersItemNumber>
        <xsdLocal:RCRMRevenueType>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMRevenueType"/>
        </xsdLocal:RCRMRevenueType>
        <xsdLocal:RCRMSAPBillableFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMBill"/>
        </xsdLocal:RCRMSAPBillableFlag>
        <xsdLocal:RCRMSAPMaterialCode>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/ProdMaterialCode"/>
        </xsdLocal:RCRMSAPMaterialCode>
        <xsdLocal:RCRMSAPMaterialCodeDesc>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/MaterialDesc"/>
        </xsdLocal:RCRMSAPMaterialCodeDesc>
        <xsdLocal:RCRMSAPPPLId>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/PPLID"/>
        </xsdLocal:RCRMSAPPPLId>
        <xsdLocal:RCRMSLACategory>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMSLACAT"/>
        </xsdLocal:RCRMSLACategory>
        <xsdLocal:RCRMSLATime>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMSLATime"/>
        </xsdLocal:RCRMSLATime>
        <xsdLocal:RCRMSTB>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMSTB"/>
        </xsdLocal:RCRMSTB>
        <xsdLocal:RCRMSalesCategory>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMSrvcTYP"/>
        </xsdLocal:RCRMSalesCategory>
        <xsdLocal:RCRMSalesCode3>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMSC3Report"/>
        </xsdLocal:RCRMSalesCode3>
        <xsdLocal:RCRMServiceProduct>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMSRVProd"/>
        </xsdLocal:RCRMServiceProduct>
        <xsdLocal:RCRMSolutionMaintenanceProduct>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMSolutnMaintProd"/>
        </xsdLocal:RCRMSolutionMaintenanceProduct>
        <xsdLocal:RCRMSpecialPriceAllowed>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdSPLPRC"/>
        </xsdLocal:RCRMSpecialPriceAllowed>
        <xsdLocal:RCRMThirdPartyApproval>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdAPPRQ"/>
        </xsdLocal:RCRMThirdPartyApproval>
        <xsdLocal:RCRMThirdPartyReportable>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMTPRSHolder"/>
        </xsdLocal:RCRMThirdPartyReportable>
        <xsdLocal:RCRMThirdPartyRoyaltyGroup>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRM3PRoyaltyGrp"/>
        </xsdLocal:RCRMThirdPartyRoyaltyGroup>
        <xsdLocal:RCRMVisibleFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMVisible"/>
        </xsdLocal:RCRMVisibleFlag>
        <xsdLocal:RCRMVolDiscContribFlg-Minor>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMMinorVolDisc"/>
        </xsdLocal:RCRMVolDiscContribFlg-Minor>
        <xsdLocal:RCRMVolumeDiscountContributionFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMSenrVolDisc"/>
        </xsdLocal:RCRMVolumeDiscountContributionFlag>
        <xsdLocal:RCRMWelcomeEmailFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMEMAIL"/>
        </xsdLocal:RCRMWelcomeEmailFlag>
        <xsdLocal:RCRMCalculatedListPrice>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMELPRIC"/>
        </xsdLocal:RCRMCalculatedListPrice>
        <xsdLocal:TrackAsAssetFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMToAsset"/>
        </xsdLocal:TrackAsAssetFlag>
        <xsdLocal:VendorPartNumber>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMMnfctrPNum"/>
        </xsdLocal:VendorPartNumber>
        <xsdLocal:VersionStatus>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMProdStatus"/>
        </xsdLocal:VersionStatus>
        <xsdLocal:WelcomeCallFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/CRMCall"/>
        </xsdLocal:WelcomeCallFlag>
        <xsdLocal:RCRMProductCategory>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/ProductCategory"/>
        </xsdLocal:RCRMProductCategory>
        <xsdLocal:PDPDescription>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/PDPDescription"/>
        </xsdLocal:PDPDescription>
        <xsl:for-each select="/ns0:ProductPricing_Request/Header_Details/PLI_Details">
          <xsdLocal:PriceListItem>
            <xsl:choose>
              <xsl:when test="CRMValidToDate != string(&quot;99991231&quot;)">
                <xsdLocal:EndDate>
                  <xsl:value-of select="concat(concat(substring(CRMValidToDate,5.0,2.0),&quot;/&quot;),concat(substring(CRMValidToDate,7.0,2.0),&quot;/&quot;),substring(CRMValidToDate,1.0,4.0),&quot; 00:01:00&quot;)"/>
                </xsdLocal:EndDate>
              </xsl:when>
              <xsl:otherwise>
                <xsdLocal:EndDate>
                  <xsl:value-of select="string(&quot;&quot;)"/>
                </xsdLocal:EndDate>
              </xsl:otherwise>
            </xsl:choose>
            <xsdLocal:OriginalListPrice>
              <xsl:value-of select="normalize-space(Rate)"/>
            </xsdLocal:OriginalListPrice>
            <xsdLocal:PriceListCurrencyCode>
              <xsl:value-of select="CurrencyKey"/>
            </xsdLocal:PriceListCurrencyCode>
            <xsdLocal:PriceListName>
              <xsl:value-of select="PriceListName"/>
            </xsdLocal:PriceListName>
            <xsdLocal:RCRMIgnoreUpdateFlag>
              <xsl:value-of select="CRMIgnoreUpdate"/>
            </xsdLocal:RCRMIgnoreUpdateFlag>
            <xsdLocal:RCRMInactiveFlag>
              <xsl:value-of select="CRMInactiveFlag"/>
            </xsdLocal:RCRMInactiveFlag>
            <xsdLocal:RCRMLocalPLI>
              <xsl:value-of select="CRMLocalPLI"/>
            </xsdLocal:RCRMLocalPLI>
            <xsdLocal:RCRMLocalStatus>
              <xsl:value-of select="CRMLocalStatus"/>
            </xsdLocal:RCRMLocalStatus>
            <xsdLocal:RCRMPLILocalLanguageName>
              <xsl:value-of select="CRMLocalLangName"/>
            </xsdLocal:RCRMPLILocalLanguageName>
            <xsdLocal:RCRMPLIMaintPercent>
              <xsl:value-of select="normalize-space(CRMPLIPercent)"/>
            </xsdLocal:RCRMPLIMaintPercent>
            <xsdLocal:RCRMSAPPricingId>
              <xsl:value-of select="PriceCID"/>
            </xsdLocal:RCRMSAPPricingId>
            <xsdLocal:StartDate>
              <xsl:value-of select="concat(concat(substring(CRMValidFrmDate,5.0,2.0),&quot;/&quot;),concat(substring(CRMValidFrmDate,7.0,2.0),&quot;/&quot;),substring(CRMValidFrmDate,1.0,4.0),&quot; 00:01:00&quot;)"/>
            </xsdLocal:StartDate>
          </xsdLocal:PriceListItem>
        </xsl:for-each>
        <xsdLocal:ProductSubType>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/ProductSubType"/>
        </xsdLocal:ProductSubType>
        <xsdLocal:RCRMDADFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/DADFlag"/>
        </xsdLocal:RCRMDADFlag>
        <xsdLocal:RCRMDatafeedFlag>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/DatafeedFlag"/>
        </xsdLocal:RCRMDatafeedFlag>
        <xsdLocal:RCRMEikonGroup>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/EikonGroup"/>
        </xsdLocal:RCRMEikonGroup>
        <xsdLocal:RCRMTrainingType>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/TrainingType"/>
        </xsdLocal:RCRMTrainingType>
        <xsdLocal:RCRMPriorityClassification>
          <xsl:value-of select="/ns0:ProductPricing_Request/Header_Details/PriorityClassification"/>
        </xsdLocal:RCRMPriorityClassification>
      </xsdLocal:InternalProduct-IssAdmin>
    </xsdLocal:ListOfRcrmSapProductPricing>
  </xsl:template>
</xsl:stylesheet>
