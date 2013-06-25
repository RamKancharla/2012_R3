<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="EAI.MSG.TOM.CM.198_PublishContactEventRequest.xsd"/>
      <rootElement name="pubContactRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/ContactPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://ukcq-eai04:7777/orabpel/xmllib/WSDL_Cache/SM7/TOM.wsdl"/>
      <rootElement name="CreateCustomerContactsRequest" namespace="http://schemas.hp.com/SM/7"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE APR 27 22:33:39 BST 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:cmn="http://schemas.hp.com/SM/7/Common" xmlns:gcap-cmt="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:gcap-cut="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:ns1="http://schemas.hp.com/SM/7" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xsi="http://www.w3.org/2001/XMLSchemainstance" xmlns:gcap-NAT="http://www.reuters.com/ns/2007/09/01/GCAP/NillableAccountTypes" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:local="http://www.reuters.com/ns/2007/09/01/GCAP/TOM/ContactPublish" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:gcap-cat="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" exclude-result-prefixes="xsl gcap-cmt gcap-cut xsd gcap-NAT local ns0 gcap-cat mime cmn ns1 http soap xsi bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns1:CreateCustomerContactsRequest>
      <ns1:model>
         <ns1:keys>
          <ns1:transaction.id>
           <!-- <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:tracingId"/>  -->
	    <xsl:value-of select='concat("TOMExt_",/local:pubContactRequest/local:eaiHeader/gcap-cmt:tracingId)' />
          </ns1:transaction.id>
        </ns1:keys>
        <ns1:instance>
          <ns1:transaction.id>
         <!--   <xsl:value-of select="/local:pubContactRequest/local:eaiHeader/gcap-cmt:tracingId"/>  -->
	    <xsl:value-of select='concat("TOMExt_",/local:pubContactRequest/local:eaiHeader/gcap-cmt:tracingId)'/>
          </ns1:transaction.id>
          <ns1:ContactId>
            <xsl:value-of select="/local:pubContactRequest/local:contact/local:UUID"/>
          </ns1:ContactId>
          <ns1:Company>
            <xsl:text disable-output-escaping="no">DEFAULT</xsl:text>
          </ns1:Company>
          <ns1:FirstName>
            <xsl:value-of select="/local:pubContactRequest/local:contact/local:firstName"/>
          </ns1:FirstName>
          <ns1:LastName>
            <xsl:value-of select="/local:pubContactRequest/local:contact/local:lastName"/>
          </ns1:LastName>
          <ns1:ParentAccountId>
            <xsl:value-of select="/local:pubContactRequest/local:contact/local:parentAccountID"/>
          </ns1:ParentAccountId>
          <ns1:Phone>
            <xsl:value-of select="/local:pubContactRequest/local:contact/local:telNumber"/>
          </ns1:Phone>
          <ns1:Email>
            <xsl:value-of select="/local:pubContactRequest/local:contact/local:emailAddress"/>
          </ns1:Email>
          <ns1:CRMAction>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/TOMCM_InvokerActionCodeMap.dvm&quot;,&quot;InputActionCode&quot;,/local:pubContactRequest/local:actionCode,&quot;TOMActionCode&quot;,&quot;ERROR&quot;)"/>
          </ns1:CRMAction>
          <ns1:intersection.data>
            <xsl:for-each select="/local:pubContactRequest/local:contact/local:clientContactJobFunctionList">
              <ns1:intersection.data>
                <ns1:account.id>
                  <xsl:value-of select="local:id"/>
                </ns1:account.id>
                <ns1:contact.jobfunction>
                  <xsl:value-of select="local:clientContactJobFunction"/>
                </ns1:contact.jobfunction>
              </ns1:intersection.data>
            </xsl:for-each>
          </ns1:intersection.data>
          <!-- <xsl:choose>
            <xsl:when test="(0.0 &lt; count(/local:pubContactRequest/local:contact/local:clientContactJobFunctionList/local:clientContactJobFunction)) and (0.0 &lt; count(/local:pubContactRequest/local:contact/local:clientContactAccountList/local:account))">
              <ns1:intersection.data>
                <ns1:intersection.data>
                  <ns1:account.id>
                    <xsl:value-of select="/local:pubContactRequest/local:contact/local:clientContactAccountList/local:account/local:id"/>
                  </ns1:account.id>
                </ns1:intersection.data>
              </ns1:intersection.data>
            </xsl:when>
            <xsl:otherwise>
              <ns1:intersection.data/>
            </xsl:otherwise>
          </xsl:choose>-->
        </ns1:instance>
      </ns1:model>
    </ns1:CreateCustomerContactsRequest>
    <!--  User Defined Templates 
   
  <xsl:template name="clientContactJobFunctionAccountIntersectionList">
    <xsl:param name="accountPosition"/>
    <xsl:param name="nAccounts"/>
    <xsl:choose>
      <xsl:when test="$accountPosition = $nAccounts">
        <xsl:for-each select="/local:pubContactRequest/local:contact/local:clientContactJobFunctionList/local:clientContactJobFunction">
          <ns1:intersection.data>
            <ns1:contact.jobfunction>
              <xsl:value-of select="."/>
            </ns1:contact.jobfunction>
            <ns1:account.id>
              <xsl:value-of select="/local:pubContactRequest/local:contact/local:clientContactAccountList/local:account[$accountPosition]/local:id"/>
            </ns1:account.id>
          </ns1:intersection.data>
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="/local:pubContactRequest/local:contact/local:clientContactJobFunctionList/local:clientContactJobFunction">
          <ns1:intersection.data>
            <ns1:contact.jobfunction>
              <xsl:value-of select="."/>
            </ns1:contact.jobfunction>
            <ns1:account.id>
              <xsl:value-of select="/local:pubContactRequest/local:contact/local:clientContactAccountList/local:account[$accountPosition]/local:id"/>
            </ns1:account.id>
          </ns1:intersection.data>
        </xsl:for-each>
        <xsl:call-template name="clientContactJobFunctionAccountIntersectionList">
          <xsl:with-param name="nAccounts" select="$nAccounts"/>
          <xsl:with-param name="accountPosition" select="$accountPosition + 1"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template> -->
  </xsl:template>
</xsl:stylesheet>