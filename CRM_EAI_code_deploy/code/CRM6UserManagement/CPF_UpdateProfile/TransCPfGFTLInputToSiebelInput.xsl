<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CCRM.124_UpdateProfileRequest.xsd"/>
      <rootElement name="UpdateProfileRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/UserManagementServices"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="RCRMContactInbound.wsdl"/>
      <rootElement name="RCRM_spcContact_spcInbound_spcOperatiion_Input" namespace="http://www.reuters.com/2008/02/15/GCAP/RCRM"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON JUL 12 16:39:38 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-mt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:gcap="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:xsdLocal1="http://www.siebel.com/xml/ContactExternalIO" xmlns:tns="http://www.reuters.com/2008/02/15/GCAP/RCRM" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:gcap-cat="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/CCRM/UserManagementServices" exclude-result-prefixes="xsl gcap-mt gcap xsd ns0 gcap-cat local soap soapenc xsdLocal1 tns bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <tns:RCRM_spcContact_spcInbound_spcOperatiion_Input>
      <tns:RCRMActionCode>
        <xsl:value-of select="/local:UpdateProfileRequest/local:updateType"/>
      </tns:RCRMActionCode>
      <xsdLocal1:ContactExternalIO>
        <xsdLocal1:Header>
          <xsdLocal1:MsgId>
            <xsl:value-of select="/local:UpdateProfileRequest/local:eaiHeader/gcap-mt:messageId"/>
          </xsdLocal1:MsgId>
          <xsdLocal1:applicationId>
            <xsl:value-of select="/local:UpdateProfileRequest/local:eaiHeader/gcap-mt:applicationId"/>
          </xsdLocal1:applicationId>
          <xsdLocal1:instanceId>
            <xsl:value-of select="/local:UpdateProfileRequest/local:eaiHeader/gcap-mt:instanceId"/>
          </xsdLocal1:instanceId>
          <xsdLocal1:messageHistory>
            <xsl:value-of select="/local:UpdateProfileRequest/local:eaiHeader/gcap-mt:messageHistory"/>
          </xsdLocal1:messageHistory>
          <xsdLocal1:timeStamp>
            <xsl:value-of select="/local:UpdateProfileRequest/local:eaiHeader/gcap-mt:timeStamp"/>
          </xsdLocal1:timeStamp>
          <xsdLocal1:timeToLive>
            <xsl:value-of select="/local:UpdateProfileRequest/local:eaiHeader/gcap-mt:timeToLive"/>
          </xsdLocal1:timeToLive>
          <xsdLocal1:tracingId>
            <xsl:value-of select="/local:UpdateProfileRequest/local:eaiHeader/gcap-mt:tracingId"/>
          </xsdLocal1:tracingId>
          <xsdLocal1:transactionId>
            <xsl:value-of select="/local:UpdateProfileRequest/local:eaiHeader/gcap-mt:transactionId"/>
          </xsdLocal1:transactionId>
        </xsdLocal1:Header>
        <xsdLocal1:Contact>
          <xsdLocal1:RCRMMarketFocus>
            <xsl:value-of select="/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:geographicalFocus"/>
          </xsdLocal1:RCRMMarketFocus>
          <xsdLocal1:Id>
            <xsl:value-of select="/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:UUID"/>
          </xsdLocal1:Id>
          <xsdLocal1:RCRMDirectMarketing>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CCRM_UpdateSiebelServiceMarketingNLegalConsentMap.dvm&quot;,&quot;AAA&quot;,/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:marketingConsentGiven,&quot;SIEBEL&quot;,/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:marketingConsentGiven)"/>
          </xsdLocal1:RCRMDirectMarketing>
          <xsdLocal1:RCRMFTLCompleteFlag>
            <xsl:value-of select="/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:FTLCompleted"/>
          </xsdLocal1:RCRMFTLCompleteFlag>
          <xsl:if test="/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:FTLCompletedOn != &quot;&quot;">
            <xsdLocal1:RCRMFTLFlagSetDate>
              <xsl:value-of select="concat(substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:FTLCompletedOn,6.0,2.0),&quot;/&quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:FTLCompletedOn,9.0,2.0),&quot;/&quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:FTLCompletedOn,1.0,4.0),&quot; &quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:FTLCompletedOn,12.0,8.0))"/>
            </xsdLocal1:RCRMFTLFlagSetDate>
          </xsl:if>
          <xsdLocal1:RCRMLegalConsent>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CCRM_UpdateSiebelServiceMarketingNLegalConsentMap.dvm&quot;,&quot;AAA&quot;,/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:legalConsentGiven,&quot;SIEBEL&quot;,/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:legalConsentGiven)"/>
          </xsdLocal1:RCRMLegalConsent>
          <xsdLocal1:RCRMLegalConsentSetDate>
            <xsl:value-of select="concat(substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:legalConsentGivenOn,6.0,2.0),&quot;/&quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:legalConsentGivenOn,9.0,2.0),&quot;/&quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:legalConsentGivenOn,1.0,4.0),&quot; &quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:legalConsentGivenOn,12.0,8.0))"/>
          </xsdLocal1:RCRMLegalConsentSetDate>
          <xsl:if test="/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:marketingConsentGivenOn != &quot;&quot;">
            <xsdLocal1:RCRMMarketingConsentSetDate>
              <xsl:value-of select="concat(substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:marketingConsentGivenOn,6.0,2.0),&quot;/&quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:marketingConsentGivenOn,9.0,2.0),&quot;/&quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:marketingConsentGivenOn,1.0,4.0),&quot; &quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:marketingConsentGivenOn,12.0,8.0))"/>
            </xsdLocal1:RCRMMarketingConsentSetDate>
          </xsl:if>
          <xsdLocal1:RCRMSegGrpEndUserActivity>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMEndUserActivityToAAAJobRoleMap.dvm&quot;,&quot;AAA&quot;,/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:jobRole,&quot;CRM&quot;,&quot;&quot;)"/>
          </xsdLocal1:RCRMSegGrpEndUserActivity>
          <xsl:if test="/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:lastUpdatedByAAAOn != &quot;&quot;">
            <xsdLocal1:RCRMAAAUpdatedProfileDate>
              <xsl:value-of select="concat(substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:lastUpdatedByAAAOn,6.0,2.0),&quot;/&quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:lastUpdatedByAAAOn,9.0,2.0),&quot;/&quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:lastUpdatedByAAAOn,1.0,4.0),&quot; &quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:lastUpdatedByAAAOn,12.0,8.0))"/>
            </xsdLocal1:RCRMAAAUpdatedProfileDate>
          </xsl:if>
          <xsdLocal1:RcrmContactLoginId>
            <xsdLocal1:RCRMFTLFlagSetDate>
              <xsl:value-of select="concat(substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:FTLCompletedOn,6.0,2.0),&quot;/&quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:FTLCompletedOn,9.0,2.0),&quot;/&quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:FTLCompletedOn,1.0,4.0),&quot; &quot;,substring(/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:FTLCompletedOn,12.0,8.0))"/>
            </xsdLocal1:RCRMFTLFlagSetDate>
            <xsdLocal1:RCRMFTLCompleteFlag>
              <xsl:value-of select="/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:FTLCompleted"/>
            </xsdLocal1:RCRMFTLCompleteFlag>
            <xsdLocal1:RCRMCPfGStatusReason>
              <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CPFGUM_ResponseErrorCodesMap.dvm&quot;,&quot;CPFGResponseCode&quot;,/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:_CPFGStatusReason,&quot;CRMResponseCode&quot;,/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:_CPFGStatusReason)"/>
            </xsdLocal1:RCRMCPfGStatusReason>
            <xsdLocal1:RCRMCPfGStatus>
              <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CPF_UpdateProfileCPfGStatusMap.dvm&quot;,&quot;EAI&quot;,/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:_CPFGStatus,&quot;SIEBEL&quot;,/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:_CPFGStatus)"/>
            </xsdLocal1:RCRMCPfGStatus>
            <xsdLocal1:Id>
              <xsl:value-of select="/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:UUID"/>
            </xsdLocal1:Id>
            <xsdLocal1:RCRMActionCode>
              <xsl:value-of select="/local:UpdateProfileRequest/local:updateType"/>
            </xsdLocal1:RCRMActionCode>
            <xsdLocal1:RCRMUserId>
              <xsl:value-of select="/local:UpdateProfileRequest/local:UpdateProfileUserDetails/local:userID"/>
            </xsdLocal1:RCRMUserId>
          </xsdLocal1:RcrmContactLoginId>
        </xsdLocal1:Contact>
      </xsdLocal1:ContactExternalIO>
    </tns:RCRM_spcContact_spcInbound_spcOperatiion_Input>
  </xsl:template>
</xsl:stylesheet>