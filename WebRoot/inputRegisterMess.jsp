<%@ page contentType="text/html;charset=GB2312" %>
<jsp:useBean id="userBean" class="mybean.data.Register" scope="request"/>
<HEAD><%@ include file="head.txt" %></HEAD>
<title>ע��ҳ��</title>

<HTML><BODY>
<div class="container">
<div class="jumbotron">
<div align="center" class="contatiner">
	<FORM action="registerServlet" method="post" class="form-signin">
		    �û�������ĸ�����֡��»��߹��ɡ�
		   <Input class="form-control" placeholder="�û�����" type=text name="logname" style="width:300px">
		   <Input class="form-control" placeholder="�û�����" type=password name="password" style="width:300px">
		   <Input class="form-control" placeholder="�ظ�����" type=password name="again_password" style="width:300px">
		   <Input class="form-control" placeholder="��ϵ�绰" type=text name="phone" style="width:300px">
		   <Input class="form-control" placeholder="�ʼĵ�ַ" type=text name="address" style="width:300px">
		   <Input class="form-control" placeholder="��ʵ����" type=text name="realname" style="width:300px">
		   <button class="btn btn-lg btn-primary btn-block" type="submit" style="width:300px">ע��</button>
	</Form>
</div >

<div align="center">
<p> ע�ᷴ����
<jsp:getProperty name="userBean"  property="backNews" /> 
<table border=3>
     <tr><td>��Ա����:</td>
     <td><jsp:getProperty name="userBean" property="logname"/></td>
     </tr>
     <tr><td>����:</td>
     <td><jsp:getProperty name="userBean" property="realname"/></td>
     </tr>
     <tr><td>��ַ:</td>
     <td><jsp:getProperty name="userBean" property="address"/></td>
     </tr>
     <tr><td>�绰:</td>
     <td><jsp:getProperty name="userBean" property="phone"/><br></td>
     </tr>
</table></div >
</div>
</div>
</Body></HTML>

