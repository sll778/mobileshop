<%@ page contentType="text/html;charset=GB2312" %>
<jsp:useBean id="userBean" class="mybean.data.Register" scope="request"/>
<HEAD><%@ include file="head.txt" %></HEAD>
<title>注册页面</title>

<HTML><BODY>
<div class="container">
<div class="jumbotron">
<div align="center" class="contatiner">
	<FORM action="registerServlet" method="post" class="form-signin">
		    用户名由字母、数字、下划线构成。
		   <Input class="form-control" placeholder="用户名称" type=text name="logname" style="width:300px">
		   <Input class="form-control" placeholder="用户密码" type=password name="password" style="width:300px">
		   <Input class="form-control" placeholder="重复密码" type=password name="again_password" style="width:300px">
		   <Input class="form-control" placeholder="联系电话" type=text name="phone" style="width:300px">
		   <Input class="form-control" placeholder="邮寄地址" type=text name="address" style="width:300px">
		   <Input class="form-control" placeholder="真实姓名" type=text name="realname" style="width:300px">
		   <button class="btn btn-lg btn-primary btn-block" type="submit" style="width:300px">注册</button>
	</Form>
</div >

<div align="center">
<p> 注册反馈：
<jsp:getProperty name="userBean"  property="backNews" /> 
<table border=3>
     <tr><td>会员名称:</td>
     <td><jsp:getProperty name="userBean" property="logname"/></td>
     </tr>
     <tr><td>姓名:</td>
     <td><jsp:getProperty name="userBean" property="realname"/></td>
     </tr>
     <tr><td>地址:</td>
     <td><jsp:getProperty name="userBean" property="address"/></td>
     </tr>
     <tr><td>电话:</td>
     <td><jsp:getProperty name="userBean" property="phone"/><br></td>
     </tr>
</table></div >
</div>
</div>
</Body></HTML>

