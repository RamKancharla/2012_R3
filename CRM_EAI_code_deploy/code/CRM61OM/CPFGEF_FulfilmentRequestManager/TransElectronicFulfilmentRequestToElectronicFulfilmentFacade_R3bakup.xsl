<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CPFG.EF.216_SplitOrderResponse.xsd"/>
      <rootElement name="splitOrderResponse" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/OrderFulfilmentCrossRefService"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai01:7777/orabpel/ccrmasync/CPFGEF_FulfilmentRequestCorrelator/EAI.MSG.CPFG.EF.219_StandaloneElectronicFulfilmentRequest.xsd"/>
      <rootElement name="standaloneElectronicFulfilmentRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/ElectronicFulfilmentServices"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE JUL 12 15:16:14 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/ElectronicFulfilmentServices" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:tns="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/OrderFulfilmentCrossRefService" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" exclude-result-prefixes="xsl xsd tns local xref xp20 bpws ora ehdr orcl ids hwf" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
                xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/ElectronicFulfilmentServices"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:tns="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/OrderFulfilmentCrossRefService"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                exclude-result-prefixes="xsl xsd tns local xref xp20 bpws ora ehdr orcl ids hwf">
  <xsl:template match="/">
    <local:standaloneElectronicFulfilmentRequest>
      <local:standaloneEaiHeader>
        <local:applicationId>
          <xsl:value-of select="/tns:splitOrderResponse/tns:eaiHeader/tns:applicationId"/>
        </local:applicationId>
        <local:transactionId>
          <xsl:value-of select="/tns:splitOrderResponse/tns:eaiHeader/tns:transactionId"/>
        </local:transactionId>
        <local:messageId>
          <xsl:value-of select="/tns:splitOrderResponse/tns:eaiHeader/tns:messageId"/>
        </local:messageId>
        <local:messageHistory>
          <xsl:value-of select="/tns:splitOrderResponse/tns:eaiHeader/tns:messageHistory"/>
        </local:messageHistory>
        <local:tracingId>
          <xsl:value-of select="/tns:splitOrderResponse/tns:eaiHeader/tns:tracingId"/>
        </local:tracingId>
        <local:timeStamp>
          <xsl:value-of select="/tns:splitOrderResponse/tns:eaiHeader/tns:timeStamp"/>
        </local:timeStamp>
        <local:instanceId>
          <xsl:value-of select="/tns:splitOrderResponse/tns:eaiHeader/tns:instanceId"/>
        </local:instanceId>
        <local:timeToLive>
          <xsl:value-of select="/tns:splitOrderResponse/tns:eaiHeader/tns:timeToLive"/>
        </local:timeToLive>
        <local:payloadVersion>
          <xsl:value-of select="/tns:splitOrderResponse/tns:eaiHeader/tns:payloadVersion"/>
        </local:payloadVersion>
      </local:standaloneEaiHeader>
      <local:electronicFulfilmentRequestId>
        <xsl:value-of select="/tns:splitOrderResponse/tns:electronicFulfilmentRequest/tns:electronicFulfilmentRequestId"/>
      </local:electronicFulfilmentRequestId>
      <local:UUID>
        <xsl:value-of select="/tns:splitOrderResponse/tns:electronicFulfilmentRequest/tns:UUID"/>
      </local:UUID>
      <local:subscriberAccount>
        <xsl:value-of select="concat(dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CSLNToRDS_CountryCode.dvm&quot;,&quot;SiebelCode&quot;,substring(/tns:splitOrderResponse/tns:electronicFulfilmentRequest/tns:subscriberAccount,1.0,2.0),&quot;AAACode&quot;,substring(/tns:splitOrderResponse/tns:electronicFulfilmentRequest/tns:subscriberAccount,1.0,2.0)),substring(/tns:splitOrderResponse/tns:electronicFulfilmentRequest/tns:subscriberAccount,3.0))"/>
      </local:subscriberAccount>
      <local:standaloneModifyUserEntitlements>
        <xsl:for-each select="/tns:splitOrderResponse/tns:electronicFulfilmentRequest/tns:modifyUserEntitlements/tns:entitlement">
          <xsl:if test="tns:actionCode != &quot;FTConversionDelete&quot;">
            <local:standaloneEntitlement>
              <local:actionCode>
                <xsl:value-of select="tns:actionCode"/>
              </local:actionCode>
              <local:productID>
                <xsl:value-of select="tns:productID"/>
              </local:productID>
              <local:freeTrialIndicator>
                <xsl:value-of select="tns:freeTrialIndicator"/>
              </local:freeTrialIndicator>
              <xsl:choose>
                <xsl:when test="xp20:format-dateTime(tns:freeTrialEndDate,&quot;[Y0001]-[M01]-[D01]&quot;) = &quot;1900-01-01&quot;">
                  <local:freeTrialEndDate/>
                </xsl:when>
                <xsl:otherwise>
                  <local:freeTrialEndDate>
                    <xsl:value-of select="tns:freeTrialEndDate"/>
                  </local:freeTrialEndDate>
                </xsl:otherwise>
              </xsl:choose>
              <local:standaloneProductAttributeList>
                <xsl:for-each select="tns:productAttribute">
                  <local:standaloneAttributeValuePair>
                    <local:attributeID>
                      <xsl:value-of select="tns:attributeID"/>
                    </local:attributeID>
                    <local:valueID>
                      <xsl:value-of select="tns:valueID"/>
                    </local:valueID>
                  </local:standaloneAttributeValuePair>
                </xsl:for-each>
              </local:standaloneProductAttributeList>
              <local:standaloneAddOnList>
                <xsl:for-each select="tns:addOn">
                  <xsl:if test='tns:actionCode != "FTConversionDelete"'>
                    <local:standaloneAddOn>
                      <local:actionCode>
                        <xsl:value-of select="tns:actionCode"/>
                      </local:actionCode>
                      <local:productID>
                        <xsl:value-of select="tns:productID"/>
                      </local:productID>
                      <local:freeTrialIndicator>
                        <xsl:value-of select="tns:freeTrialIndicator"/>
                      </local:freeTrialIndicator>
                      <xsl:choose>
                        <xsl:when test='xp20:format-dateTime(tns:freeTrialEndDate,"[Y0001]-[M01]-[D01]") = "1900-01-01"'>
                          <local:freeTrialEndDate/>
                        </xsl:when>
                        <xsl:otherwise>
                          <local:freeTrialEndDate>
                            <xsl:value-of select="tns:freeTrialEndDate"/>
                          </local:freeTrialEndDate>
                        </xsl:otherwise>
                      </xsl:choose>
                      <local:standaloneProductAttributeList>
                        <xsl:for-each select="tns:productAttribute">
                          <local:standaloneAttributeValuePair>
                            <local:attributeID>
                              <xsl:value-of select="tns:attributeID"/>
                            </local:attributeID>
                            <local:valueID>
                              <xsl:value-of select="tns:valueID"/>
                            </local:valueID>
                          </local:standaloneAttributeValuePair>
                        </xsl:for-each>
                      </local:standaloneProductAttributeList>
                      <local:standaloneAddOnList>
                        <xsl:for-each select="tns:addOn">
                          <xsl:if test='tns:actionCode != "FTConversionDelete"'>
                            <local:standaloneAddOn>
                              <local:actionCode>
                                <xsl:value-of select="tns:actionCode"/>
                              </local:actionCode>
                              <local:productID>
                                <xsl:value-of select="tns:productID"/>
                              </local:productID>
                              <local:freeTrialIndicator>
                                <xsl:value-of select="tns:freeTrialIndicator"/>
                              </local:freeTrialIndicator>
                              <xsl:choose>
                                <xsl:when test='xp20:format-dateTime(tns:freeTrialEndDate,"[Y0001]-[M01]-[D01]") = "1900-01-01"'>
                                  <local:freeTrialEndDate/>
                                </xsl:when>
                                <xsl:otherwise>
                                  <local:freeTrialEndDate>
                                    <xsl:value-of select="tns:freeTrialEndDate"/>
                                  </local:freeTrialEndDate>
                                </xsl:otherwise>
                              </xsl:choose>
                              <local:standaloneProductAttributeList>
                                <xsl:for-each select="tns:productAttribute">
                                  <local:standaloneAttributeValuePair>
                                    <local:attributeID>
                                      <xsl:value-of select="tns:attributeID"/>
                                    </local:attributeID>
                                    <local:valueID>
                                      <xsl:value-of select="tns:valueID"/>
                                    </local:valueID>
                                  </local:standaloneAttributeValuePair>
                                </xsl:for-each>
                              </local:standaloneProductAttributeList>
                              <local:standaloneAddOnList>
                                <xsl:if test='tns:actionCode != "FTConversionDelete"'>
                                  <local:standaloneAddOn>
                                    <local:actionCode>
                                      <xsl:value-of select="tns:addOn/tns:actionCode"/>
                                    </local:actionCode>
                                    <local:productID>
                                      <xsl:value-of select="tns:addOn/tns:productID"/>
                                    </local:productID>
                                    <local:freeTrialIndicator>
                                      <xsl:value-of select="tns:addOn/tns:freeTrialIndicator"/>
                                    </local:freeTrialIndicator>
                                    <local:freeTrialEndDate>
                                      <xsl:value-of select="tns:addOn/tns:freeTrialEndDate"/>
                                    </local:freeTrialEndDate>
                                    <local:standaloneProductAttributeList>
                                      <xsl:for-each select="tns:addOn/tns:productAttribute">
                                        <local:standaloneAttributeValuePair>
                                          <local:attributeID>
                                            <xsl:value-of select="tns:attributeID"/>
                                          </local:attributeID>
                                          <local:valueID>
                                            <xsl:value-of select="tns:valueID"/>
                                          </local:valueID>
                                        </local:standaloneAttributeValuePair>
                                      </xsl:for-each>
                                    </local:standaloneProductAttributeList>
                                    <local:standaloneAddOnList>
                                      <xsl:for-each select="tns:addOn/tns:addOn">
                                        <xsl:if test='tns:actionCode != "FTConversionDelete"'>
                                          <local:standaloneAddOn>
                                            <local:actionCode>
                                              <xsl:value-of select="tns:actionCode"/>
                                            </local:actionCode>
                                            <local:productID>
                                              <xsl:value-of select="tns:productID"/>
                                            </local:productID>
                                            <local:freeTrialIndicator>
                                              <xsl:value-of select="tns:freeTrialIndicator"/>
                                            </local:freeTrialIndicator>
                                            <local:freeTrialEndDate>
                                              <xsl:value-of select="tns:freeTrialEndDate"/>
                                            </local:freeTrialEndDate>
                                            <local:standaloneProductAttributeList>
                                              <xsl:for-each select="tns:productAttribute">
                                                <local:standaloneAttributeValuePair>
                                                  <local:attributeID>
                                                    <xsl:value-of select="tns:attributeID"/>
                                                  </local:attributeID>
                                                  <local:valueID>
                                                    <xsl:value-of select="tns:valueID"/>
                                                  </local:valueID>
                                                </local:standaloneAttributeValuePair>
                                              </xsl:for-each>
                                            </local:standaloneProductAttributeList>
                                            <local:standaloneAddOnList>
                                              <xsl:for-each select="tns:addOn">
                                                <xsl:if test='tns:actionCode != "FTConversionDelete"'>
                                                  <local:standaloneAddOn>
                                                    <local:actionCode>
                                                      <xsl:value-of select="tns:actionCode"/>
                                                    </local:actionCode>
                                                    <local:productID>
                                                      <xsl:value-of select="tns:productID"/>
                                                    </local:productID>
                                                    <local:freeTrialIndicator>
                                                      <xsl:value-of select="tns:freeTrialIndicator"/>
                                                    </local:freeTrialIndicator>
                                                    <local:freeTrialEndDate>
                                                      <xsl:value-of select="tns:freeTrialEndDate"/>
                                                    </local:freeTrialEndDate>
                                                    <local:standaloneProductAttributeList>
                                                      <xsl:for-each select="tns:productAttribute">
                                                        <local:standaloneAttributeValuePair>
                                                          <local:attributeID>
                                                            <xsl:value-of select="tns:attributeID"/>
                                                          </local:attributeID>
                                                          <local:valueID>
                                                            <xsl:value-of select="tns:valueID"/>
                                                          </local:valueID>
                                                        </local:standaloneAttributeValuePair>
                                                      </xsl:for-each>
                                                    </local:standaloneProductAttributeList>
                                                  </local:standaloneAddOn>
                                                </xsl:if>
                                              </xsl:for-each>
                                            </local:standaloneAddOnList>
                                          </local:standaloneAddOn>
                                        </xsl:if>
                                      </xsl:for-each>
                                    </local:standaloneAddOnList>
                                  </local:standaloneAddOn>
                                </xsl:if>
                              </local:standaloneAddOnList>
                            </local:standaloneAddOn>
                          </xsl:if>
                        </xsl:for-each>
                      </local:standaloneAddOnList>
                    </local:standaloneAddOn>
                  </xsl:if>
                </xsl:for-each>
              </local:standaloneAddOnList>
            </local:standaloneEntitlement>
          </xsl:if>
        </xsl:for-each>
      </local:standaloneModifyUserEntitlements>
    </local:standaloneElectronicFulfilmentRequest>
  </xsl:template>
</xsl:stylesheet>
