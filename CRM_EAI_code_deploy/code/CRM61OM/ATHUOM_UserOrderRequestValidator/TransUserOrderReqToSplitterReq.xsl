<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.ATH.UOM.277_UserOrderRequest.xsd"/>
      <rootElement name="UserOrderRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/ATH/UOM/UserOrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://eaidev2:7777/orabpel/ccrmasync/CCRMOM_SubmitUserOrderRequest/EAI.MSG.CCRM.UOM.282_UserOrderRequest.xsd"/>
      <rootElement name="userOrderRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CCRM/UOM/UserOrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [FRI FEB 19 11:07:27 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/ATH/UOM/UserOrderManagement" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CCRM/UOM/UserOrderManagement" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:gcap-cuot="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserOrderTypes" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gcap-nuot="http://www.reuters.com/ns/2007/09/01/GCAP/NillableUserOrderTypes" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl gcap-cmt xsd local gcap-cuot gcap-nuot ns0 xsdLocal bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <xsdLocal:userOrderRequest>
      <xsdLocal:eaiHeader>
        <gcap-cmt:applicationId>
          <xsl:value-of select="/local:UserOrderRequest/local:eaiHeader/gcap-cmt:applicationId"/>
        </gcap-cmt:applicationId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/local:UserOrderRequest/local:eaiHeader/gcap-cmt:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageId>
          <xsl:value-of select="/local:UserOrderRequest/local:eaiHeader/gcap-cmt:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/local:UserOrderRequest/local:eaiHeader/gcap-cmt:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/local:UserOrderRequest/local:eaiHeader/gcap-cmt:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="/local:UserOrderRequest/local:eaiHeader/gcap-cmt:timeStamp"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:instanceId>
          <xsl:value-of select="/local:UserOrderRequest/local:eaiHeader/gcap-cmt:instanceId"/>
        </gcap-cmt:instanceId>
        <gcap-cmt:timeToLive>
          <xsl:value-of select="/local:UserOrderRequest/local:eaiHeader/gcap-cmt:timeToLive"/>
        </gcap-cmt:timeToLive>
        <gcap-cmt:payloadVersion>
          <xsl:value-of select="/local:UserOrderRequest/local:eaiHeader/gcap-cmt:payloadVersion"/>
        </gcap-cmt:payloadVersion>
      </xsdLocal:eaiHeader>
      <xsdLocal:orderHeader>
        <xsdLocal:transactionId>
          <xsl:value-of select="/local:UserOrderRequest/local:messageHeader/local:transactionId"/>
        </xsdLocal:transactionId>
        <xsdLocal:subscriberNumber>
          <xsl:value-of select="/local:UserOrderRequest/local:messageHeader/local:subscriberNumber"/>
        </xsdLocal:subscriberNumber>
        <xsdLocal:subAccount>
          <xsl:value-of select="/local:UserOrderRequest/local:messageHeader/local:subAccount"/>
        </xsdLocal:subAccount>
        <xsdLocal:actionCode>
          <xsl:value-of select="/local:UserOrderRequest/local:messageHeader/local:actionCode"/>
        </xsdLocal:actionCode>
        <xsl:if test="/local:UserOrderRequest/local:messageHeader/local:actionCode = &quot;MOVE&quot;">
          <xsdLocal:MoveSubscriber>
            <xsdLocal:subscriberId>
              <xsl:value-of select="/local:UserOrderRequest/local:moveToSubscriber/local:subscriberId"/>
            </xsdLocal:subscriberId>
            <xsdLocal:subAccountId>
              <xsl:value-of select="/local:UserOrderRequest/local:moveToSubscriber/local:subAccountId"/>
            </xsdLocal:subAccountId>
          </xsdLocal:MoveSubscriber>
        </xsl:if>
        <xsl:choose>
          <xsl:when test="(/local:UserOrderRequest/local:messageHeader/local:actionCode != &quot;MOVE&quot;) and (count(/local:UserOrderRequest/local:userDetail/local:ServiceInfo) = 0.0)">
            <xsl:for-each select="/local:UserOrderRequest/local:userDetail">
              <xsdLocal:userOrderLineItem>
                <xsdLocal:transactionId>
                  <xsl:value-of select="local:transactionId"/>
                </xsdLocal:transactionId>
                <xsdLocal:TSAID>
                  <xsl:value-of select="local:TSAID"/>
                </xsdLocal:TSAID>
                <xsdLocal:firstName>
                  <xsl:value-of select="local:firstName"/>
                </xsdLocal:firstName>
                <xsdLocal:lastName>
                  <xsl:value-of select="local:lastName"/>
                </xsdLocal:lastName>
                <xsdLocal:emailId>
                  <xsl:value-of select="local:emailId"/>
                </xsdLocal:emailId>
                <xsdLocal:athenaSubId>
                  <xsl:value-of select="local:AthenaSubId"/>
                </xsdLocal:athenaSubId>
                <xsdLocal:anonymous>
                  <xsl:value-of select="local:anonymous"/>
                </xsdLocal:anonymous>
                <xsdLocal:anonymousFlagReason>
                  <xsl:value-of select="local:anonymousFlagReason"/>
                </xsdLocal:anonymousFlagReason>
                <xsdLocal:phone>
                  <xsl:value-of select="local:phone"/>
                </xsdLocal:phone>
                <xsdLocal:jobFunction>
                  <xsl:value-of select='dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/SEAJobFunctionToSiebelCJR.dvm&quot;,&quot;SEAJobFunction&quot;,local:jobFunction,&quot;SiebelCJR&quot;,local:jobFunction)'/>
                </xsdLocal:jobFunction>
              </xsdLocal:userOrderLineItem>
            </xsl:for-each>
          </xsl:when>
          <xsl:when test="/local:UserOrderRequest/local:messageHeader/local:actionCode != &quot;MOVE&quot;">
            <xsl:for-each select="/local:UserOrderRequest/local:userDetail">
              <xsl:for-each select="local:ServiceInfo">
                <xsdLocal:userOrderLineItem>
                  <xsdLocal:UOLIId>
                    <xsl:value-of select="local:UOLIId"/>
                  </xsdLocal:UOLIId>
                  <xsdLocal:transactionId>
                    <xsl:value-of select="../local:transactionId"/>
                  </xsdLocal:transactionId>
                  <xsdLocal:TSAID>
                    <xsl:value-of select="../local:TSAID"/>
                  </xsdLocal:TSAID>
                  <xsdLocal:itemNumber>
                    <xsl:value-of select="local:itemNumber"/>
                  </xsdLocal:itemNumber>
                  <xsdLocal:PLI>
                    <xsl:value-of select="local:PLINumber"/>
                  </xsdLocal:PLI>
                  <xsdLocal:Operation>
                    <xsl:value-of select="local:operation"/>
                  </xsdLocal:Operation>
                  <xsdLocal:firstName>
                    <xsl:value-of select="../local:firstName"/>
                  </xsdLocal:firstName>
                  <xsdLocal:lastName>
                    <xsl:value-of select="../local:lastName"/>
                  </xsdLocal:lastName>
                  <xsdLocal:hardStopFlag>
                    <xsl:value-of select="local:hardStopFlag"/>
                  </xsdLocal:hardStopFlag>
                  <xsdLocal:emailId>
                    <xsl:value-of select="../local:emailId"/>
                  </xsdLocal:emailId>
                  <xsdLocal:effectiveDate>
                    <xsl:value-of select="local:effectiveDate"/>
                  </xsdLocal:effectiveDate>
                  <xsdLocal:athenaSubId>
                    <xsl:value-of select="../local:AthenaSubId"/>
                  </xsdLocal:athenaSubId>
                  <xsdLocal:anonymous>
                    <xsl:value-of select="../local:anonymous"/>
                  </xsdLocal:anonymous>
                  <xsdLocal:anonymousFlagReason>
                    <xsl:value-of select="../local:anonymousFlagReason"/>
                  </xsdLocal:anonymousFlagReason>
                  <xsdLocal:phone>
                    <xsl:value-of select="../local:phone"/>
                  </xsdLocal:phone>
                  <xsdLocal:jobFunction>
                    <xsl:value-of select='dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/SEAJobFunctionToSiebelCJR.dvm&quot;,&quot;SEAJobFunction&quot;,../local:jobFunction,&quot;SiebelCJR&quot;,../local:jobFunction)'/>
                  </xsdLocal:jobFunction>
                </xsdLocal:userOrderLineItem>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>
            <xsl:for-each select="/local:UserOrderRequest/local:userDetail">
              <xsdLocal:userOrderLineItem>
                <xsdLocal:transactionId>
                  <xsl:value-of select="local:transactionId"/>
                </xsdLocal:transactionId>
                <xsdLocal:TSAID>
                  <xsl:value-of select="local:TSAID"/>
                </xsdLocal:TSAID>
                <xsdLocal:firstName>
                  <xsl:value-of select="local:firstName"/>
                </xsdLocal:firstName>
                <xsdLocal:lastName>
                  <xsl:value-of select="local:lastName"/>
                </xsdLocal:lastName>
                <xsdLocal:emailId>
                  <xsl:value-of select="local:emailId"/>
                </xsdLocal:emailId>
                <xsdLocal:athenaSubId>
                  <xsl:value-of select="local:AthenaSubId"/>
                </xsdLocal:athenaSubId>
                <xsdLocal:anonymous>
                  <xsl:value-of select="local:anonymous"/>
                </xsdLocal:anonymous>
                <xsdLocal:anonymousFlagReason>
                  <xsl:value-of select="local:anonymousFlagReason"/>
                </xsdLocal:anonymousFlagReason>
                <xsdLocal:phone>
                  <xsl:value-of select="local:phone"/>
                </xsdLocal:phone>
                <xsdLocal:jobFunction>
                  <xsl:value-of select='dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/SEAJobFunctionToSiebelCJR.dvm&quot;,&quot;SEAJobFunction&quot;,local:jobFunction,&quot;SiebelCJR&quot;,local:jobFunction)'/>
                </xsdLocal:jobFunction>
              </xsdLocal:userOrderLineItem>
            </xsl:for-each>
          </xsl:otherwise>
        </xsl:choose>
      </xsdLocal:orderHeader>
    </xsdLocal:userOrderRequest>
  </xsl:template>
</xsl:stylesheet>