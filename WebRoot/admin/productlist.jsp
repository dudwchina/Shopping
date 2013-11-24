<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<%@page import="java.sql.*,com.bjsxt.shopping.*,java.util.*" %>
<%!
	public static final int PAGE_SIZE=3;
%>
<%
	String strPageNo=request.getParameter("pageno");
	int pageNo=1;
	if(strPageNo!=null){
		pageNo=Integer.parseInt(strPageNo);
	}
	if(pageNo<1) pageNo=1;
%>
<%
	List<Product> products=new ArrayList<Product>();
	int pageCount=ProductMgr.getInstance().getProducts(products,pageNo,PAGE_SIZE);//获取所有产品列表

	if(pageNo>pageCount) pageNo=pageCount;
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
    		<td>Descr</td>
    		<td>NormalPrice</td>
    		<td>MemberPrice</td>
    		<td>Pdate</td>
    		<td>CategoryId</td>
    	</tr>
    	<%
    	for(Iterator<Product> it=products.iterator();it.hasNext(); ){
    		Product p=it.next();
    	
    	%>
    	<tr>
    		<td><%=p.getId() %></td>
    		<td><%=p.getName()%></td>
    		<td><%=p.getDescr() %></td>
    		<td><%=p.getNormalPrice() %></td>
    		<td><%=p.getMemberPrice() %></td>
    		<td><%=p.getPdate() %></td>
    		<td><%=p.getCategoryId() %></td>
    		<td><a href="productdelete.jsp?id=<%=p.getId() %>" target="detail">删除</a>
    		|
    		<a href="productmodify.jsp?id=<%=p.getId() %>" target="detail">修改</a></td>
    	</tr>
    	<%
    	}
    	%>
    </table>
    <center>
    	第<%=pageNo %>页 |
    	总<%=pageCount %>页 |
    	<a href="productlist.jsp?pageno=<%=pageNo-1 %>">上一页</a> |
    	<a href="productlist.jsp?pageno=<%=pageNo+1 %>">下一页</a> |
    	<a href="productlist.jsp?pageno=<%=pageCount %>">最后一页</a>
    </center>
  </body>
</html>
