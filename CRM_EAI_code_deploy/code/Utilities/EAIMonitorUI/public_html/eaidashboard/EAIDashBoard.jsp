<%@ page import="java.util.*"%>
<%@ page import="com.eaidashboard.*,java.io.InputStream, java.net.URL"%>
<%try{
    String whichPage="";
    URL myURL=application.getResource("/WEB-INF/EAIMonitorUI.properties");
    InputStream in = myURL.openStream();
    Properties p = new Properties();
    p.load(in);
    String siebelAccount=p.getProperty("SiebelAccounts");
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="image/jpeg; charset=iso-8859-1"></meta>
        <link href="../css/Gpdmsstyles.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="refresh" content="600"></meta>
    </head>
    <input type="HIDDEN" name="siebelAccount" value="<%=siebelAccount%>"></input>
    <input type="HIDDEN" name="whichPage" value="<%=whichPage%>"></input>
    <script language="JavaScript" type="text/javascript">
        
             
       function getInterfaceURL(siebelAccountId)
       {     
       //var dropdownVal=document.EAIMonitorUIForm.context.value;
       var siebelAccount=document.getElementById("siebelAccount").value;
       window.open(siebelAccount+siebelAccountId, "SiebelApplication");
       return true;
       }
        
        function body_onLoad()
        {        
        var dropdownVal=document.EAIDashBoardForm.context.value;
         if(dropdownVal!=0)
        {        
           if(dropdownVal == "Orders")
              {      
                     tblOrders.style.display ="block";                
                     tblQuotes.style.display ="none";
                     tblAccounts.style.display ="none";
                     tblOpportunities.style.display ="none";
                     tblContacts.style.display ="none";
                }
                if(dropdownVal == "Quotes")
              {     
                     tblOrders.style.display ="none";                
                     tblQuotes.style.display ="block";
                     tblAccounts.style.display ="none";
                     tblOpportunities.style.display ="none";
                     tblContacts.style.display ="none";
                }
                 if(dropdownVal == "Accounts")
              {      
                     tblOrders.style.display ="none";                
                     tblQuotes.style.display ="none";
                     tblAccounts.style.display ="block";
                     tblOpportunities.style.display ="none";
                     tblContacts.style.display ="none";
                }
                 if(dropdownVal == "Opportunities")
              {     
                     tblOrders.style.display ="none";                
                     tblQuotes.style.display ="none";
                     tblAccounts.style.display ="none";
                     tblOpportunities.style.display ="block";
                     tblContacts.style.display ="none";
                }
                  if(dropdownVal == "Contacts")
              {      
                     tblOrders.style.display ="none";                
                     tblQuotes.style.display ="none";
                     tblAccounts.style.display ="none";
                     tblOpportunities.style.display ="none";
                     tblContacts.style.display ="block";
                }
            }
            else
            {
            tblOrders.style.display ="none";
            tblQuotes.style.display ="none";
            tblAccounts.style.display ="none";
            tblOpportunities.style.display ="none";
            tblContacts.style.display ="none";
            }
        }
        
         function onSelect_dropdown()
        { 
         var dropdownVal=document.EAIDashBoardForm.context.value;
        if(dropdownVal!=0)
        {        
           if(dropdownVal == "Orders")
              {      
                     tblOrders.style.display ="block";                
                     tblQuotes.style.display ="none";
                     tblAccounts.style.display ="none";
                     tblOpportunities.style.display ="none";
                     tblContacts.style.display ="none";
                }
                if(dropdownVal == "Quotes")
              {     
                     tblOrders.style.display ="none";                
                     tblQuotes.style.display ="block";
                     tblAccounts.style.display ="none";
                     tblOpportunities.style.display ="none";
                     tblContacts.style.display ="none";
                }
                 if(dropdownVal == "Accounts")
              {      
                     tblOrders.style.display ="none";                
                     tblQuotes.style.display ="none";
                     tblAccounts.style.display ="block";
                     tblOpportunities.style.display ="none";
                     tblContacts.style.display ="none";
                }
                 if(dropdownVal == "Opportunities")
              {     
                     tblOrders.style.display ="none";                
                     tblQuotes.style.display ="none";
                     tblAccounts.style.display ="none";
                     tblOpportunities.style.display ="block";
                     tblContacts.style.display ="none";
                }
                  if(dropdownVal == "Contacts")
              {      
                     tblOrders.style.display ="none";                
                     tblQuotes.style.display ="none";
                     tblAccounts.style.display ="none";
                     tblOpportunities.style.display ="none";
                     tblContacts.style.display ="block";
                }
            }
            else
            {
            tblOrders.style.display ="none";
            tblQuotes.style.display ="none";
            tblAccounts.style.display ="none";
            tblOpportunities.style.display ="none";
            tblContacts.style.display ="none";
            }
                
        }
        
         function button_onclick()
        { 
          var dropdownVal=document.EAIDashBoardForm.context.value;
          var fromdateVal=document.EAIDashBoardForm.FromDate.value;
          var todateVal=document.EAIDashBoardForm.ToDate.value;
          var fromdate= Date.parse(fromdateVal);
          var todate= Date.parse(todateVal);
        
        if(fromdateVal=="")
        {
        alert('From Date should not be blank');
        return false;
        }
         if(todateVal=="")
        {
        alert('To Date should not be blank');
        return false;
        }
        if(dropdownVal==0)
        { 
         alert('Please select any value for Interface');               
         document.EAIDashBoardForm.context.focus();
         return false;
        }       
                
            if(fromdate>todate)
            {
            alert('From Date should not be greater than To Date');
            document.EAIDashBoardForm.FromDate.value="";
            document.EAIDashBoardForm.ToDate.value="";
            }
           /* if(todateVal>todayDateVal)
            {
            alert(todateVal);
            alert(todayDateVal);
            alert('To Date should not be greater than Today Date');
            document.EAIDashBoardForm.FromDate.value="";
            document.EAIDashBoardForm.ToDate.value="";
            }*/
                   
        document.EAIDashBoardForm.submit();        
        onSelect_dropdown();
        }

     function onClickChartIconCRMtoTrustAcc()
     {
        var succCount=document.EAIDashBoardForm.crmTrustSuccAccCountVal.value;
        var failCount=document.EAIDashBoardForm.crmTrustFailAccCountVal.value;
        var w = screen.width; 
	var h = screen.height; 
	var win_width = w/2;
	var win_width1 =win_width-20;
	var win_width2 =win_width+10;
	var win_height = h/2;
        var leftPos = (screen.width / 2) - 251;
        var topPos = (screen.height / 2) - 162;
	var wndstr="height="+win_height +",width="+win_width1+",screenX=0,screenY=0,top="+topPos+",left="+leftPos+",resizable=no,scrollbars=no,toolbar=no,statusbar=no";
	window.open("chart.jsp?SuccVAl="+succCount+"&FailVal="+failCount+"&ChartName=CRMtoTrustAcc","chart",wndstr);      
        document.EAIDashBoardForm.submit();  
     }
     
      function onClickChartIconTrusttoCRMAcc()
     {
        var succCount=document.EAIDashBoardForm.trustCrmSuccAccCountVal.value;
        var failCount=document.EAIDashBoardForm.trustCrmFailAccCountVal.value;
        var w = screen.width; 
	var h = screen.height; 
	var win_width = w/2;
	var win_width1 =win_width-20;
	var win_width2 =win_width+40;
	var win_height = h/2;
	var leftPos = (screen.width / 2) - 251;
        var topPos = (screen.height / 2) - 162;
	var wndstr="height="+win_height +",width="+win_width1+",screenX=0,screenY=0,top="+topPos+",left="+leftPos+",resizable=no,scrollbars=no,toolbar=no,statusbar=no";
	window.open("chart.jsp?SuccVAl="+succCount+"&FailVal="+failCount+"&ChartName=TrusttoCRMAcc","chart",wndstr);
        document.EAIDashBoardForm.submit(); 
     }
     
      function onClickChartIconCRMtoTrustOpty()
     {
        var succCount=document.EAIDashBoardForm.crmTrustSuccOptyCountVal.value;
        var failCount=document.EAIDashBoardForm.crmTrustFailOptyCountVal.value;
        var w = screen.width; 
	var h = screen.height; 
	var win_width = w/2;
	var win_width1 =win_width-20;
	var win_width2 =win_width+40;
	var win_height = h/2;
	var leftPos = (screen.width / 2) - 251;
        var topPos = (screen.height / 2) - 162;
	var wndstr="height="+win_height +",width="+win_width1+",screenX=0,screenY=0,top="+topPos+",left="+leftPos+",resizable=no,scrollbars=no,toolbar=no,statusbar=no";
	window.open("chart.jsp?SuccVAl="+succCount+"&FailVal="+failCount+"&ChartName=CRMtoTrustOpty","chart",wndstr);
        document.EAIDashBoardForm.submit(); 
     }
     
      function onClickChartIconTrusttoCRMOpty()
     {
        var succCount=document.EAIDashBoardForm.trustCrmSuccOptyCountVal.value;
        var failCount=document.EAIDashBoardForm.trustCrmFailOptyCountVal.value;
        var w = screen.width; 
	var h = screen.height; 
	var win_width = w/2;
	var win_width1 =win_width-20;
	var win_width2 =win_width+40;
	var win_height = h/2;        
	var leftPos = (screen.width / 2) - 251;
        var topPos = (screen.height / 2) - 162;
	var wndstr="height="+win_height +",width="+win_width1+",screenX=0,screenY=0,top="+topPos+",left="+leftPos+",resizable=no,scrollbars=no,toolbar=no,statusbar=no";
	window.open("chart.jsp?SuccVAl="+succCount+"&FailVal="+failCount+"&ChartName=TrusttoCRMOpty","chart",wndstr);
        document.EAIDashBoardForm.submit(); 
     }
     
     function showProgressBar() {
    //bar.showBar();    
    
    var obj1 = document.getElementById('progressBarDiv');
    obj1.style.display="block";
    document.getElementById('statusMsg').innerHTML = 'Please wait, Retrieving Result is in progress ...';
    //window.status = 'Retrieving Result ...';
}

function hideProgressBar() {
    //bar.hideBar();    
   
    var obj2 = document.getElementById('progressBarDiv');
    obj2.style.display="none";
}
     
    </script>
    <script src="../script/progressBar.js" type="text/javascript"></script>
    <script type="text/javascript" src="../script/calendar.js"></script>
    <script type="text/javascript" src="../script/calendar-setup.js"></script>
    <script type="text/javascript" src="../script/calendar-en.js"></script>
    <style type="text/css"> @import url("../css/calendar-win2k-cold-1.css"); </style>
    <body onload="body_onLoad();"><%
  String FromDate = request.getParameter("FromDate");
  String ToDate = request.getParameter("ToDate");
  String InterfaceName = request.getParameter("context");
  EaiDashBoard eaiDashBoard = new EaiDashBoard(); 
  ArrayList<EaiDashBoardBean> eaiDashBoardBean = new ArrayList<EaiDashBoardBean>();
  eaiDashBoardBean=eaiDashBoard.geteaiDashBoardDetails(FromDate,ToDate,InterfaceName); 
  %><!--%
  String CrmTrustSuccAccCount = request.getParameter("crmTrustSuccAccCountVal");
  String CrmTrustFailAccCount = request.getParameter("crmTrustFailAccCountVal");
  String TrustCrmSuccAccCount = request.getParameter("trustCrmSuccAccCountVal");
  String TrustCrmFailAccCount = request.getParameter("trustCrmFailAccCountVal");
  AccountsSiebelToTRUST accountsSiebelToTRUST= new AccountsSiebelToTRUST("CrmtrustAcc");
  accountsSiebelToTRUST.getAccountValues("50","100");  
  %--><form name="EAIDashBoardForm" method="get"
            action="/EAIMonitorUI/eaidashboard/EAIDashBoard.jsp">
            <table width="90%">
                <tr>
                    <td style="font-weight:bold; color:darkBlue">
                        <center>
                            <h2>EAI Dash Board</h2>
                        </center>
                    </td>
                </tr>
            </table>
            <br></br>
            <table width="90%">
                <tr>
                    <td nowrap="nowrap" valign="middle" class="bodytextbold">
                        From Date :&nbsp;
                        <input id="FromDate" readonly="0" name="FromDate"
                               type="text" size="18" maxlength="30"
                               class="textfields"
                               value='<%=(request.getParameter("FromDate")!=null)?request.getParameter("FromDate"):""%>'/>
                        <img src="../images/datePicker.jpg" id="f_trigger_c"
                             style="cursor: pointer; border: 1px solid red;"
                             title="Date selector"
                             onmouseover="this.style.background='red';"
                             onmouseout="this.style.background=''"/>
                        <script type="text/javascript">
    Calendar.setup({
        inputField     :    "FromDate",     // id of the input field
        ifFormat       :    "%m/%d/%Y",      // format of the input field
        button         :    "f_trigger_c",  // trigger for the calendar (button ID)
        align          :    "B2",           // alignment (defaults to "Bl")
        singleClick    :    true
    });
</script>
                    </td>
                    <td nowrap="nowrap" valign="middle" class="bodytextbold">
                        To Date :&nbsp;
                        <input id="ToDate" readonly="0" name="ToDate"
                               type="text" size="18" maxlength="30"
                               class="textfields"
                               value='<%=(request.getParameter("ToDate")!=null)?request.getParameter("ToDate"):""%>'/>
                        <img src="../images/datePicker.jpg" id="f_trigger_d"
                             style="cursor: pointer; border: 1px solid red;"
                             title="Date selector"
                             onmouseover="this.style.background='red';"
                             onmouseout="this.style.background=''"/>
                        <script type="text/javascript">
    Calendar.setup({
        inputField     :    "ToDate",     // id of the input field
        ifFormat       :    "%m/%d/%Y",      // format of the input field
        button         :    "f_trigger_d",  // trigger for the calendar (button ID)
        align          :    "B2",           // alignment (defaults to "Bl")
        singleClick    :    true
    });
</script>
                    </td>
                    <td class="bodytextbold">
                        Interface :&nbsp;
                        <select name="context">
                            <option value="0" class="textvalue"
                                    selected="selected">Select</option>
                            <option value="Orders" class="textvalue"
                                    ${param.context == 'Orders' ? 'selected' : ''}>Orders</option>
                            <option value="Quotes" class="textvalue"
                                    ${param.context == 'Quotes' ? 'selected' : ''}>Quotes</option>
                            <option value="Accounts" class="textvalue"
                                    ${param.context == 'Accounts' ? 'selected' : ''}>Accounts</option>
                            <option value="Opportunities" class="textvalue"
                                    ${param.context == 'Opportunities' ? 'selected' : ''}>Opportunities</option>
                            <option value="Contacts" class="textvalue"
                                    ${param.context == 'Contacts' ? 'selected' : ''}>Contacts</option>
                        </select>
                        <input class="sidebutton" type="submit" name="search"
                               value="showResult"
                               onclick="button_onclick();JavaScript:window.setTimeout('showProgressBar();',1)"/>
                    </td>
                </tr>
            </table>
            <br></br>
            <div id="progressBarDiv" style="visibility:none">
                <table align="center">
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
            <br></br>
            <div id="tblOrders" name="tblOrders">
                <table cellpadding="4" class="litebluetableborder" width="90%">
                    <tbody>
                        <tr class="tableHeader">
                            <td align="left"
                                style="font-family:Arial;font-size:12"
                                width="15%">
                                <font face="Garamond" color="#006ba5">&nbsp;</font>
                            </td>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="75%" colspan="9">
                                <font size="3">Orders</font>
                            </th>
                        </tr>
                        <tr class="tableHeader">
                            <td align="left"
                                style="font-family:Arial;font-size:6"
                                width="15%">
                                <font face="Garamond" color="#006ba5">&nbsp;</font>
                            </td>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="15%" colspan="2">
                                <font size="2">SAP</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="15%">
                                <font size="2">CORE SUITE</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="15%" colspan="2">
                                <font size="2">CPFG</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="15%" colspan="2">
                                <font size="2">TOM</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="15%" colspan="2">
                                <font size="2">ELM</font>
                            </th>
                        </tr>
                        <tr class="tableHeader">
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="15%">
                                <font size="1">Date</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">Success</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="7%">
                                <font size="1">Fail</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="15%">
                                <font size="1">Flown</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">Success</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="7%">
                                <font size="1">Fail</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">Success</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="7%">
                                <font size="1">Fail</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">Success</font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="7%">
                                <font size="1">Fail</font>
                            </th>
                        </tr>
                        <%
            if(eaiDashBoardBean.size()>0 && InterfaceName.equalsIgnoreCase("Orders"))
            {
            %>
                        <%
                                
                       try{
                           for(int i=0;i<eaiDashBoardBean.size()-1;i++)
                           {
                           EaiDashBoardBean eaiDashBoardBeanVal=new EaiDashBoardBean();
                           eaiDashBoardBeanVal=(EaiDashBoardBean)eaiDashBoardBean.get(i);                           
                          if(i%2==0){%>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowGrey" align="center"
                                width="15%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getOrdDateFormatted()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapsuccordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="7%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapsfailordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="15%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCsflownordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgsuccordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="7%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgfailordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomsuccordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="7%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomfailordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getElmSuccOrdCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="7%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getElmFailOrdCount()%>
                                </font>
                            </td>
                        </tr>
                        <%}
                             else{%>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowBlue" align="center"
                                width="15%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getOrdDateFormatted()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapsuccordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="7%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapsfailordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="15%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCsflownordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgsuccordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="7%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgfailordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomsuccordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="7%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomfailordcount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getElmSuccOrdCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="7%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getElmFailOrdCount()%>
                                </font>
                            </td>
                        </tr>
                        <%  
                            } }
                                }
                                catch(Exception e){
                                }
                                }
                           %>
                        <%
                       if(eaiDashBoardBean.size()>0 && InterfaceName.equalsIgnoreCase("Orders"))
            {
            %>
                        <%
                                
                       try{                          
                           EaiDashBoardBean eaiDashBoardBeanVal=new EaiDashBoardBean();
                           eaiDashBoardBeanVal=(EaiDashBoardBean)eaiDashBoardBean.get(eaiDashBoardBean.size()-1);
                            %>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowGrey" align="center"
                                width="15%">
                                <strong><font face="Garamond" size="2">Total</font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="8%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getSapsuccordcountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="7%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getSapsfailordcountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="15%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCsflownordcountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="8%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCpfgsuccordcountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="7%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCpfgfailordcountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="8%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getTomsuccordcountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="7%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getTomfailordcountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="8%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getElmSuccOrdCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="7%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getElmFailOrdCountSum()%>
                                    </font></strong>
                            </td>
                        </tr>
                        <%  
                             }                               
                                catch(Exception e){
                                }
                                }
                           %>
                    </tbody>
                </table>
            </div>
            <br></br>
            <div id="tblQuotes" name="tblQuotes">
                <table cellpadding="4" class="litebluetableborder" width="90%">
                    <tbody>
                        <tr class="tableHeader">
                            <td align="left"
                                style="font-family:Arial;font-size:12"
                                width="20%">&nbsp;</td>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="80%">
                                <font size="3">Quotes</font>
                            </th>
                        </tr>
                        <tr class="tableHeader">
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="20%">
                                <font size="2">
                                    Date
                                </font></th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="20%">
                                <font size="2">Flown</font>
                            </th>
                        </tr>
                        <%
                      if(eaiDashBoardBean.size()>0 && InterfaceName.equalsIgnoreCase("Quotes"))
            {
            %>
                        <%
                                
                       try{
                           for(int i=0;i<eaiDashBoardBean.size()-1;i++)
                           {
                           EaiDashBoardBean eaiDashBoardBeanVal=new EaiDashBoardBean();
                           eaiDashBoardBeanVal=(EaiDashBoardBean)eaiDashBoardBean.get(i);
                          if(i%2==0){%>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowGrey" align="center">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getQuotesDateFormatted()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCsflownordcount()%>
                                </font>
                            </td>
                        </tr>
                        <%}
                             else{%>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowBlue" align="center">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getQuotesDateFormatted()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCsflownordcount()%>
                                </font>
                            </td>
                        </tr>
                        <%  
                            } }
                                }
                                catch(Exception e){
                                }
                                }
                           %>
                        <%
                      if(eaiDashBoardBean.size()>0 && InterfaceName.equalsIgnoreCase("Quotes"))
            {
            %>
                        <%
                                
                       try{
                          
                           EaiDashBoardBean eaiDashBoardBeanVal=new EaiDashBoardBean();
                           eaiDashBoardBeanVal=(EaiDashBoardBean)eaiDashBoardBean.get(eaiDashBoardBean.size()-1);
                            %>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowGrey" align="center">
                                <strong><font face="Garamond" size="2">Total</font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCsflownordcountSum()%>
                                    </font></strong>
                            </td>
                        </tr>
                        <%  
                             }
                                catch(Exception e){
                                }
                                }
                           %>
                    </tbody>
                </table>
            </div>
            <br></br>
            <div id="tblAccounts" name="tblAccounts">
                <table cellpadding="4" class="litebluetableborder" width="90%"
                       height="129">
                    <tbody>
                        <tr class="tableHeader">
                            <td align="left" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="13%">&nbsp;</td>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="77%" colspan="13">
                                <font size="3">
                                    Accounts
                                </font></th>
                        </tr>
                        <tr class="tableHeader">
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="13%">&nbsp;</th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana" width="11%"
                                colspan="2">
                                <font size="2">
                                    SIEBEL to SAP
                                </font></th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana" 
                                width="11%">
                                <font size="2">
                                    SIEBEL to CORE SUITE
                                </font></th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana" width="11%"
                                colspan="2">
                                <font size="2">
                                    SIEBEL to CPFG
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana" width="11%"
                                colspan="2">
                                <font size="2">
                                    SIEBEL to TOM
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana" width="11%"
                                colspan="2">
                                <font size="2">
                                    SIEBEL to ELM
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana" width="11%"
                                colspan="2">
                                <font size="2">
                                    SIEBEL to TRUST
                                    <img src="../images/barChartImg.jpg"
                                         width="20" height="20"
                                         onclick="onClickChartIconCRMtoTrustAcc();"
                                         style="cursor: pointer; border: 1px solid red;"
                                         title="Show Chart"
                                         onmouseover="this.style.background='red';"
                                         onmouseout="this.style.background=''"/>
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="11%" colspan="2">
                                <font size="2">
                                    TRUST to SIEBEL
                                    <img src="../images/barChartImg.jpg"
                                         width="20" height="20"
                                         onclick="onClickChartIconTrusttoCRMAcc();"
                                         style="cursor: pointer; border: 1px solid red;"
                                         title="Show Chart"
                                         onmouseover="this.style.background='red';"
                                         onmouseout="this.style.background=''"/>
                                </font>
                            </th>
                        </tr>
                        <tr class="tableHeader">
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="13%">
                                <font size="1">
                                    Date
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="6%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="5%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="11%">
                                <font size="1">
                                    Flown
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="6%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="5%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="6%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="5%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="6%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="5%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="6%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="5%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="6%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center" class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="5%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                        </tr>
                        <%
            if(eaiDashBoardBean.size()>0 && InterfaceName.equalsIgnoreCase("Accounts"))
            {
            %>
                        <%
                                
                       try{
                           for(int i=0;i<eaiDashBoardBean.size()-1;i++)
                           {
                           EaiDashBoardBean eaiDashBoardBeanVal=new EaiDashBoardBean();
                           eaiDashBoardBeanVal=(EaiDashBoardBean)eaiDashBoardBean.get(i);
                            if(i%2==0){%>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowGrey" align="center"
                                width="13%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getAccountDateFormatted()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="6%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="5%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapFailAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="11%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCsFlownAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="6%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="5%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgFailAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="6%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="5%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomFailAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="6%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getElmSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="5%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getElmFailAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="6%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCrmTrustSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="5%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCrmTrustFailAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="24" width="6%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTrustCrmSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="24" width="5%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTrustCrmFailAccCount()%>
                                </font>
                            </td>
                        </tr>
                           <%}
                             else{%>
                               <tr class="tbbg1">
                            <td class="bodytext tableRowBlue" align="center"
                                width="13%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getAccountDateFormatted()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="6%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="5%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapFailAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="11%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCsFlownAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="6%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="5%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgFailAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="6%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="5%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomFailAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="6%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getElmSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="5%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getElmFailAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="6%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCrmTrustSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                width="5%" height="24">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCrmTrustFailAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="24" width="6%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTrustCrmSuccAccCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="24" width="5%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTrustCrmFailAccCount()%>
                                </font>
                            </td>
                        </tr>                             
                        <%  
                            } }
                                }
                                catch(Exception e){
                                }
                                }
                           %>
                        <%
            if(eaiDashBoardBean.size()>0 && InterfaceName.equalsIgnoreCase("Accounts"))
            {
            %>
                        <%
                                
                       try{
                           
                           EaiDashBoardBean eaiDashBoardBeanVal=new EaiDashBoardBean();
                           eaiDashBoardBeanVal=(EaiDashBoardBean)eaiDashBoardBean.get(eaiDashBoardBean.size()-1);
                            %>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowGrey" align="center"
                                width="13%" height="24">
                                <strong><font face="Garamond" size="2">Total</font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="6%" height="24">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getSapSuccAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="5%" height="24">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getSapFailAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="11%" height="24">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCsFlownAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="6%" height="24">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCpfgSuccAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="5%" height="24">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCpfgFailAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="6%" height="24">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getTomSuccAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="5%" height="24">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getTomFailAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="6%" height="24">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getElmSuccAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="5%" height="24">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getElmFailAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="6%" height="24">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCrmTrustSuccAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                width="5%" height="24">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCrmTrustFailAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="24" width="6%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getTrustCrmSuccAccCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="24" width="5%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getTrustCrmFailAccCountSum()%>
                                    </font></strong>
                            </td>
                        </tr>
                    </tbody>
                    <input type="hidden" name="crmTrustSuccAccCountVal"
                           value="<%=eaiDashBoardBeanVal.getCrmTrustSuccAccCountSum()%>"></input>
                    <input type="hidden" name="crmTrustFailAccCountVal"
                           value="<%=eaiDashBoardBeanVal.getCrmTrustFailAccCountSum()%>"></input>
                    <input type="hidden" name="trustCrmSuccAccCountVal"
                           value="<%=eaiDashBoardBeanVal.getTrustCrmSuccAccCountSum()%>"></input>
                    <input type="hidden" name="trustCrmFailAccCountVal"
                           value="<%=eaiDashBoardBeanVal.getTrustCrmFailAccCountSum()%>"></input>
                    <%  
                             
                                }
                                catch(Exception e){
                                }
                                }
                           %>
                </table>
            </div>
            <br></br>
            <div id="tblOpportunities" name="tblOpportunities">
                <table cellpadding="4" class="litebluetableborder" width="90%">
                    <tbody>
                        <tr class="tableHeader">
                            <td align="left"
                                style="font-family:Arial;font-size:12"
                                width="24%">
                               &nbsp;
                            </td>
                            <th align="center"
                                 class="bodytextbold" style="font-size:14; font-family:Verdana"
                                colspan="4" width="70%">
                                <font size="3">
                                    Opportunities
                                </font>
                            </th>
                        </tr>
                        <tr class="tableHeader">
                            <td align="left"
                                style="font-family:Arial;font-size:12"
                                width="24%">
                                &nbsp;
                            </td>
                            <th align="center"
                                 class="bodytextbold" style="font-size:14; font-family:Verdana"
                                colspan="2">
                                <font size="2">
                                    SIEBEL to TRUST
                                    <img src="../images/barChartImg.jpg"
                                         width="20" height="20"
                                         onclick="onClickChartIconCRMtoTrustOpty();"
                                         style="cursor: pointer; border: 1px solid red;"
                                         title="Show Chart"
                                         onmouseover="this.style.background='red';"
                                         onmouseout="this.style.background=''"/>
                                </font>
                            </th>
                            <th align="center"
                                 class="bodytextbold" style="font-size:14; font-family:Verdana"
                                width="39%" colspan="2">
                                <font size="2">
                                    TRUST to SIEBEL
                                    <img src="../images/barChartImg.jpg"
                                         width="20" height="20"
                                         onclick="onClickChartIconTrusttoCRMOpty();"
                                         style="cursor: pointer; border: 1px solid red;"
                                         title="Show Chart"
                                         onmouseover="this.style.background='red';"
                                         onmouseout="this.style.background=''"/>
                                </font>
                            </th>
                        </tr>
                        <tr class="tableHeader">
                            <th align="center"
                                 class="bodytextbold" style="font-size:14; font-family:Verdana"
                                width="24%">
                                <font size="1">
                                    Date
                                </font>
                            </th>
                            <th align="center"
                                 class="bodytextbold" style="font-size:14; font-family:Verdana"
                                width="17%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center"
                                 class="bodytextbold" style="font-size:14; font-family:Verdana"
                                width="18%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                            <th align="center"
                                 class="bodytextbold" style="font-size:14; font-family:Verdana"
                                width="19%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center"
                                 class="bodytextbold" style="font-size:14; font-family:Verdana"
                                width="22%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                        </tr>
                        <%
            if(eaiDashBoardBean.size()>0 && InterfaceName.equalsIgnoreCase("Opportunities"))
            {
            %>
                        <%
                                
                       try{
                           for(int i=0;i<eaiDashBoardBean.size()-1;i++)
                           {
                           EaiDashBoardBean eaiDashBoardBeanVal=new EaiDashBoardBean();
                           eaiDashBoardBeanVal=(EaiDashBoardBean)eaiDashBoardBean.get(i);
                            if(i%2==0){%>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowGrey" align="center"
                                height="16" width="24%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getOptyDateFormatted()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="16" width="17%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCrmTrustSuccOptyCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="16" width="18%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCrmTrustFailOptyCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="16" width="19%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTrustCrmSuccOptyCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="16" width="22%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTrustCrmFailOptyCount()%>
                                </font>
                            </td>
                        </tr>
                          <%}
                             else{%>
                              <tr class="tbbg1">
                            <td class="bodytext tableRowBlue" align="center"
                                height="16" width="24%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getOptyDateFormatted()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="16" width="17%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCrmTrustSuccOptyCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="16" width="18%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCrmTrustFailOptyCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="16" width="19%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTrustCrmSuccOptyCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="16" width="22%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTrustCrmFailOptyCount()%>
                                </font>
                            </td>
                        </tr>                             
                        <%  
                             }}
                                }
                                catch(Exception e){
                                }
                                }
                           %>
                        <%             
                           
                  if(eaiDashBoardBean.size()>0 && InterfaceName.equalsIgnoreCase("Opportunities"))
            {
            %>
                        <%
                                
                       try{                           
                           EaiDashBoardBean eaiDashBoardBeanVal=new EaiDashBoardBean();
                           eaiDashBoardBeanVal=(EaiDashBoardBean)eaiDashBoardBean.get(eaiDashBoardBean.size()-1);
                            %>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowGrey" align="center"
                                height="16" width="24%">
                                <font face="Garamond" size="2">
                                    <strong>Total</strong>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="16" width="17%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCrmTrustSuccOptyCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="16" width="18%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCrmTrustFailOptyCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="16" width="19%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getTrustCrmSuccOptyCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="16" width="22%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getTrustCrmFailOptyCountSum()%>
                                    </font><input type="hidden"
                                                  name="crmTrustSuccOptyCountVal"
                                                  value="<%=eaiDashBoardBeanVal.getCrmTrustSuccOptyCountSum()%>"/><input type="hidden"
                                                                                                                         name="crmTrustFailOptyCountVal"
                                                                                                                         value="<%=eaiDashBoardBeanVal.getCrmTrustFailOptyCountSum()%>"/><input type="hidden"
                                                                                                                                                                                                name="trustCrmSuccOptyCountVal"
                                                                                                                                                                                                value="<%=eaiDashBoardBeanVal.getTrustCrmSuccOptyCountSum()%>"/><input type="hidden"
                                                                                                                                                                                                                                                                       name="trustCrmFailOptyCountVal"
                                                                                                                                                                                                                                                                       value="<%=eaiDashBoardBeanVal.getTrustCrmFailOptyCountSum()%>"/></strong>
                            </td>
                        </tr>
                        <%  
                             }                              
                                catch(Exception e){
                                }
                                }
                           %>
                    </tbody>
                </table>
            </div>
            <br></br>
            <div id="tblContacts" name="tblContacts">
                <table cellpadding="4" class="litebluetableborder" width="90%">
                    <tbody>
                        <tr class="tableHeader">
                            <td align="left"
                                style="font-family:Arial;font-size:12"
                                width="10%">
                                &nbsp;
                            </td>
                            <th align="center"
                                class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                colspan="10" width="80%">
                                <font size="3">
                                    Contacts
                                </font>
                            </th>
                        </tr>
                        <tr class="tableHeader">
                            <td align="left"
                                style="font-family:Arial;font-size:12"
                                width="10%">
                                &nbsp;
                            </td>
                            <th align="center"
                               class="bodytextbold " width="16%"
                                style="font-size:14; font-family:Verdana"
                                colspan="2">
                                <font size="2">
                                    SAP
                                </font>
                            </th>
                            <th align="center"
                               class="bodytextbold "  width="16%"
                                style="font-size:14; font-family:Verdana"
                                colspan="2">
                                <font size="2">
                                    CPFG
                                </font>
                            </th>
                            <th align="center"
                                class="bodytextbold "  width="16%"
                                style="font-size:14; font-family:Verdana"
                                colspan="2">
                                <font size="2">
                                    TOM
                                </font>
                            </th>
                             <th align="center"
                                class="bodytextbold "  width="16%"
                                style="font-size:14; font-family:Verdana"
                                colspan="2">
                                <font size="2">
                                    SIEBEL to TRUST
                                </font>
                            </th>
                             <th align="center"
                                class="bodytextbold "  width="16%"
                                style="font-size:14; font-family:Verdana"
                                colspan="2">
                                <font size="2">
                                    TRUST to SIEBEL
                                </font>
                            </th>
                        </tr>
                        <tr class="tableHeader">
                            <th align="center"
                               class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="10%">
                                <font size="1">
                                    Date
                                </font>
                            </th>
                            <th align="center"
                                class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center"
                                class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                            <th align="center"
                                class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center"
                               class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                            <th align="center"
                                class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center"
                                class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                              <th align="center"
                                class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center"
                                class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                            <th align="center"
                                class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">
                                    Success
                                </font>
                            </th>
                            <th align="center"
                                class="bodytextbold "
                                style="font-size:14; font-family:Verdana"
                                width="8%">
                                <font size="1">
                                    Fail
                                </font>
                            </th>
                        </tr>
                        <%
                     if(eaiDashBoardBean.size()>0 && InterfaceName.equalsIgnoreCase("Contacts"))
                    {
                    %>
                        <%
                                
                       try{
                           for(int i=0;i<eaiDashBoardBean.size()-1;i++)
                           {
                           EaiDashBoardBean eaiDashBoardBeanVal=new EaiDashBoardBean();
                           eaiDashBoardBeanVal=(EaiDashBoardBean)eaiDashBoardBean.get(i);
                           if(i%2==0){%>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="10%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getContactDateFormatted()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapSuccContactCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapFailContactCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgSuccContactCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgFailContactCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomSuccContactCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomFailContactCount()%>
                                </font>
                            </td>
                              <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                     <%=eaiDashBoardBeanVal.getCrmTrustSuccContactCount()%>
                                </font>
                            </td>
                             <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCrmTrustFailContactCount()%>
                                </font>
                            </td>
                             <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                   <%=eaiDashBoardBeanVal.getTrustCrmSuccContactCount()%>
                                </font>
                            </td>
                             <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTrustCrmFailContactCount()%>
                                </font>
                            </td>
                        </tr>
                         <%}
                             else{%>
                              <tr class="tbbg1">
                            <td class="bodytext tableRowBlue" align="center"
                                height="26" width="10%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getContactDateFormatted()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapSuccContactCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getSapFailContactCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgSuccContactCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCpfgFailContactCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomSuccContactCount()%>
                                </font>
                            </td>
                            <td class="bodytext tableRowBlue" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getTomFailContactCount()%>
                                </font>
                            </td>
                              <td class="bodytext tableRowBlue" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                     <%=eaiDashBoardBeanVal.getCrmTrustSuccContactCount()%>
                                </font>
                            </td>
                              <td class="bodytext tableRowBlue" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                    <%=eaiDashBoardBeanVal.getCrmTrustFailContactCount()%>
                                </font>
                            </td>
                              <td class="bodytext tableRowBlue" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                  <%=eaiDashBoardBeanVal.getTrustCrmSuccContactCount()%>
                                </font>
                            </td>
                              <td class="bodytext tableRowBlue" align="center"
                                height="26" width="8%">
                                <font face="Garamond" size="2">
                                   <%=eaiDashBoardBeanVal.getTrustCrmFailContactCount()%>
                                </font>
                            </td>
                        </tr>
                             
                        <%  
                            } }
                                }
                                catch(Exception e){
                                }
                                }
                           %>
                        <%
                     if(eaiDashBoardBean.size()>0 && InterfaceName.equalsIgnoreCase("Contacts"))
                    {
                    %>
                        <%
                                
                       try{                          
                           EaiDashBoardBean eaiDashBoardBeanVal=new EaiDashBoardBean();
                           eaiDashBoardBeanVal=(EaiDashBoardBean)eaiDashBoardBean.get(eaiDashBoardBean.size()-1);
                            %>
                        <tr class="tbbg1">
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="10%">
                                <strong><font face="Garamond" size="2">Total</font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getSapSuccContactCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getSapFailContactCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCpfgSuccContactCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getCpfgFailContactCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getTomSuccContactCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <strong><font face="Garamond" size="2">
                                        <%=eaiDashBoardBeanVal.getTomFailContactCountSum()%>
                                    </font></strong>
                            </td>
                            <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <strong><font face="Garamond" size="2">
                                          <%=eaiDashBoardBeanVal.getCrmTrustSuccContactCountSum()%>
                                    </font></strong>
                            </td>
                             <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <strong><font face="Garamond" size="2">
                                          <%=eaiDashBoardBeanVal.getCrmTrustFailContactCountSum()%>
                                    </font></strong>
                            </td>
                             <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <strong><font face="Garamond" size="2">
                                          <%=eaiDashBoardBeanVal.getTrustCrmSuccContactCountSum()%>
                                    </font></strong>
                            </td>
                             <td class="bodytext tableRowGrey" align="center"
                                height="26" width="8%">
                                <strong><font face="Garamond" size="2">
                                         <%=eaiDashBoardBeanVal.getTrustCrmFailContactCountSum()%>
                                    </font></strong>
                            </td>
                        </tr>
                        <%  
                             }                               
                                catch(Exception e){
                                }
                                }
                           %>
                    </tbody>
                </table>
            </div>
        </form></body>
</html>
<%
}catch(Exception e){%>
<table width="100%">
    <tr>
        <td class="bodytextbold" align="center">Unable to procees your query.
                                                Sorry for the inconvenience
                                                caused.</td>
    </tr>
    <tr>
        <%  e.getMessage();%>
    </tr>
</table>
<%    System.out.println("Exception in displayErrorMessage.jsp : "+e.getMessage());
}
%>