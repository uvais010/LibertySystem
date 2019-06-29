<%@include file="include.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Liberty Building Login Form</title>
<p1 class="h1"> Liberty Building System </p1>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	/* background-image: url(Liberty.jpg); */
	background-repeat: no-repeat;
	background-position: center;
	background-size: 1400px 800px
}

.form-container {
	width: 250px;
	height: auto;
	padding: 20px 30px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px 0 #000;
}

.login-box {
	width: 320px;
	height: 420px;
	background: rgba(0, 0, 0, 0.5);
	color: #fff;
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	padding: 80px 40px;
}

h1 {
	margin: 0;
	padding: 0 0 20px;
	text-align: center;
	font-size: 22px;
}

.login-box p {
	margin: 0;
	padding: 0;
	font-weight: bold;
}

.login-box input {
	width: 100%;
	margin-bottom: 20px;
}

.login-box input[type="text"], input[type="password"] {
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}

.login-box input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	background: #1c8adb;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
}

.login-box input[type="submit"]:hover {
	cursor: pointer;
	background: #39dc78;
	color: #000;
}
</style>

</head>
<script type="text/javascript">
	function validateFields() {

		var userField = document.getElementById("Username").value;
		var passField = document.getElementById("Password").value;

		if (userField == null || userField == "") {
			alert("User Name Cannot be Blank");
			return false;
		}

		if (passField == null || passField == "") {
			alert("Password Cannot be Blank");
			window.focus();
			return false;
		}
	}
</script>
<body>
	<font color="red">${message}</font>
	<div class="login-box">
		<form:form id="loginForm" method="post" action="login"
			onsubmit="return javascript:validateFields()"
			modelAttribute="loginBean">

			<p>USERNAME</p>
			<input type="text" id="Username" placeholder="Enter Username">
			<p>PASSWORD</p>
			<input type="Password" id="Password" placeholder="Enter Password">
			<input type="SUBMIT" value="Login">
			<a href="#">FORGET PASSWORD</a>
		</form:form>
	</div>
</body>
</html>