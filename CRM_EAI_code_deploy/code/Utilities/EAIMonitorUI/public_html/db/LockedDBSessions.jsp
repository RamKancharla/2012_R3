<%@page import= "java.util.*" %>
<%@page import= "com.lockingsessions.*" %>


<html>
  <head>    
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" > 
  </head>
  <body>
  
  <%
  LockingSessionMonitor lockingSessionMonitor = new LockingSessionMonitor();
   ArrayList<LockingSessionsBean> lockingSessions = new ArrayList<LockingSessionsBean>();

  lockingSessions=lockingSessionMonitor.getLockingSessions();
  %>
        <table width="100%" >
           
            <tr>
             <td style="font-weight:bold; color:darkBlue">
                 <center> <h2>Database Locking Session Details</h2></center>
                </td>
            </tr>
        </table>
         <%
            if(lockingSessions.size()>0)
            {
        %>
        <table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Instance ID</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>SID</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Username</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>SPID</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Type</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Mode</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Object</b></th> 
                    </tr>					 
            </thead>
            <tbody>
                     <%
                                
                       try{
                           for(int i=0;i<lockingSessions.size();i++)
                           {
                           LockingSessionsBean lockingSessionBean=new LockingSessionsBean();
                           lockingSessionBean=(LockingSessionsBean)lockingSessions.get(i);
                            if(i%2==0){%>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=lockingSessionBean.getInstanceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=lockingSessionBean.getSid()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=lockingSessionBean.getUserName()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=lockingSessionBean.getSpid()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=lockingSessionBean.getType()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=lockingSessionBean.getMode()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=lockingSessionBean.getObject()%></td>
                                  </tr> 
                            <%} else{%>      
                                <tr class="tbbg1">
                                       <td class="bodytext tableRowBlue" align="center" ><%=lockingSessionBean.getInstanceId()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=lockingSessionBean.getSid()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=lockingSessionBean.getUserName()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=lockingSessionBean.getSpid()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=lockingSessionBean.getType()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=lockingSessionBean.getMode()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=lockingSessionBean.getObject()%></td>
                                  </tr>    
                             <% 
                             }
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
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Instance ID</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>SID</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Username</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>SPID</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Type</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Mode</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Object</b></th> 
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
    </body>
</html>