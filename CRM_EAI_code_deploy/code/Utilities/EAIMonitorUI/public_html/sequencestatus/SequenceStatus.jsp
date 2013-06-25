<%@page contentType="text/html;charset=iso-8859-1" import= "com.strucksequence.*, java.util.*, java.io.InputStream, java.net.URL, java.lang.String"%>

  <%
	
	int startRow;
	int endRow;
	int totalRecords = 0;
	int currentpage = 1;
	int totalPages = 1;  

  
  StruckSequenceDetails struckSequenceDetails = new StruckSequenceDetails();
  ArrayList<StruckSequenceBean> struckSequence = new ArrayList<StruckSequenceBean>();

  if(request.getParameter("relSeqAction") != null && request.getParameter("relSeqAction").equals("LOAD")){

		String selInterface = request.getParameter("selInterface"); 
		System.out.println("***selInterface :" +selInterface);

		String selFlow = request.getParameter("selectedFlow");
		System.out.println("***selFlow :" +selFlow);

		int selTimeDuration = Integer.parseInt(request.getParameter("selTimeDuration"));
		System.out.println("***selTimeDuration :" +selTimeDuration);

		int selNoOfRec = Integer.parseInt(request.getParameter("selNoOfRec"));
		System.out.println("***selNoOfRec :" +selNoOfRec);

		String contextId = request.getParameter("selContextId"); 
		System.out.println("***contextId :" +contextId);

		int startRowVal = Integer.parseInt(request.getParameter("startRow"));
		System.out.println("***startRowVal :" +startRowVal);

		int endRowVal = Integer.parseInt(request.getParameter("endRow")); 
		System.out.println("***endRowVal :" +endRowVal);
		
		currentpage = Integer.parseInt(request.getParameter("currPage")); 
		System.out.println("***currentpage :" +currentpage);


		// Get the total record count
		totalRecords = struckSequenceDetails.getStruckSequenceCount(selInterface, selFlow, selTimeDuration, contextId);
		totalPages = (totalRecords<=0)?1: ((int)(Math.ceil((double)totalRecords/selNoOfRec)));

		// Get the struck records
		struckSequence=struckSequenceDetails.getStruckSequence(selInterface, selFlow, selTimeDuration, startRowVal, endRowVal, contextId);
    }


  if(request.getParameter("relSeqAction") != null && request.getParameter("relSeqAction").equals("NUDGE")){

		String relSeqAction = request.getParameter("relSeqAction");
		String correlationIds = request.getParameter("correlationIds"); 

		System.out.println("***correlationIds :" +correlationIds);

		StringTokenizer parser = new StringTokenizer(correlationIds , "|");
		while (parser.hasMoreTokens()) {
			 String selCorrelation_Id = parser.nextToken();
			 struckSequenceDetails.updateStatus(selCorrelation_Id);
		}
    }

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></meta>
        <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="refresh" content="600"></meta>
    </head>

<script src="../script/progressBar.js" type="text/javascript"></script>

<script language="JavaScript" type="text/javascript">

// Function to show the struck records
function showResults() {

	var selInterface = document.SequenceStatusForm.Interface.value;
	var selFlow = "";
	var selTimeDuration = document.SequenceStatusForm.timeduration.value;  
	var selNoOfRec = document.SequenceStatusForm.norecords.value; 
	var contextId = document.SequenceStatusForm.contextId.value;
	var startRow = document.SequenceStatusForm.startRow.value;
	var endRow = document.SequenceStatusForm.endRow.value;
	var currentPageVal = document.SequenceStatusForm.currPage.value;

	if (startRow == null || startRow == "")
	{
		startRow = 0;
	}
	if (endRow == null || endRow == "")
	{
		endRow = selNoOfRec;
	}
	if (currentPageVal == null || currentPageVal == "")
	{
		currentPageVal = 1;
	}

	var selInterfaceStatus  = validateInterface();
	var selFlowStatus = validateFlow(selInterface);

	if(selInterface == "0"){
		selFlow = document.SequenceStatusForm.Flow.value; 
	} else if(selInterface == "Orders"){
		selFlow = document.SequenceStatusForm.orderFlow.value; 
	} else if(selInterface == "Accounts"){
		selFlow = document.SequenceStatusForm.accFlow.value; 
	} else if(selInterface == "Opportunities"){
		selFlow = document.SequenceStatusForm.opptyFlow.value; 
	} else if(selInterface == "Contacts"){
		selFlow = document.SequenceStatusForm.contactFlow.value; 
	} 

	if (!selInterfaceStatus )
	{
		window.setTimeout('hideProgressBar();',1);
		alert("Please Select the Required Interface" );
		return false;

	} else {
		if (!selFlowStatus){
			window.setTimeout('hideProgressBar();',1);
			alert("Please Select the Required Flow" );
			return false;

		} else {
			document.forms.SequenceStatusForm.relSeqAction.value="LOAD";
			document.forms.SequenceStatusForm.correlationIds.value = "";

			document.forms.SequenceStatusForm.selInterface.value=selInterface;
			document.forms.SequenceStatusForm.selectedFlow.value=selFlow;
			document.forms.SequenceStatusForm.selTimeDuration.value=selTimeDuration;
			document.forms.SequenceStatusForm.selNoOfRec.value=selNoOfRec;
			document.forms.SequenceStatusForm.selContextId.value=contextId;
			document.forms.SequenceStatusForm.startRow.value=startRow;
			document.forms.SequenceStatusForm.endRow.value=endRow;
			document.forms.SequenceStatusForm.currPage.value=currentPageVal;
			document.SequenceStatusForm.totalPages.value = <%= totalPages%>;
			
			document.forms.SequenceStatusForm.action = "/EAIMonitorUI/sequencestatus/SequenceStatus.jsp";
			document.forms.SequenceStatusForm.submit();
		} // End of IF -- selFlowStatus
	} // End of IF -- selInterfaceStatus
}



// Function to validate the selected interface
function validateInterface() {
	if (document.SequenceStatusForm.Interface.value == 0)
	{
		return false;
	} else {
		return true;
	}
}

// Function to validate the selected flow
function validateFlow(selInterface) {
		if(selInterface == "0"){
				if (document.SequenceStatusForm.Flow.value == 0)
					{
						return false;
					} else {
						return true;
					}
		} else if(selInterface == "Orders"){
				if (document.SequenceStatusForm.orderFlow.value == 0)
					{
						return false;
					} else {
						return true;
					}
		} else if(selInterface == "Accounts"){
				if (document.SequenceStatusForm.accFlow.value == 0)
					{
						return false;
					} else {
						return true;
					}
		} else if(selInterface == "Opportunities"){
				if (document.SequenceStatusForm.opptyFlow.value == 0)
					{
						return false;
					} else {
						return true;
					}
		} else if(selInterface == "Contacts"){
				if (document.SequenceStatusForm.contactFlow.value == 0)
					{
						return false;
					} else {
						return true;
					}
		} 
}

function showProgressBar() {
    //bar.showBar();    
    var obj1 = document.getElementById('progressBarDiv');
    obj1.style.display="block";
    document.getElementById('statusMsg').innerHTML = 'Please wait, Retrieving Result is in progress ...';
}

function hideProgressBar() {
    //bar.hideBar();    
    var obj2 = document.getElementById('progressBarDiv');
    obj2.style.display="none";
}

// Function to check all checkbox
function checkAllCheckbox() {

		var allElements =  document.getElementsByTagName("INPUT"); 
       
        for(i=0; i<allElements.length;i++) 
        {
            if( IsCheckBox(allElements[i])) {
				allElements[i].checked = true; 
			}
		}
}

// Function to uncheck all checkbox
function uncheckAllCheckbox() {

		var allElements =  document.getElementsByTagName("INPUT"); 
       
        for(i=0; i<allElements.length;i++) 
        {
            if( IsCheckBox(allElements[i])) {
				allElements[i].checked = false; 
			}
		}
}

function IsCheckBox(chk) {
    if(chk.type == 'checkbox') return true; 
    else return false;
}

// Function to release the selected sequence
function releaseSelectedSequence() {
	var correlationIds = getChecked();
	if( correlationIds == null )
	{
		return;
	}
	else if( nChecked == 0 )
	{
		return;
	}

	document.forms.SequenceStatusForm.relSeqAction.value="NUDGE";
	document.forms.SequenceStatusForm.correlationIds.value = correlationIds;
	document.forms.SequenceStatusForm.action = "/EAIMonitorUI/sequencestatus/SequenceStatus.jsp";
	document.forms.SequenceStatusForm.submit();
}


    var nChecked = 0;
    function getChecked( )
    {
        var correlationIds = "";
        var aCheckBoxes = document.forms.SequenceStatusForm.check;
        if( aCheckBoxes == null )
            return null;

        nChecked = 0;

        if( typeof( aCheckBoxes.length ) == "undefined" )
        {
            // Single checkbox
            if( aCheckBoxes.checked )
            {
                correlationIds = aCheckBoxes.value;
                nChecked++;
            }
        }
        else
        {
            // Multiple checkboxes
            var aRows = aCheckBoxes.length;
            for( var i = 0; i < aRows; i++ )
            {
                if( aCheckBoxes[i].checked )
                {
                    if( nChecked > 0 )
                        correlationIds += "|";

                    correlationIds += aCheckBoxes[ i ].value;
                    nChecked++;
                }
            }
        }
        return correlationIds;
    }

// Function to display the appropriate flow for the selected interface 
function loadAppropriateFields(value){
    window.no_panel.style.display="none";
    window.orders_panel.style.display="none";
    window.accounts_panel.style.display="none";
    window.oppty_panel.style.display="none";
    window.contact_panel.style.display="none";
    
    if(value == "0"){
		window.no_panel.style.display="";
		window.orders_panel.style.display="none";
		window.accounts_panel.style.display="none";
		window.oppty_panel.style.display="none";
		window.contact_panel.style.display="none";
    } else if(value == "Orders"){
		window.no_panel.style.display="none";
		window.orders_panel.style.display="";
		window.accounts_panel.style.display="none";
		window.oppty_panel.style.display="none";
		window.contact_panel.style.display="none";
    } else if(value == "Accounts"){
		window.no_panel.style.display="none";
		window.orders_panel.style.display="none";
		window.accounts_panel.style.display="";
		window.oppty_panel.style.display="none";
		window.contact_panel.style.display="none";
    } else if(value == "Opportunities"){
		window.no_panel.style.display="none";
		window.orders_panel.style.display="none";
		window.accounts_panel.style.display="none";
		window.oppty_panel.style.display="";
		window.contact_panel.style.display="none";
    } else if(value == "Contacts"){
		window.no_panel.style.display="none";
		window.orders_panel.style.display="none";
		window.accounts_panel.style.display="none";
		window.oppty_panel.style.display="none";
		window.contact_panel.style.display="";
    } 
    
}



// Outside function from the pagination ( IMplementation code goes here)
function fetchPageImpl(startRow1,endRow1){
    startRow = startRow1;
    endRow = endRow1
    window.status = 'Retreiving...';
	window.setTimeout('showResults();',10);
    window.status = 'Done';
}


function resetMe(){
    startRow = 0;
    endRow = document.SequenceStatusForm.norecords.value; 
    pagination     = null;
}

// Function to fetch the next page data
function fetchNextPage(){
	 currentpage = <%= currentpage%>; 
	 totalPages = <%= totalPages%>;
	 sizePerPage = document.SequenceStatusForm.norecords.value; 

	oldSizePerPage = <%= request.getParameter("selNoOfRec") %>;

	 totalRecCount = <%=totalRecords%>;
	 //alert ("currentpage :" + currentpage + " totalPages : "+ totalPages + " sizePerPage :  " +sizePerPage + " oldSizePerPage :"+oldSizePerPage);

	// If anyone changes the search page size input and click next page then, recalculate the current page and totalpage
	if ((sizePerPage != oldSizePerPage) && ((currentpage + 1) * sizePerPage) > <%=totalRecords%>)
	{
		currentpage = 0;
		totalPages = (totalRecCount<=0)?1: Math.ceil(totalRecCount/sizePerPage);
			
	}
	//alert ("currentpage :" + currentpage + " totalPages : "+ totalPages );

	 if(currentpage < totalPages){
		currentpage++;
		fetchPageImpl((sizePerPage*currentpage)-sizePerPage,(sizePerPage*currentpage));
		startRow = (sizePerPage*currentpage)-sizePerPage;
		endRow = (sizePerPage*currentpage);
	 }

	document.SequenceStatusForm.startRow.value = startRow;
	document.SequenceStatusForm.endRow.value = endRow;
	document.SequenceStatusForm.currPage.value = currentpage;
	document.SequenceStatusForm.totalPages.value = totalPages;
 }

// Function to fetch the previous page data
function fetchPrevPage(){
	 currentpage = <%= currentpage%>; 
	 totalPages = <%= totalPages%>;
	 sizePerPage = document.SequenceStatusForm.norecords.value; 
	 //alert ("currentpage :" + currentpage + " totalPages : "+ totalPages + " sizePerPage :  " +sizePerPage);
	  
	  if(currentpage > 1 ){
		currentpage--;
		fetchPageImpl((sizePerPage*currentpage)-sizePerPage,(sizePerPage*currentpage));
		startRow = (sizePerPage*currentpage)-sizePerPage;
		endRow = (sizePerPage*currentpage);            
	  }

	document.SequenceStatusForm.startRow.value = startRow;
	document.SequenceStatusForm.endRow.value = endRow;
	document.SequenceStatusForm.currPage.value = currentpage;
	document.SequenceStatusForm.totalPages.value = totalPages;
 }

function releaseSuccMessage(){
	alert("Release Sequence Initiated. Please check in BPEL console");
	showResults();
}


/*
function validateKeyEvent(){

	if (event.keyCode == 13) {
		showResults(); 
		JavaScript:window.setTimeout('showProgressBar();',1);
	}
}
*/

</script>



  <body onload="hideProgressBar();">
 
  <form name="SequenceStatusForm" method="post" action="/EAIMonitorUI/sequencestatus/SequenceStatus.jsp">

    <input type="HIDDEN" name="relSeqAction" value=""></input>
	<input type="HIDDEN" name="correlationIds" value=""></input>
	<input type="HIDDEN" name="selInterface" value=""></input>
	<input type="HIDDEN" name="selectedFlow" value=""></input>
	<input type="HIDDEN" name="selTimeDuration" value=""></input>
	<input type="HIDDEN" name="selNoOfRec" value=""></input>
	<input type="HIDDEN" name="selContextId" value=""></input>

	<input type="HIDDEN" name="currPage" value=""></input>
	<input type="HIDDEN" name="totalPages" value=""></input>
	<input type="HIDDEN" name="startRow" value=""></input>
	<input type="HIDDEN" name="endRow" value=""></input>
	<input type="HIDDEN" name="totalRowCount" value=""></input>

			<table width="80%">
                <tr>
                    <td style="font-weight:bold; color:darkBlue">
                        <center>
                            <h2>Sequence Status</h2>
                        </center>
                    </td>
                </tr>
            </table>

            <table width="83%"  border="0"  bordercolor="#FFFBBB">
                <tr>
                    <td class="bodytextbold"> Interface :&nbsp;
                        <select name="Interface" onchange="loadAppropriateFields(this.value);" >
                            <option value="0" class="textvalue" selected="selected">--Select--</option>
                            <option value="Orders" class="textvalue" ${param.Interface == 'Orders' ? 'selected' : ''}>Orders</option>
                            <option value="Accounts" class="textvalue" ${param.Interface == 'Accounts' ? 'selected' : ''}>Accounts</option>
                            <option value="Opportunities" class="textvalue" ${param.Interface == 'Opportunities' ? 'selected' : ''}>Opportunities</option>
                            <option value="Contacts" class="textvalue" ${param.Interface == 'Contacts' ? 'selected' : ''}>Contacts</option>
                        </select>
                    </td>

                    <td id="no_panel" class="bodytextbold"> Flow :&nbsp;
                        <select name="Flow">
                            <option value="0" class="textvalue" selected="selected">--Select--</option>
                        </select>
                    </td>
					<td id="orders_panel" class="bodytextbold" style="display:none"> Flow :&nbsp;
                        <select name="orderFlow">
                            <option value="0" class="textvalue" selected="selected">--Select--</option>
                            <option value="Request" class="textvalue" ${param.Flow == 'Orders' ? 'selected' : ''}>Request</option>
                            <option value="Response" class="textvalue" ${param.Flow == 'Accounts' ? 'selected' : ''}>Response</option>
                            <option value="TOMRequest" class="textvalue" ${param.Flow == 'Opportunities' ? 'selected' : ''}>TOMRequest</option>
                            <option value="CPFG" class="textvalue" ${param.Flow == 'CPFG' ? 'selected' : ''}>CPFG</option>
                        </select>
                    </td>
                    <td id="accounts_panel" class="bodytextbold" style="display:none"> Flow :&nbsp;
                        <select name="accFlow">
                            <option value="0" class="textvalue" selected="selected">--Select--</option>
                            <option value="CRMtoTRUST" class="textvalue" ${param.Flow == 'CRMtoTRUST' ? 'selected' : ''}>Siebel To Trust</option>
                            <option value="TRUSTtoCRM" class="textvalue" ${param.Flow == 'TRUSTtoCRM' ? 'selected' : ''}>Trust To Siebel</option>
                            <option value="TOM" class="textvalue" ${param.Flow == 'TOM' ? 'selected' : ''}>TOM</option>
                            <option value="SAP" class="textvalue" ${param.Flow == 'SAP' ? 'selected' : ''}>SAP</option>
                            <option value="CPFG" class="textvalue" ${param.Flow == 'CPFG' ? 'selected' : ''}>CPFG</option>
                        </select>
                    </td>
                    <td id="oppty_panel" class="bodytextbold" style="display:none"> Flow :&nbsp;
                        <select name="opptyFlow">
                            <option value="0" class="textvalue" selected="selected">--Select--</option>
                            <option value="CRMtoTRUST" class="textvalue" ${param.Flow == 'CRMtoTRUST' ? 'selected' : ''}>Siebel To Trust</option>
                            <option value="TRUSTtoCRM" class="textvalue" ${param.Flow == 'TRUSTtoCRM' ? 'selected' : ''}>Trust To Siebel</option>
                        </select>
                    </td>
                    <td id="contact_panel" class="bodytextbold" style="display:none"> Flow :&nbsp;
                        <select name="contactFlow">
                            <option value="0" class="textvalue" selected="selected">--Select--</option>
                            <option value="TOM" class="textvalue" ${param.Flow == 'TOM' ? 'selected' : ''}>TOM</option>
                            <option value="CPFGReq" class="textvalue" ${param.Flow == 'CPFGReq' ? 'selected' : ''}>CPFG Request</option>
                            <option value="CPFGRes" class="textvalue" ${param.Flow == 'CPFGRes' ? 'selected' : ''}>CPFG Response</option>
                            <option value="SAPCM" class="textvalue" ${param.Flow == 'SAPCM' ? 'selected' : ''}>SAPCM</option>
                            <option value="SAPExtCM" class="textvalue" ${param.Flow == 'SAPExtCM' ? 'selected' : ''}>SAPExtCM</option>
                            <option value="CRMtoTRUST" class="textvalue" ${param.Flow == 'CRMtoTRUST' ? 'selected' : ''}>Siebel To Trust</option>
                            <option value="TRUSTtoCRM" class="textvalue" ${param.Flow == 'TRUSTtoCRM' ? 'selected' : ''}>Trust To Siebel</option>
                        </select>
                    </td>

                <td class="bodytextbold">&nbsp; Time Duration :&nbsp;
                <select name="timeduration">
                    <option value="1" class="textvalue" ${param.timeduration == '1' ? 'selected' : ''}>24 hours</option>
                    <option value="7" class="textvalue" ${param.timeduration == '7' ? 'selected' : ''}>7 Days</option>
                    <option value="15" class="textvalue" ${param.timeduration == '15' ? 'selected' : ''}>15 Days</option>
                    <option value="30" class="textvalue" ${param.timeduration == '30' ? 'selected' : ''}>30 Days</option>
                </select>
                </td>
                <td class="bodytextbold">&nbsp; Records per page :&nbsp;
                    <select name="norecords">
                    <option value="10" class="textvalue" ${param.norecords == '10' ? 'selected' : ''}>10</option>
                    <option value="20" class="textvalue" ${param.norecords == '20' ? 'selected' : ''}>20</option>
                    <option value="50" class="textvalue" ${param.norecords == '50' ? 'selected' : ''}>50</option>
                    <option value="100" class="textvalue" ${param.norecords == '100' ? 'selected' : ''}>100</option>
					</select>
                </td>
				<td class="bodytextbold">Context ID :&nbsp; <input type="text" name="contextId" size="25" class="textvalue"/></td>
				<td class="bodytextbold"> 
					<input class="bsize2" type="submit" name="search"
						   value="ShowResult" onclick="JavaScript:window.setTimeout('showProgressBar();',1);return showResults();"/>
				</td>
                </tr>
            </table>
            <br></br>
            <div id="progressBarDiv" style="visibility:none">
                <table width="80%"   border="0"  bordercolor="#FFFBBB">
                    <tr align="center" bgcolor="#E4E5D7">
                        <td>
                            <font face="Verdana" size="1" style="bold">
                                <div id="statusMsg"></div>
                            </font>
                        </td>
                    </tr>
                    <tr align="center" bgcolor="#E4E5D7">
                        <td>
                            <script type="text/javascript">
								var bar = createBar(150,15,'white',1,'black','blue',85,7,3,"");
								 hideProgressBar();
							</script>
                        </td>
                    </tr>
                </table>
            </div>
			<BR></BR>

			<BR><BR>
			<table id="seqDetails1"  width="80%"  border="0"  bordercolor="#FFFBBB" >           
            <tr>
				<td class="bodytext" align="center"> 
					<B><div id="msgHeader"></div></B>
				</td>
            </tr>
			</table>
		  
		  
		  <%
		  
		    System.out.println( "Size :"+ struckSequence.size() );
            if(struckSequence.size()>0)
            {
				
          %>


			<table  id="seqDetailsiii" cellpadding="2" class="litebluetableborder"  border="1"  bordercolor="#FFFFAA" width="80%" >
                <tbody>
                    <tr id="headerTR1" class="tableHeader1">
                        <td class="bodytextbold" style="font-size:12; font-family:Verdana" align="center">&nbsp;</td> 
                        <td class="bodytextbold" style="font-size:12; font-family:Verdana" align="center"><b>Date and Time</b></td> 
                        <td class="bodytextbold" style="font-size:12; font-family:Verdana" align="center"><b>Context Id</b></td> 
                        <td class="bodytextbold" style="font-size:12; font-family:Verdana" align="center"><b>State</b></td> 
                        <td class="bodytextbold" style="font-size:12; font-family:Verdana" align="center"><b>Correlation id</b></td> 
                    </tr>	

                <% 
					
				   for(int i=0;i<struckSequence.size();i++)
				   {
				   StruckSequenceBean struckSequenceBean=new StruckSequenceBean();
				   struckSequenceBean=(StruckSequenceBean)struckSequence.get(i);
	
					if(i%2==0){
                %>
					<tr class="tbbg1"> 
						<td class="bodytext tableRowGrey" align="center"> <INPUT id=<%=struckSequenceBean.getCorrelationId()%> value=<%=struckSequenceBean.getCorrelationId()%> type=checkbox name="check"></INPUT></td>                        
						<td class="bodytext tableRowGrey" align="center"><%=struckSequenceBean.getLastUpdateDate()%></td>                        
						<td class="bodytext tableRowGrey" align="center"><%=struckSequenceBean.getContextId()%></td>                        
						<td class="bodytext tableRowGrey" align="center"><%=struckSequenceBean.getStatus()%></td>                        
						<td class="bodytext tableRowGrey" align="center"><%=struckSequenceBean.getCorrelationId()%></td>                        

					</tr>
                    <%
					} else {
					%>
					<tr class="tbbg1"> 
						<td class="bodytext tableRowBlue" align="center"> <INPUT id=<%=struckSequenceBean.getCorrelationId()%> value=<%=struckSequenceBean.getCorrelationId()%> type=checkbox name="check"></INPUT></td>                        
						<td class="bodytext tableRowBlue" align="center"><%=struckSequenceBean.getLastUpdateDate()%></td>                        
						<td class="bodytext tableRowBlue" align="center"><%=struckSequenceBean.getContextId()%></td>                        
						<td class="bodytext tableRowBlue" align="center"><%=struckSequenceBean.getStatus()%></td>                        
						<td class="bodytext tableRowBlue" align="center"><%=struckSequenceBean.getCorrelationId()%></td>      
					</tr>
					<%
					} // End of IF
				} // End of FOR
		%>

			<BR>

            <table  id="seqDetails3" cellpadding="2"  width="80%">
                <tbody>

					<tr class="tbbg1"> 
						<td class="bodytext" align="left"> 
							<input class="bsize2" type="button" name="checkCheckBox" value="SelectAll" onclick="checkAllCheckbox();"/>
							&nbsp;
							<input class="bsize2" type="button" name="uncheckCheckBox" value="DeSelectAll" onclick="uncheckAllCheckbox();"/>
						</td>                        
						<td class="bodytext" align="right"> 
							<input class="bstate1" type="button" name="releaseseq" value="ReleaseSelectedSequence" onclick="releaseSelectedSequence();releaseSuccMessage();"/>						
						</td>                        
					</tr>
				</tbody>
            </table>
            <table  id="seqDetails4" cellpadding="2"  width="80%" border="1">
                <tbody>

					<tr class="tbbg1">

						<td class="bodytext" align="left"> 
							<input class="bsize2" type="button" name="btnpre" value="Previous" onclick="fetchPrevPage();"/>						
						</td>
						<td class="bodytext" align="center"> 
								<B> <div id="msgCountInfo"></div> </B>
						</td>
						<td class="bodytext" align="right"> 
							<input class="bsize2" type="button" name="btnnext" value="Next" onclick="fetchNextPage();"/>						
						</td>                        
					</tr>
				</tbody>
            </table>

		<%				
			}
		%>

        </form>

		<script type="text/javascript">
		<%
			 try{

				String selInterfaceVal= request.getParameter("selInterface");
				String selFlowVal= request.getParameter("selectedFlow");
				String selContextId= request.getParameter("selContextId");
				String msgHdr = "";

				System.out.println("**** Value :" + selInterfaceVal.length() );

				if (selInterfaceVal == null || selInterfaceVal == "" || selInterfaceVal.length() == 0)
				{
					selInterfaceVal = "0";
				}

				if (selFlowVal == null || selFlowVal == "" || selFlowVal.length() == 0)
				{
					selFlowVal = "0";
				}

				if (selContextId == null || selContextId == "" || selContextId.length() == 0)
				{
					selContextId = "";
				}

				System.out.println("**** selInterfaceVal :" + selInterfaceVal );
				System.out.println("**** selFlowVal :" + selFlowVal );

				if (selInterfaceVal != "0")
				{
					out.println("loadAppropriateFields('"+selInterfaceVal+"');");
				}

				if(selInterfaceVal.equalsIgnoreCase("0")){
					out.println("document.SequenceStatusForm.Flow.value='"+selFlowVal+"'");
					msgHdr = "Please Select Interface";
				} else if(selInterfaceVal.equalsIgnoreCase("Orders")){
					out.println("document.SequenceStatusForm.orderFlow.value='"+selFlowVal+"'"); 
					msgHdr = "Orders Stuck in Sequence";
				} else if(selInterfaceVal.equalsIgnoreCase("Accounts")){
					out.println("document.SequenceStatusForm.accFlow.value='"+selFlowVal+"'"); 
					msgHdr = "Accounts Stuck in Sequence";
				} else if(selInterfaceVal.equalsIgnoreCase("Opportunities")){
					out.println("document.SequenceStatusForm.opptyFlow.value='"+selFlowVal+"'");
					msgHdr = "Opportunities Stuck in Sequence";
				} else if(selInterfaceVal.equalsIgnoreCase("Contacts")){
					out.println("document.SequenceStatusForm.contactFlow.value='"+selFlowVal+"'");
					msgHdr = "Contacts Stuck in Sequence";
				} 

				out.println("document.SequenceStatusForm.contextId.value='"+selContextId+"'");

				int msgStartRow = Integer.parseInt(request.getParameter("startRow"))+1;
				int msgEndRow = Integer.parseInt(request.getParameter("endRow"));
				int msgCurrPage = Integer.parseInt(request.getParameter("currPage"));
				int msgTotRecords = totalRecords;
				int msgTotPage = totalPages;

				int lastRecord = msgEndRow;

				if (msgCurrPage == msgTotPage)
				{
					lastRecord = msgTotRecords;
				} else {
					lastRecord = msgEndRow;
				}

				String msg = "Your search criteria has returned "+ msgStartRow + " - " + lastRecord + " out of " + msgTotRecords + " record(s). ( Page "+ msgCurrPage + " of " + msgTotPage + " )"; 

				if(struckSequence.size()>0)
				{
					out.println("document.getElementById('msgCountInfo').innerHTML ='"+msg+"'");
					out.println("document.getElementById('msgHeader').innerHTML ='"+msgHdr+"'");

					// Disble Previous or Next button based the current and total page count
					if (msgCurrPage == msgTotPage && msgCurrPage == 1 && msgTotPage == 1)
					{
						out.println("document.getElementById('btnpre').disabled = true");  
						out.println("document.getElementById('btnnext').disabled = true");  

					} else if (msgCurrPage == msgTotPage && msgCurrPage > 1 ) { // Disable only Next
						out.println("document.getElementById('btnpre').disabled = false");  
						out.println("document.getElementById('btnnext').disabled = true");  
					
					} else if (msgCurrPage == 1 && msgTotPage > msgCurrPage) { // Disable only Previous
						out.println("document.getElementById('btnpre').disabled = true");  
						out.println("document.getElementById('btnnext').disabled = false");  
					
					} else {
						out.println("document.getElementById('btnpre').disabled = false");  
						out.println("document.getElementById('btnnext').disabled = false");  
					}
				} else if(struckSequence.size() == 0) {
					msgHdr = "No matching records found for your selection criteria !";
					out.println("document.getElementById('msgHeader').innerHTML ='"+msgHdr+"'");
				}



			}catch(Exception e){
				//out.println("alert('"+e.getMessage()+"');");
			}
		%>
		</script>
	</body>
</html>
