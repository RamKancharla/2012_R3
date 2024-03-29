<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CS.ACM.234_AccountContactStatus.xsd"/>
      <rootElement name="CSAccountContactStatus" namespace="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/CS/ACM/AccountContactPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="EAI.MSG.CCRM.172_PublishAccountRequestResponse.xsd"/>
      <rootElement name="AccountContactPublish" namespace="http://www.siebel.com/xml/RCRM%20Account%20Publish"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU MAR 12 21:47:29 GMT 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:gcap-cut="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:gcap-NUT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableUserTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsdLocal="http://www.reuters.com/NS/2007/01/25/GCAP/EAI/CS/ACM/AccountContactPublish" xmlns:gcap-NAT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableAccountTypes" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:gcap-cat="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" xmlns:ns0="http://www.siebel.com/xml/RCRM%20Account%20Publish" exclude-result-prefixes="xsl gcap-cmt gcap-cut xsd gcap-NUT xsdLocal gcap-NAT ns1 gcap-cat ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:AccountContactPublish>
      <ns0:RcrmAccount-Thin>
        <ns0:Id>
          <xsl:value-of select="/xsdLocal:CSAccountContactStatus/xsdLocal:accountRowId"/>
        </ns0:Id>
        <xsl:choose>
          <xsl:when test="/xsdLocal:CSAccountContactStatus/xsdLocal:messageHeader/gcap-cmt:messageCode = &quot;SM05&quot;">
            <xsl:choose>
              <xsl:when test="starts-with(/xsdLocal:CSAccountContactStatus/xsdLocal:accountRequestStatus,&quot;C&quot;) and (/xsdLocal:CSAccountContactStatus/xsdLocal:accountRequestStatus != &quot;C000&quot;)">
                <ns0:RCRMCoreSuiteStatus>
                  <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;CRMErrorinPDS&quot;,&quot;Value&quot;,&quot;Error in PDS&quot;)"/>
                </ns0:RCRMCoreSuiteStatus>
              </xsl:when>
              <xsl:otherwise>
                <ns0:RCRMCoreSuiteStatus>
                  <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CCRMAM_AccountStatus.dvm&quot;,&quot;CoreSuiteStatus&quot;,concat(/xsdLocal:CSAccountContactStatus/xsdLocal:messageStatus,/xsdLocal:CSAccountContactStatus/xsdLocal:accountRequestStatus),&quot;SiebelStatus&quot;,&quot;Error&quot;)"/>
                </ns0:RCRMCoreSuiteStatus>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <xsl:otherwise>
            <xsl:choose>
              <xsl:when test="concat(/xsdLocal:CSAccountContactStatus/xsdLocal:messageStatus,/xsdLocal:CSAccountContactStatus/xsdLocal:accountRequestStatus) = &quot;0A000&quot;">
                <ns0:RCRMCoreSuiteStatus>
                  <xsl:value-of select="string(&quot;Active&quot;)"/>
                </ns0:RCRMCoreSuiteStatus>
              </xsl:when>
              <xsl:otherwise>
                <ns0:RCRMCoreSuiteStatus>
                  <xsl:value-of select="string(&quot;Error&quot;)"/>
                </ns0:RCRMCoreSuiteStatus>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:otherwise>
        </xsl:choose>
        <ns0:RCRMErrorMessage>
          <xsl:value-of select="/xsdLocal:CSAccountContactStatus/xsdLocal:accountRequestStatus"/>
        </ns0:RCRMErrorMessage>
        <xsl:choose>
          <xsl:when test="string-length(/xsdLocal:CSAccountContactStatus/xsdLocal:installationAddress/xsdLocal:subAccountNumber) > 0.0">
            <ns0:RCRMSubAccountNumber>
              <xsl:value-of select="/xsdLocal:CSAccountContactStatus/xsdLocal:installationAddress/xsdLocal:subAccountNumber"/>
            </ns0:RCRMSubAccountNumber>
          </xsl:when>
          <xsl:otherwise>
            <ns0:RCRMSubAccountNumber>
              <xsl:value-of select="/xsdLocal:CSAccountContactStatus/xsdLocal:billingAddress/xsdLocal:subAccountNumber"/>
            </ns0:RCRMSubAccountNumber>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
          <xsl:when test="(/xsdLocal:CSAccountContactStatus/xsdLocal:logicalCountry = &quot;P1&quot;) and (substring(/xsdLocal:CSAccountContactStatus/xsdLocal:account/xsdLocal:subscriberNumber,1.0,2.0) = &quot;AT&quot;)">
            <ns0:RCRMSubscriberNumber>
              <xsl:value-of select="concat(&quot;AU&quot;,substring(/xsdLocal:CSAccountContactStatus/xsdLocal:account/xsdLocal:subscriberNumber,3.0,5.0))"/>
            </ns0:RCRMSubscriberNumber>
          </xsl:when>
          <xsl:when test="(/xsdLocal:CSAccountContactStatus/xsdLocal:logicalCountry = &quot;BE&quot;) and (substring(/xsdLocal:CSAccountContactStatus/xsdLocal:account/xsdLocal:subscriberNumber,1.0,2.0) = &quot;BM&quot;)">
            <ns0:RCRMSubscriberNumber>
              <xsl:value-of select="concat(&quot;BE&quot;,substring(/xsdLocal:CSAccountContactStatus/xsdLocal:account/xsdLocal:subscriberNumber,3.0,5.0))"/>
            </ns0:RCRMSubscriberNumber>
          </xsl:when>
          <xsl:otherwise>
            <ns0:RCRMSubscriberNumber>
              <xsl:value-of select="/xsdLocal:CSAccountContactStatus/xsdLocal:account/xsdLocal:subscriberNumber"/>
            </ns0:RCRMSubscriberNumber>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:for-each select="/xsdLocal:CSAccountContactStatus/xsdLocal:contact">
          <xsl:if test="xsdLocal:ContactType = &quot;R&quot;">
            <ns0:Position>
              <ns0:Id>
                <xsl:value-of select="xsdLocal:ContactRowId"/>
              </ns0:Id>
            </ns0:Position>
          </xsl:if>
        </xsl:for-each>
        <xsl:for-each select="/xsdLocal:CSAccountContactStatus/xsdLocal:contact">
          <xsl:if test="xsdLocal:ContactType = &quot;S&quot;">
            <ns0:RcrmContact-Thin>
              <ns0:Id>
                <xsl:value-of select="xsdLocal:ContactRowId"/>
              </ns0:Id>
              <ns0:RCRMCoreSuiteStatus>
                <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CCRMAM_ContactStatus.dvm&quot;,&quot;CoreSuiteStatus&quot;,concat(../xsdLocal:messageStatus,../xsdLocal:accountRequestStatus),&quot;SiebelStatus&quot;,&quot;Error&quot;)"/>
              </ns0:RCRMCoreSuiteStatus>
            </ns0:RcrmContact-Thin>
          </xsl:if>
        </xsl:for-each>
      </ns0:RcrmAccount-Thin>
    </ns0:AccountContactPublish>
  </xsl:template>
</xsl:stylesheet>
