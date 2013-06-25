

<%@page import= "java.util.*" %>
<%@page import= "com.struckoppties.*,java.io.InputStream, java.net.URL" %>

<%try{
    String whichPage="";
    URL myURL=application.getResource("/WEB-INF/EAIMonitorUI.properties");
    InputStream in = myURL.openStream();
    Properties p = new Properties();
    p.load(in);
    String trustOpptyId=p.getProperty("Trust");
    %>
<html>
  <head>    
   
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" >
    <INPUT TYPE="HIDDEN" NAME="trustOpptyId" VALUE="<%=trustOpptyId%>">
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
       function getInterfaceURL(trustOpportunityId)
       {     
       //var dropdownVal=document.EAIMonitorUIForm.context.value;
       var trustOpptyId=document.getElementById("trustOpptyId").value;
       window.open(trustOpptyId+trustOpportunityId, "TRUSTApplication");
       return true;
       }
        
    </script>
  </head>
  <body>
  
  <%
  String trustOppty = request.getParameter("trustOppty");
  StruckOpptiesDetails struckOpptiesDetails = new StruckOpptiesDetails();
  ArrayList<StruckOpptiesTrustToSiebelBean> struckOpptiesTrustToSiebel = new ArrayList<StruckOpptiesTrustToSiebelBean>();
  struckOpptiesTrustToSiebel=struckOpptiesDetails.getStruckOptiesTrustToSiebel(trustOppty);
  %>
        <form name="EAIMonitorUIForm" method="get" action="/EAIMonitorUI/oppties/StuckOpptiesTrustToSiebel.jsp"> 
            <table width="100%" >
            <tr>
             <td style="font-weight:bold; color:darkBlue">
                 <center> <h2>TRUST to Siebel -Stuck Oppties</h2></center>
                </td>
            </tr>
            <tr>
                <td class="bodytextbold">TRUST Oppty :&nbsp; <input type="text" name="trustOppty" size="20" class="textvalue" value='<%=(request.getParameter("trustOppty")!=null)?request.getParameter("trustOppty"):""%>'/>&nbsp;
                <input class="sidebutton" type="submit" name="search" value="Search"/></td>
            </tr>
        </table>
             <%
            if(struckOpptiesTrustToSiebel.size()>0)
            {
        %>
            
            <table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Process Name</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Instance ID</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>TRUST Oppty</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Modify Date</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Error Message</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Originating System</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Resolving System</b></th>
                     </tr>					 
            </thead>
            <tbody>
                     <%
                                
                       try{
                           for(int i=0;i<struckOpptiesTrustToSiebel.size();i++)
                           {
                           StruckOpptiesTrustToSiebelBean struckOpptiesTrustToSiebelBean=new StruckOpptiesTrustToSiebelBean();
                           struckOpptiesTrustToSiebelBean=(StruckOpptiesTrustToSiebelBean)struckOpptiesTrustToSiebel.get(i);
                            if(i%2==0){%>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesTrustToSiebelBean.getProcessName()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesTrustToSiebelBean.getInstanceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckOpptiesTrustToSiebelBean.getTrustoppty() %>')" >
                                        <%= struckOpptiesTrustToSiebelBean.getTrustoppty() %></a></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesTrustToSiebelBean.getModifiedDate()%></td>                                      
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesTrustToSiebelBean.getErrorMessage()%></td>                                      
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesTrustToSiebelBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesTrustToSiebelBean.getResolvingSystem()%></td>
                                     </tr> 
                                   <%}
                                   else{%>
                                   <tr class="tbbg1">
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesTrustToSiebelBean.getProcessName()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesTrustToSiebelBean.getInstanceId()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckOpptiesTrustToSiebelBean.getTrustoppty() %>')" >
                                        <%= struckOpptiesTrustToSiebelBean.getTrustoppty() %></a></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesTrustToSiebelBean.getModifiedDate()%></td>                                     
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesTrustToSiebelBean.getErrorMessage()%></td>                                      
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesTrustToSiebelBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesTrustToSiebelBean.getResolvingSystem()%></td>
                                     </tr>
                                    <%}}
                                     if(struckOpptiesTrustToSiebel.size()==0)
                                    {
                                    %>
                                 <tr class="tableRowGrey">
                                       
                                       <td align="center" >No Rows Fetched</td>
                                       <td align="center" ></td>
                                       <td align="center" ></td>
                                       <td align="center" ></td> 
                                       <td align="center" ></td>          
                                  </tr>   
                                    
                             <%  
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
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Process Name</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Instance ID</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>TRUST Oppty</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Modify Date</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Error Message</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Originating System</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Resolving System</b></th>
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
  <br>     <br>     <br> 
    </body>
</html>

<%
}catch(Exception e){%>
      <table width="100%"><tr><td class="bodytextbold" align="center">Unable to procees your query. Sorry for the inconvenience caused.</td></tr>
      <tr><%  e.getMessage();%></tr></table>  
<%    System.out.println("Exception in displayErrorMessage.jsp : "+e.getMessage());
}
%>
