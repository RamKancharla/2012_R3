<!--@@Updated the code on 21-07-2010
        1)For populating the data for STATE and UPDATE_BY for each order
        2)New columns CREATED_BY is added. -->
<%@page import= "java.util.*" %>
<%@page import= "com.mqserver.*" %>

<html>
  <head>     
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" >
  </head>
  
  <body>
  <%
  MQServerStatus mQServerStatus = new MQServerStatus();
  ArrayList<MQServerStatusBean> mQServerStatusBean = new ArrayList<MQServerStatusBean>();

  mQServerStatusBean=mQServerStatus.getMQServerStatus();
  %>
  <form name="EAIMonitorUIForm" method="get" action="/EAIMonitorUI/updates/StuckContactsAAAUpdates.jsp">
        <table width="100%" >
            
            <tr>
             <td style="font-weight:bold; color:darkBlue">
                 <center> <h2>MQ Server Status</h2></center>
                </td>
            </tr>
        </table>
          <%
            if(mQServerStatusBean.size()>0)
            {
        %>
        <table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>System</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Status</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Last Updated Date</b></th>
                  </tr>					 
            </thead>
            <tbody>
                     <%
                                
                       try{
                           for(int i=0;i<mQServerStatusBean.size();i++)
                           {
                           MQServerStatusBean mQServerStatusBean1=new MQServerStatusBean();
                           mQServerStatusBean1=(MQServerStatusBean)mQServerStatusBean.get(i);
                            if(i%2==0){%>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=mQServerStatusBean1.getSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=mQServerStatusBean1.getStatus()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=mQServerStatusBean1.getFormatedLastUpdatedDate()%></td>
                                </tr> 
                               <%} else{%>   
                                   <tr class="tbbg1">
                                       <td class="bodytext tableRowBlue" align="center" ><%=mQServerStatusBean1.getSystem()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=mQServerStatusBean1.getStatus()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=mQServerStatusBean1.getFormatedLastUpdatedDate()%></td>
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
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>System</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Status</b></th> 
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
    </body>
</html>