<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.data.Login" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<HTML><HEAD><%@ include file="head.txt" %></HEAD>
<BODY><font size=2>
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
    LinkedList car =loginBean.getCar();
    if(car==null)
      out.print("<h2> 购物车没有物品.</h2>");
    else {
       Iterator<String> iterator=car.iterator();
       StringBuffer buyGoods = new StringBuffer();
       int n=0;
       double priceSum =0;
	   out.print("<div class='row'>");
	   out.print("<div class='col-md-10' align='center'>");
       out.print("购物车中的物品：<table class='table table-bordered'>");
       while(iterator.hasNext()) {
           String goods=iterator.next();
           String showGoods="";
           n++; 
           //购车车物品的后缀是“#价格数字"，比如“iPhone手机价格3989 #3989”
           int index=goods.lastIndexOf("#");
           if(index!=-1){
              priceSum+=Double.parseDouble(goods.substring(index+1));
              showGoods = goods.substring(0,index);
           }
           buyGoods.append(n+":"+showGoods);
           String del="<form  action='deleteServlet' method = 'post'>"+
                     "<input type ='hidden' name='delete' value= "+goods+">"+
                     "<input type ='submit'  value='删除' class='btn btn-sm btn-danger'></form>";
          
           out.print("<tr><td>"+showGoods+"</td>");
           out.print("<td>"+del+"</td></tr>");
       }
       out.print("</table>");
       out.print("</div>");
       out.print("</div>");
       String orderForm = "<form action='buyServlet' method='post'>"+
              " <input type ='hidden' name='buy' value= "+buyGoods+" >"+ 
              " <input type ='hidden' name='price' value= "+priceSum+" >"+           
              "<input type ='submit' class='btn btn-lg btn-success' value='生成订单'></form>";
       out.print(orderForm); 
    } 
%>
</div></font>
</BODY></HTML>
