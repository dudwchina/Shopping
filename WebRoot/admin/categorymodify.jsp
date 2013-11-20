<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@include file="_SessionCheck.jsp" %>

<%
	
	request.setCharacterEncoding("GBK");
	int id=Integer.parseInt(request.getParameter("id"));
	
	 //System.out.println(id);
	
	 Category category=Category.getCategoryById(id);
	
	 String action=request.getParameter("action");
	 //System.out.println(action);
		if(action!=null && action.trim().equals("modify")){
		String name=request.getParameter("name");
		String descr=request.getParameter("descr");
		//System.out.println(name);
		//System.out.println(descr);
		Category.updateCategoryById(id,name,descr);
		out.println("类别修改成功！");
		response.sendRedirect("categorylist.jsp");
		return;
		}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>类别修改</title>
    
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
  	<center>修改类别</center>
	<form action="categorymodify.jsp?id=<%=id %>" method="post">
	<input type="hidden" name="action" value="modify" />
	<table>
		<tr>
			<td>类别名称：</td>
			<td><input type="text" name="name" value="<%=category.getName() %>"></td>  
		</tr>
		<tr>
			<td>类别描述：</td>
			<td><textarea name="descr" rows="8" cols="40"><%=category.getDescr() %></textarea></td>
		</tr>
		<tr><td colspan="2"><input type="submit" value="修改"/></td></tr>
	</table>
	</form>
  </body>
</html>
