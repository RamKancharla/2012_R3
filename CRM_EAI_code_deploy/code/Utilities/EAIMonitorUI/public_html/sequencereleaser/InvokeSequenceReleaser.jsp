<%@page import= "java.util.*" %>
<%@page import= "com.tr.eai.sequencereleaser.*" %>



 <!--Redirectning the page for authentication --> 
<%!SequenceReleaser sequenceReleaser = new SequenceReleaser(); %>
<% 
    String requestURI = request.getRequestURI();
    StringBuffer requestURL = request.getRequestURL();
    String tabType = request.getParameter("tabType");
    String btn_name = request.getParameter("btn_name");
  
    %>

 <!--Load the context and context type values --> 
 <%
         
       
        ArrayList context = new ArrayList();
        ArrayList contextTYPE = new ArrayList();
        ArrayList ContextDetails = new ArrayList();
              
        try{                  
                ContextDetails = sequenceReleaser.loadContextDetails();
                context = (ArrayList)ContextDetails.get(0);
                contextTYPE = (ArrayList)ContextDetails.get(1);      
  
     
    } catch (Exception e) {
      e.printStackTrace();
   } 
  
%>
<!-- Logic for Complete button -->
<%
	
    if(request.getParameter("btn_name") != null && request.getParameter("btn_name").equals("Nudge")){
        
        String selCorrelation_Id = request.getParameter("correlationid");
        
        //added code for NFT 15781 bug fix
        selCorrelation_Id = selCorrelation_Id.substring(0,selCorrelation_Id.length()-1);
               
        if(selCorrelation_Id != null && !selCorrelation_Id.equals("")){
            
            sequenceReleaser.updateStatus(selCorrelation_Id);			
        }
    }

%>

<!-- Logic for getting the resulted values basing on selection criteria -->
<%
    String selCONTEXT_ID = request.getParameter("contextid");
    String selCONTEXT_TYPE = request.getParameter("contextTYPE");
    String selCONTEXT = request.getParameter("context");
    String selCONTEXT_Id = "%"+selCONTEXT_ID+"%";
     
       ArrayList correclationIdResults = new ArrayList();
      
        try{
                 
            correclationIdResults = sequenceReleaser.loadSearchResults(selCONTEXT_Id,selCONTEXT_TYPE, selCONTEXT);      
                           
        }   
         catch (Exception e) {
         e.printStackTrace();
         System.exit(1);
    } 
  
%>


<html>
<head>

<title>Oracle BPEL Console v10.1.3.3.1 - Release Sequencer</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />

<script language="JavaScript" type="text/javascript">

//method for complete the held process

function callComplete(){
 var count=0;
 var corrlength=0;
var status="";
 
    if(!document.form1.correlationid.length && document.form1.correlationid.checked==true){
     count=1;
	 corrlength = document.form1.correlationid.value.length;
     status=document.form1.correlationid.value.substring(corrlength-1,corrlength);
    }else{
    for(i=0;i<document.form1.correlationid.length;i++){
	if(document.form1.correlationid[i].checked==true){
		count=count+1;
                
               //added code for NFT 15781 bug fix
                corrlength = document.form1.correlationid[i].value.length;
                status=document.form1.correlationid[i].value.substring(corrlength-1,corrlength);
               //end for NFT 15781 bug fix
               
          }//if
                
	}//for
        
	}//else
  if(count<1){
	  
    window.alert("Please select a Record ");
	return;
  }
  //added code for NFT 15781 bug fix
  if(status == "N")
  {
    if(confirm("Start this instance ? ")){
	document.form1.btn_name.value = "Nudge";
	
	document.form1.submit();
  }
  }
  if(status == "S")
  {
    if(confirm("Complete this instance ? ")){
	document.form1.btn_name.value = "Nudge";
	
        document.form1.submit();
  }
}
  }
  

// method to provide scroll and fix the header

function fix1(){
	
                test1.obj = headerTR1;
                test1.obj.style.top = test1.scrollTop + "px";
            }
var resultSize=0;

function scroll(){
	
  <%if(correclationIdResults.size()>10){%> 

 document.getElementById("test1").style.height = "280px";
                <%}%> 
}

//method to show the popup when context id is not entered.Added for bug fix.

function checkContextId(){

   var contextId = document.form1.contextid.value;
  
   if(contextId == ""){
        window.alert("Please enter Context Id.");
         return;
    }
    else{
        document.form1.submit();
        
    }
   
}

</script>
</head>


<body onload="scroll()">
<form name="form1" method="get" action="InvokeSequenceReleaser.jsp">
<table width="90%" >     
     <tbody>
            <tr>
             <td style="font-weight:bold; color:darkBlue">
                 <center> <h2>EAI Sequence Releaser</h2></center>
             </td>
            </tr>   
            </tbody>
    </table> 
<br>

 <input type="hidden" name="btn_name" value="nudge11">    
     <br>
    <table>
        <tr>
          <td class="bodytextbold" align='right'>Context:&nbsp; <select name="context">
             <OPTION value="Select" class="textvalue">Select</option>
                   <%
                        String selected = ""; 
                        String contextname = "";
                          for(int j=0; j<context.size();j++)
			  {
			 	contextname = (String) context.get(j);
                                if(contextname.equals(selCONTEXT)){
                                    selected = "selected"; %>
                            <option class="textvalue" value=<%=contextname%> <%=selected%> > <%=contextname%></option>											  		
                                 <% }else{
                                    
                            %>      
                            <option class="textvalue" value=<%=contextname%> > <%=contextname%></option>
                            <%
                             } }
                            %>
                        </select>
                    </td>
                    
                    <td class="bodytextbold" align="right">Context Type:&nbsp; <select name="contextTYPE">
                        <OPTION value="Select" class="textvalue">Select</option>
                        <%
                     
                             String contextType = "";
                             String selectedVal = ""; 
                              for(int j=0; j<contextTYPE.size();j++)
                              {
                                    
                                    contextType = (String) contextTYPE.get(j);
                                     if(contextType.equals(selCONTEXT_TYPE)){
                                        selectedVal = "selected"; %>
                            <option class="textvalue" value=<%=contextType%> <%=selectedVal%> > <%=contextType%></option> 												  	
                                 <% }else{%>
                            
                            <option class="textvalue" value=<%=contextType%> > <%=contextType%></option>
                            <%
                             } }
                            %>
                     
                    </select>
                  </td>
                </tr>
                <tr>
                    <td>
                        <table>
                             <%
                                if(selCONTEXT_ID ==null){
                                    selCONTEXT_ID = "";
                                }
                            %>
                            <tr>
                                <td class="bodytextbold" align="right">Context ID:&nbsp; <input type="text" name="contextid" size="20" value="<%=selCONTEXT_ID%>" class="textvalue"/></td>
                                <td class="bodytextbold" align="right"></td>
                                <td class="bodytextbold" align="right"></td>
                              </tr>  
                            <tr>
							<!--chnaged the button type from 'submit' to 'button' for bug fix -->
                                <td align="center" colspan="4"><input class="sidebutton" type="button" name="Search" value="Search" onClick="checkContextId();"/></td>
                            </tr>

                        </table>
                      </td>
                </tr>
                
                <tr>
                
                    <td class="bodytext" colspan="3">
                        <br><hr size="1"></hr>
                    </td>
              </tr>
    </table>
        

 <%if(correclationIdResults.size()>= 0){%> 
  <div id="test1" onscroll="fix1();" class="reportView litebluetableborder">
<table  cellpadding="4"  class="litebluetableborder"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold "  ><b>Select</b></th> 
                        <th class="bodytextbold "  ><b>SequenceId</b></th>  
                        <th class="bodytextbold "  ><b>ContextID</b></th> 
                        <th class="bodytextbold " ><b>ContextType</b></th> 
                        <th class="bodytextbold " ><b>Process</b></th> 
                        <th class="bodytextbold " ><b>Status</b></th> 
                        <th class="bodytextbold " ><b>Last Updated Date</b></th> 
						<th class="bodytextbold " ><b>CheckerInstanceId</b></th> 
						<th class="bodytextbold " ><b>ReleaserInstacneId</b></th> 
						<th class="bodytextbold " ><b>NSInstanceId</b></th> 
                    </tr>					 
            </thead>
			<tbody>
          
       
					<%
                                try{
                               
                                    if(correclationIdResults != null){
                                    int resultSize = correclationIdResults.size();
                                    if(resultSize > 0){
                                    SequenceReleaserBean relSequenceReleaseBean = new SequenceReleaserBean();
                                        for(int i=0; i< resultSize; i++){
                                            relSequenceReleaseBean = (SequenceReleaserBean)correclationIdResults.get(i);
							String disableFlag="disabled";

											  
											if(i==0)
											{
												disableFlag="";
											}



                                            
                                            %>
                                            <tr class="tbbg1">
                                                <td class="bodytext tableRowGrey" align="center">
                                                <input type="radio" name="correlationid" value='<%=relSequenceReleaseBean.getCorrelationId()%><%=relSequenceReleaseBean.getStatus()%>' <%=disableFlag%> >
						</td>
						<td class="bodytext tableRowGrey" align="center" ><%=relSequenceReleaseBean.getSequenceId()%></td>
                                                <td class="bodytext tableRowGrey" align="center"><%=relSequenceReleaseBean.getRecontextId()%></td>
                                                <td class="bodytext tableRowGrey" align="center" ><%=relSequenceReleaseBean.getMessageType()%></td>
                                                <td class="bodytext tableRowGrey" align="center" ><%=relSequenceReleaseBean.getProcess()%></td>
                                                <td class="bodytext tableRowGrey" align="center" ><%=relSequenceReleaseBean.getStatus()%></td>
                                                <td class="bodytext tableRowGrey" align="center" ><%=relSequenceReleaseBean.getLastUpdatedDate()%></td>
												<td class="bodytext tableRowGrey" align="center" ><%=relSequenceReleaseBean.getCheckerInstanceId()==null?" ":relSequenceReleaseBean.getCheckerInstanceId()%></td>
												<td class="bodytext tableRowGrey" align="center" ><%=relSequenceReleaseBean.getReleaserInstanceId()==null?" ":relSequenceReleaseBean.getReleaserInstanceId()%></td>
												<td class="bodytext tableRowGrey" align="center" ><%=relSequenceReleaseBean.getNSInstacneId()==null? " ":relSequenceReleaseBean.getNSInstacneId()%></td>
                                            </tr> 
                                           
                                            <%
                                    }
                                    }else{%>
                                    
                                     <tr class="tbbg1">
                                         <td align="left" style="font-family:Arial;font-size:15">*No Rows Fetched</td>
                                     </tr>
                                
                                <%}}
                                }catch(Exception e){
                                }
                           %>
                        	  
                    </tbody></table></div><br>
                   <center>
                   <table>
                        <tr>
                            <td>
                                <%if(correclationIdResults.size()>0){%> 
                                     <input name="Nudge1" type="button" value="Nudge" class="sidebutton" onClick="callComplete()"/ >
                                    <%}else{ %>
                                     <input name="Nudge1" type="button" value="Nudge" class="sidebutton" disabled />
                                     <%}%>
                                    
                            </td>
                      </tr>
                  </table>
                </center>
       <%}%>         
  
</form>
</body>
</html>
