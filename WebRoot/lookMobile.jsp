<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML><HEAD><%@ include file="head.txt" %></HEAD>
<BODY><font size=2>
<div align="center">
<div class="container">
<div class="jumbotron">
<h2>ѡ��ĳ���ֻ�<br>��ҳ��ʾ�����ֻ�</h2>
<%   try {  Class.forName("com.mysql.jdbc.Driver");
      }
      catch(Exception e){} 
      String uri="jdbc:mysql://localhost:3306/mobileshop?"+
                             "user=root&password=sll&characterEncoding=gb2312";
      Connection con; 
      Statement sql;
      ResultSet rs;
      try {
        con=DriverManager.getConnection(uri);
        sql=con.createStatement();
        //��ȡmobileClassify����÷��ࣺ  
        rs=sql.executeQuery("SELECT * FROM mobileClassify  ");
        out.print("<form action='queryServlet' method ='post'>") ;
        out.print("<select name='fenleiNumber'>") ;
        while(rs.next()){
           int id = rs.getInt(1);
           String mobileCategory = rs.getString(2);
           out.print("<option value ="+id+">"+mobileCategory+"</option>");
        }  
        out.print("</select>");
        out.print("&nbsp;&nbsp;<input type ='submit' class='btn btn-sm btn-success' value ='�ύ'>");  
        out.print("</form>");
        con.close();
     }
     catch(SQLException e){ 
        out.print(e);
     }
%>
</div>
</div>
</div></font>
</BODY></HTML>
