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
      <schema location="http://inkaban3ua-eai05:8000/soa-infra/services/CRMASYNC/CPFGOM_UserOrderManager/EAI.MSG.CPFG.262_SingleUserOrder.xsd"/>
      <rootElement name="orderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement/CPFGOM_UserOrderManager"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [WED MAR 14 00:56:24 GMT+05:30 2012]. -->
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
                xmlns:ns1="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement/CPFGOM_UserOrderManager"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl ns0 xsdLocal xsd cmt ns1 bpws xp20 mhdr bpel2 orcl dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <ns1:orderRequest>
      <ns1:eaiHeader>
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
      </ns1:eaiHeader>
      <ns1:logicalCountry>
        <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:logicalCountry"/>
      </ns1:logicalCountry>
      <ns1:messageHeader>
        <ns1:actionCode>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:messageHeader/xsdLocal:actionCode"/>
        </ns1:actionCode>
        <ns1:version>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:messageHeader/xsdLocal:version"/>
        </ns1:version>
        <ns1:userId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:messageHeader/xsdLocal:userId"/>
        </ns1:userId>
      </ns1:messageHeader>
      <ns1:orderHeader>
        <ns1:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:CRMOrderNumber"/>
        </ns1:CRMOrderNumber>
        <ns1:AAATransactionId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:AAATransactionId"/>
        </ns1:AAATransactionId>
        <ns1:installDate>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:installDate"/>
        </ns1:installDate>
        <ns1:removalDate>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:removalDate"/>
        </ns1:removalDate>
        <ns1:po>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:po"/>
        </ns1:po>
        <ns1:orderNote>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:orderNote"/>
        </ns1:orderNote>
        <ns1:orderStatus>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:orderStatus"/>
        </ns1:orderStatus>
        <ns1:ssPersonId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:ssPersonId"/>
        </ns1:ssPersonId>
        <ns1:slPersonId>
          <xsl:value-of select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderHeader/xsdLocal:slPersonId"/>
        </ns1:slPersonId>
      </ns1:orderHeader>
      <xsl:for-each select="/xsdLocal:distinctUserIdRequest/xsdLocal:orderLineItem">
        <xsl:if test="../xsdLocal:UserId = xsdLocal:userNumber">
          <ns1:orderLineItem>
            <ns1:CRMOLIId>
              <xsl:value-of select="xsdLocal:CRMOLIId"/>
            </ns1:CRMOLIId>
            <ns1:parentOrderItemId>
              <xsl:value-of select="xsdLocal:parentOrderItemId"/>
            </ns1:parentOrderItemId>
            <ns1:rootItemId>
              <xsl:value-of select="xsdLocal:rootItemId"/>
            </ns1:rootItemId>
            <xsl:choose>
              <xsl:when test='xsdLocal:actionCode = "AKR Change"'>
                <ns1:actionCode>
                  <xsl:text disable-output-escaping="no">Update</xsl:text>
                </ns1:actionCode>
              </xsl:when>
              <xsl:when test='xsdLocal:actionCode = "Billing Account Change"'>
                <ns1:actionCode>
                  <xsl:text disable-output-escaping="no">Update</xsl:text>
                </ns1:actionCode>
              </xsl:when>
              <xsl:when test='xsdLocal:actionCode = "FT Extension"'>
                <ns1:actionCode>
                  <xsl:text disable-output-escaping="no">Update</xsl:text>
                </ns1:actionCode>
              </xsl:when>
              <xsl:when test='xsdLocal:actionCode = "Start Date Change"'>
                <ns1:actionCode>
                  <xsl:text disable-output-escaping="no">Update</xsl:text>
                </ns1:actionCode>
              </xsl:when>
              <xsl:when test='xsdLocal:actionCode = "Stop Date Change"'>
                <ns1:actionCode>
                  <xsl:text disable-output-escaping="no">Update</xsl:text>
                </ns1:actionCode>
              </xsl:when>
              <xsl:when test='(xsdLocal:businessCase = "FT Conversion") and (xsdLocal:actionCode = "Add")'>
                <ns1:actionCode>
                  <xsl:text disable-output-escaping="no">FTConversionAdd</xsl:text>
                </ns1:actionCode>
              </xsl:when>
              <xsl:when test='(xsdLocal:businessCase = "FT Conversion") and (xsdLocal:actionCode = "Delete")'>
                <ns1:actionCode>
                  <xsl:text disable-output-escaping="no">FTConversionDelete</xsl:text>
                </ns1:actionCode>
              </xsl:when>
              <xsl:when test='xsdLocal:actionCode = "Billing Note Change"'>
                <ns1:actionCode>
                  <xsl:text disable-output-escaping="no">Update</xsl:text>
                </ns1:actionCode>
              </xsl:when>
              <xsl:when test='xsdLocal:actionCode = "PO Number Change"'>
                <ns1:actionCode>
                  <xsl:text disable-output-escaping="no">Update</xsl:text>
                </ns1:actionCode>
              </xsl:when>
              <xsl:when test='xsdLocal:actionCode = "Special Price Change"'>
                <ns1:actionCode>
                  <xsl:text disable-output-escaping="no">Update</xsl:text>
                </ns1:actionCode>
              </xsl:when>
              <xsl:otherwise>
                <ns1:actionCode>
                  <xsl:value-of select="xsdLocal:actionCode"/>
                </ns1:actionCode>
              </xsl:otherwise>
            </xsl:choose>
            <ns1:businessCase>
              <xsl:value-of select="xsdLocal:businessCase"/>
            </ns1:businessCase>
            <ns1:salesCode>
              <xsl:value-of select="xsdLocal:salesCode"/>
            </ns1:salesCode>
            <ns1:subscriber>
              <xsl:value-of select="xsdLocal:billToSubscriberNumber"/>
            </ns1:subscriber>
            <ns1:subAccount>
              <xsl:value-of select="xsdLocal:billToSubAccountNumber"/>
            </ns1:subAccount>
            <ns1:PLI>
              <xsl:value-of select="xsdLocal:PLI"/>
            </ns1:PLI>
            <ns1:permissioningSystem>
              <xsl:value-of select="xsdLocal:permissioningSystem"/>
            </ns1:permissioningSystem>
            <ns1:manualPermissioningRequired>
              <xsl:value-of select="xsdLocal:manualPermissioningRequired"/>
            </ns1:manualPermissioningRequired>
            <ns1:AKR>
              <xsl:value-of select="xsdLocal:AKR"/>
            </ns1:AKR>
            <ns1:userID>
              <xsl:value-of select="xsdLocal:userID"/>
            </ns1:userID>
            <ns1:userIDtype>
              <xsl:value-of select="xsdLocal:userIDtype"/>
            </ns1:userIDtype>
            <ns1:userNumber>
              <xsl:value-of select="xsdLocal:userNumber"/>
            </ns1:userNumber>
            <ns1:firstName>
              <xsl:value-of select="xsdLocal:firstName"/>
            </ns1:firstName>
            <ns1:lastname>
              <xsl:value-of select="xsdLocal:lastname"/>
            </ns1:lastname>
            <ns1:dob>
              <xsl:value-of select="xsdLocal:dob"/>
            </ns1:dob>
            <ns1:isNewUser>
              <xsl:value-of select="xsdLocal:isNewUser"/>
            </ns1:isNewUser>
            <ns1:installDate>
              <xsl:value-of select="xsdLocal:installDate"/>
            </ns1:installDate>
            <ns1:removalDate>
              <xsl:value-of select="xsdLocal:removalDate"/>
            </ns1:removalDate>
            <ns1:QUID>
              <xsl:value-of select="xsdLocal:QUID"/>
            </ns1:QUID>
            <ns1:discount>
              <xsl:value-of select="xsdLocal:discount"/>
            </ns1:discount>
            <ns1:specialPrice>
              <xsl:value-of select="xsdLocal:specialPrice"/>
            </ns1:specialPrice>
            <ns1:specialPriceCurr>
              <xsl:value-of select="xsdLocal:specialPriceCurr"/>
            </ns1:specialPriceCurr>
            <ns1:specialPriceRestrictionDate>
              <xsl:value-of select="xsdLocal:specialPriceRestrictionDate"/>
            </ns1:specialPriceRestrictionDate>
            <ns1:itemNumber>
              <xsl:value-of select="xsdLocal:itemNumber"/>
            </ns1:itemNumber>
            <ns1:startStopBillingDate>
              <xsl:value-of select="xsdLocal:startStopBillingDate"/>
            </ns1:startStopBillingDate>
            <ns1:billingType>
              <xsl:value-of select="xsdLocal:billingType"/>
            </ns1:billingType>
            <ns1:billingNote>
              <xsl:value-of select="xsdLocal:billingNote"/>
            </ns1:billingNote>
            <ns1:freeTrailFlag>
              <xsl:value-of select="xsdLocal:freeTrailFlag"/>
            </ns1:freeTrailFlag>
            <ns1:STB>
              <xsl:value-of select="xsdLocal:STB"/>
            </ns1:STB>
            <ns1:assetIntegrationId>
              <xsl:value-of select="xsdLocal:assetIntegrationId"/>
            </ns1:assetIntegrationId>
            <ns1:orderLineStatus>
              <xsl:value-of select="xsdLocal:orderLineStatus"/>
            </ns1:orderLineStatus>
            <ns1:permissioningStatus>
              <xsl:value-of select="xsdLocal:permissioningStatus"/>
            </ns1:permissioningStatus>
            <ns1:interfaceForBilling>
              <xsl:value-of select="xsdLocal:interfaceForBilling"/>
            </ns1:interfaceForBilling>
            <ns1:interfaceForFulfilment>
              <xsl:value-of select="xsdLocal:interfaceForFulfilment"/>
            </ns1:interfaceForFulfilment>
            <xsl:choose>
              <xsl:when test='"" != orcl:right-trim(xsdLocal:umbrellaProductIntegrationId)'>
                <ns1:productIntegrationId>
                  <xsl:value-of select="xsdLocal:umbrellaProductIntegrationId"/>
                </ns1:productIntegrationId>
              </xsl:when>
              <xsl:otherwise>
                <ns1:productIntegrationId>
                  <xsl:value-of select="xsdLocal:productIntegrationId"/>
                </ns1:productIntegrationId>
              </xsl:otherwise>
            </xsl:choose>
            <ns1:freeTrialEndDate>
              <xsl:value-of select="xsdLocal:freeTrialEndDate"/>
            </ns1:freeTrialEndDate>
            <ns1:WorkPhone>
              <xsl:value-of select="xsdLocal:WorkPhone"/>
            </ns1:WorkPhone>
            <ns1:ResponseCode>
              <xsl:value-of select="xsdLocal:ResponseCode"/>
            </ns1:ResponseCode>
            <ns1:RCRMePlatformId>
              <xsl:value-of select="xsdLocal:RCRMePlatformId"/>
            </ns1:RCRMePlatformId>
            <ns1:RCRMSupportLanguage>
              <xsl:value-of select="xsdLocal:RCRMSupportLanguage"/>
            </ns1:RCRMSupportLanguage>
            <ns1:RCRMSegGrpEndUserActivity>
              <xsl:value-of select="xsdLocal:RCRMSegGrpEndUserActivity"/>
            </ns1:RCRMSegGrpEndUserActivity>
            <ns1:RCRMRegionalFocus>
              <xsl:value-of select="xsdLocal:contactMarketFocus"/>
            </ns1:RCRMRegionalFocus>
            <ns1:RCRMMarketingConsentSetDate>
              <xsl:value-of select="xsdLocal:RCRMMarketingConsentSetDate"/>
            </ns1:RCRMMarketingConsentSetDate>
            <ns1:RCRMManualPermissionedFlag>
              <xsl:value-of select="xsdLocal:RCRMManualPermissionedFlag"/>
            </ns1:RCRMManualPermissionedFlag>
            <ns1:RCRMLocalLastName>
              <xsl:value-of select="xsdLocal:RCRMLocalLastName"/>
            </ns1:RCRMLocalLastName>
            <ns1:RCRMLocalFirstName>
              <xsl:value-of select="xsdLocal:RCRMLocalFirstName"/>
            </ns1:RCRMLocalFirstName>
            <ns1:RCRMLocalDACSId>
              <xsl:value-of select="xsdLocal:RCRMLocalDACSId"/>
            </ns1:RCRMLocalDACSId>
            <ns1:RCRMLegalConsentSetDate>
              <xsl:value-of select="xsdLocal:RCRMLegalConsentSetDate"/>
            </ns1:RCRMLegalConsentSetDate>
            <ns1:RCRMLegalConsent>
              <xsl:value-of select="xsdLocal:RCRMLegalConsent"/>
            </ns1:RCRMLegalConsent>
            <ns1:RCRMLastUpdatedProfileDate>
              <xsl:value-of select="xsdLocal:RCRMLastUpdatedProfileDate"/>
            </ns1:RCRMLastUpdatedProfileDate>
            <ns1:RCRMFTLFlagSetDate>
              <xsl:value-of select="xsdLocal:RCRMFTLFlagSetDate"/>
            </ns1:RCRMFTLFlagSetDate>
            <ns1:RCRMFTLCompleteFlag>
              <xsl:value-of select="xsdLocal:RCRMFTLCompleteFlag"/>
            </ns1:RCRMFTLCompleteFlag>
            <ns1:RCRMErrorContext>
              <xsl:value-of select="xsdLocal:RCRMErrorContext"/>
            </ns1:RCRMErrorContext>
            <ns1:RCRMErrorCode>
              <xsl:value-of select="xsdLocal:RCRMErrorCode"/>
            </ns1:RCRMErrorCode>
            <ns1:RCRMDirectMarketing>
              <xsl:value-of select="xsdLocal:RCRMDirectMarketing"/>
            </ns1:RCRMDirectMarketing>
            <ns1:RCRMCPfGTempURL>
              <xsl:value-of select="xsdLocal:RCRMCPfGTempURL"/>
            </ns1:RCRMCPfGTempURL>
            <ns1:RCRMBillingAccount>
              <xsl:value-of select="xsdLocal:RCRMBillingAccount"/>
            </ns1:RCRMBillingAccount>
            <ns1:RCRMActionCode>
              <xsl:value-of select="xsdLocal:RCRMActionCode"/>
            </ns1:RCRMActionCode>
            <ns1:RCRMAAAUpdatedProfileDate>
              <xsl:value-of select="xsdLocal:RCRMAAAUpdatedProfileDate"/>
            </ns1:RCRMAAAUpdatedProfileDate>
            <ns1:PrimaryAccountId>
              <xsl:value-of select="xsdLocal:PrimaryAccountId"/>
            </ns1:PrimaryAccountId>
            <ns1:primaryUUID>
              <xsl:value-of select="xsdLocal:primaryUUID"/>
            </ns1:primaryUUID>
            <ns1:ParentOrderItemId>
              <xsl:value-of select="xsdLocal:ParentOrderItemId"/>
            </ns1:ParentOrderItemId>
            <ns1:ModId>
              <xsl:value-of select="xsdLocal:ModId"/>
            </ns1:ModId>
            <ns1:MM>
              <xsl:value-of select="xsdLocal:MM"/>
            </ns1:MM>
            <ns1:EmailAddress>
              <xsl:value-of select="xsdLocal:EmailAddress"/>
            </ns1:EmailAddress>
            <ns1:extraInfo>
              <xsl:copy-of select="xsdLocal:extraInfo/child::node()"/>
            </ns1:extraInfo>
            <ns1:oldContactUserId>
              <xsl:value-of select="xsdLocal:oldContactUserId"/>
            </ns1:oldContactUserId>
            <xsl:for-each select="xsdLocal:configuredAttribute">
              <ns1:configuredAttribute>
                <ns1:attributeIntegrationId>
                  <xsl:value-of select="xsdLocal:attributeIntegrationId"/>
                </ns1:attributeIntegrationId>
                <ns1:attributeName>
                  <xsl:value-of select="xsdLocal:attributeName"/>
                </ns1:attributeName>
                <ns1:valueIntegrationId>
                  <xsl:value-of select="xsdLocal:valueIntegrationId"/>
                </ns1:valueIntegrationId>
                <ns1:value>
                  <xsl:value-of select="xsdLocal:value"/>
                </ns1:value>
              </ns1:configuredAttribute>
            </xsl:for-each>
          </ns1:orderLineItem>
        </xsl:if>
      </xsl:for-each>
    </ns1:orderRequest>
  </xsl:template>
</xsl:stylesheet>
