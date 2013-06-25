<!--@@Updated the code on 21-07-2010
        1)For populating the data for STATE and UPDATE_BY for each order
        2)New columns CREATED_BY is added. -->
<%@page import= "java.util.*" %>
<%@page import= "com.struckcontacts.*,java.io.InputStream, java.net.URL" %>

<%try{
    String whichPage="";
    URL myURL=application.getResource("/WEB-INF/EAIMonitorUI.properties");
    InputStream in = myURL.openStream();
    Properties p = new Properties();
    p.load(in);
    String siebelContact=p.getProperty("StuckContacts");
    
//    try{
//        int numRecords=Integer.getInteger(p.getProperty("RecordsPerPage"));   
//    }catch(Exception e){ 
//        System.err.println("Failed to read property 'RecordsPerPage' from property file.");
//    }

    /*DisplayErrorMessage displayErrorMessage;
    if(context != null){
        String pi=request.getParameter("pageIndicator");
        if(pi.equalsIgnoreCase("0")){
            displayErrorMessage = new DisplayErrorMessage();      
            errorDetails = displayErrorMessage.loadErrorDetails(contextId, context,timeduration,10);
        }
        else{
            if(pi.equalsIgnoreCase("-1")){
                errorDetails=DisplayErrorMessage.prevRecords();
            }
            else if(pi.equalsIgnoreCase("01")){
                errorDetails=DisplayErrorMessage.nextRecords();   
            }   
        }
        whichPage=DisplayErrorMessage.whichPage();
    }*/
%>

<html>
  <head>    
     
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" >
    <INPUT TYPE="HIDDEN" NAME="siebelContact" VALUE="<%=siebelContact%>">
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
       function getInterfaceURL(siebelContactId)
       {     
       //var dropdownVal=document.EAIMonitorUIForm.context.value;
       var siebelContact=document.getElementById("siebelContact").value;
       window.open(siebelContact+siebelContactId, "CRMApplication");
       return true;
       }
        
    </script>
  </head>
  <body>
  
  <%
  String referenceId = request.getParameter("referenceId");
  StruckContactsDetails struckContactsDetails = new StruckContactsDetails();
   ArrayList<StruckContactsSiebelToTOMBean> struckContactsSiebelToTOM = new ArrayList<StruckContactsSiebelToTOMBean>();

  struckContactsSiebelToTOM=struckContactsDetails.getStruckContactsSiebelToTOM(referenceId);
  %>
    <form name="EAIMonitorUIForm" method="get" action="/EAIMonitorUI/contacts/StuckContactsSiebelToTOM.jsp">
        <table width="100%" >
            
            <tr>
             <td style="font-weight:bold; color:darkBlue">
                 <center> <h2>Siebel To TOM -Stuck Contacts</h2></center>
                </td>
            </tr>
            <tr>
                <td class="bodytextbold">Reference ID :&nbsp; <input type="text" name="referenceId" size="20" class="textvalue" value='<%=(request.getParameter("referenceId")!=null)?request.getParameter("referenceId"):""%>'/>&nbsp;
                <input class="sidebutton" type="submit" name="search" value="Search"/></td>
            </tr>
        </table>
          <%
            if(struckContactsSiebelToTOM.size()>0)
            {
        %>
        <table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Interface ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Siebel Contacts</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Last Modified</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Error Message</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Originating System</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Resolving System</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>State</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Created By</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Updated By</b></th>
                       </tr>					 
            </thead>
            <tbody>
                     <%
                                
                       try{
                           for(int i=0;i<struckContactsSiebelToTOM.size();i++)
                           {
                           StruckContactsSiebelToTOMBean struckContactsSiebelToTOMBean=new StruckContactsSiebelToTOMBean();
                           struckContactsSiebelToTOMBean=(StruckContactsSiebelToTOMBean)struckContactsSiebelToTOM.get(i);
                            if(i%2==0){%>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsSiebelToTOMBean.getInterfaceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckContactsSiebelToTOMBean.getSiebelContacts() %>')" >
                                        <%= struckContactsSiebelToTOMBean.getSiebelContacts() %></a></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsSiebelToTOMBean.getLastModified()%></td>                                     
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsSiebelToTOMBean.getErrorMessage()%></td>                                     
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsSiebelToTOMBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsSiebelToTOMBean.getResolvingSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsSiebelToTOMBean.getState()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsSiebelToTOMBean.getCreatedBy()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckContactsSiebelToTOMBean.getUpdatedBy()%></td>
                                     </tr> 
                               <%} else{%>   
                                   <tr class="tbbg1">
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckContactsSiebelToTOMBean.getInterfaceId()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckContactsSiebelToTOMBean.getSiebelContacts() %>')" >
                                        <%= struckContactsSiebelToTOMBean.getSiebelContacts() %></a></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckContactsSiebelToTOMBean.getLastModified()%></td>                                       
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckContactsSiebelToTOMBean.getErrorMessage()%></td>                                      
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckContactsSiebelToTOMBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckContactsSiebelToTOMBean.getResolvingSystem()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckContactsSiebelToTOMBean.getState()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckContactsSiebelToTOMBean.getCreatedBy()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckContactsSiebelToTOMBean.getUpdatedBy()%></td>
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
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Interface ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Siebel Contacts</b></th>  
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Last Modified</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Error Message</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Originting System</b></th> 
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Resolving System</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>State</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Created By</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana"><b>Updated By</b></th>
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
<%
}catch(Exception e){%>
      <table width="100%"><tr><td class="bodytextbold" align="center">Unable to procees your query. Sorry for the inconvenience caused.</td></tr>
      <tr><%  e.getMessage();%></tr></table>  
<%    System.out.println("Exception in displayErrorMessage.jsp : "+e.getMessage());
}
%>
