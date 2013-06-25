



<%@ page contentType="text/html;charset=iso-8859-1"
         import="java.util.*, com.dsperr.*, java.io.InputStream, java.net.URL,java.lang.String"%>
<%try{
    String noDataMessage = "";
    DisplayErrorMessageVO displayErrorMessageVO=null;
    String contextId = request.getParameter("contextId");
    String context = request.getParameter("Interface"); 
    String timeduration = request.getParameter("timeduration"); 
    String norecords = request.getParameter("norecords");
    String currPage = (String) session.getAttribute("currPage");
    URL myURL=application.getResource("/WEB-INF/EAIMonitorUI.properties");
    InputStream in = myURL.openStream();
    Properties p = new Properties();
    p.load(in);
    String trustURL=p.getProperty("trust");
    String siebeloppty=p.getProperty("siebeloppty");
    String siebelacct=p.getProperty("siebelacct");
    String SAccCRMtoTRUST=p.getProperty("StuckAccCRMtoTRUST");
    String SAccTRUSTtoCRM=p.getProperty("StuckAccTRUSTtoCRM");
    String SContactTRUSTtoCRM=p.getProperty("StuckContactTRUSTtoCRM");
    String SContactCRMtoTRUST=p.getProperty("StuckContactCRMtoTRUST");
    String SOpptyCRMtoTRUST=p.getProperty("StuckOpptyCRMtoTRUST");
    String SOpptyTRUSTtoCRM=p.getProperty("StuckOpptyTRUSTtoCRM");
    String StuckContacts=p.getProperty("StuckContacts");

%>
<html>
 <head>
  <title>Display Error Details</title>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></meta>
  <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css"/>
  <meta http-equiv="refresh" content="600"></meta>
 </head>
 <input type="HIDDEN" name="siebelacct" value="<%=siebelacct%>"></input>
 <input type="HIDDEN" name="siebeloppty" value="<%=siebeloppty%>"></input>
 <input type="HIDDEN" name="StuckContacts" value="<%=StuckContacts%>"></input>
 <input type="HIDDEN" name="trustURL" value="<%=trustURL%>"></input>
 <input type="HIDDEN" name="currPage" value="<%=currPage%>"></input>
 <script language="JavaScript" type="text/javascript">
        function getContextDetails(){      
                document.getElementById("queryType").value="records";
                document.displayErrorDetailsForm.submit();
            }
               function getCSV(){      
            if(document.displayErrorDetailsForm.context.selectedIndex == 0){
                //request.setAttribute("queryType","csv");
                alert('Please select any value for Context5454.');               
                document.displayErrorDetailsForm.context.focus();
            }else{ 
                document.getElementById("queryType").value="csv";
                document.displayErrorDetailsForm.submit();
            }
        }
        function getNext(){
            document.getElementById("queryType").value="next";
            document.getElementById("pageIndicator").value=document.getElementById("pageIndicator").value+1;
            document.displayErrorDetailsForm.submit();
        }
        function getPrevious(){      
            document.getElementById("queryType").value="prev";
            document.getElementById("pageIndicator").value=document.getElementById("pageIndicator").value-1;
            document.displayErrorDetailsForm.submit();
        }
       function getInterfaceURL(vContextId,vApplicationName)
       {      
            var dropdownVal=document.displayErrorDetailsForm.context.value;            
            var siebelacct=document.getElementById("siebelacct").value;
            var siebeloppty=document.getElementById("siebeloppty").value;
            var StuckContacts=document.getElementById("StuckContacts").value;
            var trust=document.getElementById("trustURL").value;
       if(vApplicationName=="Siebel")
       { 
            if(dropdownVal=="crmToTrustAcc")
           {    
               window.open(siebelacct+vContextId, "CRMApplication");
                return false; 
           }
           else if(dropdownVal=="crmToTrustOpty")
           { 
                window.open(siebeloppty+vContextId, "CRMApplication");
           return false; 
           }
           else if(dropdownVal=="crmToTrustContact")
           { 
                window.open(StuckContacts+vContextId, "CRMApplication");
           return false; 
           }
          return true;  
       }
               
        else if(vApplicationName=="TRUST")
       {  
            window.open(trust+vContextId, "TRUSTApplication");
	
            return false; 
       }
       return true;
       }
   
    </script>
 <body><form name="displayErrorDetailsForm" method="post"
             action="displayerrorservlet">
   <input type="HIDDEN" name="Interface"
          value='<%=request.getParameter("Interface")%>'></input>
   <input type="HIDDEN" name="context"
          value='<%=request.getParameter("Interface")%>'></input>
   <input type="HIDDEN" name="pageIndicator" value="0"></input>
   <input type="HIDDEN" id="queryType" name="queryType" value="records"></input>
   <%
            if((request.getParameter("Interface").equalsIgnoreCase(SAccCRMtoTRUST)))
            {
            %>
   <table width="100%">
    <tr>
     <td style="font-weight:bold; color:darkBlue">
      <center>
       <h2>Siebel to Trust -Accounts</h2>
      </center>
     </td>
    </tr>
   </table>
   <%
        }
        %>
   <%
            if((request.getParameter("Interface").equalsIgnoreCase(SContactTRUSTtoCRM)))
            {
            %>
   <table width="100%">
    <tr>
     <td style="font-weight:bold; color:darkBlue">
      <center>
       <h2>Trust to Siebel - Contacts</h2>
      </center>
     </td>
    </tr>
   </table>
   <%
        }
        %>  
        
    <%
            if((request.getParameter("Interface").equalsIgnoreCase(SContactCRMtoTRUST)))
            {
            %>
   <table width="100%">
    <tr>
     <td style="font-weight:bold; color:darkBlue">
      <center>
       <h2>Siebel to Trust - Contacts</h2>
      </center>
     </td>
    </tr>
   </table>
   <%
        }
        %>          
   <%
            if((request.getParameter("Interface").equalsIgnoreCase(SAccTRUSTtoCRM)))
            {
            %>
   <table width="100%">
    <tr>
     <td style="font-weight:bold; color:darkBlue">
      <center>
       <h2>Trust to Siebel - Accounts</h2>
      </center>
     </td>
    </tr>
   </table>
   <%
        }
        %>
   <%
            if((request.getParameter("Interface").equalsIgnoreCase(SOpptyCRMtoTRUST)))
            {
            %>
   <table width="100%">
    <tr>
     <td style="font-weight:bold; color:darkBlue">
      <center>
       <h2>Siebel to Trust - Opportunities</h2>
      </center>
     </td>
    </tr>
   </table>
   <%
        }
        %>
   <%
            if((request.getParameter("Interface").equalsIgnoreCase(SOpptyTRUSTtoCRM)))
            {
            %>
   <table width="100%">
    <tr>
     <td style="font-weight:bold; color:darkBlue">
      <center>
       <h2>Trust to Siebel - Opportunities</h2>
      </center>
     </td>
    </tr>
   </table>
   <%
        }
        %>
   <hr></hr>
   <br></br>
   <br></br>
   <table>
    <tr>
     <!--select name="context">
                    <option value="0" class="textvalue" selected="selected">Select</option>
		   <option value="0" class="textvalue">Select</option>
                   <option value="crmToTrustAcc" class="textvalue" ${param.context == 'crmToTrustAcc' ? 'selected' : ''}>CRM -> TRUST Account Publish</option>
                   <option value="crmToTrustOpty" class="textvalue" ${param.context == 'crmToTrustOpty' ? 'selected' : ''}>CRM -> TRUST Opportunity Publish</option>
                   <option value="trustToCrmAcc" class="textvalue" ${param.context == 'trustToCrmAcc' ? 'selected' : ''}>TRUST -> CRM Account Publish</option>
                   <option value="trustToCrmOpty" class="textvalue" ${param.context == 'trustToCrmOpty' ? 'selected' : ''}>TRUST -> CRM Opportunity Publish</option>
                </select>
                </td>-->
     <td class="bodytextbold">
      &nbsp;&nbsp;&nbsp; Time Duration :&nbsp;&nbsp;
      <select name="timeduration">
       <option value="1" class="textvalue"
               ${param.timeduration == '1' ? 'selected' : ''}>24 hours</option>
       <option value="7" class="textvalue"
               ${param.timeduration == '7' ? 'selected' : ''}>7 Days</option>
       <option value="15" class="textvalue"
               ${param.timeduration == '15' ? 'selected' : ''}>15 Days</option>
       <option value="30" class="textvalue"
               ${param.timeduration == '30' ? 'selected' : ''}>30 Days</option>
      </select>
     </td>
     <td class="bodytextbold">
      &nbsp;&nbsp;&nbsp; Records per page :&nbsp;&nbsp;
      <select name="norecords">
       <option value="10" class="textvalue"
               ${param.norecords == '10' ? 'selected' : ''}>10</option>
       <option value="20" class="textvalue"
               ${param.norecords == '20' ? 'selected' : ''}>20</option>
       <option value="50" class="textvalue"
               ${param.norecords == '50' ? 'selected' : ''}>50</option>
       <option value="100" class="textvalue"
               ${param.norecords == '100' ? 'selected' : ''}>100</option>
      </select>
     </td>
     <td class="bodytextbold">
      &nbsp;&nbsp;&nbsp; Record ID :&nbsp;&nbsp;&nbsp;
      <input type="text" name="contextId" size="20" class="textvalue"
             value='<%=(request.getParameter("contextId")!=null)?request.getParameter("contextId"):""%>'/>
      &nbsp;&nbsp;&nbsp;
     </td>
     <td align="center">
      &nbsp;&nbsp;&nbsp;
      <input class="sidebutton" type="button" name="getRecords"
             value="getRecords" onclick="getContextDetails();"/>
      &nbsp;&nbsp;&nbsp;
     </td>
     <td align="center">
      &nbsp;&nbsp;&nbsp;
      <input class="sidebutton" type="button" name="getCSVFile"
             value="getCSVFile" onclick="getCSV();"/>
      &nbsp;&nbsp;&nbsp;
     </td>
    </tr>
   </table>
   <br/>
   <%  ArrayList errorDetails=(ArrayList)request.getAttribute("errorDetails");
                if(errorDetails != null){ 
                if(errorDetails.size() !=0){                      
        %>
   <table id="errorDetails" cellpadding="4" class="litebluetableborder"
          width="100%">
    <thead>
     <tr id="headerTR1" class="tableHeader ">
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>RecordID</b>
      </th>
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>Interface</b>
      </th>
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>Error Message</b>
      </th>
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>Originating System</b>
      </th>
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>Resolving System</b>
      </th>
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>Last Updated DateTime</b>
      </th>
     </tr>
    </thead>
    <tbody>
     <% for(int i=0; i<errorDetails.size(); i++){
                    displayErrorMessageVO = (DisplayErrorMessageVO)errorDetails.get(i); 
                %>
     <%   if(i%2==0){
                %>
     <tr class="tbbg1">
      <td class="bodytext tableRowGrey" align="center" width="300">
       <a href="#"
          onclick="javascript:getInterfaceURL('<%= displayErrorMessageVO.getContextId() %>','<%= displayErrorMessageVO.getOriginatingSystem() %>')">
        <%= displayErrorMessageVO.getContextId() %>
       </a>
      </td>
      <td class="bodytext tableRowGrey" align="center">
       <%= displayErrorMessageVO.getContext() %>
      </td>
      <td class="bodytext tableRowGrey" align="center">
       <%= displayErrorMessageVO.getErrorMessage() %>
      </td>
      <td class="bodytext tableRowGrey" align="center">
       <%= displayErrorMessageVO.getOriginatingSystem() %>
      </td>
      <td class="bodytext tableRowGrey" align="center">
       <%= displayErrorMessageVO.getResolvingSystem() %>
      </td>
      <td class="bodytext tableRowGrey" align="center">
       <%= displayErrorMessageVO.getLastModifiedDate() %>
       <input type="hidden" name="organisingSystem"
              value='<%= displayErrorMessageVO.getOriginatingSystem() %>'/>
       <input type="hidden" name="recordIdValue"
              value='<%= displayErrorMessageVO.getContextId() %>'/>
      </td>
     </tr>
     <%} else 
                    {%>
     <tr class="tbbg1">
      <td class="bodytext tableRowBlue" align="center" width="300">
       <a href="#"
          onclick="javascript:getInterfaceURL('<%= displayErrorMessageVO.getContextId() %>','<%= displayErrorMessageVO.getOriginatingSystem() %>')">
        <%= displayErrorMessageVO.getContextId() %>
       </a>
      </td>
      <td class="bodytext tableRowBlue" align="center">
       <%= displayErrorMessageVO.getContext() %>
      </td>
      <td class="bodytext tableRowBlue" align="center">
       <%= displayErrorMessageVO.getErrorMessage() %>
      </td>
      <td class="bodytext tableRowBlue" align="center">
       <%= displayErrorMessageVO.getOriginatingSystem() %>
      </td>
      <td class="bodytext tableRowBlue" align="center">
       <%= displayErrorMessageVO.getResolvingSystem() %>
      </td>
      <td class="bodytext tableRowBlue" align="center">
       <%= displayErrorMessageVO.getLastModifiedDate() %>
       <input type="hidden" name="organisingSystem"
              value='<%= displayErrorMessageVO.getOriginatingSystem() %>'/>
       <input type="hidden" name="recordIdValue"
              value='<%= displayErrorMessageVO.getContextId() %>'/>
      </td>
     </tr>
     <%} } %>
    </tbody>
   </table>
   <% 
                }
                else 
                { %>
   <table cellpadding="4" class="tableborderNORow" width="100%">
    <thead>
     <tr id="headerTR1" class="tableHeader ">
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>RecordID</b>
      </th>
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>Interface</b>
      </th>
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>Error Message</b>
      </th>
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>Originating System</b>
      </th>
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>Resolving System</b>
      </th>
      <th class="bodytextbold" style="font-size:14; font-family:Verdana">
       <b>Last Updated DateTime</b>
      </th>
     </tr>
    </thead>
    <tbody>
     <tr class="tableRowGrey">
      <td align="left" style="font-family:Arial;font-size:12">*No Rows Fetched</td>
     </tr>
    </tbody>
   </table>
   <%   }
        }         
        %>
   <%  ArrayList errorDetailsValue=(ArrayList)request.getAttribute("errorDetails");
   
   
                if(errorDetailsValue != null){ 
                if(errorDetailsValue.size() != 0){                      
       
   Boolean EOR = (Boolean) session.getAttribute("EOR");
   Boolean EOL = (Boolean) session.getAttribute("EOL");
   
    %>
    
   <table cellpadding="4" class="litebluetableborder" width="100%">
    <td align="center" width="40%">
     <%   if(EOL) { %>
     <input class="sidebutton" type="button" name="search" value="Previous"
            onclick="getPrevious();" disabled="disabled"/>
     <% } else { %>
     <input class="sidebutton" type="button" name="search" value="Previous"
            onclick="getPrevious();"/>
     <% } %>
    </td>
    <td align="center" width="20%">
     <p>
      Current Page :<%= currPage %> 
     </p>
    </td>
    <td align="center" width="40%">
     <%   if(EOR) { %>
     <input class="sidebutton" type="button" name="search" value="Next"
            onclick="getNext();" disabled="disabled"/>
     <% } else { %>
     <input class="sidebutton" type="button" name="search" value="Next"
            onclick="getNext();"/>
     <% }
     
      session.setAttribute("EOL", Boolean.FALSE);
       session.setAttribute("EOR", Boolean.FALSE);
       
       %>
    </td>
   </table>
   <%} } %>
  </form></body>
</html>
<%
}catch(Exception e){%>
<table width="100%">
 <tr>
  <td class="bodytextbold" align="center">Unable to procees your query. Sorry
                                          for the inconvenience caused.</td>
 </tr>
 <tr>
  <%  e.getMessage();%>
 </tr>
</table>
<%    System.out.println("Exception in displayErrorMessage.jsp : "+e.getMessage());
}
%>