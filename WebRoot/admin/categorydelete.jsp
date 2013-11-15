<%@page pageEncoding="GB18030"%>
<%@page import="java.sql.*,com.bjsxt.shopping.*"%>
<%@page import="java.util.*,com.bjsxt.shopping.util.*"%>
<%@include file="_SessionCheck.jsp" %>

<%
	int id=Integer.parseInt(request.getParameter("id"));
	int pid=Integer.parseInt(request.getParameter("pid"));
	boolean isLeaf=Boolean.parseBoolean(request.getParameter("isLeaf"));
	//String url=request.getParameter("url");
	Category.delete(id,pid,isLeaf);
	
%>
¹§Ï²£¬É¾³ý³É¹¦£¡
