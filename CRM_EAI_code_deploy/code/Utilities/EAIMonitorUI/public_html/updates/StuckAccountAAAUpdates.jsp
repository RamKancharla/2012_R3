<!--@@Updated the code on 21-07-2010
        1)For populating the data for STATE and UPDATE_BY for each order
        2)New columns CREATED_BY is added. -->
<%@page import= "java.util.*" %>
<%@page import= "com.stuckcontactsupdates.*" %>

<html>
  <head>     
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" >
  </head>
  <body>
  <%
  String contextId = request.getParameter("contextId");
  StuckContactsUpdates stuckContactsUpdates = new StuckContactsUpdates();
  ArrayList<StuckContactsAAAUpdatesBean> stuckContactsAAAUpdates = new ArrayList<StuckContactsAAAUpdatesBean>();

  stuckContactsAAAUpdates=stuckContactsUpdates.getStuckContactsUpdates(contextId);
  %>
  <form name="EAIMonitorUIForm" method="get" action="/EAIMonitorUI/updates/StuckAccountAAAUpdates.jsp">
        <table width="100%" >
            
            <tr>
             <td style="font-weight:bold; color:darkBlue">
                 <center> <h2>Stuck Contact Updates - AAA</h2></center>
                </td>
            </tr>
            <tr>
                <td class="bodytextbold">Context ID :&nbsp; <input type="text" name="contextId" size="20" class="textvalue" value='<%=(request.getParameter("contextId")!=null)?request.getParameter("contextId"):""%>'/>&nbsp;
                <input class="sidebutton" type="submit" name="search" value="Search"/></td>
            </tr>
        </table>
          <%
            if(stuckContactsAAAUpdates.size()>0)
            {
        %>
        <table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Contact Row ID</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Status</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Checked Instance ID</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Releaser Instance ID</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>N S Instance ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Last Upadtes Date</b></th>
                  </tr>					 
            </thead>
            <tbody>
                     <%
                                
                       try{
                           for(int i=0;i<stuckContactsAAAUpdates.size();i++)
                           {
                           StuckContactsAAAUpdatesBean stuckAccountAAAUpdatesBean=new StuckContactsAAAUpdatesBean();
                            stuckAccountAAAUpdatesBean=(StuckContactsAAAUpdatesBean)stuckContactsAAAUpdates.get(i);
                            if(i%2==0){%>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=stuckAccountAAAUpdatesBean.getContactRowId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=stuckAccountAAAUpdatesBean.getStatus()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=stuckAccountAAAUpdatesBean.getCheckerInstanceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=stuckAccountAAAUpdatesBean.getReleaserInstanceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=stuckAccountAAAUpdatesBean.getNSInstanceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=stuckAccountAAAUpdatesBean.getLastUpdatedDate()%></td>
                                </tr> 
                               <%} else{%>   
                                   <tr class="tbbg1">
                                       <td class="bodytext tableRowBlue" align="center" ><%=stuckAccountAAAUpdatesBean.getContactRowId()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=stuckAccountAAAUpdatesBean.getStatus()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=stuckAccountAAAUpdatesBean.getCheckerInstanceId()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=stuckAccountAAAUpdatesBean.getReleaserInstanceId()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=stuckAccountAAAUpdatesBean.getNSInstanceId()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=stuckAccountAAAUpdatesBean.getLastUpdatedDate()%></td>
                                   </tr> 
                             <% } 
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
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Contact Row ID</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Status</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Checker Inatance ID</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Releaser Instance ID</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>N S Instance ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Last Updated Date</b></th>
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
        </form>
    </body>
</html>