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
	List<SalesOrder> orders=new ArrayList<SalesOrder>();
	int pageCount=OrderMgr.getInstance().getOrders(orders,pageNo,PAGE_SIZE);//获取所有产品列表

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
    		<td>UserID</td>
    		<td>Addr</td>
    		<td>ODate</td>
    		<td>Status</td>
    	</tr>
    	<%
    	for(Iterator<SalesOrder> it=orders.iterator();it.hasNext(); ){
    		SalesOrder so=it.next();
    	
    	%>
    	<tr>
    		<td><%=so.getId() %></td>
    		<td><%=so.getUser().getId()%></td>
    		<td><%=so.getAddr() %></td>
    		<td><%=so.getoDate() %></td>
    		<td><%=so.getStatus() %></td>
    		
    		<td><a href="orderdetail.jsp?id=<%=so.getId() %>" target="detail">订单详情</a></td>
    	</tr>
    	<%
    	}
    	%>
    </table>
    <center>
    	第<%=pageNo %>页 |
    	总<%=pageCount %>页 |
    	<a href="orderlist.jsp?pageno=<%=pageNo-1 %>">上一页</a> |
    	<a href="orderlist.jsp?pageno=<%=pageNo+1 %>">下一页</a> |
    	<a href="orderlist.jsp?pageno=<%=pageCount %>">最后一页</a>
    </center>
  </body>
</html>
