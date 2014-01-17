<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="java.sql.Timestamp" %>
<%@page import="com.bjsxt.shopping.*"%>

<%
	request.setCharacterEncoding("GBK");
	User user=(User)session.getAttribute("user");
	if(user==null){
		user=new User();
		user.setId(-1);
	}


	Cart cart=(Cart)session.getAttribute("cart");
	if(cart==null){
		out.println("您没有选中任何物品");
		return;
	}
%>

<%
	String addr=request.getParameter("address");
	System.out.println(addr);
	SalesOrder so=new SalesOrder();
	so.setAddr(addr);
	so.setUser(user);
	so.setCart(cart);
	so.setoDate(new Timestamp(System.currentTimeMillis()));
	so.setStatus(0);
	
	so.save();
	session.removeAttribute("cart");
%>

<center>
感谢您在本站购物，欢迎再次光临！
</center>
