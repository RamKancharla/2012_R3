<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="oramds:/apps/EAIMetaData/schemas/EAI.MSG.AM.176_AccountEvent.xsd"/>
      <rootElement name="accountEvent" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/AM/AccountPublish"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="http://inkaban3ua-eai03:7777/orabpel/ccrmasync/CSACM_AccountContactManager/EAI.MSG.CS.ACM.235_PublishAccountContactEventRequest.xsd"/>
      <rootElement name="CSPublishAccountContactRequest" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublish"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE FEB 22 15:43:47 GMT+05:30 2011]. -->
?>
<xsl:stylesheet version="1.0" xmlns:ns8="http://www.reuters.com/ns/2007/09/01/GCAP/CommonMessageTypes" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:ns1="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublish" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns3="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/FixedLengthRequest" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/DequeueAccountContact/" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:imp1="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/AM/AccountPublish" xmlns:ns2="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" xmlns:ns9="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/AccountContactPublishExtended" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns7="http://www.reuters.com/ns/2007/09/01/GCAP/CommonUserTypes" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:ns5="http://www.reuters.com/ns/2007/09/01/GCAP/NillableUserTypes" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:wsa="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns6="http://www.reuters.com/ns/2007/09/01/GCAP/NillableAccountTypes" xmlns:client="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/ACM/CSACM_AccountContactManager" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns4="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/OM/OrderManagement" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns0="http://www.reuters.com/ns/2007/09/01/GCAP/CommonAccountTypes" xmlns:hdr="http://xmlns.oracle.com/pcbpel/adapter/jms/" exclude-result-prefixes="xsl ns8 xsd imp1 ns2 ns7 ns5 ns6 ns0 ns1 ehdr xp20 ora orcl bpws hwf xref ids" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <ns1:CSPublishAccountContactRequest>
      <ns1:eaiHeader>
        <ns8:applicationId>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:applicationId"/>
        </ns8:applicationId>
        <ns8:transactionId>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:transactionId"/>
        </ns8:transactionId>
        <ns8:messageId>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:messageId"/>
        </ns8:messageId>
        <ns8:messageHistory>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:messageHistory"/>
        </ns8:messageHistory>
        <ns8:tracingId>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:tracingId"/>
        </ns8:tracingId>
        <ns8:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </ns8:timeStamp>
        <ns8:instanceId>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:instanceId"/>
        </ns8:instanceId>
        <ns8:timeToLive>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:timeToLive"/>
        </ns8:timeToLive>
        <ns8:payloadVersion>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:payloadVersion"/>
        </ns8:payloadVersion>
      </ns1:eaiHeader>
      <ns1:messageHeader>
        <ns8:messageId>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:messageId"/>
        </ns8:messageId>
        <ns8:transactionId>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:transactionId"/>
        </ns8:transactionId>
        <ns8:messageHistory>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:messageHistory"/>
        </ns8:messageHistory>
        <ns8:tracingId>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:tracingId"/>
        </ns8:tracingId>
        <ns8:messageCode>
          <xsl:value-of select="/imp1:accountEvent/imp1:actionCode"/>
        </ns8:messageCode>
        <ns8:version>
          <xsl:value-of select="/imp1:accountEvent/imp1:eaiHeader/ns8:payloadVersion"/>
        </ns8:version>
        <ns8:timeStamp>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </ns8:timeStamp>
        <ns8:userId>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns8:userId>
        <ns8:objectSystem>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns8:objectSystem>
      </ns1:messageHeader>
      <ns1:country>
        <xsl:value-of select="/imp1:accountEvent/imp1:country"/>
      </ns1:country>
      <ns1:actionCode>
        <xsl:value-of select="/imp1:accountEvent/imp1:actionCode"/>
      </ns1:actionCode>
      <ns1:AccountId>
        <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:id"/>
      </ns1:AccountId>
      <ns1:account>
        <ns1:subscriberNumber>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:subscriberNumber"/>
        </ns1:subscriberNumber>
        <ns1:subscriberName>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:name"/>
        </ns1:subscriberName>
        <ns1:irasRef>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:irasReference"/>
        </ns1:irasRef>
        <ns1:subscriberType>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:organisationTypeDesc"/>
        </ns1:subscriberType>
        <ns1:subscriberRelation>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:internalAccountFlag"/>
        </ns1:subscriberRelation>
        <ns1:ifaceInd>
          <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;DefaultIFaceIndicator&quot;,&quot;Value&quot;,&quot;N&quot;)"/>
        </ns1:ifaceInd>
        <ns1:billingFrequency>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:billingFrequency"/>
        </ns1:billingFrequency>
        <ns1:businessCategory>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:organisationTypeDesc"/>
        </ns1:businessCategory>
        <ns1:businessArea>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:businessChannel"/>
        </ns1:businessArea>
        <ns1:subFG1>
          <xsl:value-of select="concat(/imp1:accountEvent/imp1:account/imp1:primaryAccountCountry,/imp1:accountEvent/imp1:account/imp1:primaryAccountCity)"/>
        </ns1:subFG1>
        <ns1:subFG2>
          <xsl:value-of select="concat(/imp1:accountEvent/imp1:account/imp1:primaryAccountCountry,/imp1:accountEvent/imp1:account/imp1:primaryAccountCity)"/>
        </ns1:subFG2>
        <ns1:TaxCode>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:taxCode"/>
        </ns1:TaxCode>
        <ns1:subscriberPayTerms>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:payTerms"/>
        </ns1:subscriberPayTerms>
        <ns1:accountFamily>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:accountFamily"/>
        </ns1:accountFamily>
        <ns1:subMulticSubno>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:multiCenterNumber"/>
        </ns1:subMulticSubno>
        <ns1:shortName>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:subscriberShortName"/>
        </ns1:shortName>
        <ns1:cityCode>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:CityCode"/>
        </ns1:cityCode>
        <ns1:dirName>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns1:dirName>
        <ns1:enterpriseCode>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:quotronClient"/>
        </ns1:enterpriseCode>
        <ns1:VATNumber>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:vatCode"/>
        </ns1:VATNumber>
        <ns1:billingSubscriberNumber>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:alternateSubscriberNumber"/>
        </ns1:billingSubscriberNumber>
        <xsl:choose>
          <xsl:when test="((/imp1:accountEvent/imp1:actionCode = &quot;Delete&quot;) or (/imp1:accountEvent/imp1:account/imp1:accountStatus = &quot;Inactive&quot;)) and (/imp1:accountEvent/imp1:account/imp1:subAccountNumber = &quot;001&quot;)">
            <ns1:status>
              <xsl:value-of select="string(&quot;Z&quot;)"/>
            </ns1:status>
          </xsl:when>
          <xsl:otherwise>
            <ns1:status>
              <xsl:value-of select="string(&quot;&quot;)"/>
            </ns1:status>
          </xsl:otherwise>
        </xsl:choose>
        <ns1:perClient>
          <xsl:value-of select="string(&quot;&quot;)"/>
        </ns1:perClient>
        <xsl:choose>
          <xsl:when test="(/imp1:accountEvent/imp1:account/imp1:subAccountNumber = &quot;001&quot;) and (/imp1:accountEvent/imp1:account/imp1:SuspendBillingFlag = &quot;Y&quot;)">
            <ns1:billingSuspensionRequired>
              <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:SuspendBillingFlag"/>
            </ns1:billingSuspensionRequired>
          </xsl:when>
          <xsl:otherwise>
            <ns1:billingSuspensionRequired>
              <xsl:value-of select="string(&quot;&quot;)"/>
            </ns1:billingSuspensionRequired>
          </xsl:otherwise>
        </xsl:choose>
        <ns1:invoicingSummary>
          <xsl:value-of select="substring(/imp1:accountEvent/imp1:account/imp1:invoiceDescription,1.0,3.0)"/>
        </ns1:invoicingSummary>
        <xsl:choose>
          <xsl:when test="/imp1:accountEvent/imp1:account/imp1:accountStatus = &quot;Credit Hold&quot;">
            <ns1:CRHoldRequired>
              <xsl:value-of select="string(&quot;H&quot;)"/>
            </ns1:CRHoldRequired>
          </xsl:when>
          <xsl:otherwise>
            <ns1:CRHoldRequired>
              <xsl:value-of select="string(&quot;&quot;)"/>
            </ns1:CRHoldRequired>
          </xsl:otherwise>
        </xsl:choose>
        <ns1:accountDescription>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:accountDescription"/>
        </ns1:accountDescription>
        <ns1:accountNotes>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:accountNotes"/>
        </ns1:accountNotes>
        <ns1:customerReference>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:customerReference"/>
        </ns1:customerReference>
        <ns1:contractType>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:ContractType"/>
        </ns1:contractType>
        <ns1:globalSubNum>
          <xsl:value-of select="/imp1:accountEvent/imp1:account/imp1:customerReferenceNumber"/>
        </ns1:globalSubNum>
      </ns1:account>
      <xsl:for-each select="/imp1:accountEvent/imp1:accountAddress">
        <ns1:address>
          <ns1:subAccount>
            <xsl:value-of select="../imp1:account/imp1:subAccountNumber"/>
          </ns1:subAccount>
          <ns1:name1>
            <xsl:value-of select="../imp1:account/imp1:name"/>
          </ns1:name1>
          <ns1:name2>
            <xsl:value-of select="../imp1:account/imp1:subAccountName"/>
          </ns1:name2>
          <ns1:addressType>
            <xsl:value-of select="imp1:csaddressType"/>
          </ns1:addressType>
          <ns1:building>
            <xsl:value-of select="imp1:floorAddress"/>
          </ns1:building>
          <ns1:street>
            <xsl:value-of select="imp1:streetAddress"/>
          </ns1:street>
          <ns1:city>
            <xsl:value-of select="imp1:city"/>
          </ns1:city>
          <ns1:state>
            <xsl:value-of select="imp1:state"/>
          </ns1:state>
          <ns1:country>
            <xsl:value-of select="imp1:country"/>
          </ns1:country>
          <ns1:zipCode>
            <xsl:value-of select="imp1:postalCode"/>
          </ns1:zipCode>
          <ns1:GeoCode>
            <xsl:value-of select="../imp1:account/imp1:GeoCode"/>
          </ns1:GeoCode>
          <xsl:choose>
            <xsl:when test="((../imp1:actionCode = &quot;Delete&quot;) or (../imp1:account/imp1:accountStatus = &quot;Inactive&quot;)) and (../imp1:account/imp1:subAccountNumber != &quot;001&quot;)">
              <ns1:status>
                <xsl:value-of select="string(&quot;Z&quot;)"/>
              </ns1:status>
            </xsl:when>
            <xsl:otherwise>
              <ns1:status>
                <xsl:value-of select="string(&quot;&quot;)"/>
              </ns1:status>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test="../imp1:account/imp1:PerClientBillingFlag = &quot;Y&quot;">
              <ns1:perClient>
                <xsl:value-of select="../imp1:account/imp1:PerClientBillingFlag"/>
              </ns1:perClient>
            </xsl:when>
            <xsl:otherwise>
              <ns1:perClient>
                <xsl:value-of select="string(&quot;&quot;)"/>
              </ns1:perClient>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test="(../imp1:account/imp1:subAccountNumber != &quot;001&quot;) and (../imp1:account/imp1:SuspendBillingFlag = &quot;Y&quot;)">
              <ns1:billingSuspensionRequired>
                <xsl:value-of select="../imp1:account/imp1:SuspendBillingFlag"/>
              </ns1:billingSuspensionRequired>
            </xsl:when>
            <xsl:otherwise>
              <ns1:billingSuspensionRequired>
                <xsl:value-of select="string(&quot;&quot;)"/>
              </ns1:billingSuspensionRequired>
            </xsl:otherwise>
          </xsl:choose>
        </ns1:address>
      </xsl:for-each>
      <xsl:for-each select="/imp1:accountEvent/imp1:employee">
        <ns1:employee>
          <ns1:contactId>
            <xsl:value-of select="imp1:loginId"/>
          </ns1:contactId>
          <ns1:personId>
            <xsl:value-of select="string(&quot;&quot;)"/>
          </ns1:personId>
          <ns1:contactType>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;CSCodeforEmployees&quot;,&quot;Value&quot;,&quot;R&quot;)"/>
          </ns1:contactType>
          <ns1:responsibilityCode>
            <xsl:value-of select="imp1:responsiblity"/>
          </ns1:responsibilityCode>
          <ns1:firstName>
            <xsl:value-of select="imp1:activeFirstName"/>
          </ns1:firstName>
          <ns1:lastName>
            <xsl:value-of select="imp1:activeLastName"/>
          </ns1:lastName>
          <ns1:title>
            <xsl:value-of select="imp1:activeMM"/>
          </ns1:title>
          <ns1:jobTitle>
            <xsl:value-of select="imp1:activeJobTitle"/>
          </ns1:jobTitle>
          <ns1:businessTelephoneNumber>
            <xsl:value-of select="imp1:activePhone"/>
          </ns1:businessTelephoneNumber>
          <ns1:homeTelephoneNumber>
            <xsl:value-of select="imp1:activePhone"/>
          </ns1:homeTelephoneNumber>
        </ns1:employee>
      </xsl:for-each>
      <xsl:for-each select="/imp1:accountEvent/imp1:contact">
        <ns1:contact>
          <ns1:contactId>
            <xsl:value-of select="imp1:id"/>
          </ns1:contactId>
          <ns1:personId>
            <xsl:value-of select="string(&quot;&quot;)"/>
          </ns1:personId>
          <ns1:contactType>
            <xsl:value-of select="dvm:lookupValue(&quot;oramds:/apps/EAIMetaData/dvm/CRMAppReference.dvm&quot;,&quot;Reference&quot;,&quot;CSCodeforExternalContacts&quot;,&quot;Value&quot;,&quot;S&quot;)"/>
          </ns1:contactType>
          <ns1:responsibilityCode>
            <xsl:value-of select="imp1:relationshipType"/>
          </ns1:responsibilityCode>
          <ns1:firstName>
            <xsl:value-of select="imp1:firstName"/>
          </ns1:firstName>
          <ns1:lastName>
            <xsl:value-of select="imp1:lastName"/>
          </ns1:lastName>
          <ns1:title>
            <xsl:value-of select="imp1:mm"/>
          </ns1:title>
          <ns1:jobTitle>
            <xsl:value-of select="imp1:jobTitle"/>
          </ns1:jobTitle>
          <ns1:businessTelephoneNumber>
            <xsl:value-of select="imp1:workPhone"/>
          </ns1:businessTelephoneNumber>
          <ns1:homeTelephoneNumber>
            <xsl:value-of select="imp1:cellularPhone"/>
          </ns1:homeTelephoneNumber>
        </ns1:contact>
      </xsl:for-each>
      <!-- <xsl:for-each select="/imp1:accountEvent/imp1:attributeValuePair">
        <ns1:CountrySpecAttributes>
          <xsl:choose>
            <xsl:when test='(imp1:AttributeName = "Direct Debit") and (orcl:lookup-dvm("CCRMCS_CountryAttributes","Name",concat(../imp1:country,imp1:AttributeName),"Value","N") = "Y")'>
              <ns1:directDebitRequired>
                <xsl:value-of select="imp1:AttributeValue"/>
              </ns1:directDebitRequired>
            </xsl:when>
            <xsl:otherwise>
              <ns1:directDebitRequired>
                <xsl:value-of select='string("")'/>
              </ns1:directDebitRequired>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test='(imp1:AttributeName = "Ex-Postel") and (orcl:lookup-dvm("CCRMCS_CountryAttributes","Name",concat(../imp1:country,imp1:AttributeName),"Value","N") = "Y")'>
              <ns1:exPostel>
                <xsl:value-of select="imp1:AttributeValue"/>
              </ns1:exPostel>
            </xsl:when>
            <xsl:otherwise>
              <ns1:exPostel>
                <xsl:value-of select='string("")'/>
              </ns1:exPostel>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test='(imp1:AttributeName = "Tax Office") and (orcl:lookup-dvm("CCRMCS_CountryAttributes","Name",concat(../imp1:country,imp1:AttributeName),"Value","N") = "Y")'>
              <ns1:taxOffice>
                <xsl:value-of select="imp1:AttributeValue"/>
              </ns1:taxOffice>
            </xsl:when>
            <xsl:otherwise>
              <ns1:taxOffice>
                <xsl:value-of select='string("")'/>
              </ns1:taxOffice>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test='(imp1:AttributeName = "RIO Indicator") and (orcl:lookup-dvm("CCRMCS_CountryAttributes","Name",concat(../imp1:country,imp1:AttributeName),"Value","Y") = "Y")'>
              <ns1:RIOIndicator>
                <xsl:value-of select="imp1:AttributeValue"/>
              </ns1:RIOIndicator>
            </xsl:when>
            <xsl:otherwise>
              <ns1:RIOIndicator>
                <xsl:value-of select='string("")'/>
              </ns1:RIOIndicator>

            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test='(imp1:AttributeName = "R.I. Purchase Order") and (orcl:lookup-dvm("CCRMCS_CountryAttributes","Name",concat(../imp1:country,imp1:AttributeName),"Value","N") = "Y")'>
              <ns1:RIPurchaseOrder>
                <xsl:value-of select="imp1:AttributeValue"/>
              </ns1:RIPurchaseOrder>
            </xsl:when>
            <xsl:otherwise>
              <ns1:RIPurchaseOrder>
                <xsl:value-of select='string("")'/>
              </ns1:RIPurchaseOrder>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test='(imp1:AttributeName = "E.R. Purchase Order") and (orcl:lookup-dvm("CCRMCS_CountryAttributes","Name",concat(../imp1:country,imp1:AttributeName),"Value","N") = "Y")'>
              <ns1:ERPurchaseOrder>
                <xsl:value-of select="imp1:AttributeValue"/>
              </ns1:ERPurchaseOrder>
            </xsl:when>
            <xsl:otherwise>
              <ns1:ERPurchaseOrder>
                <xsl:value-of select='string("")'/>
              </ns1:ERPurchaseOrder>
            </xsl:otherwise>
          </xsl:choose>
        </ns1:CountrySpecAttributes>
      </xsl:for-each>-->
      <xsl:for-each select="/imp1:accountEvent/imp1:attributeValuePair">
        <ns1:attributevaluepair>
          <ns1:AttributeName>
            <xsl:value-of select="imp1:AttributeName"/>
          </ns1:AttributeName>
          <ns1:AttributeValue>
            <xsl:value-of select="imp1:AttributeValue"/>
          </ns1:AttributeValue>
        </ns1:attributevaluepair>
      </xsl:for-each>
    </ns1:CSPublishAccountContactRequest>
  </xsl:template>
</xsl:stylesheet>
