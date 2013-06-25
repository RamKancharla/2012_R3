<!--@@Updated the code on 21-07-2010
       1)New column CREATED_BY is added. -->
<%@page import= "java.util.*" %>
<%@page import= "com.struckoppties.*,java.io.InputStream, java.net.URL" %>

<%try{
    String whichPage="";
    URL myURL=application.getResource("/WEB-INF/EAIMonitorUI.properties");
    InputStream in = myURL.openStream();
    Properties p = new Properties();
    p.load(in);
    String siebelOppty=p.getProperty("SiebelOppty");
    %>
<html>
  <head>    
   
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" >
    <INPUT TYPE="HIDDEN" NAME="siebelOppty" VALUE="<%=siebelOppty%>">
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
       function getInterfaceURL(siebelOpptyId)
       {     
       //var dropdownVal=document.EAIMonitorUIForm.context.value;
       var siebelOppty=document.getElementById("siebelOppty").value;
       window.open(siebelOppty+siebelOpptyId, "CRMApplication");
       return true;
       }
        
    </script>
    
   <!--script language="JavaScript">
    
  function  nextPage()
  {
    document.form1.Next.value="Next"
    form1.submit()
 }
    
  function  prevPage()
 {
    document.form1.Next.value="Prev"
    form1.submit()
  }
    </script-->
  </head>
  <body>
  
  <%  
   String referenceId = request.getParameter("referenceId");
   StruckOpptiesDetails struckOpptiesDetails = new StruckOpptiesDetails();
   List<StruckOpptiesSiebelToTrustBean> struckOpptiesSiebelToTrust = new ArrayList<StruckOpptiesSiebelToTrustBean>();
   struckOpptiesSiebelToTrust=struckOpptiesDetails.getStruckOpptiesSiebelToTrust(referenceId);
   //List<StruckOpptiesSiebelToTrustBean> struckOpptiesSiebelToTrustPageList = new ArrayList<StruckOpptiesSiebelToTrustBean>();
   
  
 /*String action=request.getParameter("Next");
if(action.equals("Next"))
    {
        struckOpptiesDetails.setICurrPage(struckOpptiesDetails.getICurrPage()+1);
  
  }else if(action.equals("Prev"))
  {
  struckOpptiesDetails.setICurrPage(struckOpptiesDetails.getICurrPage()-1);
  }
  int totalRecords=struckOpptiesSiebelToTrust.size();
  int iRowsPerPage=10;
  int iTotalPages=0;
  iTotalPages=struckOpptiesSiebelToTrust.size()/iRowsPerPage;
  int iRemain=struckOpptiesSiebelToTrust.size()%iRowsPerPage; 
  if(iRemain!=0)
  {
    iTotalPages=iTotalPages+1;
  }
 int endRow=iRowsPerPage*struckOpptiesDetails.getICurrPage()+1;

    if(endRow > totalRecords )
    {
        endRow=totalRecords;
    }
    int startRow=(endRow-iRowsPerPage)+1;
    struckOpptiesSiebelToTrustPageList=struckOpptiesSiebelToTrust.subList(startRow,endRow);*/
%>
<!--form name="form1" action="StuckOpptiesSiebelToTrust.jsp"-->
<form name="EAIMonitorUIForm" method="get" action="/EAIMonitorUI/oppties/StuckOpptiesSiebelToTrust.jsp">
        <table width="100%" >
           
            <tr>
             <td style="font-weight:bold; color:darkBlue">
                 <center> <h2>Siebel To TRUST -Stuck Oppties</h2></center>
                </td>
            </tr>
            <tr>
                <td class="bodytextbold">Reference ID :&nbsp; <input type="text" name="referenceId" size="20" class="textvalue" value='<%=(request.getParameter("referenceId")!=null)?request.getParameter("referenceId"):""%>'/>&nbsp;
                <input class="sidebutton" type="submit" name="search" value="Search"/></td>
            </tr>
        </table>
           <%
            if(struckOpptiesSiebelToTrust.size()>0)
            {
        %>
        <table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Interface ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Siebel Oppty</b></th>  
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
                           for(int i=0;i<struckOpptiesSiebelToTrust.size();i++)
                           {
                           StruckOpptiesSiebelToTrustBean struckOpptiesSiebelToTrustBean=new StruckOpptiesSiebelToTrustBean();
                           struckOpptiesSiebelToTrustBean=(StruckOpptiesSiebelToTrustBean)struckOpptiesSiebelToTrust.get(i);
                            if(i%2==0){%>
                                 <tr class="tbbg1">
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesSiebelToTrustBean.getInterfaceId()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckOpptiesSiebelToTrustBean.getSiebelOppty() %>')" >
                                        <%= struckOpptiesSiebelToTrustBean.getSiebelOppty() %></a></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesSiebelToTrustBean.getLastmodified()%></td>                                      
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesSiebelToTrustBean.getErrorMessage()%></td>                                      
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesSiebelToTrustBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesSiebelToTrustBean.getResolvingSystem()%></td>
                                       <td class="bodytext tableRowGrey" align="center" ><%=struckOpptiesSiebelToTrustBean.getCreatedBy()%></td>
                                  </tr> 
                             <%}
                             else{%>
                                    <tr class="tbbg1">
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesSiebelToTrustBean.getInterfaceId()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><a  href="#" onclick="javascript:getInterfaceURL('<%= struckOpptiesSiebelToTrustBean.getSiebelOppty() %>')" >
                                        <%= struckOpptiesSiebelToTrustBean.getSiebelOppty() %></a></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesSiebelToTrustBean.getLastmodified()%></td>                                     
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesSiebelToTrustBean.getErrorMessage()%></td>                                    
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesSiebelToTrustBean.getOriginatingSystem()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesSiebelToTrustBean.getResolvingSystem()%></td>
                                       <td class="bodytext tableRowBlue" align="center" ><%=struckOpptiesSiebelToTrustBean.getCreatedBy()%></td>
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
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Interface ID</b></th>
                        <th class="bodytextbold " style="font-size:14; font-family:Verdana" ><b>Siebel Oppty</b></th>  
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
