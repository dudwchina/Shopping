<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<%@page import="java.sql.*,com.bjsxt.shopping.*,java.util.*" %>
<%
	List<User> users=User.getUsers();//��ȡ����ע���û�����
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title></title>
    
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
    <table border="1" align="center">
    	<tr>
    		<td>ID</td>
    		<td>UserName</td>
    		<td>Phone</td>
    		<td>Address</td>
    		<td>Rdate</td>
    		<td>Process</td>
    	</tr>
    	<%
    	for(Iterator<User> it=users.iterator();it.hasNext(); ){
    		User u=it.next();
    	
    	%>
    	<tr>
    		<td><%=u.getId() %></td>
    		<td><%=u.getUsername() %></td>
    		<td><%=u.getPhone() %></td>
    		<td><%=u.getAddr() %></td>
    		<td><%=u.getRdate() %></td>
    		<td><a href="userdelete.jsp?id=<%=u.getId() %>" target="detail">DEL</a></td>
    	</tr>
    	<%
    	}
    	%>
    </table>
  </body>
</html>
