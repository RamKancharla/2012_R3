<!--@@Updated the code on 21-07-2010
       1)New column CREATED_BY is added. -->
<%@page import= "java.util.*" %>
<%@page import= "com.struckaccounts.*,java.io.InputStream, java.net.URL" %>

<%try{
    String whichPage="";
    URL myURL=application.getResource("/WEB-INF/EAIMonitorUI.properties");
    InputStream in = myURL.openStream();
    Properties p = new Properties();
    p.load(in);
    String siebelAccount=p.getProperty("SiebelAccounts");
    %>
<html>
  <head>    
     <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" >
    <INPUT TYPE="HIDDEN" NAME="siebelAccount" VALUE="<%=siebelAccount%>">
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
       function getInterfaceURL(siebelAccountId)
       {     
       //var dropdownVal=document.EAIMonitorUIForm.context.value;
       var siebelAccount=document.getElementById("siebelAccount").value;
       window.open(siebelAccount+siebelAccountId, "CRMApplication");
       return true;
       }
        
    </script>
  </head>
  <body>
  
  <%
  String referenceId = request.getParameter("referenceId");
  StruckAccountsDetails struckAccountsDetails = new StruckAccountsDetails();
  ArrayList<StruckAccountsSiebelToSAPBean> struckAccountsSiebelToSAP = new ArrayList<StruckAccountsSiebelToSAPBean>();
  struckAccountsSiebelToSAP=struckAccountsDetails.getStruckAccountsSiebelToSAP(referenceId);
   %>
    <form name="EAIMonitorUIForm" method="get" action="/EAIMonitorUI/accounts/StuckAccountsSiebelToSAP.jsp">
        <table width="100%" >
            
            <tr>
             <td style="font-weight:bold; color:darkBlue">
                 <center> <h2>Siebel to SAP -Stuck Accounts</h2></center>
                </td>
            </tr>
            <tr>
                <td class="bodytextbold">Reference ID :&nbsp; <input type="text" name="referenceId" size="20" class="textvalue" value='<%=(request.getParameter("referenceId")!=null)?request.getParameter("referenceId"):""%>'/>&nbsp;
                <input class="sidebutton" type="submit" name="search" value="Search"/></td>
            </tr>
        </table>
        
          <%
            if(struckAccountsSiebelToSAP.size()>0)
            {
        %>
        <table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Interface ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Siebel Accounts</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Last Modified</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Error Message</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Originating System</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Resolving System</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Created By</b></th> 
                       </tr>					 
            </thead>
            <tbody>
                     <%
                                
                       try{
                            
                           for(int i=0;i<struckAccountsSiebelToSAP.size();i++)
                           {
                           StruckAccountsSiebelToSAPBean struckAccountsSiebelToSAPBean=new StruckAccountsSiebelToSAPBean();
                           struckAccountsSiebelToSAPBean=(StruckAccountsSiebelToSAPBean)struckAccountsSiebelToSAP.get(i);
                            if(i%2==0){%>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsSiebelToSAPBean.getInterfaceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckAccountsSiebelToSAPBean.getSiebelAccounts() %>')" >
                                        <%= struckAccountsSiebelToSAPBean.getSiebelAccounts() %></a></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsSiebelToSAPBean.getLastModified()%></td>                                      
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsSiebelToSAPBean.getErrorMessage()%></td>   
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsSiebelToSAPBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsSiebelToSAPBean.getResolvingSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckAccountsSiebelToSAPBean.getCreatedBy()%></td>
                                  </tr> 
                             <%} else { %>     
                                  <tr class="tbbg1">
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckAccountsSiebelToSAPBean.getInterfaceId()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckAccountsSiebelToSAPBean.getSiebelAccounts() %>')" >
                                        <%= struckAccountsSiebelToSAPBean.getSiebelAccounts() %></a></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckAccountsSiebelToSAPBean.getLastModified()%></td>                                     
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckAccountsSiebelToSAPBean.getErrorMessage()%></td>                                       
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckAccountsSiebelToSAPBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckAccountsSiebelToSAPBean.getResolvingSystem()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckAccountsSiebelToSAPBean.getCreatedBy()%></td>
                                  </tr>  
                             <%}  
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
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Interface ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Is Available</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Siebel Accounts</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Last Modified</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Error Message</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Originating System</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Resolving System</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Created By</b></th>
                       </tr>					 
            </thead>
            <tbody>
                <tr class="tableRowGrey">
                     <td align="left" style="font-family:Arial;font-size:12">*No Rows Fetched</td>
                 </tr>   
            </tbody>
            </table>
         <%   }
            
        %>
             <br>     <br>     <br>     <br> 
    </body>
</html>

<%
}catch(Exception e){%>
      <table width="100%"><tr><td class="bodytextbold" align="center">Unable to procees your query. Sorry for the inconvenience caused.</td></tr>
      <tr><%  e.getMessage();%></tr></table>  
<%    System.out.println("Exception in displayErrorMessage.jsp : "+e.getMessage());
}
%>
