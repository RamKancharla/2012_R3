<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.OM.250_DistinctUserIdRequest.xsd"/>
      <rootElement name="distinctUserIdRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.OM.125_OrderRequest.xsd"/>
      <rootElement name="orderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [WED MAR 14 00:55:47 GMT+05:30 2012]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl ns0 xsdLocal xsd cmt bpws xp20 mhdr bpel2 orcl dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <xsdLocal:orderRequest>
      <xsdLocal:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:logicalCountry>
        <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:logicalCountry"/>
      </xsdLocal:logicalCountry>
      <xsdLocal:messageHeader>
        <xsdLocal:actionCode>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:messageHeader/xsdLocal:actionCode"/>
        </xsdLocal:actionCode>
        <xsdLocal:version>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:messageHeader/xsdLocal:version"/>
        </xsdLocal:version>
        <xsdLocal:userId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:messageHeader/xsdLocal:userId"/>
        </xsdLocal:userId>
      </xsdLocal:messageHeader>
      <xsdLocal:orderHeader>
        <xsdLocal:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:CRMOrderNumber"/>
        </xsdLocal:CRMOrderNumber>
        <xsdLocal:AAATransactionId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:AAATransactionId"/>
        </xsdLocal:AAATransactionId>
        <xsdLocal:installDate>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:installDate"/>
        </xsdLocal:installDate>
        <xsdLocal:removalDate>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:removalDate"/>
        </xsdLocal:removalDate>
        <xsdLocal:po>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:po"/>
        </xsdLocal:po>
        <xsdLocal:orderNote>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:orderNote"/>
        </xsdLocal:orderNote>
        <xsdLocal:orderStatus>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:orderStatus"/>
        </xsdLocal:orderStatus>
        <xsdLocal:ssPersonId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:ssPersonId"/>
        </xsdLocal:ssPersonId>
        <xsdLocal:slPersonId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:slPersonId"/>
        </xsdLocal:slPersonId>
      </xsdLocal:orderHeader>
      <xsl:for-each select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderLineItem">
        <xsl:if test="../xsdLocal:UserId = xsdLocal:userNumber">
          <xsdLocal:orderLineItem>
            <xsdLocal:CRMOLIId>
              <xsl:value-of select="xsdLocal:CRMOLIId"/>
            </xsdLocal:CRMOLIId>
            <xsdLocal:parentOrderItemId>
              <xsl:value-of select="xsdLocal:parentOrderItemId"/>
            </xsdLocal:parentOrderItemId>
            <xsdLocal:rootItemId>
              <xsl:value-of select="xsdLocal:rootItemId"/>
            </xsdLocal:rootItemId>
            <xsdLocal:actionCode>
              <xsl:value-of select="xsdLocal:actionCode"/>
            </xsdLocal:actionCode>
            <xsdLocal:businessCase>
              <xsl:value-of select="xsdLocal:businessCase"/>
            </xsdLocal:businessCase>
            <xsdLocal:salesCode>
              <xsl:value-of select="xsdLocal:salesCode"/>
            </xsdLocal:salesCode>
            <xsdLocal:billToSubscriberNumber>
              <xsl:value-of select="xsdLocal:billToSubscriberNumber"/>
            </xsdLocal:billToSubscriberNumber>
            <xsdLocal:billToSubAccountNumber>
              <xsl:value-of select="xsdLocal:billToSubAccountNumber"/>
            </xsdLocal:billToSubAccountNumber>
            <!--<xsdLocal:subscriber>
              <xsl:value-of select="xsdLocal:subscriber"/>
            </xsdLocal:subscriber>
            <xsdLocal:subAccount>
              <xsl:value-of select="xsdLocal:subAccount"/>
            </xsdLocal:subAccount>-->
            <xsdLocal:PLI>
              <xsl:value-of select="xsdLocal:PLI"/>
            </xsdLocal:PLI>
            <xsdLocal:permissioningSystem>
              <xsl:value-of select="xsdLocal:permissioningSystem"/>
            </xsdLocal:permissioningSystem>
            <xsdLocal:manualPermissioningRequired>
              <xsl:value-of select="xsdLocal:manualPermissioningRequired"/>
            </xsdLocal:manualPermissioningRequired>
            <xsdLocal:AKR>
              <xsl:value-of select="xsdLocal:AKR"/>
            </xsdLocal:AKR>
            <xsdLocal:userID>
              <xsl:value-of select="xsdLocal:userID"/>
            </xsdLocal:userID>
            <xsdLocal:userIDtype>
              <xsl:value-of select="xsdLocal:userIDtype"/>
            </xsdLocal:userIDtype>
            <xsdLocal:userNumber>
              <xsl:value-of select="xsdLocal:userNumber"/>
            </xsdLocal:userNumber>
            <xsdLocal:firstName>
              <xsl:value-of select="xsdLocal:firstName"/>
            </xsdLocal:firstName>
            <xsdLocal:lastname>
              <xsl:value-of select="xsdLocal:lastname"/>
            </xsdLocal:lastname>
            <xsdLocal:dob>
              <xsl:value-of select="xsdLocal:dob"/>
            </xsdLocal:dob>
            <xsdLocal:isNewUser>
              <xsl:value-of select="xsdLocal:isNewUser"/>
            </xsdLocal:isNewUser>
            <xsdLocal:installDate>
              <xsl:value-of select="xsdLocal:installDate"/>
            </xsdLocal:installDate>
            <xsdLocal:removalDate>
              <xsl:value-of select="xsdLocal:removalDate"/>
            </xsdLocal:removalDate>
            <xsdLocal:QUID>
              <xsl:value-of select="xsdLocal:QUID"/>
            </xsdLocal:QUID>
            <xsdLocal:discount>
              <xsl:value-of select="xsdLocal:discount"/>
            </xsdLocal:discount>
            <xsdLocal:specialPrice>
              <xsl:value-of select="xsdLocal:specialPrice"/>
            </xsdLocal:specialPrice>
            <xsdLocal:specialPriceCurr>
              <xsl:value-of select="xsdLocal:specialPriceCurr"/>
            </xsdLocal:specialPriceCurr>
            <xsdLocal:specialPriceRestrictionDate>
              <xsl:value-of select="xsdLocal:specialPriceRestrictionDate"/>
            </xsdLocal:specialPriceRestrictionDate>
            <xsdLocal:itemNumber>
              <xsl:value-of select="xsdLocal:itemNumber"/>
            </xsdLocal:itemNumber>
            <xsdLocal:startStopBillingDate>
              <xsl:value-of select="xsdLocal:startStopBillingDate"/>
            </xsdLocal:startStopBillingDate>
            <xsdLocal:billingType>
              <xsl:value-of select="xsdLocal:billingType"/>
            </xsdLocal:billingType>
            <xsdLocal:billingNote>
              <xsl:value-of select="xsdLocal:billingNote"/>
            </xsdLocal:billingNote>
            <xsdLocal:freeTrailFlag>
              <xsl:value-of select="xsdLocal:freeTrailFlag"/>
            </xsdLocal:freeTrailFlag>
            <xsdLocal:STB>
              <xsl:value-of select="xsdLocal:STB"/>
            </xsdLocal:STB>
            <xsdLocal:assetIntegrationId>
              <xsl:value-of select="xsdLocal:assetIntegrationId"/>
            </xsdLocal:assetIntegrationId>
            <xsdLocal:orderLineStatus>
              <xsl:value-of select="xsdLocal:orderLineStatus"/>
            </xsdLocal:orderLineStatus>
            <xsdLocal:permissioningStatus>
              <xsl:value-of select="xsdLocal:permissioningStatus"/>
            </xsdLocal:permissioningStatus>
            <xsdLocal:interfaceForBilling>
              <xsl:value-of select="xsdLocal:interfaceForBilling"/>
            </xsdLocal:interfaceForBilling>
            <xsdLocal:interfaceForFulfilment>
              <xsl:value-of select="xsdLocal:interfaceForFulfilment"/>
            </xsdLocal:interfaceForFulfilment>
            <xsdLocal:productIntegrationId>
              <xsl:value-of select="xsdLocal:productIntegrationId"/>
            </xsdLocal:productIntegrationId>
            <xsdLocal:freeTrialEndDate>
              <xsl:value-of select="xsdLocal:freeTrialEndDate"/>
            </xsdLocal:freeTrialEndDate>
            <xsdLocal:WorkPhone>
              <xsl:value-of select="xsdLocal:WorkPhone"/>
            </xsdLocal:WorkPhone>
            <xsdLocal:ResponseCode>
              <xsl:value-of select="xsdLocal:ResponseCode"/>
            </xsdLocal:ResponseCode>
            <xsdLocal:RCRMePlatformId>
              <xsl:value-of select="xsdLocal:RCRMePlatformId"/>
            </xsdLocal:RCRMePlatformId>
            <xsdLocal:RCRMSupportLanguage>
              <xsl:value-of select="xsdLocal:RCRMSupportLanguage"/>
            </xsdLocal:RCRMSupportLanguage>
            <xsdLocal:RCRMSegGrpEndUserActivity>
              <xsl:value-of select="xsdLocal:RCRMSegGrpEndUserActivity"/>
            </xsdLocal:RCRMSegGrpEndUserActivity>
            <xsdLocal:RCRMRegionalFocus>
              <xsl:value-of select="xsdLocal:RCRMRegionalFocus"/>
            </xsdLocal:RCRMRegionalFocus>
            <xsdLocal:RCRMMarketingConsentSetDate>
              <xsl:value-of select="xsdLocal:RCRMMarketingConsentSetDate"/>
            </xsdLocal:RCRMMarketingConsentSetDate>
            <xsdLocal:RCRMManualPermissionedFlag>
              <xsl:value-of select="xsdLocal:RCRMManualPermissionedFlag"/>
            </xsdLocal:RCRMManualPermissionedFlag>
            <xsdLocal:RCRMLocalLastName>
              <xsl:value-of select="xsdLocal:RCRMLocalLastName"/>
            </xsdLocal:RCRMLocalLastName>
            <xsdLocal:RCRMLocalFirstName>
              <xsl:value-of select="xsdLocal:RCRMLocalFirstName"/>
            </xsdLocal:RCRMLocalFirstName>
            <xsdLocal:RCRMLocalDACSId>
              <xsl:value-of select="xsdLocal:RCRMLocalDACSId"/>
            </xsdLocal:RCRMLocalDACSId>
            <xsdLocal:RCRMLegalConsentSetDate>
              <xsl:value-of select="xsdLocal:RCRMLegalConsentSetDate"/>
            </xsdLocal:RCRMLegalConsentSetDate>
            <xsdLocal:RCRMLegalConsent>
              <xsl:value-of select="xsdLocal:RCRMLegalConsent"/>
            </xsdLocal:RCRMLegalConsent>
            <xsdLocal:RCRMLastUpdatedProfileDate>
              <xsl:value-of select="xsdLocal:RCRMLastUpdatedProfileDate"/>
            </xsdLocal:RCRMLastUpdatedProfileDate>
            <xsdLocal:RCRMFTLFlagSetDate>
              <xsl:value-of select="xsdLocal:RCRMFTLFlagSetDate"/>
            </xsdLocal:RCRMFTLFlagSetDate>
            <xsdLocal:RCRMFTLCompleteFlag>
              <xsl:value-of select="xsdLocal:RCRMFTLCompleteFlag"/>
            </xsdLocal:RCRMFTLCompleteFlag>
            <xsdLocal:RCRMErrorContext>
              <xsl:value-of select="xsdLocal:RCRMErrorContext"/>
            </xsdLocal:RCRMErrorContext>
            <xsdLocal:RCRMErrorCode>
              <xsl:value-of select="xsdLocal:RCRMErrorCode"/>
            </xsdLocal:RCRMErrorCode>
            <xsdLocal:RCRMDirectMarketing>
              <xsl:value-of select="xsdLocal:RCRMDirectMarketing"/>
            </xsdLocal:RCRMDirectMarketing>
            <xsdLocal:RCRMCPfGTempURL>
              <xsl:value-of select="xsdLocal:RCRMCPfGTempURL"/>
            </xsdLocal:RCRMCPfGTempURL>
            <xsdLocal:RCRMBillingAccount>
              <xsl:value-of select="xsdLocal:RCRMBillingAccount"/>
            </xsdLocal:RCRMBillingAccount>
            <xsdLocal:RCRMActionCode>
              <xsl:value-of select="xsdLocal:RCRMActionCode"/>
            </xsdLocal:RCRMActionCode>
            <xsdLocal:RCRMAAAUpdatedProfileDate>
              <xsl:value-of select="xsdLocal:RCRMAAAUpdatedProfileDate"/>
            </xsdLocal:RCRMAAAUpdatedProfileDate>
            <xsdLocal:PrimaryAccountId>
              <xsl:value-of select="xsdLocal:PrimaryAccountId"/>
            </xsdLocal:PrimaryAccountId>
            <xsdLocal:ParentOrderItemId>
              <xsl:value-of select="xsdLocal:ParentOrderItemId"/>
            </xsdLocal:ParentOrderItemId>
            <xsdLocal:ModId>
              <xsl:value-of select="xsdLocal:ModId"/>
            </xsdLocal:ModId>
            <xsdLocal:MM>
              <xsl:value-of select="xsdLocal:MM"/>
            </xsdLocal:MM>
            <xsdLocal:EmailAddress>
              <xsl:value-of select="xsdLocal:EmailAddress"/>
            </xsdLocal:EmailAddress>
            <xsdLocal:extraInfo>
               <xsl:copy-of select="xsdLocal:extraInfo/child::node()"/>
            </xsdLocal:extraInfo>
            <xsdLocal:primaryUUID>
              <xsl:value-of select="xsdLocal:primaryUUID"/>
            </xsdLocal:primaryUUID>
            <xsl:for-each select="xsdLocal:configuredAttribute">
              <xsdLocal:configuredAttribute>
                <xsdLocal:attributeIntegrationId>
                  <xsl:value-of select="xsdLocal:attributeIntegrationId"/>
                </xsdLocal:attributeIntegrationId>
                <xsdLocal:attributeName>
                  <xsl:value-of select="xsdLocal:attributeName"/>
                </xsdLocal:attributeName>
                <xsdLocal:valueIntegrationId>
                  <xsl:value-of select="xsdLocal:valueIntegrationId"/>
                </xsdLocal:valueIntegrationId>
                <xsdLocal:value>
                  <xsl:value-of select="xsdLocal:value"/>
                </xsdLocal:value>
              </xsdLocal:configuredAttribute>
            </xsl:for-each>
            <xsdLocal:contactMarketFocus>
              <xsl:value-of select="xsdLocal:contactMarketFocus"/>
            </xsdLocal:contactMarketFocus>
            <xsdLocal:contactReutersMessagingId>
              <xsl:value-of select="xsdLocal:contactReutersMessagingId"/>
            </xsdLocal:contactReutersMessagingId>
            <xsdLocal:billingPlatform>
              <xsl:value-of select="xsdLocal:billingPlatform"/>
            </xsdLocal:billingPlatform>
            <xsdLocal:umbrellaProductIntegrationId>
              <xsl:value-of select="xsdLocal:umbrellaProductIntegrationId"/>
            </xsdLocal:umbrellaProductIntegrationId>
            <xsdLocal:oldContactUserId>
              <xsl:value-of select="xsdLocal:oldContactUserId"/>
            </xsdLocal:oldContactUserId>
          </xsdLocal:orderLineItem>
        </xsl:if>
      </xsl:for-each>
    </xsdLocal:orderRequest>
  </xsl:template>
</xsl:stylesheet>
