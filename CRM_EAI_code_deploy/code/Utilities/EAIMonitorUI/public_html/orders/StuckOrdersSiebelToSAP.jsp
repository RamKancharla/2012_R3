<!--@@Updated the code on 21-07-2010
        1)For populating the data for EFRID,STATE and UPDATE_BY for each order
        2)New columns CREATED_BY is added. -->
<%@page import= "java.util.*" %>
<%@page import= "com.struckorders.*,java.io.InputStream, java.net.URL" %>
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
     
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" >
    <INPUT TYPE="HIDDEN" NAME="siebelOrder" VALUE="<%=siebelOrder%>">
    <INPUT TYPE="HIDDEN" NAME="whichPage" VALUE="<%=whichPage%>">
    <script language="JavaScript" type="text/javascript">
        /*function getContextDetails(){      
            if(document.EAIMonitorUIForm.context.selectedIndex == 0){
                alert('Please select any value for Context5454.');               
                document.EAIMonitorUIForm.context.focus();
            }else{ 
                document.EAIMonitorUIForm.submit();
            }
        }
        function getNext(){
            document.getElementById("pageIndicator").value=document.getElementById("pageIndicator").value+1;
            document.EAIMonitorUIForm.submit();
        }
        function getPrevious(){      
            document.getElementById("pageIndicator").value=document.getElementById("pageIndicator").value-1;
            document.EAIMonitorUIForm.submit();
        }*/
       function getInterfaceURL(siebelOrderId)
       {     
       //var dropdownVal=document.EAIMonitorUIForm.context.value;
       var siebelOrder=document.getElementById("siebelOrder").value;
       window.open(siebelOrder+siebelOrderId, "CRMApplication");
       return true;
       }
        
    </script>
  </head>
  
  
  <%
  String referenceId = request.getParameter("referenceId");
  StruckOrdersDetails struckOrdersDetails = new StruckOrdersDetails();
   ArrayList<StruckOrdersSiebelToSAPBean> struckOrdersSiebelToSAP = new ArrayList<StruckOrdersSiebelToSAPBean>();

  struckOrdersSiebelToSAP=struckOrdersDetails.getStruckOrdersSiebelToSAP(referenceId);
  %>
    <form name="EAIMonitorUIForm" method="get" action="/EAIMonitorUI/orders/StuckOrdersSiebelToSAP.jsp">
        <table width="100%" >
            
            <tr>
             <td style="font-weight:bold; color:darkBlue">
                 <center> <h2>Siebel To SAP -Stuck Orders</h2></center>
                </td>
            </tr>
            <tr>
                <td class="bodytextbold">Siebel Order Number :&nbsp; <input type="text" name="referenceId" size="20" class="textvalue" value='<%=(request.getParameter("referenceId")!=null)?request.getParameter("referenceId"):""%>'/>&nbsp;
                <input class="sidebutton" type="submit" name="search" value="Search"/></td>
            </tr>
        </table>
          <%
            if(struckOrdersSiebelToSAP.size()>0)
            {
        %>
        <table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Interface ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Order Number</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Order LINE ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Permissioning Status</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Siebel Contact</b></th> 
                 <!--       <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>EFR ID</b></th>  -->
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Error Message</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>State</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Created By</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Request First Updated</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Updated By</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Last Modified Date</b></th>
                       </tr>					 
            </thead>
            <tbody>
                     <%
                                
                       try{
                           for(int i=0;i<struckOrdersSiebelToSAP.size();i++)
                           {
                           StruckOrdersSiebelToSAPBean struckOrdersSiebelToSAPBean=new StruckOrdersSiebelToSAPBean();
                           struckOrdersSiebelToSAPBean=(StruckOrdersSiebelToSAPBean)struckOrdersSiebelToSAP.get(i);
                            if(i%2==0){%>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getInterfaceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getOrderNumber() %></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getOrderlineid() %></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getPermissioningstatus() %></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getSiebelContact()%></td>
                                       <!--td class="bodytext tableRowGrey" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckOrdersSiebelToSAPBean.getEfrId() %>')" >
                                        <%= struckOrdersSiebelToSAPBean.getEfrId() %></a></td-->
                            <!--           <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getEfrId()%></td>  -->
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getErrorMessage()%></td>                                     
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getState()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getCreatedBy()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getReqfirstupdate()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getUpdatedBy()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToSAPBean.getLastModified() %></td>
                                     </tr> 
                              <%} else{%>    
                                  <tr class="tbbg1">
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getInterfaceId()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getOrderNumber() %></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getOrderlineid() %></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getPermissioningstatus() %></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getSiebelContact()%></td>
                                       <!--td class="bodytext tableRowGrey" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckOrdersSiebelToSAPBean.getEfrId() %>')" >
                                        <%= struckOrdersSiebelToSAPBean.getEfrId() %></a></td-->
                         <!--              <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getEfrId()%></td>   -->                     
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getErrorMessage()%></td>                                      
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getState()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getCreatedBy()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getReqfirstupdate()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getUpdatedBy()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToSAPBean.getLastModified() %></td>
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
            
            <table  cellpadding="4"  class="tableborderNORow"  width="100%">
           <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="184"><b>Interface ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="75"><b>Order Number</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="98"><b>Order Line ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="146"><b>Permissioning Status</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="102"><b>Siebel Contact</b></th> 
               <!--         <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>EFR ID</b></th>   -->
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="103"><b>Error Message</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="46"><b>State</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="82"><b>Created By</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="155"><b>Request First Updated</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="86"><b>Updated By</b></th>
                         <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                             width="133"><b>Last Modified Date</b></th>
                       </tr>					 
            </thead>
            <tbody>
                <tr class="tableRowGrey">
                     <td align="left" style="font-family:Arial;font-size:14"
                         width="184">*No Rows Fetched</td>
                 </tr>   
            </tbody>
            
            </table>
            
         <%   }
            
        %>
    </body>
</form>
</html>
<%
}catch(Exception e){%>
      <table width="100%"><tr><td class="bodytextbold" align="center">Unable to procees your query. Sorry for the inconvenience caused.</td></tr>
      <tr><%  e.getMessage();%></tr></table>  
<%    System.out.println("Exception in displayErrorMessage.jsp : "+e.getMessage());
}
%>
