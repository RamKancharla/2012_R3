<html>
<head>
<title> :: Login form :: </title>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
response.setHeader("Cache-Control","no-store");
%>
<script language="JavaScript" type="text/javascript">

    function setInputValue() {
	
        var myObject = window.dialogArguments;
	
		var usernameInput = document.LoginForm.username.value;  
		var passwordInput = document.LoginForm.password.value;  

        myObject.username = usernameInput;
        myObject.password = passwordInput;
        myObject.status = 'INPUT_PROVIDED';
        
        window.close();
    }

	function closeWindow(){
		var myObject = window.dialogArguments;
        myObject.username = undefined;
        myObject.password = undefined;
        myObject.status = 'CANCELLED';

		window.close();
	}

	function validateKeyEvent(){

		if (event.keyCode == 13) {
			setInputValue();
		}
	}


</script>


</head>
<body onKeyPress="validateKeyEvent()">
<form name="LoginForm" method="post">
	<BR><BR>
	<table border="1" align="center" style="width:250px;">
		<tr>
			<td align="left">Username:</td>
			<td align="left"><input type="text" name="username"/></td>
		</tr>
		<tr>
			<td align="left">Password:</td>
			<td align="left"><input type="password" name="password"/></td>
		</tr>
		<tr>
			<td align="left">
				<input type="button" value="Login" onclick="setInputValue();"/>             
			</td>
			<td align="left">
				<input type="button" value="Cancel" onclick="closeWindow();" />             
			</td>
		</tr>
	</table>

</form>
</body>
</html> 