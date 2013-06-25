<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@page import= "java.util.*" %>
<%@page import= "com.tr.eai.console.search.*,com.tr.eai.console.bean.*,com.tr.eai.console.reinitiate.*, java.io.InputStream, java.net.URL" %>
<%  
   int startRow=0;
	 int totalRecords = 0;
	 int currentPage = 1;
	 int totalPages = 1;
   ArrayList<CompositeInstanceBean> compositeInstanceBean = new ArrayList<CompositeInstanceBean>(); 
   String title = request.getParameter("instanceTitle");
   SearchInstance searchInstance=new SearchInstance();  
  String searchClickedValue = request.getParameter("searchvalue");
  if("SearchClicked".equals(searchClickedValue))
  {  
   totalRecords=searchInstance.getCountofInstances(title);
   totalPages=(totalRecords<=0)?1: ((int)(Math.ceil((double)totalRecords/25)));
   compositeInstanceBean=searchInstance.searchInstance(title,startRow); 
   session.setAttribute("compositeInstanceBean", compositeInstanceBean);   
  }else if("PageClicked".equals(searchClickedValue))
  {
    totalPages=Integer.parseInt(request.getParameter("totalPages").toString());
    currentPage=Integer.parseInt(request.getParameter("currentPage").toString());
    compositeInstanceBean=searchInstance.searchInstance(title,Integer.parseInt(request.getParameter("startRow").toString())); 
    session.setAttribute("compositeInstanceBean", compositeInstanceBean); 
   }
  
  String reinitiateClickedValue = request.getParameter("reinitiatevalue");
  if("ReinitiateClicked".equals(reinitiateClickedValue))
  { 
   totalRecords=searchInstance.getCountofInstances(title);
   totalPages=(totalRecords<=0)?1: ((int)(Math.ceil((double)totalRecords/25)));
   currentPage=1;
   startRow=0;	 
   String[] values=request.getParameterValues("reInitiateChkBoxSelected"); 
   ReInitiateCompositeInstance reInitiateCompositeInstance = new ReInitiateCompositeInstance(); 
   reInitiateCompositeInstance.reinitiateFaultedInstance((ArrayList<CompositeInstanceBean>)session.getAttribute("compositeInstanceBean"),values);
   compositeInstanceBean=searchInstance.searchInstance(title,startRow); 
   session.setAttribute("compositeInstanceBean", compositeInstanceBean); 
  }
  %>
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="refresh" content="600" >
    
    <title>EAIConsole</title>
      <script language="JavaScript" type="text/javascript">
      
      
      
      function onClick_viewPayload(id,ecid,compositeDN)
        {     
        var URL="GetPayload.jsp?instanceId="+id+"&ecid="+ecid+"&compositeDN="+compositeDN;
        window.open(URL,"_blank")
       
 		   return false;
	}
      
       function onSearch_Button()
        {     
        
			var title=document.EAIConsoleForm.instanceTitle.value;
			var iChars = "_!@#$%^&*()=[]\\\',./{}|\"<>?~`";

			for (var i = 0; i < title.length; i++) {
				if (iChars.indexOf(title.charAt(i)) != -1) {
					alert ("Entered special characters are not allowed.\nPlease remove them and try again.");
					return false;
				}
			}
			if((title=="")||(title.length < 5)){

			  alert("For faster search result enter exact reference id or atleast 5 char.")
		   }
		   else{       
			document.EAIConsoleForm.searchvalue.value="SearchClicked";
			document.EAIConsoleForm.reinitiatevalue.value="";     
			return true;
		   }
		   return false; 
		}
        
        function onclick_ReinitiateButton()
        { 
         var totalPages='<%=totalPages%>'
         var currentPage='<%=currentPage%>'   
			document.EAIConsoleForm.searchvalue.value="";
			var length=document.EAIConsoleForm.reInitiateChkBox.length;
			
			var chkSelected="false";
			if(String(length) == "undefined"){
				if(document.EAIConsoleForm.reInitiateChkBox.checked)			
						chkSelected="true";
			}else{
				for(var i=0;i<length;i++)
				{			
					if(document.EAIConsoleForm.reInitiateChkBox[i].checked)			
						chkSelected="true";
				}	
			}			
			if(chkSelected=="false")
			{
				alert("Please select the instance to re-initiate")
			}else
			{
          
        document.EAIConsoleForm.reinitiatevalue.value="ReinitiateClicked";	
				document.EAIConsoleForm.submit();   
			}
        }
		
		function onselect_reinitiate(chkbox,row)
		{
		
		if(String(document.EAIConsoleForm.reInitiateChkBoxSelected.length) != "undefined"){
			if(chkbox.checked==true)
			{	
				document.EAIConsoleForm.reInitiateChkBoxSelected[row].value=row;		 
			}else
			{
				document.EAIConsoleForm.reInitiateChkBoxSelected[row].value="";		 
			}		
		}else{
				if(chkbox.checked==true)
			{	
				document.EAIConsoleForm.reInitiateChkBoxSelected.value=row;		 
			}else
			{
				document.EAIConsoleForm.reInitiateChkBoxSelected.value="";		 
			}
		}
		
		}
    
    function onNext()
		{
		
    var totalPages='<%=totalPages%>'
    var currentPage='<%=currentPage%>'     
     if(parseInt(currentPage) < parseInt(totalPages)){  
          currentPage++
          var startRow = (25*currentPage)-25;         
          document.EAIConsoleForm.searchvalue.value="PageClicked";         
           document.EAIConsoleForm.totalPages.value=totalPages
           document.EAIConsoleForm.currentPage.value=currentPage
           document.EAIConsoleForm.startRow.value = startRow;          
           return true;
      }
      return false;
		}
    
    
     function onPrevious()
		{
		
    var totalPages='<%=totalPages%>'
    var currentPage='<%=currentPage%>'    
      if(parseInt(currentPage) > 1 ){  
          currentPage--
          var startRow = (25*currentPage)-25;        
          document.EAIConsoleForm.searchvalue.value="PageClicked";          
           document.EAIConsoleForm.totalPages.value=totalPages
           document.EAIConsoleForm.currentPage.value=currentPage
           document.EAIConsoleForm.startRow.value = startRow;           
         return true;
      }
     
      return false;
       
		}
        
      </script>
      
  </head>
    
  <body>
 
  
  
   <!--%
  String ReinitiateClickedValue = request.getParameter("reinitiatevalue");
   if(!(ReinitiateClickedValue).equalsIgnoreCase(null))
  {
  String title = request.getParameter("instanceTitle");
  ReInitiateCompositeInstance reInitiateCompositeInstance = new ReInitiateCompositeInstance(); 
  reInitiateCompositeInstance.reinitiateFaultedInstance(title); 
  }
  %-->
  
   <form name="EAIConsoleForm" action="">
   <input type="hidden" name="totalPages" value="<%=totalPages%>"></input>
   <input type="hidden" name="currentPage" value="<%=currentPage%>"></input>
   <input type="hidden" name="startRow" value=""></input>  
   
   <table width="100%" >     
     <tbody>
            <tr>
             <td style="font-weight:bold; color:darkBlue">
                 <center> <h2>EAI Process Console</h2></center>
             </td>
            </tr>   
            </tbody>
    </table> 
<br>

    <table width="100%" >            
   <tr>
    <td class="bodytextbold">Instance Title &nbsp; <input type="text" name="instanceTitle" size="20" class="textfields"  value='<%=(request.getParameter("instanceTitle")!=null)?request.getParameter("instanceTitle"):""%>'/>&nbsp;
    <input class="sidebutton" type="submit" name="search" value="Search" onclick="return onSearch_Button();"/>
	<input type="hidden" name="searchvalue" value=""></input></td>
	
   </tr>
   </table>
   <br>
   
     <%      
       if(searchInstance.getInstanceTableVisible())
      {
   %>
   <table width="100%">            
    <tr>    
                           <td align="left"
                            width="85%">
                             <%      
                                 if(searchInstance.getReinitiateVisible())
                                {
                                %>
                                    <input class="sidebutton" type="button" name="reInitiate" value="ReInitiate" onclick="onclick_ReinitiateButton();" />
                                    <input type="hidden" name="reinitiatevalue" value=""></input>
                                 <%  
                                 } else
                                 {
                                %>
                                
                                
                                <%} %>
                           </td>  
                           
                           <td  align="right"
                            width="7%">
                           <input class="sidebutton" type="submit" name="previous" value="Previous" onclick="return onPrevious();"/>
                           </td>  
                           <td  align="center"
                            width="7%">
                               <div id="pgHeader"/>
                           </td> 
                             <td  align="right"
                            width="3%">                           
                           <input class="sidebutton" type="submit" name="next" value="Next" onclick="return onNext();"/>
                           </td> 
                    </tr>
                    
   </table>
   <table width="100%" cellpadding="2" class="litebluetableborder">  
    <thead>
   <tr class="tableHeader">    
                           <th align="center" class="bodytextbold" style="font-family:Verdana;font-size:14px"
                            width="78">                           
                                Reinitiate                           
                           </th>  
                            <th align="center" class="bodytextbold"
                                style="font-family:Verdana;font-size:14px"
                                width="138">                               
                                    Composite Name                                
                            </th>
                            <th align="center" class="bodytextbold" style="font-family:Verdana;font-size:14px"
                            width="92">                           
                                Instance Id                           
                           </th>  
                           <th align="center" class="bodytextbold" style="font-family:Verdana;font-size:14px"
                            width="97">                            
                               CIKEY                           
                           </th>
                           <th align="center" class="bodytextbold" style="font-family:Verdana;font-size:14px"
                            width="97">                            
                               State                           
                           </th>    
                           <th align="center" class="bodytextbold" style="font-family:Verdana;font-size:14px"
                            width="135">                            
                                Title                          
                           </th>  
                           <th align="center" class="bodytextbold" style="font-family:Verdana;font-size:14px"
                            width="87">                           
                                Modify Date                           
                           </th> 
                             <th align="center" class="bodytextbold" style="font-family:Verdana;font-size:14px"
                            width="95">
                           Get Payload
                           </th> 
                    </tr>
                    
   
    </thead>
   
  <tbody>
  
  
  
  
    
                     <%    

                     if(compositeInstanceBean.size()>0 )
                    {
                               
                       try{
                           for(int i=0;i<compositeInstanceBean.size();i++)
                           {
                           CompositeInstanceBean compositeInstanceBeanValues=new CompositeInstanceBean();
                           compositeInstanceBeanValues=(CompositeInstanceBean)compositeInstanceBean.get(i);
                            String ecid=compositeInstanceBeanValues.getEcid();
                            String id=compositeInstanceBeanValues.getId();
                            String compositeDN=compositeInstanceBeanValues.getCompositeDN();
                      %>
                      <%   if(i%2==0){
                %>
                     <tr class="tbbg1">
                     
                            <td class="bodytext tableRowGrey" align="center"
                                width="78"> 
								<input type="hidden" name="reInitiateChkBoxSelected" value="">
                                <%      
                                 if((compositeInstanceBeanValues.isFaulted()))
                                {
                                %>
                                    <input type="checkbox" name="reInitiateChkBox" onclick="onselect_reinitiate(this,<%=i%>);">
                                 <%  
                                 }else
								{%>
																<%}%>								
                                <%      
                                 if((compositeInstanceBeanValues.isFaulted()))
                                {
                                %>
                                  &nbsp;  
                                 <%  
                                 }                               
                                %>                                                                   
                               </td>
                            <td class="bodytext tableRowGrey" align="left"
                                width="138">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getCompositeName()%>
                                </font>
                            </td>
                             <td class="bodytext tableRowGrey" align="left"
                                width="92">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getId()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="left"
                                width="97">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getCikey()%>
                                </font>
                            </td>
                             <td class="bodytext tableRowGrey" align="left"
                                width="97">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getState()%>
                                </font>
                            </td>
                             <td class="bodytext tableRowGrey" align="left"
                                width="135">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getTitle()%>
                                </font>                               
                            </td>  
                             <td class="bodytext tableRowGrey" align="left"
                                width="87">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getModifyDate()%>
                                </font>                               
                            </td>
                             <td class="bodytext tableRowGrey" align="left"
                                width="95">
                                <font face="Garamond" size="3">                                
                                <a href="" onclick="return onClick_viewPayload('<%=id%>','<%=ecid%>','<%=compositeDN%>');">GetPayload</a>
                                </font>                               
                            </td>
                            </tr>
                            <%} else 
                    {%>
                    
                     <tr class="tbbg1">
                     
                            <td class="bodytext tableRowBlue" align="left" style="border-left : 1px solid White;border-top : 1px solid White;padding : 5px 5px 5px 5px"
                                width="78"> 
								<input type="hidden" name="reInitiateChkBoxSelected" value="">
                                <%      
                                 if((compositeInstanceBeanValues.isFaulted()))
                                {
                                %>
                                    <input type="checkbox" name="reInitiateChkBox" onclick="onselect_reinitiate(this,<%=i%>);">
                                 <%  
                                 }else
								{%>
																<%}%>								
                                <%      
                                 if((compositeInstanceBeanValues.isFaulted()))
                                {
                                %>
                                  &nbsp;  
                                 <%  
                                 }                               
                                %>                                                                   
                               </td>
                            <td class="bodytext tableRowBlue" align="left" style="border-left : 1px solid White;border-top : 1px solid White;padding : 5px 5px 5px 5px"
                                width="138">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getCompositeName()%>
                                </font>
                            </td>
                             <td class="bodytext tableRowBlue" align="left" style="border-left : 1px solid White;border-top : 1px solid White;padding : 5px 5px 5px 5px"
                                width="92">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getId()%>
                                </font>
                            </td>
                             <td class="bodytext tableRowBlue" align="left" style="border-left : 1px solid White;border-top : 1px solid White;padding : 5px 5px 5px 5px"
                                width="92">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getCikey()%>
                                </font>
                            </td>
                             <td class="bodytext tableRowBlue" align="left" style="border-left : 1px solid White;border-top : 1px solid White;padding : 5px 5px 5px 5px"
                                width="97">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getState()%>
                                </font>
                            </td>
                             <td class="bodytext tableRowBlue" align="left" style="border-left : 1px solid White;border-top : 1px solid White;padding : 5px 5px 5px 5px"
                                width="135">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getTitle()%>
                                </font>                               
                            </td>  
                             <td class="bodytext tableRowBlue" align="left" style="border-left : 1px solid White;border-top : 1px solid White;padding : 5px 5px 5px 5px"
                                width="87">
                                <font face="Garamond" size="3">
                                    <%=compositeInstanceBeanValues.getModifyDate()%>
                                </font>                               
                            </td>
                             <td class="bodytext tableRowBlue" align="left" style="border-left : 1px solid White;border-top : 1px solid White;padding : 5px 5px 5px 5px"
                                width="95">
                                <font face="Garamond" size="3">                                
                                <a href="" onclick="return onClick_viewPayload('<%=id%>','<%=ecid%>','<%=compositeDN%>');">GetPayload</a>
                                </font>                               
                            </td>
                            </tr>
                             
                             <%  
                             }
                             } // End of For
                                } // End of try
                               catch(Exception e){
                             } } %>
   </tbody>
   </table>
    <%      
       }else
{

 %>
            
            <table  cellpadding="4"  class="tableborderNORow"  width="100%">
            <thead >
            
                  <tr  id="headerTR1" class="tableHeader ">
                        <th class="bodytextbold " style="font-family:Verdana;font-size:14px" ><b>Reinitiate</b></th>
                        <th class="bodytextbold " style="font-family:Verdana;font-size:14px"><b>Composite Name</b></th> 
                        <th class="bodytextbold " style="font-family:Verdana;font-size:14px"><b>Instance Id</b></th>
                        <th class="bodytextbold " style="font-family:Verdana;font-size:14px"><b>CIKEY</b></th>
                        <th class="bodytextbold " style="font-family:Verdana;font-size:14px"><b>State</b></th>  
                        <th class="bodytextbold " style="font-family:Verdana;font-size:14px"><b>Title</b></th> 
                        <th class="bodytextbold " style="font-family:Verdana;font-size:14px"><b>Modify Date</b></th> 
                        <th class="bodytextbold " style="font-family:Verdana;font-size:14px"><b>Payload</b></th> 
                  </tr>					 
            </thead>
            <tbody>
				<%if ("SearchClicked".equals(searchClickedValue)){%>
					 <tr class="tableRowGrey">
						<td align="left" style="font-family:arial;font-size:12px">No records found for the instance title: <B><%=request.getParameter("instanceTitle")%></B></td>
					 </tr>
   				<%}else
					{%>
					<tr class="tableRowGrey">
						<td align="left" style="font-family:arial;font-size:12px">*No Rows Fetched</td>
					</tr>
				<%}%>
            </tbody>
            
            </table>            
         <%   }
            
        %>


   <br>
   
    <script type="text/javascript">
		<%
    
    out.println("document.getElementById('pgHeader').innerHTML ='"+currentPage+" of "+totalPages+"'");
    if (currentPage == totalPages && currentPage == 1 && totalPages == 1)
					{
					 out.println("document.getElementById('previous').disabled = true");  
           out.println("document.getElementById('next').disabled = true");  

					} else if (currentPage == totalPages && currentPage > 1 ) { 
						out.println("document.getElementById('previous').disabled = false");  
						out.println("document.getElementById('next').disabled = true");  
					
					} else if (currentPage == 1 && totalPages > currentPage) { 
						out.println("document.getElementById('previous').disabled = true");  
						out.println("document.getElementById('next').disabled = false");  
					
					} else {
						out.println("document.getElementById('previous').disabled = false");  
						out.println("document.getElementById('next').disabled = false");  
					}
    %>
		</script>
  </form>  
 
  </body>
</html>
