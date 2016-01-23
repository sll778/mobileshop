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
	 <h2 class="form-signin-heading">µÇÂ¼</h2>
	<Input type="text" name="logname" id="inputEmail" class="form-control" placeholder="µÇÂ¼Ãû³Æ" required autofocus style="width:300px">
	<Input type="password" name="password" id="inputPassword" class="form-control" placeholder="ÊäÈëÃÜÂë" required style="width:300px">
	<button class="btn btn-lg btn-primary btn-block" type="submit" style="width:300px">µÇÂ¼</button>
	</FORM>
	<div align="center" >
		µÇÂ¼·´À¡ÐÅÏ¢:<br>
		<jsp:getProperty name="loginBean" property="backNews"/>
		<br>µÇÂ¼Ãû³Æ:<br><jsp:getProperty name="loginBean" property="logname"/>
	<div >
	</div>
</div>

</BODY></HTML>
