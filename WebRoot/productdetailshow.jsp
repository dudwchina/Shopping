<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.text.SimpleDateFormat"%>

<%
	request.setCharacterEncoding("GBK");
	int id=Integer.parseInt(request.getParameter("id"));	
	Product p=ProductMgr.getInstance().loadById(id);
	
	SimpleDateFormat sf=new SimpleDateFormat("yyyy年MM月dd日");
	Date date=p.getPdate();
	String pDate=sf.format(date);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>产品详细信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  
  <body>
  	<center>产品详细信息</center>
	<img src="images/20104116274086520.jpg" alt="<%=p.getName() %>" border="0" height="98" width="98"><br>
	产品名称：<%=p.getName() %><br><br>
	市场价：<%=p.getNormalPrice() %><br><br>
	会员价：<%=p.getMemberPrice() %><br><br>
	产品描述：<%=p.getDescr() %><br><br>
	上架时间：<%=pDate %><br><br>
	<a href="buy.jsp?id=<%=id %>">购买</a>
  </body>
</html>
