<%@ page contentType="text/html;charset=GB2312" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<HTML>
<HEAD><%@ include file="head.txt" %>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/sign.css">
</HEAD>
<BODY>
<div class="container" align="center">
	<div class="jumbotron">
	<FORM action="loginServlet" Method="post" class="form-signin">
	 <h2 class="form-signin-heading">��¼</h2>
	<Input type="text" name="logname" id="inputEmail" class="form-control" placeholder="��¼����" required autofocus style="width:300px">
	<Input type="password" name="password" id="inputPassword" class="form-control" placeholder="��������" required style="width:300px">
	<button class="btn btn-lg btn-primary btn-block" type="submit" style="width:300px">��¼</button>
	</FORM>
	<div align="center" >
		��¼������Ϣ:<br>
		<jsp:getProperty name="loginBean" property="backNews"/>
		<br>��¼����:<br><jsp:getProperty name="loginBean" property="logname"/>
	<div >
	</div>
</div>

</BODY></HTML>
