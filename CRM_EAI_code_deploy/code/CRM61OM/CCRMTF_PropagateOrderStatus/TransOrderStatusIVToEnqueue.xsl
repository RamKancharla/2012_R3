<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CCRM.OM.242_PropagateOrderStatus.xsd"/>
      <rootElement name="crmOrderStatus" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/CCRM/OM/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.CCRM.OM.148_OrderRequest.xsd"/>
      <rootElement name="OrderRequest" namespace="http://www.siebel.com/xml/RCRM%20Order%20Entry"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [MON AUG 03 13:21:30 BST 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/CCRM/OM/OrderManagement" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://www.siebel.com/xml/RCRM%20Order%20Entry" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl cmt xsd xsdLocal ns1 ns0 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:OrderRequest>
      <ns0:MessageId>
        <xsl:value-of select="orcl:generate-guid()"/>
      </ns0:MessageId>
      <ns0:OrderEntry-Orders>
        <ns0:RCRMTechnicalOrderNo>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:technicalOrderNo"/>
        </ns0:RCRMTechnicalOrderNo>
        <xsl:choose>
          <xsl:when test="(/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:technicalFulfilmentStatus != &quot;Error&quot;) and ((/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:firstName != &quot;&quot;) and ((/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:lastname != &quot;&quot;) and ((/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:email != &quot;&quot;) and (/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:phone != &quot;&quot;))))">
            <ns0:RCRMTechOrderOwner>
              <xsl:value-of select="concat(/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:firstName,&quot; &quot;,/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:lastname,&quot; ,email:&quot;,/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:email,&quot; ,phone:&quot;,/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:phone)"/>
            </ns0:RCRMTechOrderOwner>
          </xsl:when>
          <xsl:otherwise>
            <ns0:RCRMTechOrderOwner>
              <xsl:value-of select="string(&quot;&quot;)"/>
            </ns0:RCRMTechOrderOwner>
          </xsl:otherwise>
        </xsl:choose>
        <ns0:RCRMTechFulfillmentStatusReason>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:technicalFulfilmentStatusReason"/>
        </ns0:RCRMTechFulfillmentStatusReason>
        <ns0:RCRMTechFulfillmentStatus>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CCRMTF_TechFulfilmentStatusMap.dvm&quot;,&quot;TOM_HDR_STATUS&quot;,/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:technicalFulfilmentStatus,&quot;CRM_HDR_STATUS&quot;,/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:technicalFulfilmentStatus)"/>
        </ns0:RCRMTechFulfillmentStatus>
        <xsl:if test="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:plannedInstallationDate != &quot;&quot;">
          <ns0:RCRMPlannedInstallDate>
            <xsl:value-of select="xp20:format-dateTime(/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:plannedInstallationDate,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
          </ns0:RCRMPlannedInstallDate>
        </xsl:if>
        <xsl:choose>
          <xsl:when test="count(/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:ExpectedTechnicallyReadyToMigrateDate) = 1">
            <ns0:RCRMExpectedTRTMDate>
              <xsl:value-of select="xp20:format-dateTime(/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:ExpectedTechnicallyReadyToMigrateDate,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
            </ns0:RCRMExpectedTRTMDate>
          </xsl:when>
          <xsl:otherwise>
            <ns0:RCRMExpectedTRTMDate/>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:if test="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:actualInstallationDate != &quot;&quot;">
          <ns0:RCRMActualInstallationDate>
            <xsl:value-of select="xp20:format-dateTime(/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:actualInstallationDate,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
          </ns0:RCRMActualInstallationDate>
        </xsl:if>
        <ns0:OrderNumber>
          <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:orderHeader/xsdLocal:OrderNumber"/>
        </ns0:OrderNumber>
        <xsl:if test="count(/xsdLocal:crmOrderStatus/xsdLocal:orderLineItem[xsdLocal:CRMOLIId != &quot;&quot;]) > 0.0">
          <xsl:for-each select="/xsdLocal:crmOrderStatus/xsdLocal:orderLineItem">
            <ns0:OrderEntry-LineItems>
              <ns0:RCRMTechnicalFulfillmentStatus>
                <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CCRMTF_TechFulfilmentStatusMap.dvm&quot;,&quot;TOM_OLI_STATUS&quot;,xsdLocal:technicalFulfilmentStatus,&quot;CRM_OLI_STATUS&quot;,xsdLocal:technicalFulfilmentStatus)"/>
              </ns0:RCRMTechnicalFulfillmentStatus>
              <xsl:if test="xsdLocal:plannedInstallationDate != &quot;&quot;">
                <ns0:RCRMPlannedInstallationDate>
                  <xsl:value-of select="xp20:format-dateTime(xsdLocal:plannedInstallationDate,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
                </ns0:RCRMPlannedInstallationDate>
              </xsl:if>
              <xsl:if test="xsdLocal:actualInstallationDate != &quot;&quot;">
                <ns0:RCRMActualInstallationDate>
                  <xsl:value-of select="xp20:format-dateTime(xsdLocal:actualInstallationDate,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
                </ns0:RCRMActualInstallationDate>
              </xsl:if>
              <ns0:Id>
                <xsl:value-of select="xsdLocal:CRMOLIId"/>
              </ns0:Id>
            </ns0:OrderEntry-LineItems>
          </xsl:for-each>
        </xsl:if>
      </ns0:OrderEntry-Orders>
      <ns0:MessageHistory>
        <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:eaiHeader/cmt:messageHistory"/>
      </ns0:MessageHistory>
      <ns0:Timestamp>
        <xsl:value-of select="xp20:current-dateTime()"/>
      </ns0:Timestamp>
      <ns0:SourceSystem>
        <xsl:value-of select="/xsdLocal:crmOrderStatus/xsdLocal:eaiHeader/cmt:applicationId"/>
      </ns0:SourceSystem>
    </ns0:OrderRequest>
  </xsl:template>
</xsl:stylesheet>
