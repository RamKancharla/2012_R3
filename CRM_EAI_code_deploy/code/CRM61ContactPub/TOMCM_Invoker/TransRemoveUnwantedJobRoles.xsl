<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TOM.CM.198_PublishContactEventRequest.xsd"/>
      <rootElement name="pubContactRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/ContactPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="EAI.MSG.TOM.CM.198_PublishContactEventRequest.xsd"/>
      <rootElement name="pubContactRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/ContactPublish"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [THU APR 29 01:34:46 BST 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:gcap-cut="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:gcap-NAT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableAccountTypes" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/ContactPublish" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:gcap-cat="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl gcap-cmt gcap-cut xsd gcap-NAT local ns0 gcap-cat bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <local:pubContactRequest>
      <local:eaiHeader>
        <gcap-cmt:applicationId>
          <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:applicationId"/>
        </gcap-cmt:applicationId>
        <gcap-cmt:transactionId>
          <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:transactionId"/>
        </gcap-cmt:transactionId>
        <gcap-cmt:messageId>
          <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:messageId"/>
        </gcap-cmt:messageId>
        <gcap-cmt:messageHistory>
          <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:messageHistory"/>
        </gcap-cmt:messageHistory>
        <gcap-cmt:tracingId>
          <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:tracingId"/>
        </gcap-cmt:tracingId>
        <gcap-cmt:timeStamp>
          <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:timeStamp"/>
        </gcap-cmt:timeStamp>
        <gcap-cmt:instanceId>
          <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:instanceId"/>
        </gcap-cmt:instanceId>
        <gcap-cmt:timeToLive>
          <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:timeToLive"/>
        </gcap-cmt:timeToLive>
        <gcap-cmt:payloadVersion>
          <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:payloadVersion"/>
        </gcap-cmt:payloadVersion>
      </local:eaiHeader>
      <local:actionCode>
        <xsl:value-of select="/local:pubContactRequest/local:actionCode"/>
      </local:actionCode>
      <local:contact>
        <local:UUID>
          <xsl:value-of select="/local:pubContactRequest/local:contact/local:UUID"/>
        </local:UUID>
        <local:parentAccountID>
          <xsl:value-of select="/local:pubContactRequest/local:contact/local:parentAccountID"/>
        </local:parentAccountID>
        <local:masterAccountID>
          <xsl:value-of select="/local:pubContactRequest/local:contact/local:masterAccountID"/>
        </local:masterAccountID>
        <local:firstName>
          <xsl:value-of select="/local:pubContactRequest/local:contact/local:firstName"/>
        </local:firstName>
        <local:lastName>
          <xsl:value-of select="/local:pubContactRequest/local:contact/local:lastName"/>
        </local:lastName>
        <local:telNumber>
          <xsl:value-of select="/local:pubContactRequest/local:contact/local:telNumber"/>
        </local:telNumber>
        <local:emailAddress>
          <xsl:value-of select="/local:pubContactRequest/local:contact/local:emailAddress"/>
        </local:emailAddress>
        <local:contactSubType>
          <xsl:value-of select="/local:pubContactRequest/local:contact/local:contactSubType"/>
        </local:contactSubType>
        <xsl:for-each select="/local:pubContactRequest/local:contact/local:clientContactJobFunctionList">
          <xsl:if test="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/TOMCM_InvokerJobFunctionsMap.dvm&quot;,&quot;jobFunction&quot;,local:clientContactJobFunction,&quot;isValid&quot;,&quot;false&quot;) = &quot;true&quot;">
            <local:clientContactJobFunctionList>
              <local:clientContactJobFunction>
                <xsl:value-of select="local:clientContactJobFunction"/>
              </local:clientContactJobFunction>
              <local:id>
                <xsl:value-of select="local:id"/>
              </local:id>
            </local:clientContactJobFunctionList>
          </xsl:if>
        </xsl:for-each>
        <local:employeePositionList>
          <local:employeePosition>
            <local:name>
              <xsl:value-of select="string(&quot;&quot;)"/>
            </local:name>
          </local:employeePosition>
        </local:employeePositionList>
        <!--
       Removed the unnecessary mappings w.r.t CRM_PBI_0278
       <local:clientContactAccountList>
          <xsl:for-each select="/local:pubContactRequest/local:contact/local:clientContactAccountList/local:account">
            <local:account>
              <local:id>
                <xsl:value-of select="local:id"/>
              </local:id>
            </local:account>
          </xsl:for-each>
        </local:clientContactAccountList>
       <local:employeePositionList>
          <xsl:for-each select="/local:pubContactRequest/local:contact/local:employeePositionList/local:employeePosition">
            <local:employeePosition>
              <xsl:attribute name="positionName">
                <xsl:value-of select="@positionName"/>
              </xsl:attribute>
              <local:name>
                <xsl:value-of select="local:name"/>
              </local:name>
              <local:isPrimaryPosition>
                <xsl:value-of select="local:isPrimaryPosition"/>
              </local:isPrimaryPosition>
              <local:accountList>
                <xsl:for-each select="local:accountList/local:account">
                  <local:account>
                    <xsl:attribute name="accountID">
                      <xsl:value-of select="@accountID"/>
                    </xsl:attribute>
                    <local:id>
                      <xsl:value-of select="local:id"/>
                    </local:id>
                  </local:account>
                </xsl:for-each>
              </local:accountList>
            </local:employeePosition>
          </xsl:for-each>
        </local:employeePositionList>-->
      </local:contact>
    </local:pubContactRequest>
  </xsl:template>
</xsl:stylesheet>
