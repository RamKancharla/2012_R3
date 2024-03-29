<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="ATHUOM_submitUserOrderRequestInRS.wsdl"/>
      <rootElement name="billingInfoRequest" namespace="http://xml.netbeans.org/schema/BillingNotifyMessage"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://eaidev2:7777/orabpel/ccrmsync/ATHUOM_UserOrderRequestValidator/ATHUOM_UserOrderRequestValidator?wsdl"/>
      <rootElement name="billingInfoRequest" namespace="http://xml.netbeans.org/schema/BillingNotifyMessage"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [FRI FEB 19 11:51:04 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:out1="http://xml.netbeans.org/schema/BillingNotifyMessage" xmlns:ns0="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/ATH/UOM/UserOrderManagement" xmlns:ns3="http://schemas.oracle.com/bpel/extension" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:client="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/ATH/UOM/ATHUOM_UserOrderRequestValidator" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:tns="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/ATH/UOM/SubmitUserOrderRequest" exclude-result-prefixes="xsl out1 ns0 tns plnk ns2 ns3 soap client bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <out1:billingInfoRequest>
      <out1:header>
        <out1:transactionId>
          <xsl:value-of select="/out1:billingInfoRequest/out1:header/out1:transactionId"/>
        </out1:transactionId>
        <out1:requestSystem>
          <xsl:value-of select="/out1:billingInfoRequest/out1:header/out1:requestSystem"/>
        </out1:requestSystem>
        <out1:requestDate>
          <xsl:value-of select="/out1:billingInfoRequest/out1:header/out1:requestDate"/>
        </out1:requestDate>
        <out1:subscriber>
          <out1:subscriberId>
            <xsl:value-of select="/out1:billingInfoRequest/out1:header/out1:subscriber/out1:subscriberId"/>
          </out1:subscriberId>
          <out1:subAcctId>
            <xsl:value-of select="/out1:billingInfoRequest/out1:header/out1:subscriber/out1:subAcctId"/>
          </out1:subAcctId>
        </out1:subscriber>
        <out1:referenceSystem>
          <out1:orderNumber>
            <xsl:value-of select="/out1:billingInfoRequest/out1:header/out1:referenceSystem/out1:orderNumber"/>
          </out1:orderNumber>
          <xsl:choose>
            <xsl:when test="string-length(/out1:billingInfoRequest/out1:header/out1:referenceSystem/out1:orderNumber) > 0.0">
              <out1:systemName>
                <xsl:value-of select="string(&quot;Siebel&quot;)"/>
              </out1:systemName>
            </xsl:when>
            <xsl:otherwise>
              <out1:systemName>
                <xsl:value-of select="string(&quot;Athena&quot;)"/>
              </out1:systemName>
            </xsl:otherwise>
          </xsl:choose>
        </out1:referenceSystem>
        <out1:actionCode>
          <xsl:value-of select="/out1:billingInfoRequest/out1:header/out1:actionCode"/>
        </out1:actionCode>
        <out1:requestorAdmin>
          <out1:adminName>
            <xsl:value-of select="/out1:billingInfoRequest/out1:header/out1:requestorAdmin/out1:adminName"/>
          </out1:adminName>
          <out1:adminEmail>
            <xsl:value-of select="/out1:billingInfoRequest/out1:header/out1:requestorAdmin/out1:adminEmail"/>
          </out1:adminEmail>
        </out1:requestorAdmin>
      </out1:header>
      <out1:body>
        <out1:moveToSubscriber>
          <out1:subscriberId>
            <xsl:value-of select="/out1:billingInfoRequest/out1:body/out1:moveToSubscriber/out1:subscriberId"/>
          </out1:subscriberId>
          <out1:subAcctId>
            <xsl:value-of select="/out1:billingInfoRequest/out1:body/out1:moveToSubscriber/out1:subAcctId"/>
          </out1:subAcctId>
        </out1:moveToSubscriber>
        <xsl:for-each select="/out1:billingInfoRequest/out1:body/out1:userDetail">
          <out1:userDetail>
            <out1:transactionId>
              <xsl:value-of select="out1:transactionId"/>
            </out1:transactionId>
            <out1:subId>
              <xsl:value-of select="out1:subId"/>
            </out1:subId>
            <out1:akr>
              <xsl:value-of select="out1:akr"/>
            </out1:akr>
            <out1:user>
              <out1:firstName>
                <xsl:value-of select="out1:user/out1:firstName"/>
              </out1:firstName>
              <out1:lastName>
                <xsl:value-of select="out1:user/out1:lastName"/>
              </out1:lastName>
              <out1:tsaId>
                <xsl:value-of select="out1:user/out1:tsaId"/>
              </out1:tsaId>
              <out1:eMail>
                <xsl:value-of select="out1:user/out1:eMail"/>
              </out1:eMail>
              <out1:phone>
                <xsl:value-of select="out1:user/out1:phone"/>
              </out1:phone>
              <out1:jobFunction>
                <xsl:value-of select="out1:user/out1:jobFunction"/>
              </out1:jobFunction>
              <out1:anonymous>
                <out1:value>
                  <xsl:value-of select="out1:user/out1:anonymous/out1:value"/>
                </out1:value>
                <out1:reason>
                  <xsl:value-of select="out1:user/out1:anonymous/out1:reason"/>
                </out1:reason>
              </out1:anonymous>
            </out1:user>
            <xsl:for-each select="out1:service">
              <out1:service>
                <out1:pliNumber>
                  <xsl:value-of select="out1:pliNumber"/>
                </out1:pliNumber>
                <out1:effectiveDate>
                  <xsl:value-of select="out1:effectiveDate"/>
                </out1:effectiveDate>
                <out1:operation>
                  <xsl:value-of select="out1:operation"/>
                </out1:operation>
                <out1:hardStopFlag>
                  <xsl:value-of select="out1:hardStopFlag"/>
                </out1:hardStopFlag>
                <out1:uniqueLineNumber>
                  <xsl:value-of select="out1:uniqueLineNumber"/>
                </out1:uniqueLineNumber>
                <out1:referenceItemNumber>
                  <xsl:value-of select="out1:referenceItemNumber"/>
                </out1:referenceItemNumber>
              </out1:service>
            </xsl:for-each>
          </out1:userDetail>
        </xsl:for-each>
      </out1:body>
    </out1:billingInfoRequest>
  </xsl:template>
</xsl:stylesheet>
