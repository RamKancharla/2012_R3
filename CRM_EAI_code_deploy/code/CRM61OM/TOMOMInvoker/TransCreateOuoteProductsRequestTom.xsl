<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TOM.OM.237_PropagateOrderRequest.xsd"/>
      <rootElement name="orderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/TOM/OM/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://eaidev2:7777/orabpel/xmllib/WSDL_Cache/SM7/TOM.wsdl"/>
      <rootElement name="CreateQuoteProductsRequest" namespace="http://schemas.hp.com/SM/7"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [WED DEC 30 15:25:53 GMT+05:30 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:cmn="http://schemas.hp.com/SM/7/Common" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ns0="http://schemas.hp.com/SM/7" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:comt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOrderTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns4="http://www.w3.org/2001/XMLSchemainstance" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/TOM/OM/OrderManagement" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl cmt ns3 xsd comt xsdLocal ns1 ns2 mime cmn ns0 http soap xsi bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns0:CreateQuoteProductsRequest>
      <ns0:model>
        <ns0:keys>
          <xsl:attribute name="query">
            <xsl:value-of select="string(&quot;&quot;)"/>
          </xsl:attribute>
        </ns0:keys>
        <ns0:instance>
          <ns0:CRMQuoteNumber>
            <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:quoteNumber"/>
          </ns0:CRMQuoteNumber>
          <ns0:CRMQuoteRevision>
            <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:quoteRevisionNumber"/>
          </ns0:CRMQuoteRevision>
          <ns0:product.structure>
            <xsl:for-each select="/xsdLocal:orderRequest/xsdLocal:orderLineItem">
              <ns0:product.structure>
                <ns0:product.line.id>
                  <xsl:value-of select="comt:Id"/>
                </ns0:product.line.id>
                <ns0:product.id>
                  <xsl:value-of select="comt:productIntegrationId"/>
                </ns0:product.id>
                <ns0:product.name>
                  <xsl:value-of select="comt:productName"/>
                </ns0:product.name>
                <ns0:product.qty>
                  <xsl:value-of select="comt:quantity"/>
                </ns0:product.qty>
                <ns0:product.pli>
                  <xsl:value-of select="comt:PLI"/>
                </ns0:product.pli>
                <ns0:product.action>
                  <xsl:value-of select="comt:actionCode"/>
                </ns0:product.action>
                <ns0:product.billing.id>
                  <xsl:value-of select="comt:billingAccountId"/>
                </ns0:product.billing.id>
                <ns0:product.alt.billing.id>
                  <xsl:value-of select="comt:altInstalBillingId"/>
                </ns0:product.alt.billing.id>
                <ns0:product.asset.integ.id>
                  <xsl:value-of select="comt:assetIntegrationId"/>
                </ns0:product.asset.integ.id>
                <ns0:product.freetrial.duration>
                  <xsl:value-of select="comt:freeTrialDuration"/>
                </ns0:product.freetrial.duration>
                <ns0:product.parent.line.id>
                  <xsl:value-of select="comt:parentOrderItemId"/>
                </ns0:product.parent.line.id>
                <xsl:choose>
                  <xsl:when test="comt:technicalApprovalReq = &quot;Y&quot;">
                    <ns0:product.techapproval.req>
                      <xsl:text disable-output-escaping="no">true</xsl:text>
                    </ns0:product.techapproval.req>
                  </xsl:when>
                  <xsl:when test="comt:technicalApprovalReq = &quot;N&quot;">
                    <ns0:product.techapproval.req>
                      <xsl:text disable-output-escaping="no">false</xsl:text>
                    </ns0:product.techapproval.req>
                  </xsl:when>
                  <xsl:otherwise>
                    <ns0:product.techapproval.req>
                      <xsl:value-of select="comt:technicalApprovalReq"/>
                    </ns0:product.techapproval.req>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="comt:technicalFulfilmentReq = &quot;Y&quot;">
                    <ns0:product.techffmt.req>
                      <xsl:text disable-output-escaping="no">true</xsl:text>
                    </ns0:product.techffmt.req>
                  </xsl:when>
                  <xsl:when test="comt:technicalFulfilmentReq = &quot;N&quot;">
                    <ns0:product.techffmt.req>
                      <xsl:text disable-output-escaping="no">false</xsl:text>
                    </ns0:product.techffmt.req>
                  </xsl:when>
                  <xsl:otherwise>
                    <ns0:product.techffmt.req>
                      <xsl:value-of select="comt:technicalFulfilmentReq"/>
                    </ns0:product.techffmt.req>
                  </xsl:otherwise>
                </xsl:choose>
                <ns0:product.akr>
                  <xsl:value-of select="comt:AKR"/>
                </ns0:product.akr>
                <ns0:product.ila>
                  <xsl:value-of select="comt:ILA"/>
                </ns0:product.ila>
                <ns0:product.legacy.order.number>
                  <xsl:value-of select="comt:legacyOrderNumber"/>
                </ns0:product.legacy.order.number>
                <xsl:choose>
                  <xsl:when test="&quot;Add&quot; = comt:actionCode">
                    <ns0:product.permission.date>
                      <xsl:value-of select='xp20:format-dateTime(comt:permissionDate,"[Y0001]/[M01]/[D01] [H01]:[m01]:[s01]")'/>
                    </ns0:product.permission.date>
                  </xsl:when>
                  <xsl:when test='comt:actionCode = "Delete"'>
                    <ns0:product.permission.date>
                      <xsl:value-of select='xp20:format-dateTime(comt:depermissionDate,"[Y0001]/[M01]/[D01] [H01]:[m01]:[s01]")'/>
                    </ns0:product.permission.date>
                  </xsl:when>
                  <xsl:when test='(comt:actionCode = "Update") and (comt:businessCase = "Stop Date Change")'>
                    <ns0:product.permission.date>
                      <xsl:value-of select='xp20:format-dateTime(comt:depermissionDate,"[Y0001]/[M01]/[D01] [H01]:[m01]:[s01]")'/>
                    </ns0:product.permission.date>
                  </xsl:when>
                  <xsl:when test='comt:actionCode = "Update"'>
                    <ns0:product.permission.date>
                      <xsl:value-of select='xp20:format-dateTime(comt:permissionDate,"[Y0001]/[M01]/[D01] [H01]:[m01]:[s01]")'/>
                    </ns0:product.permission.date>
                  </xsl:when>
                  <xsl:when test='comt:actionCode = "-"'>
                    <ns0:product.permission.date>
                      <xsl:value-of select='xp20:format-dateTime(comt:permissionDate,"[Y0001]/[M01]/[D01] [H01]:[m01]:[s01]")'/>
                    </ns0:product.permission.date>
                  </xsl:when>
                </xsl:choose>
                <ns0:product.user.id>
                  <xsl:value-of select="comt:userID"/>
                </ns0:product.user.id>
                <ns0:product.user.id.type>
                  <xsl:value-of select="comt:userIDType"/>
                </ns0:product.user.id.type>
                <ns0:product.order.line.status>
                  <xsl:value-of select="comt:orderLineStatus"/>
                </ns0:product.order.line.status>
                <ns0:product.last.update.time>
                  <xsl:value-of select='xp20:format-dateTime(comt:lastUpdateDate,"[Y0001]/[M01]/[D01] [H01]:[m01]:[s01]")'/>
		  <!--xsl:value-of select='concat(substring(comt:lastUpdateDate,1.0,4.0),"/",substring(comt:lastUpdateDate,6.0,2.0),"/",substring(comt:lastUpdateDate,9.0,2.0)," ",substring(comt:lastUpdateDate,12.0,2.0),":",substring(comt:lastUpdateDate,15.0,2.0),":",substring(comt:lastUpdateDate,18.0,2.0))'/-->
                </ns0:product.last.update.time>
                <ns0:product.operation>
                  <xsl:value-of select="comt:businessCase"/>
                </ns0:product.operation>
                <ns0:product.modified>
                  <xsl:value-of select="string(&quot;false&quot;)"/>
                </ns0:product.modified>
                <ns0:product.user.name>
                  <xsl:value-of select="concat(comt:firstName,&quot; &quot;,comt:lastname)"/>
                </ns0:product.user.name>
              </ns0:product.structure>
            </xsl:for-each>
          </ns0:product.structure>
          <ns0:product.attributes>
            <xsl:for-each select="/xsdLocal:orderRequest/xsdLocal:orderLineItem/comt:configuredAttribute">
              <ns0:product.attributes>
                <ns0:product.line.identifier>
                  <xsl:value-of select="../comt:Id"/>
                </ns0:product.line.identifier>
                <ns0:product.attribute.name>
                  <xsl:value-of select="comt:attributeName"/>
                </ns0:product.attribute.name>
                <ns0:product.attribute.value>
                  <xsl:value-of select="comt:value"/>
                </ns0:product.attribute.value>
              </ns0:product.attributes>
            </xsl:for-each>
          </ns0:product.attributes>
          <ns0:Location>
            <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:accountId"/>
          </ns0:Location>
          <ns0:CRMOrderNumber>
            <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:orderNumber"/>
          </ns0:CRMOrderNumber>
          <ns0:UpdateType>
            <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:updateType"/>
          </ns0:UpdateType>
          <ns0:OMSContactID>
            <xsl:value-of select="/xsdLocal:orderRequest/xsdLocal:orderHeader/comt:OMSContactId"/>
          </ns0:OMSContactID>
          <ns0:TransactionID>
            <xsl:value-of select="concat(&quot;OLI_&quot;,/xsdLocal:orderRequest/xsdLocal:eaiHeader/cmt:instanceId)"/>
          </ns0:TransactionID>
        </ns0:instance>
      </ns0:model>
    </ns0:CreateQuoteProductsRequest>
  </xsl:template>
</xsl:stylesheet>
