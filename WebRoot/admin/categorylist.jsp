<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<%@page import="java.sql.*,com.bjsxt.shopping.*,java.util.*" %>
<%
	List<Category> categories=Category.getCategories();
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
    		<td>Name</td>
    		<td>Pid</td>
    		<td>isLeaf</td>
    		<td>Grade</td>
    	</tr>
    	<%
    	for(Iterator<Category> it=categories.iterator();it.hasNext(); ){
    		Category c=it.next();
    		String preStr="";
    		for(int i=0;i<c.getGrade();i++){
    			preStr+="----";
    		}
    	%>
    	<tr>
    		<td><%=c.getId() %></td>
    		<td><%=preStr+c.getName() %></td>
    		<td><%=c.getPid() %></td>
    		<td><%=c.isLeaf() %></td>
    		<td><%=c.getGrade() %></td>
    		<td><a href="categoryadd.jsp?pid=<%=c.getId() %>">添加子类别</a></td>
    		<%if(c.isLeaf()){ %>
    		<td><a href="productadd.jsp?categoryid=<%=c.getId() %>">在该类别下添加商品</a></td>
    		<%} %>
    		<td><a href="categorydelete.jsp?id=<%=c.getId() %>&pid=<%=c.getPid() %>&isLeaf=<%=c.isLeaf() %>">删除</a></td>
    	</tr>
    	<%
    	}
    	%>
    </table>
  </body>
</html>
