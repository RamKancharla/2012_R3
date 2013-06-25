<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="http://inkaban3ua-eai05:8000/soa-infra/services/CRMASYNC/CCRMOM_OrderRequestValidatorStub/EAI.MSG.CCRM.OM.138_OrderRequest.xsd"/>
      <rootElement name="orderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CCRM/OM/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CCRM.OM.138_ExtendedOrderRequest.xsd"/>
      <rootElement name="extOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CCRM/OM/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [TUE MAR 13 15:42:15 GMT+05:30 2012]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes"
                xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CCRM/OM/OrderManagement"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:comt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOrderTypes"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                exclude-result-prefixes="xsi xsl ns2 ns0 cmt xsdLocal comt xsd ns1 xp20 bpws bpel2 bpm ora socket mhdr orcl dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <xsdLocal:extOrderRequest>
      <xsdLocal:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:logicalCountry>
        <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:logicalCountry"/>
      </xsdLocal:logicalCountry>
      <xsdLocal:messageHeader>
        <xsdLocal:actionCode>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:messageHeader/comt:actionCode"/>
        </xsdLocal:actionCode>
        <xsdLocal:version>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:messageHeader/comt:version"/>
        </xsdLocal:version>
        <xsdLocal:userId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:messageHeader/comt:userId"/>
        </xsdLocal:userId>
      </xsdLocal:messageHeader>
      <xsdLocal:orderHeader>
        <xsdLocal:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:CRMOrderNumber"/>
        </xsdLocal:CRMOrderNumber>
        <xsdLocal:AAATransactionId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:AAATransactionId"/>
        </xsdLocal:AAATransactionId>
        <xsdLocal:installDate>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:installDate"/>
        </xsdLocal:installDate>
        <xsdLocal:removalDate>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:removalDate"/>
        </xsdLocal:removalDate>
        <xsdLocal:orderNote>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:orderNote"/>
        </xsdLocal:orderNote>
        <xsdLocal:orderStatus>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:orderStatus"/>
        </xsdLocal:orderStatus>
        <xsdLocal:phone>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:phone"/>
        </xsdLocal:phone>
        <xsdLocal:OMSlastName>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:OMSlastName"/>
        </xsdLocal:OMSlastName>
        <xsdLocal:OMSfirstName>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:OMSfirstName"/>
        </xsdLocal:OMSfirstName>
        <xsdLocal:email>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:email"/>
        </xsdLocal:email>
        <xsdLocal:businessCase>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:businessCase"/>
        </xsdLocal:businessCase>
        <xsdLocal:accountLocId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:accountLocId"/>
        </xsdLocal:accountLocId>
        <xsdLocal:technicalOrderNo>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:technicalOrderNo"/>
        </xsdLocal:technicalOrderNo>
        <xsdLocal:technicalOrderOwner>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:technicalOrderOwner"/>
        </xsdLocal:technicalOrderOwner>
        <xsdLocal:technicalFulfilmentStatusReason>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:technicalFulfilmentStatusReason"/>
        </xsdLocal:technicalFulfilmentStatusReason>
        <xsdLocal:technicalFulfilmentStatus>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:technicalFulfilmentStatus"/>
        </xsdLocal:technicalFulfilmentStatus>
        <xsdLocal:plannedInstallDate>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:plannedInstallDate"/>
        </xsdLocal:plannedInstallDate>
        <xsdLocal:poNumber>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:poNumber"/>
        </xsdLocal:poNumber>
        <xsdLocal:custRequiredDate>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:custRequiredDate"/>
        </xsdLocal:custRequiredDate>
        <xsdLocal:actualInstallationDate>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:actualInstallationDate"/>
        </xsdLocal:actualInstallationDate>
        <xsdLocal:account>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:account"/>
        </xsdLocal:account>
        <xsdLocal:accountLocation>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:accountLocation"/>
        </xsdLocal:accountLocation>
        <xsdLocal:orderType>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:orderType"/>
        </xsdLocal:orderType>
        <xsl:for-each select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:quoteNote">
          <xsdLocal:quoteNote>
            <xsdLocal:type>
              <xsl:value-of select="comt:type"/>
            </xsdLocal:type>
            <xsdLocal:noteId>
              <xsl:value-of select="comt:noteId"/>
            </xsdLocal:noteId>
            <xsdLocal:installationNotes>
              <xsl:value-of select="comt:installationNotes"/>
            </xsdLocal:installationNotes>
          </xsdLocal:quoteNote>
        </xsl:for-each>
        <xsdLocal:quoteNumber>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:quoteNumber"/>
        </xsdLocal:quoteNumber>
        <xsdLocal:quoteRevisionNumber>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:quoteRevisionNumber"/>
        </xsdLocal:quoteRevisionNumber>
        <xsdLocal:assignedOMS>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:assignedOMS"/>
        </xsdLocal:assignedOMS>
        <xsdLocal:salesSpecialist>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:salesSpecialist"/>
        </xsdLocal:salesSpecialist>
        <xsdLocal:accountManager>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:accountManager"/>
        </xsdLocal:accountManager>
        <xsdLocal:priceList>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:currencyCode"/>
        </xsdLocal:priceList>
        <xsdLocal:targetSystem>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:targetSystem"/>
        </xsdLocal:targetSystem>
        <xsdLocal:expectedTRTMDate>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:expectedTRTMDate"/>
        </xsdLocal:expectedTRTMDate>
        <xsdLocal:orderOwner>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:orderOwner"/>
        </xsdLocal:orderOwner>
        <xsdLocal:RCRMField1>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:RCRMField1"/>
        </xsdLocal:RCRMField1>
        <xsdLocal:SoldToAccountNumber>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:SoldToAccountNumber"/>
        </xsdLocal:SoldToAccountNumber>
        <xsdLocal:RCRMField6>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:RCRMField6"/>
        </xsdLocal:RCRMField6>
        <xsdLocal:RCRMSAPConCountry>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:RCRMSAPConCountry"/>
        </xsdLocal:RCRMSAPConCountry>
      </xsdLocal:orderHeader>
      <xsl:for-each select="/xsdLocal:orderRequest/xsdLocal:orderLineItem">
        <xsdLocal:orderLineItem>
          <xsdLocal:CRMOLIId>
            <xsl:value-of select="comt:CRMOLIId"/>
          </xsdLocal:CRMOLIId>
          <xsdLocal:rootItemId>
            <xsl:value-of select="comt:rootItemId"/>
          </xsdLocal:rootItemId>
          <xsdLocal:parentOrderItemId>
            <xsl:value-of select="comt:parentOrderItemId"/>
          </xsdLocal:parentOrderItemId>
          <xsdLocal:actionCode>
            <xsl:value-of select="comt:actionCode"/>
          </xsdLocal:actionCode>
          <xsdLocal:businessCase>
            <xsl:value-of select="comt:businessCase"/>
          </xsdLocal:businessCase>
          <xsdLocal:salesCode>
            <xsl:value-of select="comt:salesCode"/>
          </xsdLocal:salesCode>
          <xsdLocal:billToSubscriberNumber>
            <xsl:value-of select="comt:billToSubscriberNumber"/>
          </xsdLocal:billToSubscriberNumber>
          <xsdLocal:billToSubAccountNumber>
            <xsl:value-of select="comt:billToSubAccountNumber"/>
          </xsdLocal:billToSubAccountNumber>
          <xsdLocal:PLI>
            <xsl:value-of select="comt:PLI"/>
          </xsdLocal:PLI>
          <xsdLocal:productIntegrationId>
            <xsl:value-of select="comt:productIntegrationId"/>
          </xsdLocal:productIntegrationId>
          <xsdLocal:permissioningSystem>
            <xsl:value-of select="comt:permissioningSystem"/>
          </xsdLocal:permissioningSystem>
          <xsdLocal:manualPermissioningRequired>
            <xsl:value-of select="comt:manualPermissioningRequired"/>
          </xsdLocal:manualPermissioningRequired>
          <xsdLocal:AKR>
            <xsl:value-of select="comt:AKR"/>
          </xsdLocal:AKR>
          <xsdLocal:userID>
            <xsl:value-of select="comt:userID"/>
          </xsdLocal:userID>
          <xsdLocal:userIDType>
            <xsl:value-of select="comt:userIDType"/>
          </xsdLocal:userIDType>
          <xsdLocal:userNumber>
            <xsl:value-of select="comt:userNumber"/>
          </xsdLocal:userNumber>
          <xsdLocal:firstName>
            <xsl:value-of select="comt:firstName"/>
          </xsdLocal:firstName>
          <xsdLocal:lastname>
            <xsl:value-of select="comt:lastname"/>
          </xsdLocal:lastname>
          <xsdLocal:dob>
            <xsl:value-of select="comt:dob"/>
          </xsdLocal:dob>
          <xsdLocal:isNewUser>
            <xsl:value-of select="comt:isNewUser"/>
          </xsdLocal:isNewUser>
          <xsdLocal:QUID>
            <xsl:value-of select="comt:QUID"/>
          </xsdLocal:QUID>
          <xsdLocal:installDate>
            <xsl:value-of select="comt:installDate"/>
          </xsdLocal:installDate>
          <xsdLocal:removalDate>
            <xsl:value-of select="comt:removalDate"/>
          </xsdLocal:removalDate>
          <xsdLocal:discount>
            <xsl:value-of select="comt:discount"/>
          </xsdLocal:discount>
          <xsdLocal:specialPrice>
            <xsl:value-of select="comt:specialPrice"/>
          </xsdLocal:specialPrice>
          <xsdLocal:specialPriceCurr>
            <xsl:value-of select="comt:specialPriceCurr"/>
          </xsdLocal:specialPriceCurr>
          <xsdLocal:specialPriceRestrictionDate>
            <xsl:value-of select="comt:specialPriceRestrictionDate"/>
          </xsdLocal:specialPriceRestrictionDate>
          <xsdLocal:itemNumber>
            <xsl:value-of select="comt:itemNumber"/>
          </xsdLocal:itemNumber>
          <xsdLocal:startStopBillingDate>
            <xsl:value-of select="comt:startStopBillingDate"/>
          </xsdLocal:startStopBillingDate>
          <xsdLocal:billingType>
            <xsl:value-of select="comt:billingType"/>
          </xsdLocal:billingType>
          <xsdLocal:billingNote>
            <xsl:value-of select="comt:billingNote"/>
          </xsdLocal:billingNote>
          <xsdLocal:freeTrailFlag>
            <xsl:value-of select="comt:freeTrailFlag"/>
          </xsdLocal:freeTrailFlag>
          <xsdLocal:freeTrailEndDate>
            <xsl:value-of select="comt:freeTrailEndDate"/>
          </xsdLocal:freeTrailEndDate>
          <xsdLocal:STB>
            <xsl:value-of select="comt:STB"/>
          </xsdLocal:STB>
          <xsdLocal:assetIntegrationId>
            <xsl:value-of select="comt:assetIntegrationId"/>
          </xsdLocal:assetIntegrationId>
          <xsdLocal:orderLineStatus>
            <xsl:value-of select="comt:orderLineStatus"/>
          </xsdLocal:orderLineStatus>
          <xsdLocal:permissioningStatus>
            <xsl:value-of select="comt:permissioningStatus"/>
          </xsdLocal:permissioningStatus>
          <xsdLocal:interfaceForBilling>
            <xsl:value-of select="comt:interfaceForBilling"/>
          </xsdLocal:interfaceForBilling>
          <xsdLocal:interfaceForFulfilment>
            <xsl:value-of select="comt:interfaceForFulfilment"/>
          </xsdLocal:interfaceForFulfilment>
          <xsl:for-each select="comt:configuredAttribute">
            <xsdLocal:configuredAttribute>
              <xsdLocal:attributeName>
                <xsl:value-of select="comt:attributeName"/>
              </xsdLocal:attributeName>
              <xsdLocal:value>
                <xsl:value-of select="comt:value"/>
              </xsdLocal:value>
              <xsdLocal:attributeIntegrationId>
                <xsl:value-of select="comt:attributeIntegrationId"/>
              </xsdLocal:attributeIntegrationId>
              <xsdLocal:valueIntegrationId>
                <xsl:value-of select="comt:valueIntegrationId"/>
              </xsdLocal:valueIntegrationId>
            </xsdLocal:configuredAttribute>
          </xsl:for-each>
          <xsdLocal:technicalFulfilmentReq>
            <xsl:value-of select="comt:technicalFulfilmentReq"/>
          </xsdLocal:technicalFulfilmentReq>
          <xsdLocal:technicalApprovalReq>
            <xsl:value-of select="comt:technicalApprovalReq"/>
          </xsdLocal:technicalApprovalReq>
          <xsdLocal:fulfilmentStatus>
            <xsl:value-of select="comt:fulfilmentStatus"/>
          </xsdLocal:fulfilmentStatus>
          <xsdLocal:fulfilmentIntegrationFlag>
            <xsl:value-of select="comt:fulfilmentIntegrationFlag"/>
          </xsdLocal:fulfilmentIntegrationFlag>
          <xsdLocal:billingAccountId>
            <xsl:value-of select="comt:billingAccountId"/>
          </xsdLocal:billingAccountId>
          <xsdLocal:technicalFulfilmentFlag>
            <xsl:value-of select="comt:technicalFulfilmentFlag"/>
          </xsdLocal:technicalFulfilmentFlag>
          <xsdLocal:quantity>
            <xsl:value-of select="comt:quantity"/>
          </xsdLocal:quantity>
          <xsdLocal:product>
            <xsl:value-of select="comt:product"/>
          </xsdLocal:product>
          <xsdLocal:altInstalBillingId>
            <xsl:value-of select="comt:altInstalBillingId"/>
          </xsdLocal:altInstalBillingId>
          <xsdLocal:freeTrialDuration>
            <xsl:value-of select="comt:freeTrialDuration"/>
          </xsdLocal:freeTrialDuration>
          <xsdLocal:freeTrialStartDate>
            <xsl:value-of select="comt:freeTrialStartDate"/>
          </xsdLocal:freeTrialStartDate>
          <xsdLocal:lastUpdateDate>
            <xsl:value-of select="comt:lastUpdateDate"/>
          </xsdLocal:lastUpdateDate>
          <xsdLocal:mandatorytechFulfilmentFlag>
            <xsl:value-of select="comt:mandatorytechFulfilmentFlag"/>
          </xsdLocal:mandatorytechFulfilmentFlag>
          <xsdLocal:technicalVettingFlag>
            <xsl:value-of select="comt:technicalVettingFlag"/>
          </xsdLocal:technicalVettingFlag>
          <xsdLocal:WorkPhone>
            <xsl:value-of select="comt:WorkPhone"/>
          </xsdLocal:WorkPhone>
          <xsdLocal:ResponseCode>
            <xsl:value-of select="comt:ResponseCode"/>
          </xsdLocal:ResponseCode>
          <xsdLocal:RCRMePlatformId>
            <xsl:value-of select="comt:RCRMePlatformId"/>
          </xsdLocal:RCRMePlatformId>
          <xsdLocal:RCRMSupportLanguage>
            <xsl:value-of select="comt:RCRMSupportLanguage"/>
          </xsdLocal:RCRMSupportLanguage>
          <xsdLocal:RCRMSegGrpEndUserActivity>
            <xsl:value-of select="comt:RCRMSegGrpEndUserActivity"/>
          </xsdLocal:RCRMSegGrpEndUserActivity>
          <xsdLocal:RCRMRegionalFocus>
            <xsl:value-of select="comt:RCRMRegionalFocus"/>
          </xsdLocal:RCRMRegionalFocus>
          <xsdLocal:RCRMMarketingConsentSetDate>
            <xsl:value-of select="comt:RCRMMarketingConsentSetDate"/>
          </xsdLocal:RCRMMarketingConsentSetDate>
          <xsdLocal:RCRMManualPermissionedFlag>
            <xsl:value-of select="comt:RCRMManualPermissionedFlag"/>
          </xsdLocal:RCRMManualPermissionedFlag>
          <xsdLocal:RCRMLocalLastName>
            <xsl:value-of select="comt:RCRMLocalLastName"/>
          </xsdLocal:RCRMLocalLastName>
          <xsdLocal:RCRMLocalFirstName>
            <xsl:value-of select="comt:RCRMLocalFirstName"/>
          </xsdLocal:RCRMLocalFirstName>
          <xsdLocal:RCRMLocalDACSId>
            <xsl:value-of select="comt:RCRMLocalDACSId"/>
          </xsdLocal:RCRMLocalDACSId>
          <xsdLocal:RCRMLegalConsentSetDate>
            <xsl:value-of select="comt:RCRMLegalConsentSetDate"/>
          </xsdLocal:RCRMLegalConsentSetDate>
          <xsdLocal:RCRMLegalConsent>
            <xsl:value-of select="comt:RCRMLegalConsent"/>
          </xsdLocal:RCRMLegalConsent>
          <xsdLocal:RCRMLastUpdatedProfileDate>
            <xsl:value-of select="comt:RCRMLastUpdatedProfileDate"/>
          </xsdLocal:RCRMLastUpdatedProfileDate>
          <xsdLocal:RCRMFTLFlagSetDate>
            <xsl:value-of select="comt:RCRMFTLFlagSetDate"/>
          </xsdLocal:RCRMFTLFlagSetDate>
          <xsdLocal:RCRMFTLCompleteFlag>
            <xsl:value-of select="comt:RCRMFTLCompleteFlag"/>
          </xsdLocal:RCRMFTLCompleteFlag>
          <xsdLocal:RCRMErrorContext>
            <xsl:value-of select="comt:RCRMErrorContext"/>
          </xsdLocal:RCRMErrorContext>
          <xsdLocal:RCRMErrorCode>
            <xsl:value-of select="comt:RCRMErrorCode"/>
          </xsdLocal:RCRMErrorCode>
          <xsdLocal:RCRMDiscountReason>
            <xsl:value-of select="comt:RCRMDiscountReason"/>
          </xsdLocal:RCRMDiscountReason>
          <xsdLocal:RCRMDirectMarketing>
            <xsl:value-of select="comt:RCRMDirectMarketing"/>
          </xsdLocal:RCRMDirectMarketing>
          <xsdLocal:RCRMCPfGTempURL>
            <xsl:value-of select="comt:RCRMCPfGTempURL"/>
          </xsdLocal:RCRMCPfGTempURL>
          <xsdLocal:RCRMBillingAccount>
            <xsl:value-of select="comt:RCRMBillingAccount"/>
          </xsdLocal:RCRMBillingAccount>
          <xsdLocal:RCRMActionCode>
            <xsl:value-of select="comt:RCRMActionCode"/>
          </xsdLocal:RCRMActionCode>
          <xsdLocal:RCRMAAAUpdatedProfileDate>
            <xsl:value-of select="comt:RCRMAAAUpdatedProfileDate"/>
          </xsdLocal:RCRMAAAUpdatedProfileDate>
          <xsdLocal:PrimaryAccountId>
            <xsl:value-of select="comt:PrimaryAccountId"/>
          </xsdLocal:PrimaryAccountId>
          <xsdLocal:ParentOrderItemId>
            <xsl:value-of select="comt:ParentOrderItemId"/>
          </xsdLocal:ParentOrderItemId>
          <xsdLocal:ModId>
            <xsl:value-of select="comt:ModId"/>
          </xsdLocal:ModId>
          <xsdLocal:MM>
            <xsl:value-of select="comt:MM"/>
          </xsdLocal:MM>
          <xsdLocal:EmailAddress>
            <xsl:value-of select="comt:EmailAddress"/>
          </xsdLocal:EmailAddress>
          <xsdLocal:ILA>
            <xsl:value-of select="comt:ILA"/>
          </xsdLocal:ILA>
          <xsdLocal:contactMarketFocus>
            <xsl:value-of select="comt:contactMarketFocus"/>
          </xsdLocal:contactMarketFocus>
          <xsdLocal:billingPlatform>
            <xsl:value-of select="comt:billingPlatform"/>
          </xsdLocal:billingPlatform>
          <xsdLocal:extraInfo>
           <xsl:copy-of select="comt:MxPDBName/child::node()"/>
          </xsdLocal:extraInfo>
          <xsdLocal:primaryUUID>
            <xsl:value-of select="comt:primaryUUID"/>
          </xsdLocal:primaryUUID>
          <xsdLocal:umbrellaProductIntegrationId>
            <xsl:value-of select="comt:umbrellaProductIntegrationId"/>
          </xsdLocal:umbrellaProductIntegrationId>
          <xsdLocal:contactReutersMessagingId>
            <xsl:value-of select="comt:contactReutersMessagingId"/>
          </xsdLocal:contactReutersMessagingId>
          <xsdLocal:oldContactUserId>
            <xsl:value-of select="comt:oldContactUserId"/>
          </xsdLocal:oldContactUserId>
          <xsdLocal:CpfgErrorMessage>
            <xsl:value-of select="comt:CpfgErrorMessage"/>
          </xsdLocal:CpfgErrorMessage>
          <xsdLocal:installSubscriberNumber>
            <xsl:value-of select="comt:installSubscriberNumber"/>
          </xsdLocal:installSubscriberNumber>
          <xsdLocal:installSubscriberAccountId>
            <xsl:value-of select="comt:installSubscriberAccountId"/>
          </xsdLocal:installSubscriberAccountId>
          <xsdLocal:installSubAccountNumber>
            <xsl:value-of select="comt:installSubAccountNumber"/>
          </xsdLocal:installSubAccountNumber>
          <xsdLocal:installLocationAccountId>
            <xsl:value-of select="comt:installLocationAccountId"/>
          </xsdLocal:installLocationAccountId>
          <xsdLocal:ContactId>
            <xsl:value-of select="comt:ContactId"/>
          </xsdLocal:ContactId>
          <xsdLocal:Cache_PermissioningSystem>
            <xsl:value-of select='orcl:lookup-table("ASSET_CACHE","ASSET_INTEGRATION_ID",comt:assetIntegrationId,"PERMISSIONING_SYSTEM","eai/ds/EAIReference")'/>
          </xsdLocal:Cache_PermissioningSystem>
          <xsdLocal:Cache_billingplatform>
            <xsl:value-of select='orcl:lookup-table("ASSET_CACHE","ASSET_INTEGRATION_ID",comt:assetIntegrationId,"BILLINGPLATFORM","eai/ds/EAIReference")'/>
          </xsdLocal:Cache_billingplatform>
          <xsdLocal:userGroup>
            <xsl:value-of select="comt:userGroup"/>
          </xsdLocal:userGroup>
          <xsdLocal:userDomain>
            <xsl:value-of select="comt:userDomain"/>
          </xsdLocal:userDomain>
          <xsdLocal:anonymityFlag>
            <xsl:value-of select="comt:contactAnonymityFlag"/>
          </xsdLocal:anonymityFlag>
          <xsdLocal:anonymityReason>
            <xsl:value-of select="comt:contactAnonymityReason"/>
          </xsdLocal:anonymityReason>
          <xsdLocal:contactJobFunction>
            <xsl:value-of select="comt:contactJobFunction"/>
          </xsdLocal:contactJobFunction>
          <xsdLocal:serverId>
            <xsl:value-of select="comt:serverId"/>
          </xsdLocal:serverId>
          <xsdLocal:isDelete>
            <xsl:value-of select="comt:isDelete"/>
          </xsdLocal:isDelete>
          <xsdLocal:creditDebit>
            <xsl:value-of select="comt:creditDebit"/>
          </xsdLocal:creditDebit>
          <xsdLocal:netPriceDisplay>
            <xsl:value-of select="comt:netPriceDisplay"/>
          </xsdLocal:netPriceDisplay>
          <xsdLocal:SAPBillable>
            <xsl:value-of select="comt:SAPBillable"/>
          </xsdLocal:SAPBillable>
          <xsdLocal:SAPItemNumber>
            <xsl:value-of select="comt:SAPItemNumber"/>
          </xsdLocal:SAPItemNumber>
          <xsdLocal:PONumber>
            <xsl:value-of select="comt:PONumber"/>
          </xsdLocal:PONumber>
          <xsdLocal:InstallLocationAccountNumber>
            <xsl:value-of select="comt:InstallLocationAccountNumber"/>
          </xsdLocal:InstallLocationAccountNumber>
          <xsdLocal:BillToAccountNumber>
            <xsl:value-of select="comt:BillToAccountNumber"/>
          </xsdLocal:BillToAccountNumber>
          <xsdLocal:RCRMField2>
            <xsl:value-of select="comt:RCRMField2"/>
          </xsdLocal:RCRMField2>
          <xsdLocal:RCRMField3>
            <xsl:value-of select="comt:RCRMField3"/>
          </xsdLocal:RCRMField3>
          <xsdLocal:SAPOrderNumber>
            <xsl:value-of select="comt:SAPOrderNumber"/>
          </xsdLocal:SAPOrderNumber>
          <xsdLocal:RCRMField6>
            <xsl:value-of select="comt:RCRMField6"/>
          </xsdLocal:RCRMField6>
          <xsdLocal:RCRMField1>
            <xsl:value-of select="comt:RCRMField1"/>
          </xsdLocal:RCRMField1>
          <xsdLocal:RCRMField10>
            <xsl:value-of select="comt:RCRMField10"/>
          </xsdLocal:RCRMField10>
          <xsdLocal:SAPActionCode>
            <xsl:value-of select="comt:SAPActionCode"/>
          </xsdLocal:SAPActionCode>
          <xsdLocal:SAPBusinessCase>
            <xsl:value-of select="comt:SAPBusinessCase"/>
          </xsdLocal:SAPBusinessCase>
          <xsdLocal:CalculatedListPrice>
            <xsl:value-of select="comt:CalculatedListPrice"/>
          </xsdLocal:CalculatedListPrice>
          <xsdLocal:ListPrice>
            <xsl:value-of select="comt:ListPrice"/>
          </xsdLocal:ListPrice>
          <xsdLocal:BillingPeriod>
            <xsl:value-of select="comt:BillingPeriod"/>
          </xsdLocal:BillingPeriod>
          <xsdLocal:PublishContactToSAP>
            <xsl:value-of select="comt:PublishContactToSAP"/>
          </xsdLocal:PublishContactToSAP>
          <xsdLocal:ContactStatus>
            <xsl:value-of select="comt:ContactStatus"/>
          </xsdLocal:ContactStatus>
          <xsdLocal:PPLId>
            <xsl:value-of select="comt:PPLId"/>
          </xsdLocal:PPLId>
        </xsdLocal:orderLineItem>
      </xsl:for-each>
    </xsdLocal:extOrderRequest>
  </xsl:template>
</xsl:stylesheet>