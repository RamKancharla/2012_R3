<!--@@Updated the code on 21-07-2010
        1)For populating the data for EFRID,STATE and UPDATE_BY for each order
        2)New columns CREATED_BY is added. -->



<%@ page import="java.util.*"%>
<%@ page import="com.struckorders.*,java.io.InputStream, java.net.URL"%>
<%try{
    String whichPage="";
    URL myURL=application.getResource("/WEB-INF/EAIMonitorUI.properties");
    InputStream in = myURL.openStream();
    Properties p = new Properties();
    p.load(in);
    String siebelOrder=p.getProperty("StuckOrders");
    %>
<html>
      <head>
            <meta http-equiv="Content-Type"
                  content="text/html; charset=iso-8859-1"></meta>
            <link href="../css/Gpdmsstyles.css" rel="stylesheet"
                  type="text/css"/>
            <meta http-equiv="refresh" content="600"></meta>
      </head>
      <input type="HIDDEN" name="siebelOrder" value="<%=siebelOrder%>"></input>
      <input type="HIDDEN" name="whichPage" value="<%=whichPage%>"></input>
      <script language="JavaScript" type="text/javascript">
            function getInterfaceURL(siebelOrderId) {

                var siebelOrder = document.getElementById("siebelOrder").value;
                window.open(siebelOrder + siebelOrderId, "CRMApplication");
                return true;
            }
      </script>
      <body>
            <%
  String referenceId = request.getParameter("referenceId");
  StruckOrdersDetails struckOrdersDetails = new StruckOrdersDetails();
   ArrayList<StruckOrdersSiebelToELMBean> struckOrdersSiebelToELM = new ArrayList<StruckOrdersSiebelToELMBean>();

  struckOrdersSiebelToELM=struckOrdersDetails.getStruckOrdersSiebelToELM(referenceId);
  %>
             
            <form name="EAIMonitorUIForm" method="get"
                  action="/EAIMonitorUI/orders/StuckOrdersSiebelToELM.jsp">
                  <table width="100%">
                        <tr>
                              <td style="font-weight:bold; color:darkBlue">
                                    <center>
                                          <h2>Siebel To ELM -Stuck Orders</h2>
                                    </center>
                              </td>
                        </tr>
                         
                        <tr>
                              <td class="bodytextbold">
                                    Siebel Order Number :&nbsp; 
                                    <input type="text" name="referenceId"
                                           size="20" class="textvalue"
                                           value='<%=(request.getParameter("referenceId")!=null)?request.getParameter("referenceId"):""%>'/>&nbsp; 
                                    <input class="sidebutton" type="submit"
                                           name="search" value="Search"/>
                              </td>
                        </tr>
                  </table>
                  <%
            if(struckOrdersSiebelToELM.size()>0)
            {
        %>
                  <table cellpadding="4" class="litebluetableborder"
                         width="100%">
                        <thead>
                              <tr id="headerTR1" class="tableHeader ">
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Interface ID</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Order Number</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Error Message</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>State</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Created By</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Updated By</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Last Modified Date</b>
                                    </th>
                              </tr>
                        </thead>
                         
                        <tbody>
                              <%
                                
                       try{
                           for(int i=0;i<struckOrdersSiebelToELM.size();i++)
                           {
                           StruckOrdersSiebelToELMBean struckOrdersSiebelToELMBean=new StruckOrdersSiebelToELMBean();
                           struckOrdersSiebelToELMBean=(StruckOrdersSiebelToELMBean)struckOrdersSiebelToELM.get(i);
                            if(i%2==0){%>
                              <tr class="tbbg1">
                                    <td class="bodytext tableRowGrey"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getInterfaceId()%>
                                    </td>
                                    <td class="bodytext tableRowGrey"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getOrderNumber() %>
                                    </td>
                                    <td class="bodytext tableRowGrey"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getErrorMessage()%>
                                    </td>
                                    <td class="bodytext tableRowGrey"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getState()%>
                                    </td>
                                    <td class="bodytext tableRowGrey"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getCreatedBy()%>
                                    </td>
                                    <td class="bodytext tableRowGrey"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getUpdatedBy()%>
                                    </td>
                                    <td class="bodytext tableRowGrey"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getLastModified() %>
                                    </td>
                              </tr>
                              <%} else{%>
                              <tr class="tbbg1">
                                    <td class="bodytext tableRowBlue"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getInterfaceId()%>
                                    </td>
                                    <td class="bodytext tableRowBlue"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getOrderNumber() %>
                                    </td>
                                    <td class="bodytext tableRowBlue"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getErrorMessage()%>
                                    </td>
                                    <td class="bodytext tableRowBlue"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getState()%>
                                    </td>
                                    <td class="bodytext tableRowBlue"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getCreatedBy()%>
                                    </td>
                                    <td class="bodytext tableRowBlue"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getUpdatedBy()%>
                                    </td>
                                    <td class="bodytext tableRowBlue"
                                        align="center">
                                          <%=struckOrdersSiebelToELMBean.getLastModified() %>
                                    </td>
                              </tr>
                              <%  }
                             }
                                }catch(Exception e){
                                }
                           %>
                        </tbody>
                  </table>
                  <%  }else
            {
            %>
                  <table cellpadding="4" class="tableborderNORow" width="100%">
                        <thead>
                              <tr id="headerTR1" class="tableHeader ">
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Interface ID</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Order Number</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Error Message</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>State</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Created By</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Updated By</b>
                                    </th>
                                    <th class="bodytextbold "
                                        style="font-size:14; font-family:Verdana">
                                          <b>Last Modified Date</b>
                                    </th>
                              </tr>
                        </thead>
                         
                        <tbody>
                              <tr class="tableRowGrey">
                                    <td align="left"
                                        style="font-family:Arial;font-size:12">*No
                                                                               Rows
                                                                               Fetched</td>
                              </tr>
                        </tbody>
                  </table>
                  <%   }
            
        %>
            </form>
      </body>
</html>
<%
}catch(Exception e){%>
<table width="100%">
      <tr>
            <td class="bodytextbold" align="center">Unable to procees your
                                                    query. Sorry for the
                                                    inconvenience caused.</td>
      </tr>
       
      <tr>
            <%  e.getMessage();%>
      </tr>
</table>
<%    System.out.println("Exception in displayErrorMessage.jsp : "+e.getMessage());
}
%>