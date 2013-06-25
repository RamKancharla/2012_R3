<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CPFG.EF.219_StandaloneElectronicFulfilmentRequest.xsd"/>
      <rootElement name="standaloneElectronicFulfilmentRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/ElectronicFulfilmentServices"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.EXT.119_ElectronicFulfilmentRequest.xsd"/>
      <rootElement name="electronicFulfilmentRequest" namespace="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/ElectronicFulfilmentServices"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED JUN 30 12:49:29 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-pt="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/CommonProductTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:gcap-at="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/CommonAccountTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:gcap-mt="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/CommonMessageTypes" xmlns:gcap-ut="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/CommonUserTypes" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CPFG/ElectronicFulfilmentServices" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/SchemaAnnotations" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns0="http://www.reuters.com/ns/2008/05/16/AAA/ESB/SBO/GCAP/ElectronicFulfilmentServices" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" exclude-result-prefixes="xsl xsd local gcap-pt gcap-at gcap-mt gcap-ut ns1 ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:electronicFulfilmentRequest>
      <ns0:eaiHeader>
        <gcap-mt:applicationId>
          <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:applicationId"/>
        </gcap-mt:applicationId>
        <gcap-mt:transactionId>
          <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:transactionId"/>
        </gcap-mt:transactionId>
        <gcap-mt:messageId>
          <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:messageId"/>
        </gcap-mt:messageId>
        <gcap-mt:messageHistory>
          <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:messageHistory"/>
        </gcap-mt:messageHistory>
        <gcap-mt:tracingId>
          <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:tracingId"/>
        </gcap-mt:tracingId>
        <xsl:choose>
          <xsl:when test="string-length(/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:timeStamp) > 0.0">
            <gcap-mt:timeStamp>
              <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:timeStamp"/>
            </gcap-mt:timeStamp>
          </xsl:when>
          <xsl:otherwise>
            <gcap-mt:timeStamp>
              <xsl:value-of select="xp20:current-dateTime()"/>
            </gcap-mt:timeStamp>
          </xsl:otherwise>
        </xsl:choose>
        <gcap-mt:instanceId>
          <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:instanceId"/>
        </gcap-mt:instanceId>
        <xsl:if test="string-length(/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:timeToLive) > 0.0">
          <gcap-mt:timeToLive>
            <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:timeToLive"/>
          </gcap-mt:timeToLive>
        </xsl:if>
        <gcap-mt:payloadVersion>
          <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:standaloneEaiHeader/local:payloadVersion"/>
        </gcap-mt:payloadVersion>
      </ns0:eaiHeader>
      <ns0:electronicFulfilmentRequestId>
        <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:electronicFulfilmentRequestId"/>
      </ns0:electronicFulfilmentRequestId>
      <ns0:UUID>
        <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:UUID"/>
      </ns0:UUID>
      <ns0:domain>
        <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;CPFG_DOMAIN_ID&quot;,&quot;Value&quot;,&quot;&quot;)"/>
      </ns0:domain>
      <ns0:AAATransactionId>
        <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:AAATransactionId"/>
      </ns0:AAATransactionId>
      <ns0:subscriberAccount>
        <xsl:value-of select="/local:standaloneElectronicFulfilmentRequest/local:subscriberAccount"/>
      </ns0:subscriberAccount>
      <ns0:modifyUserEntitlements>
        <xsl:for-each select="/local:standaloneElectronicFulfilmentRequest/local:standaloneModifyUserEntitlements/local:standaloneEntitlement">
             <xsl:if test="local:actionCode = 'Add'">
                  <ns0:entitlement>
                    <xsl:call-template name="addOnList"/>
                    <ns0:actionCode>
                      <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CPFG_ElectronicFulfilmentActionCodeMap.dvm&quot;,&quot;CRM_ActionCode&quot;,local:actionCode,&quot;CPFG_ActionCode&quot;,local:actionCode)"/>
                    </ns0:actionCode>
                    <ns0:productID>
                      <xsl:value-of select="local:productID"/>
                    </ns0:productID>
                    <xsl:if test="string-length(local:freeTrialIndicator) > 0.0">
                      <ns0:freeTrialIndicator>
                        <xsl:value-of select="local:freeTrialIndicator"/>
                      </ns0:freeTrialIndicator>
                    </xsl:if>
                    <xsl:if test="(local:freeTrialIndicator = &quot;true&quot;) and (string-length(local:freeTrialEndDate) > 0.0)">
                      <ns0:freeTrialEndDate>
                        <xsl:value-of select="local:freeTrialEndDate"/>
                      </ns0:freeTrialEndDate>
                    </xsl:if>
                    <ns0:productAttributeList>
                      <xsl:for-each select="local:standaloneProductAttributeList/local:standaloneAttributeValuePair">
                        <ns0:attributeValuePair>
                          <ns0:attributeID>
                            <xsl:value-of select="local:attributeID"/>
                          </ns0:attributeID>
                          <ns0:valueID>
                            <xsl:value-of select="local:valueID"/>
                          </ns0:valueID>
                          <ns0:freeTextValue>
                            <xsl:value-of select="local:freeTextValue"/>
                          </ns0:freeTextValue>
                        </ns0:attributeValuePair>               
                  </xsl:for-each>
                </ns0:productAttributeList>
              </ns0:entitlement>
          </xsl:if>
        </xsl:for-each>
        
        
         <xsl:for-each select="/local:standaloneElectronicFulfilmentRequest/local:standaloneModifyUserEntitlements/local:standaloneEntitlement">
             <xsl:if test="local:actionCode = 'Update'">
                  <ns0:entitlement>
                    <xsl:call-template name="addOnList"/>
                    <ns0:actionCode>
                      <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CPFG_ElectronicFulfilmentActionCodeMap.dvm&quot;,&quot;CRM_ActionCode&quot;,local:actionCode,&quot;CPFG_ActionCode&quot;,local:actionCode)"/>
                    </ns0:actionCode>
                    <ns0:productID>
                      <xsl:value-of select="local:productID"/>
                    </ns0:productID>
                    <xsl:if test="string-length(local:freeTrialIndicator) > 0.0">
                      <ns0:freeTrialIndicator>
                        <xsl:value-of select="local:freeTrialIndicator"/>
                      </ns0:freeTrialIndicator>
                    </xsl:if>
                    <xsl:if test="(local:freeTrialIndicator = &quot;true&quot;) and (string-length(local:freeTrialEndDate) > 0.0)">
                      <ns0:freeTrialEndDate>
                        <xsl:value-of select="local:freeTrialEndDate"/>
                      </ns0:freeTrialEndDate>
                    </xsl:if>
                    <ns0:productAttributeList>
                      <xsl:for-each select="local:standaloneProductAttributeList/local:standaloneAttributeValuePair">
                        <ns0:attributeValuePair>
                          <ns0:attributeID>
                            <xsl:value-of select="local:attributeID"/>
                          </ns0:attributeID>
                          <ns0:valueID>
                            <xsl:value-of select="local:valueID"/>
                          </ns0:valueID>
                          <ns0:freeTextValue>
                            <xsl:value-of select="local:freeTextValue"/>
                          </ns0:freeTextValue>
                        </ns0:attributeValuePair>
                      </xsl:for-each>
                    </ns0:productAttributeList>
                  </ns0:entitlement>
                </xsl:if>
        </xsl:for-each>
        
        
         <xsl:for-each select="/local:standaloneElectronicFulfilmentRequest/local:standaloneModifyUserEntitlements/local:standaloneEntitlement">
                <xsl:if test="local:actionCode != 'Add' and local:actionCode != 'Update' and local:actionCode != 'Delete'">
                  <ns0:entitlement>
                    <xsl:call-template name="addOnList"/>
                    <ns0:actionCode>
                      <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CPFG_ElectronicFulfilmentActionCodeMap.dvm&quot;,&quot;CRM_ActionCode&quot;,local:actionCode,&quot;CPFG_ActionCode&quot;,local:actionCode)"/>
                    </ns0:actionCode>
                    <ns0:productID>
                      <xsl:value-of select="local:productID"/>
                    </ns0:productID>
                    <xsl:if test="string-length(local:freeTrialIndicator) > 0.0">
                      <ns0:freeTrialIndicator>
                        <xsl:value-of select="local:freeTrialIndicator"/>
                      </ns0:freeTrialIndicator>
                    </xsl:if>
                    <xsl:if test="(local:freeTrialIndicator = &quot;true&quot;) and (string-length(local:freeTrialEndDate) > 0.0)">
                      <ns0:freeTrialEndDate>
                        <xsl:value-of select="local:freeTrialEndDate"/>
                      </ns0:freeTrialEndDate>
                    </xsl:if>
                    <ns0:productAttributeList>
                      <xsl:for-each select="local:standaloneProductAttributeList/local:standaloneAttributeValuePair">
                        <ns0:attributeValuePair>
                          <ns0:attributeID>
                            <xsl:value-of select="local:attributeID"/>
                          </ns0:attributeID>
                          <ns0:valueID>
                            <xsl:value-of select="local:valueID"/>
                          </ns0:valueID>
                          <ns0:freeTextValue>
                            <xsl:value-of select="local:freeTextValue"/>
                          </ns0:freeTextValue>
                        </ns0:attributeValuePair>
                      </xsl:for-each>
                    </ns0:productAttributeList>
                  </ns0:entitlement>                  
                </xsl:if>
        </xsl:for-each>
        
         <xsl:for-each select="/local:standaloneElectronicFulfilmentRequest/local:standaloneModifyUserEntitlements/local:standaloneEntitlement">
             <xsl:if test="local:actionCode = 'Delete'">
                  <ns0:entitlement>
                    <xsl:call-template name="addOnList"/>
                    <ns0:actionCode>
                      <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CPFG_ElectronicFulfilmentActionCodeMap.dvm&quot;,&quot;CRM_ActionCode&quot;,local:actionCode,&quot;CPFG_ActionCode&quot;,local:actionCode)"/>
                    </ns0:actionCode>
                    <ns0:productID>
                      <xsl:value-of select="local:productID"/>
                    </ns0:productID>
                    <xsl:if test="string-length(local:freeTrialIndicator) > 0.0">
                      <ns0:freeTrialIndicator>
                        <xsl:value-of select="local:freeTrialIndicator"/>
                      </ns0:freeTrialIndicator>
                    </xsl:if>
                    <xsl:if test="(local:freeTrialIndicator = &quot;true&quot;) and (string-length(local:freeTrialEndDate) > 0.0)">
                      <ns0:freeTrialEndDate>
                        <xsl:value-of select="local:freeTrialEndDate"/>
                      </ns0:freeTrialEndDate>
                    </xsl:if>
                    <ns0:productAttributeList>
                      <xsl:for-each select="local:standaloneProductAttributeList/local:standaloneAttributeValuePair">
                        <ns0:attributeValuePair>
                          <ns0:attributeID>
                            <xsl:value-of select="local:attributeID"/>
                          </ns0:attributeID>
                          <ns0:valueID>
                            <xsl:value-of select="local:valueID"/>
                          </ns0:valueID>
                          <ns0:freeTextValue>
                            <xsl:value-of select="local:freeTextValue"/>
                          </ns0:freeTextValue>
                        </ns0:attributeValuePair>
                      </xsl:for-each>
                    </ns0:productAttributeList>
                  </ns0:entitlement>
                </xsl:if>
        </xsl:for-each>
        
      </ns0:modifyUserEntitlements>
    </ns0:electronicFulfilmentRequest>
  </xsl:template>
   
  <!--  User Defined Templates  -->
   
  <xsl:template name="addOnList" match="standaloneAddOnList">
    <ns0:addOnList>
    
      <xsl:for-each select="local:standaloneAddOnList/local:standaloneAddOn">
         <xsl:if test="local:actionCode = 'Add'">
            <xsl:if test="local:productID != ''">
              <ns0:addOn>
                <ns0:actionCode>
                  <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CPFG_ElectronicFulfilmentActionCodeMap.dvm&quot;,&quot;CRM_ActionCode&quot;,local:actionCode,&quot;CPFG_ActionCode&quot;,local:actionCode)"/>
                </ns0:actionCode>
                <ns0:productID>
                  <xsl:value-of select="local:productID"/>
                </ns0:productID>
                <ns0:freeTrialIndicator>
                  <xsl:value-of select="local:freeTrialIndicator"/>
                </ns0:freeTrialIndicator>
                <xsl:if test="local:freeTrialIndicator = 'true' and string-length(local:freeTrialEndDate) > 0.0">
                  <ns0:freeTrialEndDate>
                    <xsl:value-of select="local:freeTrialEndDate"/>
                  </ns0:freeTrialEndDate>
                </xsl:if>
                <ns0:productAttributeList>
                  <xsl:for-each select="local:standaloneProductAttributeList/local:standaloneAttributeValuePair">
                    <ns0:attributeValuePair>
                      <ns0:attributeID>
                        <xsl:value-of select="local:attributeID"/>
                      </ns0:attributeID>
                      <ns0:valueID>
                        <xsl:value-of select="local:valueID"/>
                      </ns0:valueID>
                      <ns0:freeTextValue>
                        <xsl:value-of select="local:freeTextValue"/>
                      </ns0:freeTextValue>
                    </ns0:attributeValuePair>
                  </xsl:for-each>
                </ns0:productAttributeList>
                <xsl:call-template name="addOnList"/>
              </ns0:addOn>
            </xsl:if>
          </xsl:if>  
      </xsl:for-each>
      
      
       <xsl:for-each select="local:standaloneAddOnList/local:standaloneAddOn">
         <xsl:if test="local:actionCode = 'Update'">
            <xsl:if test="local:productID != ''">
              <ns0:addOn>
                <ns0:actionCode>
                  <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CPFG_ElectronicFulfilmentActionCodeMap.dvm&quot;,&quot;CRM_ActionCode&quot;,local:actionCode,&quot;CPFG_ActionCode&quot;,local:actionCode)"/>
                </ns0:actionCode>
                <ns0:productID>
                  <xsl:value-of select="local:productID"/>
                </ns0:productID>
                <ns0:freeTrialIndicator>
                  <xsl:value-of select="local:freeTrialIndicator"/>
                </ns0:freeTrialIndicator>
                <xsl:if test="local:freeTrialIndicator = 'true' and string-length(local:freeTrialEndDate) > 0.0">
                  <ns0:freeTrialEndDate>
                    <xsl:value-of select="local:freeTrialEndDate"/>
                  </ns0:freeTrialEndDate>
                </xsl:if>
                <ns0:productAttributeList>
                  <xsl:for-each select="local:standaloneProductAttributeList/local:standaloneAttributeValuePair">
                    <ns0:attributeValuePair>
                      <ns0:attributeID>
                        <xsl:value-of select="local:attributeID"/>
                      </ns0:attributeID>
                      <ns0:valueID>
                        <xsl:value-of select="local:valueID"/>
                      </ns0:valueID>
                      <ns0:freeTextValue>
                        <xsl:value-of select="local:freeTextValue"/>
                      </ns0:freeTextValue>
                    </ns0:attributeValuePair>
                  </xsl:for-each>
                </ns0:productAttributeList>
                <xsl:call-template name="addOnList"/>
              </ns0:addOn>
            </xsl:if>
         </xsl:if>
      </xsl:for-each>
      
      
      <xsl:for-each select="local:standaloneAddOnList/local:standaloneAddOn">
         <xsl:if test="local:actionCode != 'Add' and local:actionCode != 'Update' and local:actionCode != 'Delete'">
            <xsl:if test="local:productID != ''">
              <ns0:addOn>
                <ns0:actionCode>
                  <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CPFG_ElectronicFulfilmentActionCodeMap.dvm&quot;,&quot;CRM_ActionCode&quot;,local:actionCode,&quot;CPFG_ActionCode&quot;,local:actionCode)"/>
                </ns0:actionCode>
                <ns0:productID>
                  <xsl:value-of select="local:productID"/>
                </ns0:productID>
                <ns0:freeTrialIndicator>
                  <xsl:value-of select="local:freeTrialIndicator"/>
                </ns0:freeTrialIndicator>
                <xsl:if test="local:freeTrialIndicator = 'true' and string-length(local:freeTrialEndDate) > 0.0">
                  <ns0:freeTrialEndDate>
                    <xsl:value-of select="local:freeTrialEndDate"/>
                  </ns0:freeTrialEndDate>
                </xsl:if>
                <ns0:productAttributeList>
                  <xsl:for-each select="local:standaloneProductAttributeList/local:standaloneAttributeValuePair">
                    <ns0:attributeValuePair>
                      <ns0:attributeID>
                        <xsl:value-of select="local:attributeID"/>
                      </ns0:attributeID>
                      <ns0:valueID>
                        <xsl:value-of select="local:valueID"/>
                      </ns0:valueID>
                      <ns0:freeTextValue>
                        <xsl:value-of select="local:freeTextValue"/>
                      </ns0:freeTextValue>
                    </ns0:attributeValuePair>
                  </xsl:for-each>
                </ns0:productAttributeList>
                <xsl:call-template name="addOnList"/>
              </ns0:addOn>
            </xsl:if>
         </xsl:if>
      </xsl:for-each>
      
      <xsl:for-each select="local:standaloneAddOnList/local:standaloneAddOn">
         <xsl:if test="local:actionCode = 'Delete'">
            <xsl:if test="local:productID != ''">
              <ns0:addOn>
                <ns0:actionCode>
                  <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CPFG_ElectronicFulfilmentActionCodeMap.dvm&quot;,&quot;CRM_ActionCode&quot;,local:actionCode,&quot;CPFG_ActionCode&quot;,local:actionCode)"/>
                </ns0:actionCode>
                <ns0:productID>
                  <xsl:value-of select="local:productID"/>
                </ns0:productID>
                <ns0:freeTrialIndicator>
                  <xsl:value-of select="local:freeTrialIndicator"/>
                </ns0:freeTrialIndicator>
                <xsl:if test="local:freeTrialIndicator = 'true' and string-length(local:freeTrialEndDate) > 0.0">
                  <ns0:freeTrialEndDate>
                    <xsl:value-of select="local:freeTrialEndDate"/>
                  </ns0:freeTrialEndDate>
                </xsl:if>
                <ns0:productAttributeList>
                  <xsl:for-each select="local:standaloneProductAttributeList/local:standaloneAttributeValuePair">
                    <ns0:attributeValuePair>
                      <ns0:attributeID>
                        <xsl:value-of select="local:attributeID"/>
                      </ns0:attributeID>
                      <ns0:valueID>
                        <xsl:value-of select="local:valueID"/>
                      </ns0:valueID>
                      <ns0:freeTextValue>
                        <xsl:value-of select="local:freeTextValue"/>
                      </ns0:freeTextValue>
                    </ns0:attributeValuePair>
                  </xsl:for-each>
                </ns0:productAttributeList>
                <xsl:call-template name="addOnList"/>
              </ns0:addOn>
            </xsl:if>
         </xsl:if>
      </xsl:for-each>
      
    </ns0:addOnList>
  </xsl:template>
</xsl:stylesheet>