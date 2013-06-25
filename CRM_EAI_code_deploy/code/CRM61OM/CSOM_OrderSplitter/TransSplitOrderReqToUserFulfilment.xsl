<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.CS.OM.222_ExtenedOrderRequestForSubscriberSplit.xsd"/>
      <rootElement name="extSubcriberOrderRequest" namespace="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai01:7777/orabpel/ccrmasync/CSOM_UserFulfilment/EAI.MSG.CS.OM.165_UserCreationRequest.xsd"/>
      <rootElement name="compassUser" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/OM/OrderManagement"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.4.0(build 080718.0645) AT [WED SEP 08 16:24:50 EDT 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:comt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonOrderTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2007/01/25/GCAP/EAI/OrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/OM/OrderManagement" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl cmt xsd xsdLocal ns0 ns3 comt ns1 ns2 bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns1:compassUser>
      <ns1:eaiHeader>
        <cmt:applicationId>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:applicationId"/>
        </cmt:applicationId>
        <cmt:transactionId>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:transactionId"/>
        </cmt:transactionId>
        <cmt:messageId>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:messageId"/>
        </cmt:messageId>
        <cmt:messageHistory>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </cmt:messageHistory>
        <cmt:tracingId>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </cmt:tracingId>
        <cmt:timeStamp>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:timeStamp"/>
        </cmt:timeStamp>
        <cmt:instanceId>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:instanceId"/>
        </cmt:instanceId>
        <cmt:timeToLive>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:timeToLive"/>
        </cmt:timeToLive>
        <cmt:payloadVersion>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:payloadVersion"/>
        </cmt:payloadVersion>
      </ns1:eaiHeader>
      <ns1:logicalCountry>
        <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:logicalCountry"/>
      </ns1:logicalCountry>
      <ns1:messageHeader>
        <comt:messageId>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:messageId"/>
        </comt:messageId>
        <comt:transactionId>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:transactionId"/>
        </comt:transactionId>
        <comt:messageHistory>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:messageHistory"/>
        </comt:messageHistory>
        <comt:tracingId>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:eaiHeader/cmt:tracingId"/>
        </comt:tracingId>
        <xsl:choose>
          <xsl:when test="/xsdLocal:extSubcriberOrderRequest/xsdLocal:orderLineItem/xsdLocal:userIDtype = &quot;ATHENA&quot;">
            <comt:actionCode>
              <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,/xsdLocal:extSubcriberOrderRequest/xsdLocal:messageHeader/xsdLocal:actionCode,&quot;Value&quot;,&quot;OM50&quot;)"/>
            </comt:actionCode>
          </xsl:when>
          <xsl:otherwise>
            <comt:actionCode>
              <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;UserCreationActionCode&quot;,&quot;Value&quot;,&quot;I890&quot;)"/>
            </comt:actionCode>
          </xsl:otherwise>
        </xsl:choose>
        <comt:version>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:messageHeader/xsdLocal:version"/>
        </comt:version>
        <comt:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </comt:timeStamp>
        <comt:userId>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:messageHeader/xsdLocal:userId"/>
        </comt:userId>
        <comt:objectSystem>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </comt:objectSystem>
      </ns1:messageHeader>
      <ns1:userHeader>
        <comt:CRMOrderNumber>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:orderHeader/xsdLocal:CRMOrderNumber"/>
        </comt:CRMOrderNumber>
        <comt:subscriber>
          <xsl:value-of select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:orderLineItem/xsdLocal:subscriber"/>
        </comt:subscriber>
      </ns1:userHeader>
      <xsl:for-each select="/xsdLocal:extSubcriberOrderRequest/xsdLocal:orderLineItem[position() >= ../xsdLocal:index * 250.0 + 1.0 and position() &lt;= ../xsdLocal:index + 1.0 * 250.0]">
        <xsl:if test="((((../xsdLocal:messageHeader/xsdLocal:actionCode = &quot;Create&quot;) or (../xsdLocal:messageHeader/xsdLocal:actionCode = &quot;AthenaCreate&quot;)) and ((xsdLocal:isNewUser = &quot;Y&quot;) and (((xsdLocal:userIDtype = &quot;Xtra Id&quot;) or (xsdLocal:userIDtype = &quot;ATHENA&quot;)) and ((xsdLocal:actionCode = &quot;Add&quot;) and ((xsdLocal:interfaceForFulfilment = &quot;Y&quot;) and ((xsdLocal:orderLineStatus = &quot;In Progress&quot; or xsdLocal:orderLineStatus = &quot;Ready for Billing&quot; or xsdLocal:orderLineStatus =&quot;Submitted to Billing&quot; or xsdLocal:orderLineStatus = &quot;Complete&quot;) and (xsdLocal:permissioningStatus = &quot;In Progress&quot;)))))))) or (xsdLocal:businessCase = &quot;User Swap&quot;)">
          <ns1:userLineItem>
            <comt:CRMOLIId>
              <xsl:value-of select="xsdLocal:CRMOLIId"/>
            </comt:CRMOLIId>
            <xsl:choose>
              <xsl:when test="xsdLocal:userIDtype = &quot;ATHENA&quot;">
                <comt:userID>
                  <xsl:value-of select="substring(xsdLocal:userID,1.0,6.0)"/>
                </comt:userID>
              </xsl:when>
              <xsl:otherwise>
                <comt:userID>
                  <xsl:value-of select="xsdLocal:userID"/>
                </comt:userID>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="xsdLocal:userIDtype = &quot;ATHENA&quot;">
                <comt:userNumber>
                  <xsl:value-of select="substring(xsdLocal:userID,7.0,4.0)"/>
                </comt:userNumber>
              </xsl:when>
              <xsl:otherwise>
                <comt:userNumber>
                  <xsl:value-of select="string(&quot;&quot;)"/>
                </comt:userNumber>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="string-length(xsdLocal:firstName) > 20.0">
                <comt:firstName>
                  <xsl:value-of select="substring(xsdLocal:firstName,1.0,20.0)"/>
                </comt:firstName>
              </xsl:when>
              <xsl:otherwise>
                <comt:firstName>
                  <xsl:value-of select="xsdLocal:firstName"/>
                </comt:firstName>
              </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="string-length(xsdLocal:lastname) > 20.0">
                <comt:lastName>
                  <xsl:value-of select="substring(xsdLocal:lastname,1.0,30.0)"/>
                </comt:lastName>
              </xsl:when>
              <xsl:otherwise>
                <comt:lastName>
                  <xsl:value-of select="xsdLocal:lastname"/>
                </comt:lastName>
              </xsl:otherwise>
            </xsl:choose>
            <comt:securityIdentifier>
              <xsl:value-of select="xsdLocal:dob"/>
            </comt:securityIdentifier>
          </ns1:userLineItem>
        </xsl:if>
      </xsl:for-each>
    </ns1:compassUser>
  </xsl:template>
</xsl:stylesheet>
