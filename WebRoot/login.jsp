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
<html lang="zh-CN">
  <head>
    
    <title>ÓÃ»§µÇÂ¼</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="script/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="script/bootstrap/css/signin.css" >
  </head>
  
  <body>
  <div class="container">
  <form action="login.jsp" method="post" class="form-signin" role="form">
  		<input type="hidden" name="action" value="login"/>
  		<h2 class="form-signin-heading">ÇëµÇÂ¼</h2>
  		<input type="text"  name="username" class="form-control" placeholder="Username" required autofocus/>
	
		<input type="password"  name="password" class="form-control" placeholder="Password" required/>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
  	</form>
  	 </div>
  	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="script/bootstrap/js/bootstrap.js"></script>
  </body>
</html>
