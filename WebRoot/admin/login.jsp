<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<%
	String action=request.getParameter("action");
	
	if(action!=null&&action.equals("login")){
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		if(username==null||!username.trim().equals("admin")){
			out.println("username is not correct");
		}else if(password==null||!password.trim().equals("admin")){
			out.println("password is not correct");
		}else{
			session.setAttribute("admin","true");
			response.sendRedirect("index.jsp");
		}
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>ºóÌ¨µÇÂ¼</title>
    
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
		<td>admin name:</td>
		<td><input type="text"  name="username"/></td>
	</tr>
	<tr>
		<td>admin password:</td>
		<td><input type="password"  name="password"/></td>
	</tr>
	<tr>
		<td><input type="submit" value="login"/></td><td><input type="reset" value="reset"/></td>
	</tr>
  		</table>
  	</form>
  </body>
</html>
