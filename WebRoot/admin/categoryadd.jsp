<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@include file="_SessionCheck.jsp" %>

<%
	request.setCharacterEncoding("GBK");
	String StrPid=request.getParameter("pid");
	int pid=0;
	
	if(StrPid!=null){
		pid=Integer.parseInt(StrPid);
	}
	String action=request.getParameter("action");
	if(action!=null && action.trim().equals("add")){
		String name=request.getParameter("name");
		String descr=request.getParameter("descr");
		
		if(pid==0){
			Category.addTopCategory(name,descr);	
		}else{
			Category.addChildCategory(pid,name,descr);
		}
		out.println("类别添加成功！");
		response.sendRedirect("categorylist.jsp");
		return;
		
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>类别添加</title>
    
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
  	<center>添加根类别</center>
	<form action="categoryadd.jsp" method="post">
	<input type="hidden" name="action" value="add" />
	<input type="hidden" name="pid" value="<%=pid %>" />
	<table>
		<tr>
			<td>类别名称：</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>类别描述：</td>
			<td><textarea name="descr" rows="8" cols="40"></textarea></td>
		</tr>
		<tr><td colspan="2"><input type="submit" value="提交"/></td></tr>
	</table>
	</form>
  </body>
</html>
