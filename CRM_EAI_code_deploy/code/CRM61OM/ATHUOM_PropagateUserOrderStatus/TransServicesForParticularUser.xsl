<?xml version = '1.0' encoding = 'UTF-8'?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="../../../../../../../Documents%20and%20Settings/Surya.Gannavarapu/Desktop/AthenaConnvectivityTests/XMLTests/ATHUOM_PropagateUserOrderStatus/bpel/EAI.MSG.CS.UOM.275_UserOrderResponse.xsd"/>
      <rootElement name="UserOrderResponse" namespace="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/UOM/UserOrderManagement"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../../../../../../../Documents%20and%20Settings/Surya.Gannavarapu/Desktop/AthenaConnvectivityTests/XMLTests/ATHUOM_PropagateUserOrderStatus/bpel/EAI.SRV.EXT.ATH.062_PropagateUserOrderStatusService.wsdl"/>
      <rootElement name="billingInfoResponse" namespace="http://xml.netbeans.org/schema/BillingNotifyMessage"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 10.1.3.3.0(build 070615.0525) AT [TUE NOV 03 21:55:21 GMT 2009]. -->
?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:tns1="http://xml.netbeans.org/schema/BillingNotifyMessage" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsdLocal="http://www.reuters.com/ns/2007/09/01/GCAP/EAI/CS/UOM/UserOrderManagement" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://service.coresuitews.sea.athena.thomsonreuters.com/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:gcap-sa="http://www.reuters.com/ns/2007/09/01/GCAP/SchemaAnnotations" exclude-result-prefixes="xsl xsd xsdLocal gcap-sa wsu tns1 soap tns bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
  <xsl:template match="/">
    <tns1:billingInfoResponse>
     
        <tns1:messageBody>
          <tns1:tranDetail>
            <xsl:for-each select="/xsdLocal:UserOrderResponse/xsdLocal:userOrderLineItem">
              <xsl:if test="xsdLocal:userUniqueLineId = ../xsdLocal:eaiHeader/xsdLocal:messageId">
                <tns1:service>
                  <tns1:productCode>
                    <xsl:value-of select="xsdLocal:userPLI"/>
                  </tns1:productCode>
                  <tns1:refItemNumber>
                    <xsl:value-of select="xsdLocal:userItemNumber"/>
                  </tns1:refItemNumber>
                </tns1:service>
              </xsl:if>
            </xsl:for-each>
          </tns1:tranDetail>
        </tns1:messageBody>
      
    </tns1:billingInfoResponse>
  </xsl:template>
</xsl:stylesheet>
