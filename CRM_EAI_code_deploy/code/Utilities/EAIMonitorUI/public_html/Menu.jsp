<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta http-equiv="Content-Language" content="en"/>
        <title>Drop Menu 1 - Horizontal - Example 1 - MyGosuMenu</title>
        <style type="text/css">
	h1 { font-size: 10px; }
    body {
        font: 10px tahoma;
        background: #ffffff;
		margin: 1em 2em;
		padding: 0em;
    }
    </style>
        <link rel="stylesheet" type="text/css" href="css/MenuStyle.css"/>
        <script type="text/javascript" src="script/ie5.js"></script>
        <script type="text/javascript" src="script/DropMenu1.js"></script>
		<script language="JavaScript">

		var myObject = new Object();

		function loginpopup(){

			var loginStatus = document.MenuForm.isValidUser.value;

			if ( loginStatus == "null" || loginStatus == null || loginStatus == "")
			{
				loginStatus = "NO";
			}

			if ( loginStatus == "NO")
			{
					myObject.username  = '';
					myObject.password  = '';
					myObject.status  = '';

					window.showModalDialog( "login.jsp", myObject,"dialogWidth:300px;dialogHeight:150px;resizable:no;status:no;center:yes;help:no;");

					if(myObject.status == "INPUT_PROVIDED" || myObject.status == "CANCELLED") {
					   if(myObject.username != undefined  && myObject.password != undefined )
						{
							var username = myObject.username;
							var password = myObject.password;

							if(username=="admin" && password=="password1") {
									document.MenuForm.isValidUser.value="YES";
									window.parent.frames["contents"].location.href="sequencestatus/SequenceStatus.jsp";
							} else {
									document.MenuForm.isValidUser.value="NO";
									alert("Invalid Username / Password");
							}
						}// End of myObject.username != undefined  && myObject.password != undefined
					} else {
						document.MenuForm.isValidUser.value="NO";
					} // End of myObject.status == "INPUT_PROVIDED" || myObject.status == "CANCELLED"
			} else {
				window.parent.frames["contents"].location.href="sequencestatus/SequenceStatus.jsp";
			} // End of loginStatus == "NO"

		} // End of loginpopup


		</script>
    </head>
<body>
	<form name="MenuForm" method="post">
    <input type="HIDDEN" name="isValidUser" value=""></input>
    <table>
            <tr>
                <td width="1000">
                    <img src="images/eaimonitor.jpg" alt="EAI Monitor"
                         width="200" height="60"/>
                </td>
                <td>
                    <img src="images/thomsonreuterslogo.jpg"
                         alt="Thomson Reuters Logo" width="280" height="40"/>
                </td>
            </tr>
        </table><table cellspacing="0" cellpadding="0" id="menu1" class="dm1"
                       rules="all">
            <tr>
                <td>
                    <a class="item1 left" href="db/LockedDBSessions.jsp"
                       target="contents">Locked DBSessions</a>
                </td>
                <td>
                    <a class="item1" href="javascript:void(0)">Stuck Accounts</a>
                    <div class="section">
                        <a class="item2"
                           href="accounts/displayErrorMessage.jsp?Interface=crmToTrustAcc"
                           target="contents">Siebel To Trust</a>
                         
                        <a class="item2"
                            href="accounts/displayErrorMessage.jsp?Interface=trustToCrmAcc"
                           target="contents">Trust To Siebel</a>
                         
                        <a class="item2"
                           href="accounts/StuckAccountsSiebelToTOM.jsp"
                           target="contents">Siebel To TOM</a>
                         
                        <a class="item2"
                           href="accounts/StuckAccountsSiebelToCPFG.jsp"
                           target="contents">Siebel To CPFG</a>
                           
                         <a class="item2"
                           href="accounts/StuckAccountsSiebelToELM.jsp"
                           target="contents">Siebel To ELM</a>
						
			<a class="item2"
                           href="accounts/StuckAccountsSiebelToSAP.jsp"
                           target="contents">Siebel To SAP</a>
                    </div>
                </td>
                <td>
                    <a class="item1" href="javascript:void(0)">Stuck Oppties</a>
                    <div class="section">
                        <a class="item2"
                            href="accounts/displayErrorMessage.jsp?Interface=crmToTrustOpty"
                           target="contents">Siebel To Trust</a>
                         
                        <a class="item2"
                           href="accounts/displayErrorMessage.jsp?Interface=trustToCrmOpty"
                           target="contents">Trust To Siebel</a>
                    </div>
                </td>
                <td>
                    <a class="item1" href="javascript:void(0)">Stuck Orders</a>
                    <div class="section">
                        <a class="item2"
                           href="orders/StuckOrdersSiebelToTOM.jsp"
                           target="contents">Siebel To TOM</a>
                         
                        <a class="item2"
                           href="orders/StuckOrdersSiebelToCPFG.jsp"
                           target="contents">Siebel To CPFG</a>
						   
                        <a class="item2"
                           href="orders/StuckOrdersSiebelToSAP.jsp"
                           target="contents">Siebel To SAP</a>
						 
                        <a class="item2"
                           href="orders/StuckOrdersSiebelToSEA.jsp"
                           target="contents">Siebel To SEA</a>
                        <a class="item2"
                           href="orders/StuckOrdersSiebelToELM.jsp"
                           target="contents">Siebel To ELM</a>
                    </div>
                </td>
                <td>
                    <a class="item1" href="javascript:void(0)">Stuck Contacts</a>
                    <div class="section">
                        <a class="item2"
                           href="contacts/StuckContactsSiebelToTOM.jsp"
                           target="contents">Siebel To TOM</a>
                         
                        <a class="item2"
                           href="contacts/StuckContactsSiebelToCPFG.jsp"
                           target="contents">Siebel To CPFG</a>
						
                        <a class="item2"
                           href="contacts/StuckContactsSiebelToSAP.jsp"
                           target="contents">Siebel To SAP</a>
                        <a class="item2"
                           href="accounts/displayErrorMessage.jsp?Interface=crmToTrustContact"
                           target="contents">Siebel To Trust</a>
                        <a class="item2"
                           href="accounts/displayErrorMessage.jsp?Interface=trustToCrmContact"
                           target="contents">Trust To Siebel</a>  
                        <a class="item2"
                           href="updates/StuckContactsAAAUpdates.jsp"
                           target="contents">CPFG To Siebel</a>
                    </div>
                </td>
                <!--td>
                    <a class="item1" href="javascript:void(0)">AAA Updates</a>
                    <div class="section">
                        <a class="item2"
                           href="updates/StuckContactsAAAUpdates.jsp"
                           target="contents">CPFG To SIEBEL</a>
                         
                    </div>
                   
                  </td-->
                <td>
                    <a class="item1 right" href="mqserver/MQServerStatus.jsp"
                       target="contents">MQ Server Status</a>
                </td>
                <td>
                    <a class="item1 right" href="interfacestatus/InterfaceStatusDisplay.jsp"
                       target="contents">Interface Status</a>
                </td>
	<td>
                    <a class="item1 right" href="eaidashboard/EAIDashBoard.jsp"
                       target="contents">EAI Dash Board</a>
                </td>
 	 <td>
                    <a class="item1 right" href="eaiconsole/EAIConsole.jsp"
                       target="contents">EAI Process Console</a>
                </td>
                
                <td>
		                    <a class="item1 right" href="sequencereleaser/InvokeSequenceReleaser.jsp"
		                       target="contents">Sequence Releaser</a>
                </td>
			<td>
                    <a class="item1 right" href="JavaScript: void(0)" onclick="loginpopup();"
                       target="contents">Sequence Status</a>
                </td>	
            </tr>
        </table><script type="text/javascript">
    var dm1 = new DropMenu1('menu1');
    dm1.position.top = -1;
    dm1.init();
    </script></body>
	</form>
</html>