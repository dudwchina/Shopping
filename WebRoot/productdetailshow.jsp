<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.text.SimpleDateFormat"%>

<%
	request.setCharacterEncoding("GBK");
	int id=Integer.parseInt(request.getParameter("id"));	
	Product p=ProductMgr.getInstance().loadById(id);
	
	SimpleDateFormat sf=new SimpleDateFormat("yyyy��MM��dd��");
	Date date=p.getPdate();
	String pDate=sf.format(date);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>��Ʒ��ϸ��Ϣ</title>
    
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
  	<center>��Ʒ��ϸ��Ϣ</center>
	<img src="images/20104116274086520.jpg" alt="<%=p.getName() %>" border="0" height="98" width="98"><br>
	��Ʒ���ƣ�<%=p.getName() %><br><br>
	�г��ۣ�<%=p.getNormalPrice() %><br><br>
	��Ա�ۣ�<%=p.getMemberPrice() %><br><br>
	��Ʒ������<%=p.getDescr() %><br><br>
	�ϼ�ʱ�䣺<%=pDate %><br><br>
	<a href="buy.jsp?id=<%=id %>">����</a>
  </body>
</html>
