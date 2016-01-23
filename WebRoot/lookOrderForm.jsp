<%@ page contentType="text/html;charset=GB2312" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<%@ page import="java.sql.*" %>
<HTML><HEAD><%@ include file="head.txt" %></HEAD>
<BODY>
<div align="center">
<%  if(loginBean==null){
        response.sendRedirect("login.jsp");//重定向到登录页面
    }
    else {
       boolean b =loginBean.getLogname()==null||
                  loginBean.getLogname().length()==0;
       if(b)
         response.sendRedirect("login.jsp");//重定向到登录页面
    }
    Connection con;
    Statement sql; 
    ResultSet rs;
    try{  Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){}
    try { String uri= "jdbc:mysql://localhost:3306/mobileshop";
          String user="root";
          String password="sll";
          con=DriverManager.getConnection(uri,user,password);
          sql=con.createStatement();
          String cdn=
         "SELECT id,mess,sum FROM orderform where logname= '"+loginBean.getLogname()+"'";
          rs=sql.executeQuery(cdn);
          out.print("<div class=row>");
          out.print("<div class=col-md-10 align=center>");
          out.print("<table class=table table-bordered>");
          out.print("<tr>");
            out.print("<th width=100>"+"订单号");
            out.print("<th width=100>"+"信息");
            out.print("<th width=100>"+"价格");
          out.print("</TR>");
          while(rs.next()){
            out.print("<tr>");
              out.print("<td >"+rs.getString(1)+"</td>"); 
              out.print("<td >"+rs.getString(2)+"</td>");
              out.print("<td >"+rs.getString(3)+"</td>");
              out.print("</tr>") ; 
          }
          out.print("</table>");
          out.print("</div>");
          out.print("</div>");
          con.close();
    }
    catch(SQLException e){ 
          out.print(e);
    }
 %>
</div>
</BODY></HTML>
