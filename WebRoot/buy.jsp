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
	ci.setPrice(p.getNormalPrice());//需要做检查用户是否登录
	ci.setCount(1);//暂时购买数量设置为1
	ci.setName(p.getName());
	cart.add(ci);
	
	response.sendRedirect("cart.jsp");
%>

