<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.text.SimpleDateFormat"%>

<%
	Cart cart=(Cart)session.getAttribute("cart");
	if(cart==null){
		cart=new Cart();
		session.setAttribute("cart",cart);
	}
%>

<%
	request.setCharacterEncoding("GBK");
	int id=Integer.parseInt(request.getParameter("id"));	
	Product p=ProductMgr.getInstance().loadById(id);
	
	CartItem ci=new CartItem();
	ci.setProductId(id);
	ci.setPrice(p.getNormalPrice());//��Ҫ������û��Ƿ��¼
	ci.setCount(1);//��ʱ������������Ϊ1
	ci.setName(p.getName());
	cart.add(ci);
	
	response.sendRedirect("cart.jsp");
%>

