<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="ContactSpliter.wsdl"/>
      <rootElement name="contactEvent" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CM/ContactPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://eaidev2:7777/orabpel/ccrmasync/CSCM_ContactManager/CSCM_ContactManager?wsdl"/>
      <rootElement name="CSPublishAccountContactRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublish"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [SAT JUN 26 22:09:26 GMT+05:30 2010]. -->
?>
<xsl:stylesheet version="1.0" xmlns:ns5="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/DequeContact/" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ns0="http://www.w3.org/2001/XMLSchema" xmlns:ns7="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublish" xmlns:ns8="http://schemas.oracle.com/bpel/extension" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:imp1="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CM/ContactPublish" xmlns:ns4="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:ns9="http://www.reuters.com/ns/2007/09/01/GCAP/NillableUserTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:wsa="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/NillableAccountTypes" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns6="http://xmlns.oracle.com/CSCM_ContactManager" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" xmlns:hdr="http://xmlns.oracle.com/pcbpel/adapter/jms/" exclude-result-prefixes="xsl ns5 tns plt jca ns0 ns2 imp1 ns4 pc ns3 ns1 hdr ns7 ns8 ns9 wsa soap ns6 ehdr xp20 ora orcl bpws hwf xref ids" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns7:CSPublishAccountContactRequest>
      <ns7:eaiHeader>
        <ns5:applicationId>
          <xsl:value-of select="/imp1:contactEvent/imp1:eaiHeader/ns5:applicationId"/>
        </ns5:applicationId>
        <ns5:transactionId>
          <xsl:value-of select="/imp1:contactEvent/imp1:eaiHeader/ns5:transactionId"/>
        </ns5:transactionId>
        <ns5:messageId>
          <xsl:value-of select="/imp1:contactEvent/imp1:eaiHeader/ns5:messageId"/>
        </ns5:messageId>
        <ns5:messageHistory>
          <xsl:value-of select="/imp1:contactEvent/imp1:eaiHeader/ns5:messageHistory"/>
        </ns5:messageHistory>
        <ns5:tracingId>
          <xsl:value-of select="/imp1:contactEvent/imp1:eaiHeader/ns5:tracingId"/>
        </ns5:tracingId>
        <ns5:timeStamp>
          <xsl:value-of select="/imp1:contactEvent/imp1:eaiHeader/ns5:timeStamp"/>
        </ns5:timeStamp>
        <ns5:instanceId>
          <xsl:value-of select="/imp1:contactEvent/imp1:eaiHeader/ns5:instanceId"/>
        </ns5:instanceId>
        <ns5:timeToLive>
          <xsl:value-of select="/imp1:contactEvent/imp1:eaiHeader/ns5:timeToLive"/>
        </ns5:timeToLive>
        <ns5:payloadVersion>
          <xsl:value-of select="/imp1:contactEvent/imp1:eaiHeader/ns5:payloadVersion"/>
        </ns5:payloadVersion>
      </ns7:eaiHeader>
      <ns7:actionCode>
        <xsl:value-of select="string(&quot;Update&quot;)"/>
      </ns7:actionCode>
      <ns7:AccountId>
        <xsl:value-of select="string(&quot;&quot;)"/>
      </ns7:AccountId>
      <ns7:employee>
        <ns7:contactId>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns7:contactId>
        <ns7:responsibilityCode>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns7:responsibilityCode>
        <ns7:firstName>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns7:firstName>
        <ns7:lastName>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns7:lastName>
        <ns7:title>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns7:title>
        <ns7:jobTitle>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns7:jobTitle>
        <ns7:businessTelephoneNumber>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns7:businessTelephoneNumber>
        <ns7:homeTelephoneNumber>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns7:homeTelephoneNumber>
      </ns7:employee>
      <ns7:contact>
        <ns7:contactId>
          <xsl:value-of select="/imp1:contactEvent/imp1:contact/imp1:UUID"/>
        </ns7:contactId>
        <ns7:responsibilityCode>
          <xsl:value-of select="/imp1:contactEvent/imp1:contact/imp1:RelationshipType"/>
        </ns7:responsibilityCode>
        <ns7:firstName>
          <xsl:value-of select="/imp1:contactEvent/imp1:contact/imp1:firstName"/>
        </ns7:firstName>
        <ns7:lastName>
          <xsl:value-of select="/imp1:contactEvent/imp1:contact/imp1:lastName"/>
        </ns7:lastName>
        <ns7:title>
          <xsl:value-of select="/imp1:contactEvent/imp1:contact/imp1:MM"/>
        </ns7:title>
        <ns7:jobTitle>
          <xsl:value-of select="/imp1:contactEvent/imp1:contact/imp1:JobTitle"/>
        </ns7:jobTitle>
        <ns7:businessTelephoneNumber>
          <xsl:value-of select="/imp1:contactEvent/imp1:contact/imp1:telNumber"/>
        </ns7:businessTelephoneNumber>
        <ns7:homeTelephoneNumber>
          <xsl:value-of select="/imp1:contactEvent/imp1:contact/imp1:CellularPhone"/>
        </ns7:homeTelephoneNumber>
      </ns7:contact>
    </ns7:CSPublishAccountContactRequest>
  </xsl:template>
</xsl:stylesheet>
