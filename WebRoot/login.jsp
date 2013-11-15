<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*" %>

<%
	String action=request.getParameter("action");
	
	if(action!=null&&action.equals("login")){
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		try{
		User u=User.validate(username,password);
		session.setAttribute("user",u);
		}catch(UserNotFoundException e){
			out.println("username not exist!");
			return;
		}catch(PasswordNotCorrectException e){
			out.println("password not correct!");
			return;
		}
		response.sendRedirect("selfservice.jsp");
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户登录</title>
    
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
  <form action="login.jsp" method="post">
  		<input type="hidden" name="action" value="login"/>
  		<table border="1" align="center">
  		<tr>
		<td>用户名:</td>
		<td><input type="text"  name="username"/></td>
	</tr>
	<tr>
		<td>密码:</td>
		<td><input type="password"  name="password" /></td>
	</tr>
	<tr>
		<td><input type="submit" value="登录"/></td><td><input type="reset" value="重置"/></td>
	</tr>
  		</table>
  	</form>
  </body>
</html>
