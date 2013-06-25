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
   ArrayList<StruckOrdersSiebelToCPFGBean> struckOrdersSiebelToCPFG = new ArrayList<StruckOrdersSiebelToCPFGBean>();

  struckOrdersSiebelToCPFG=struckOrdersDetails.getStruckOrdersSiebelToCPFG(referenceId);
  %>
    <form name="EAIMonitorUIForm" method="get" action="/EAIMonitorUI/orders/StuckOrdersSiebelToCPFG.jsp">
        <table width="100%" >
            
            <tr>
             <td style="font-weight:bold; color:darkBlue">
                 <center> <h2>Siebel To CPFG -Stuck Orders</h2></center>
                </td>
            </tr>
            <tr>
                <td class="bodytextbold">Siebel Order Number :&nbsp; <input type="text" name="referenceId" size="20" class="textvalue" value='<%=(request.getParameter("referenceId")!=null)?request.getParameter("referenceId"):""%>'/>&nbsp;
                <input class="sidebutton" type="submit" name="search" value="Search"/></td>
            </tr>
        </table>
          <%
            if(struckOrdersSiebelToCPFG.size()>0)
            {
        %>
        <table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Interface ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Order Number</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Order Line ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Permissioning Status</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Siebel Contact</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>EFR ID</b></th>  
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
                           for(int i=0;i<struckOrdersSiebelToCPFG.size();i++)
                           {
                           StruckOrdersSiebelToCPFGBean struckOrdersSiebelToCPFGBean=new StruckOrdersSiebelToCPFGBean();
                           struckOrdersSiebelToCPFGBean=(StruckOrdersSiebelToCPFGBean)struckOrdersSiebelToCPFG.get(i);
                            if(i%2==0){%>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getInterfaceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getOrderNumber() %></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getOrderlineid() %></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getPermissioningstatus() %></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getSiebelContact()%></td>
                                       <!--td class="bodytext tableRowGrey" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckOrdersSiebelToCPFGBean.getEfrId() %>')" >
                                        <%= struckOrdersSiebelToCPFGBean.getEfrId() %></a></td-->
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getEfrId()%></td>     
                                        <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getErrorMessage()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getState()%></td>                                     
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getCreatedBy()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getReqfirstupdate()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getUpdatedBy()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOrdersSiebelToCPFGBean.getLastModified() %></td>
                                     </tr> 
                              <%} else{%>    
                                  <tr class="tbbg1">
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getInterfaceId()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getOrderNumber() %></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getOrderlineid() %></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getPermissioningstatus() %></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getSiebelContact()%></td>
                                       <!--td class="bodytext tableRowGrey" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckOrdersSiebelToCPFGBean.getEfrId() %>')" >
                                        <%= struckOrdersSiebelToCPFGBean.getEfrId() %></a></td-->
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getEfrId()%></td>                                       
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getErrorMessage()%></td>                                       
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getState()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getCreatedBy()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getReqfirstupdate()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getUpdatedBy()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOrdersSiebelToCPFGBean.getLastModified() %></td>
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
                            width="272"><b>Interface ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="371"><b>Order Number</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="46"><b>Order Line ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="93"><b>Permissioning Status</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="54"><b>Siebel Contact</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="35"><b>EFR ID</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="59"><b>Error Message</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="41"><b>State</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="58"><b>Created By</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="60"><b>Request First Updated</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                            width="61"><b>Updated By</b></th>
                         <th class="bodytextbold " style="font-size:14; font-family:Verdana"
                             width="58"><b>Last Modfied Date</b></th>
                       </tr>					 
            </thead>
            <tbody>
                <tr class="tableRowGrey">
                     <td align="left" style="font-family:Arial;font-size:14"
                         width="272">*No Rows Fetched</td>
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
      <table width="100%"><tr><td class="bodytextbold" align="center">Unable to procees your query. Sorry for the inconvenience caused.</td></tr>
      <tr><%  e.getMessage();%></tr></table>  
<%    System.out.println("Exception in displayErrorMessage.jsp : "+e.getMessage());
}
%>
