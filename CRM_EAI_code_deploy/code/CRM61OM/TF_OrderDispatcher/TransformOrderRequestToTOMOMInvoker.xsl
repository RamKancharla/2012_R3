<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TF.240_UpdateOrderRequest.xsd"/>
      <rootElement name="tfOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.TOM.OM.237_PropagateOrderRequest.xsd"/>
      <rootElement name="orderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/TOM/OM/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON NOV 03 18:09:38 GMT+05:30 2008]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:comt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOrderTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns1="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/TOM/OM/OrderManagement" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl cmt xsd xsdLocal ns0 ns3 comt ns1 ns2 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns1:orderRequest>
      <ns1:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </ns1:eaiHeader>
      <ns1:orderHeader>
        <comt:quoteNumber>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:orderHeader/xsdLocal:quoteNumber"/>
        </comt:quoteNumber>
        <comt:quoteRevisionNumber>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:orderHeader/xsdLocal:quoteRevisionNumber"/>
        </comt:quoteRevisionNumber>
        <comt:orderType>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:orderHeader/xsdLocal:orderType"/>
        </comt:orderType>
        <comt:orderNumber>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:orderHeader/xsdLocal:OrderNumber"/>
        </comt:orderNumber>
        <comt:OMSContactId>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:orderHeader/xsdLocal:AssignedOMS"/>
        </comt:OMSContactId>
        <xsl:for-each select="/xsdLocal:tfOrderRequest/xsdLocal:orderHeader/xsdLocal:quoteNote">
          <comt:quoteNote>
            <comt:type>
              <xsl:value-of select="xsdLocal:type"/>
            </comt:type>
            <comt:installationNotes>
              <xsl:value-of select="xsdLocal:installationNotes"/>
            </comt:installationNotes>
          </comt:quoteNote>
        </xsl:for-each>
        <comt:accountId>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:orderHeader/xsdLocal:accountId"/>
        </comt:accountId>
        <comt:poNumber>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:orderHeader/xsdLocal:poNumber"/>
        </comt:poNumber>
        <comt:orderStatus>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:orderHeader/xsdLocal:orderStatus"/>
        </comt:orderStatus>
        <comt:custRequiredDate>
          <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:orderHeader/xsdLocal:custRequiredDate"/>
        </comt:custRequiredDate>
      </ns1:orderHeader>
      <xsl:for-each select="/xsdLocal:tfOrderRequest/xsdLocal:orderLineItem">
        <ns1:orderLineItem>
          <comt:PLI>
            <xsl:value-of select="xsdLocal:PLI"/>
          </comt:PLI>
          <comt:productIntegrationId>
            <xsl:value-of select="xsdLocal:productIntegrationId"/>
          </comt:productIntegrationId>
          <comt:assetIntegrationId>
            <xsl:value-of select="xsdLocal:assetIntegrationId"/>
          </comt:assetIntegrationId>
          <comt:quantity>
            <xsl:value-of select="xsdLocal:quantity"/>
          </comt:quantity>
          <comt:Id>
            <xsl:value-of select="xsdLocal:CRMOLIId"/>
          </comt:Id>
          <comt:rootItemId>
            <xsl:value-of select="xsdLocal:rootItemId"/>
          </comt:rootItemId>
          <comt:parentOrderItemId>
            <xsl:value-of select="xsdLocal:parentOrderItemId"/>
          </comt:parentOrderItemId>
          <comt:actionCode>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/TF_OrderDispatcherActionCodeOperationMap.dvm&quot;,&quot;SIEBEL_OLI_ACTIONCODE&quot;,xsdLocal:actionCode,&quot;TOM_OLI_ACTIONCODE&quot;,xsdLocal:actionCode)"/>
          </comt:actionCode>
          <comt:technicalApprovalReq>
            <xsl:value-of select="xsdLocal:technicalApprovalReq"/>
          </comt:technicalApprovalReq>
          <comt:technicalFulfilmentReq>
            <xsl:value-of select="xsdLocal:technicalFulfilmentReq"/>
          </comt:technicalFulfilmentReq>
          <comt:billingAccountId>
            <xsl:value-of select="xsdLocal:billingAccountId"/>
          </comt:billingAccountId>
          <comt:altInstalBillingId>
            <xsl:value-of select="xsdLocal:altInstalBillingId"/>
          </comt:altInstalBillingId>
          <xsl:for-each select="xsdLocal:configuredAttribute">
            <comt:configuredAttribute>
              <comt:attributeName>
                <xsl:value-of select="xsdLocal:attributeName"/>
              </comt:attributeName>
              <comt:value>
                <xsl:value-of select="xsdLocal:value"/>
              </comt:value>
              <comt:attributeIntegrationId>
                <xsl:value-of select="xsdLocal:attributeIntegrationId"/>
              </comt:attributeIntegrationId>
              <comt:valueIntegrationId>
                <xsl:value-of select="xsdLocal:valueIntegrationId"/>
              </comt:valueIntegrationId>
            </comt:configuredAttribute>
          </xsl:for-each>
          <comt:productName>
            <xsl:value-of select="xsdLocal:productName"/>
          </comt:productName>
          <comt:orderLineStatus>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/TF_OrderDispatcherOrderLineStatusMap.dvm&quot;,&quot;EAI_OLI_STATUS&quot;,xsdLocal:orderLineStatus,&quot;TOM_OLI_STATUS&quot;,xsdLocal:orderLineStatus)"/>
          </comt:orderLineStatus>
          <comt:permissioningStatus>
            <xsl:value-of select="xsdLocal:permissioningStatus"/>
          </comt:permissioningStatus>
          <comt:AKR>
            <xsl:value-of select="xsdLocal:AKR"/>
          </comt:AKR>
          <comt:ILA>
            <xsl:value-of select="xsdLocal:ILA"/>
          </comt:ILA>
          <comt:userID>
            <xsl:value-of select="xsdLocal:userId"/>
          </comt:userID>
          <comt:userIDType>
            <xsl:value-of select="xsdLocal:userIDtype"/>
          </comt:userIDType>
          <comt:lastUpdateDate>
            <xsl:value-of select="xsdLocal:lastUpdateDate"/>
          </comt:lastUpdateDate>
          <comt:businessCase>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/TF_OrderDispatcherActionCodeOperationMap.dvm&quot;,&quot;SIEBEL_OLI_ACTIONCODE&quot;,xsdLocal:actionCode,&quot;TOM_OLI_OPERATION&quot;,xsdLocal:businessCase)"/>
          </comt:businessCase>
          <comt:legacyOrderNumber>
            <xsl:value-of select="xsdLocal:CSOrderNumber"/>
          </comt:legacyOrderNumber>
          <comt:freeTrialDuration>
            <xsl:value-of select="xsdLocal:freeTrialDuration"/>
          </comt:freeTrialDuration>
          <comt:permissionDate>
            <xsl:value-of select="xsdLocal:installDate"/>
          </comt:permissionDate>
          <comt:depermissionDate>
            <xsl:value-of select="xsdLocal:removalDate"/>
          </comt:depermissionDate>
          <comt:firstName>
            <xsl:value-of select="xsdLocal:firstName"/>
          </comt:firstName>
          <comt:lastname>
            <xsl:value-of select="xsdLocal:lastname"/>
          </comt:lastname>
        </ns1:orderLineItem>
      </xsl:for-each>
      <ns1:updateType>
        <xsl:value-of select="/xsdLocal:tfOrderRequest/xsdLocal:updateType"/>
      </ns1:updateType>
    </ns1:orderRequest>
  </xsl:template>
</xsl:stylesheet>
