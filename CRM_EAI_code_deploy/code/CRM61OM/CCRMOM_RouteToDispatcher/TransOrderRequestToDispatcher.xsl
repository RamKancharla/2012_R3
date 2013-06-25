<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CCRM.OM.138_OrderRequest.xsd"/>
      <rootElement name="orderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/CCRM/OM/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai05:8000/soa-infra/services/CRMASYNC/OM_OrderDispatcher/EAI.MSG.OM.125_OrderRequest.xsd"/>
      <rootElement name="orderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.4.0(build 110106.1932.5682) AT [TUE MAR 13 16:17:33 GMT+05:30 2012]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes"
                xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations"
                xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns0="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"
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
                xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl ns3 ns1 cmt xsdLocal comt xsd ns2 ns0 xp20 bpws bpel2 bpm ora socket mhdr orcl dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <ns0:orderRequest>
      <ns0:eaiHeader>
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
      </ns0:eaiHeader>
      <ns0:logicalCountry>
        <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:logicalCountry"/>
      </ns0:logicalCountry>
      <ns0:messageHeader>
        <ns0:actionCode>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:messageHeader/comt:actionCode"/>
        </ns0:actionCode>
        <ns0:version>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:messageHeader/comt:version"/>
        </ns0:version>
        <ns0:userId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:messageHeader/comt:userId"/>
        </ns0:userId>
      </ns0:messageHeader>
      <ns0:orderHeader>
        <ns0:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:CRMOrderNumber"/>
        </ns0:CRMOrderNumber>
        <ns0:AAATransactionId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:AAATransactionId"/>
        </ns0:AAATransactionId>
        <ns0:installDate>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:installDate"/>
        </ns0:installDate>
        <ns0:removalDate>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:removalDate"/>
        </ns0:removalDate>
        <ns0:po>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:poNumber"/>
        </ns0:po>
        <ns0:orderNote>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:orderNote"/>
        </ns0:orderNote>
        <ns0:orderStatus>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:orderStatus"/>
        </ns0:orderStatus>
        <ns0:ssPersonId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:salesSpecialist"/>
        </ns0:ssPersonId>
        <ns0:slPersonId>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:accountManager"/>
        </ns0:slPersonId>
        <ns0:pricelistCurrency>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:currencyCode"/>
        </ns0:pricelistCurrency>
        <ns0:account>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:account"/>
        </ns0:account>
        <ns0:expectedTRTMDate>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:expectedTRTMDate"/>
        </ns0:expectedTRTMDate>
        <ns0:orderOwner>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:orderOwner"/>
        </ns0:orderOwner>
        <ns0:RCRMField1>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:RCRMField1"/>
        </ns0:RCRMField1>
        <ns0:SoldToAccountNumber>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:SoldToAccountNumber"/>
        </ns0:SoldToAccountNumber>
        <ns0:quoteNumber>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:quoteNumber"/>
        </ns0:quoteNumber>
        <ns0:RCRMSAPConCountry>
          <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:RCRMSAPConCountry"/>
        </ns0:RCRMSAPConCountry>
      </ns0:orderHeader>
      <xsl:for-each select="/xsdLocal:orderRequest/xsdLocal:orderLineItem">
        <ns0:orderLineItem>
          <ns0:CRMOLIId>
            <xsl:value-of select="comt:CRMOLIId"/>
          </ns0:CRMOLIId>
          <ns0:parentOrderItemId>
            <xsl:value-of select="comt:parentOrderItemId"/>
          </ns0:parentOrderItemId>
          <ns0:rootItemId>
            <xsl:value-of select="comt:rootItemId"/>
          </ns0:rootItemId>
          <ns0:actionCode>
            <xsl:value-of select="comt:actionCode"/>
          </ns0:actionCode>
          <ns0:businessCase>
            <xsl:value-of select="comt:businessCase"/>
          </ns0:businessCase>
          <ns0:salesCode>
            <xsl:value-of select="comt:salesCode"/>
          </ns0:salesCode>
          <ns0:billToSubscriberNumber>
            <xsl:value-of select="comt:billToSubscriberNumber"/>
          </ns0:billToSubscriberNumber>
          <ns0:billToSubAccountNumber>
            <xsl:value-of select="comt:billToSubAccountNumber"/>
          </ns0:billToSubAccountNumber>
          <ns0:PLI>
            <xsl:value-of select="comt:PLI"/>
          </ns0:PLI>
          <ns0:permissioningSystem>
            <xsl:value-of select="comt:permissioningSystem"/>
          </ns0:permissioningSystem>
          <ns0:manualPermissioningRequired>
            <xsl:value-of select="comt:manualPermissioningRequired"/>
          </ns0:manualPermissioningRequired>
          <ns0:AKR>
            <xsl:value-of select="comt:AKR"/>
          </ns0:AKR>
          <ns0:userID>
            <xsl:value-of select="comt:userID"/>
          </ns0:userID>
          <ns0:userIDtype>
            <xsl:value-of select="comt:userIDType"/>
          </ns0:userIDtype>
          <ns0:userNumber>
            <xsl:value-of select="comt:userNumber"/>
          </ns0:userNumber>
          <ns0:firstName>
            <xsl:value-of select="comt:firstName"/>
          </ns0:firstName>
          <ns0:lastname>
            <xsl:value-of select="comt:lastname"/>
          </ns0:lastname>
          <ns0:dob>
            <xsl:value-of select="comt:dob"/>
          </ns0:dob>
          <ns0:isNewUser>
            <xsl:value-of select="comt:isNewUser"/>
          </ns0:isNewUser>
          <ns0:installDate>
            <xsl:value-of select="comt:installDate"/>
          </ns0:installDate>
          <ns0:removalDate>
            <xsl:value-of select="comt:removalDate"/>
          </ns0:removalDate>
          <ns0:QUID>
            <xsl:value-of select="comt:QUID"/>
          </ns0:QUID>
          <ns0:discount>
            <xsl:value-of select="comt:discount"/>
          </ns0:discount>
          <ns0:specialPrice>
            <xsl:value-of select="comt:specialPrice"/>
          </ns0:specialPrice>
          <ns0:specialPriceCurr>
            <xsl:value-of select="comt:specialPriceCurr"/>
          </ns0:specialPriceCurr>
          <ns0:specialPriceRestrictionDate>
            <xsl:value-of select="comt:specialPriceRestrictionDate"/>
          </ns0:specialPriceRestrictionDate>
          <ns0:itemNumber>
            <xsl:value-of select="comt:itemNumber"/>
          </ns0:itemNumber>
          <ns0:startStopBillingDate>
            <xsl:value-of select="comt:startStopBillingDate"/>
          </ns0:startStopBillingDate>
          <ns0:billingType>
            <xsl:value-of select="comt:billingType"/>
          </ns0:billingType>
          <ns0:billingNote>
            <xsl:value-of select="comt:billingNote"/>
          </ns0:billingNote>
          <ns0:freeTrailFlag>
            <xsl:value-of select="comt:freeTrailFlag"/>
          </ns0:freeTrailFlag>
          <ns0:STB>
            <xsl:value-of select="comt:STB"/>
          </ns0:STB>
          <ns0:assetIntegrationId>
            <xsl:value-of select="comt:assetIntegrationId"/>
          </ns0:assetIntegrationId>
          <ns0:orderLineStatus>
            <xsl:value-of select="comt:orderLineStatus"/>
          </ns0:orderLineStatus>
          <ns0:permissioningStatus>
            <xsl:value-of select="comt:permissioningStatus"/>
          </ns0:permissioningStatus>
          <ns0:interfaceForBilling>
            <xsl:value-of select="comt:interfaceForBilling"/>
          </ns0:interfaceForBilling>
          <ns0:interfaceForFulfilment>
            <xsl:value-of select="comt:interfaceForFulfilment"/>
          </ns0:interfaceForFulfilment>
          <ns0:productIntegrationId>
            <xsl:value-of select="comt:productIntegrationId"/>
          </ns0:productIntegrationId>
          <xsl:if test='comt:freeTrailFlag = "Y"'>
            <xsl:choose>
              <xsl:when test='comt:freeTrailEndDate != ""'>
                <ns0:freeTrialEndDate>
                  <xsl:value-of select="comt:freeTrailEndDate"/>
                </ns0:freeTrialEndDate>
              </xsl:when>
              <xsl:otherwise>
                <ns0:freeTrialEndDate>
                  <xsl:value-of select='xp20:format-dateTime(xp20:add-dayTimeDuration-to-dateTime(comt:installDate,concat("P",comt:freeTrialDuration,"D")),"[YYYY]-[MM]-[DD]")'/>
                </ns0:freeTrialEndDate>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:if>
          <ns0:WorkPhone>
            <xsl:value-of select="comt:WorkPhone"/>
          </ns0:WorkPhone>
          <ns0:ResponseCode>
            <xsl:value-of select="comt:ResponseCode"/>
          </ns0:ResponseCode>
          <ns0:RCRMePlatformId>
            <xsl:value-of select="comt:RCRMePlatformId"/>
          </ns0:RCRMePlatformId>
          <ns0:RCRMSupportLanguage>
            <xsl:value-of select="comt:RCRMSupportLanguage"/>
          </ns0:RCRMSupportLanguage>
          <ns0:RCRMSegGrpEndUserActivity>
            <xsl:value-of select="comt:RCRMSegGrpEndUserActivity"/>
          </ns0:RCRMSegGrpEndUserActivity>
          <ns0:RCRMRegionalFocus>
            <xsl:value-of select="comt:RCRMRegionalFocus"/>
          </ns0:RCRMRegionalFocus>
          <ns0:RCRMMarketingConsentSetDate>
            <xsl:value-of select="comt:RCRMMarketingConsentSetDate"/>
          </ns0:RCRMMarketingConsentSetDate>
          <ns0:RCRMManualPermissionedFlag>
            <xsl:value-of select="comt:RCRMManualPermissionedFlag"/>
          </ns0:RCRMManualPermissionedFlag>
          <ns0:RCRMLocalLastName>
            <xsl:value-of select="comt:RCRMLocalLastName"/>
          </ns0:RCRMLocalLastName>
          <ns0:RCRMLocalFirstName>
            <xsl:value-of select="comt:RCRMLocalFirstName"/>
          </ns0:RCRMLocalFirstName>
          <ns0:RCRMLocalDACSId>
            <xsl:value-of select="comt:RCRMLocalDACSId"/>
          </ns0:RCRMLocalDACSId>
          <ns0:RCRMLegalConsentSetDate>
            <xsl:value-of select="comt:RCRMLegalConsentSetDate"/>
          </ns0:RCRMLegalConsentSetDate>
          <ns0:RCRMLegalConsent>
            <xsl:value-of select="comt:RCRMLegalConsent"/>
          </ns0:RCRMLegalConsent>
          <ns0:RCRMLastUpdatedProfileDate>
            <xsl:value-of select="comt:RCRMLastUpdatedProfileDate"/>
          </ns0:RCRMLastUpdatedProfileDate>
          <ns0:RCRMFTLFlagSetDate>
            <xsl:value-of select="comt:RCRMFTLFlagSetDate"/>
          </ns0:RCRMFTLFlagSetDate>
          <ns0:RCRMFTLCompleteFlag>
            <xsl:value-of select="comt:RCRMFTLCompleteFlag"/>
          </ns0:RCRMFTLCompleteFlag>
          <ns0:RCRMErrorContext>
            <xsl:value-of select="comt:RCRMErrorContext"/>
          </ns0:RCRMErrorContext>
          <ns0:RCRMErrorCode>
            <xsl:value-of select="comt:RCRMErrorCode"/>
          </ns0:RCRMErrorCode>
          <ns0:RCRMDirectMarketing>
            <xsl:value-of select="comt:RCRMDirectMarketing"/>
          </ns0:RCRMDirectMarketing>
          <ns0:RCRMCPfGTempURL>
            <xsl:value-of select="comt:RCRMCPfGTempURL"/>
          </ns0:RCRMCPfGTempURL>
          <ns0:RCRMBillingAccount>
            <xsl:value-of select="comt:RCRMBillingAccount"/>
          </ns0:RCRMBillingAccount>
          <ns0:RCRMActionCode>
            <xsl:value-of select="comt:RCRMActionCode"/>
          </ns0:RCRMActionCode>
          <ns0:RCRMAAAUpdatedProfileDate>
            <xsl:value-of select="comt:RCRMAAAUpdatedProfileDate"/>
          </ns0:RCRMAAAUpdatedProfileDate>
          <ns0:PrimaryAccountId>
            <xsl:value-of select="comt:PrimaryAccountId"/>
          </ns0:PrimaryAccountId>
          <ns0:primaryUUID>
            <xsl:value-of select="comt:primaryUUID"/>
          </ns0:primaryUUID>
          <ns0:ParentOrderItemId>
            <xsl:value-of select="comt:ParentOrderItemId"/>
          </ns0:ParentOrderItemId>
          <ns0:ModId>
            <xsl:value-of select="comt:ModId"/>
          </ns0:ModId>
          <ns0:MM>
            <xsl:value-of select="comt:MM"/>
          </ns0:MM>
          <ns0:EmailAddress>
            <xsl:value-of select="comt:EmailAddress"/>
          </ns0:EmailAddress>
          <ns0:extraInfo>
          <xsl:copy-of select="comt:MxPDBName/child::node()"/>
          </ns0:extraInfo>
          <xsl:for-each select="comt:configuredAttribute">
            <ns0:configuredAttribute>
              <ns0:attributeIntegrationId>
                <xsl:value-of select="comt:attributeIntegrationId"/>
              </ns0:attributeIntegrationId>
              <ns0:attributeName>
                <xsl:value-of select="comt:attributeName"/>
              </ns0:attributeName>
              <ns0:valueIntegrationId>
                <xsl:value-of select="comt:valueIntegrationId"/>
              </ns0:valueIntegrationId>
              <ns0:value>
                <xsl:value-of select="comt:value"/>
              </ns0:value>
            </ns0:configuredAttribute>
          </xsl:for-each>
          <ns0:contactMarketFocus>
            <xsl:value-of select="comt:contactMarketFocus"/>
          </ns0:contactMarketFocus>
          <ns0:contactReutersMessagingId>
            <xsl:value-of select="comt:contactReutersMessagingId"/>
          </ns0:contactReutersMessagingId>
          <!--
          <xsl:choose>
            <xsl:when test='orcl:lookup-dvm("SAPCustCountryDVM","PrimaryAcCountry",../xsdLocal:logicalCountry,"Value","N") = "Y"'>
              <xsl:choose>
                <xsl:when test='../xsdLocal:logicalCountry = "US"'>
                  <xsl:choose>
                    <xsl:when test='(comt:billingPlatform != "null") and ((comt:billingPlatform != "NONE") and ((comt:billingPlatform != "IRAS") and (comt:SAPBillable = "Y")))'>
                      <ns0:billingPlatform>
                        <xsl:text disable-output-escaping="no">SAP</xsl:text>
                      </ns0:billingPlatform>
                    </xsl:when>
                    <xsl:otherwise>
                      <ns0:billingPlatform>
                        <xsl:value-of select="comt:billingPlatform"/>
                      </ns0:billingPlatform>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:choose>
                    <xsl:when test='(comt:billingPlatform != "null") and ((comt:billingPlatform != "NONE") and (comt:SAPBillable = "Y"))'>
                      <ns0:billingPlatform>
                        <xsl:text disable-output-escaping="no">SAP</xsl:text>
                      </ns0:billingPlatform>
                    </xsl:when>
                    <xsl:otherwise>
                      <ns0:billingPlatform>
                        <xsl:value-of select="comt:billingPlatform"/>
                      </ns0:billingPlatform>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
              <ns0:billingPlatform>
                <xsl:value-of select="comt:billingPlatform"/>
              </ns0:billingPlatform>
            </xsl:otherwise>
          </xsl:choose>
          -->
          <ns0:billingPlatform>
            <xsl:value-of select="comt:billingPlatform"/>
          </ns0:billingPlatform>
          <ns0:umbrellaProductIntegrationId>
            <xsl:value-of select="comt:umbrellaProductIntegrationId"/>
          </ns0:umbrellaProductIntegrationId>
          <ns0:oldContactUserId>
            <xsl:value-of select="comt:oldContactUserId"/>
          </ns0:oldContactUserId>
          <ns0:CpfgErrorMessage>
            <xsl:value-of select="comt:CpfgErrorMessage"/>
          </ns0:CpfgErrorMessage>
          <!--    <xsl:choose>
            <xsl:when test="(comt:installSubscriberNumber = comt:billToSubscriberNumber) and (comt:installSubAccountNumber != comt:billToSubAccountNumber)">
              <ns0:installSubscriberNumber>
                <xsl:text disable-output-escaping="no">''</xsl:text>
              </ns0:installSubscriberNumber>
            </xsl:when>
            <xsl:otherwise>
              <ns0:installSubscriberNumber>
                <xsl:value-of select="comt:installSubscriberNumber"/>
              </ns0:installSubscriberNumber>
            </xsl:otherwise>
          </xsl:choose> -->
          <ns0:installSubscriberNumber>
            <xsl:value-of select="comt:installSubscriberNumber"/>
          </ns0:installSubscriberNumber>
          <ns0:installSubscriberAccountId>
            <xsl:value-of select="comt:installSubscriberAccountId"/>
          </ns0:installSubscriberAccountId>
          <xsl:choose>
            <xsl:when test="(comt:installSubscriberNumber = comt:billToSubscriberNumber) and (comt:installSubAccountNumber != comt:billToSubAccountNumber)">
              <ns0:installSubAccountNumber>
                <xsl:value-of select="comt:billToSubAccountNumber"/>
              </ns0:installSubAccountNumber>
            </xsl:when>
            <xsl:otherwise>
              <ns0:installSubAccountNumber>
                <xsl:value-of select="comt:installSubAccountNumber"/>
              </ns0:installSubAccountNumber>
            </xsl:otherwise>
          </xsl:choose>
          <ns0:installLocationAccountId>
            <xsl:value-of select="comt:installLocationAccountId"/>
          </ns0:installLocationAccountId>
          <ns0:SAPBillable>
            <xsl:value-of select="comt:SAPBillable"/>
          </ns0:SAPBillable>
          <ns0:SAPItemNumber>
            <xsl:value-of select="comt:SAPItemNumber"/>
          </ns0:SAPItemNumber>
          <ns0:PONumber>
            <xsl:value-of select="comt:PONumber"/>
          </ns0:PONumber>
          <ns0:InstallLocationAccountNumber>
            <xsl:value-of select="comt:InstallLocationAccountNumber"/>
          </ns0:InstallLocationAccountNumber>
          <ns0:BillToAccountNumber>
            <xsl:value-of select="comt:BillToAccountNumber"/>
          </ns0:BillToAccountNumber>
          <ns0:quantity>
            <xsl:value-of select="comt:quantity"/>
          </ns0:quantity>
          <ns0:accountLocId>
            <xsl:value-of select="../xsdLocal:orderHeader/comt:accountLocId"/>
          </ns0:accountLocId>
          <ns0:RCRMField2>
            <xsl:value-of select="comt:RCRMField2"/>
          </ns0:RCRMField2>
          <ns0:RCRMField3>
            <xsl:value-of select="comt:RCRMField3"/>
          </ns0:RCRMField3>
          <ns0:SAPOrderNumber>
            <xsl:value-of select="comt:SAPOrderNumber"/>
          </ns0:SAPOrderNumber>
          <ns0:RCRMField6>
            <xsl:value-of select="comt:RCRMField6"/>
          </ns0:RCRMField6>
          <ns0:RCRMField1>
            <xsl:value-of select="comt:RCRMField1"/>
          </ns0:RCRMField1>
          <ns0:SAPActionCode>
            <xsl:value-of select="comt:SAPActionCode"/>
          </ns0:SAPActionCode>
          <ns0:SAPBusinessCase>
            <xsl:value-of select="comt:SAPBusinessCase"/>
          </ns0:SAPBusinessCase>
          <ns0:CalculatedListPrice>
            <xsl:value-of select="comt:CalculatedListPrice"/>
          </ns0:CalculatedListPrice>
          <ns0:ListPrice>
            <xsl:value-of select="comt:ListPrice"/>
          </ns0:ListPrice>
          <ns0:BillingPeriod>
            <xsl:value-of select="comt:BillingPeriod"/>
          </ns0:BillingPeriod>
          <ns0:PublishContactToSAP>
            <xsl:value-of select="comt:PublishContactToSAP"/>
          </ns0:PublishContactToSAP>
          <ns0:ContactStatus>
            <xsl:value-of select="comt:ContactStatus"/>
          </ns0:ContactStatus>
          <ns0:product>
            <xsl:value-of select="comt:product"/>
          </ns0:product>
          <ns0:PPLId>
            <xsl:value-of select="comt:PPLId"/>
          </ns0:PPLId>
          <ns0:RCRMDiscountReason>
            <xsl:value-of select="comt:RCRMDiscountReason"/>
          </ns0:RCRMDiscountReason>
          <ns0:SiebelContactId>
            <xsl:value-of select="comt:ContactId"/>
          </ns0:SiebelContactId>
          <ns0:userGroup>
            <xsl:value-of select="comt:userGroup"/>
          </ns0:userGroup>
          <ns0:userDomain>
            <xsl:value-of select="comt:userDomain"/>
          </ns0:userDomain>
          <ns0:anonymityFlag>
            <xsl:value-of select="comt:contactAnonymityFlag"/>
          </ns0:anonymityFlag>
          <ns0:anonymityReason>
            <xsl:value-of select="comt:contactAnonymityReason"/>
          </ns0:anonymityReason>
          <ns0:contactJobFunction>
            <xsl:value-of select="comt:contactJobFunction"/>
          </ns0:contactJobFunction>
          <ns0:serverId>
            <xsl:value-of select="comt:serverId"/>
          </ns0:serverId>
          <ns0:isDelete>
            <xsl:value-of select="comt:isDelete"/>
          </ns0:isDelete>
        </ns0:orderLineItem>
      </xsl:for-each>
    </ns0:orderRequest>
  </xsl:template>
</xsl:stylesheet>