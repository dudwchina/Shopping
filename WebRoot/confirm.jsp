<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>

<%
	request.setCharacterEncoding("GBK");
	User user=(User)session.getAttribute("user");
	if(user==null){
		out.println("您尚未登录，如果您确认继续购买，按市场价，注册是免费的");
		out.println("<a href=confirmusenormal.jsp>继续</a><br>");
		out.println("<a href=login.jsp>登录</a>");
	}
	
	Cart cart=(Cart)session.getAttribute("cart");
	if(cart==null){
		out.println("您没有选中任何物品");
		return;
	}
%>

<form action="cartupdate.jsp" method="post" >
<table border="1" align="center">
  <tr>
    <th>商品ID</th>
    <th>商品名称</th>
    <th>商品价格(<%=(user==null?"市场价":"会员价") %>)</th>
    <th>商品数量</th>
  </tr>
  <%
  	List<CartItem> items=cart.getItems();
  	for(int i=0;i<items.size();i++)
  	{
  		CartItem ci=items.get(i);
  		Product p=ProductMgr.getInstance().loadById(ci.getProductId());	
  		%>
  
  <tr>
    <td><%=ci.getProductId() %></td>
    <td><%=p.getName() %></td>
    <td><%=(user==null?p.getNormalPrice():p.getMemberPrice()) %></td>
    <td><%=ci.getCount() %></td>
  </tr> 
  
  <%
  	}
  	%>
  	
</table>
</form>
<center>
	<hr>
	共<%=Math.round(cart.getTotalPrice()*100)/100.0 %>元<br>
	<%
		if(user!=null){
			%>
			欢迎您，<%=user.getUsername() %>！请确认您的送货信息。<br>
			<%
		}
	%>
	
	<form action="order.jsp" method="post">
		送货信息：<br>
		<textarea rows="3" cols="20" name="address"><%=(user==null?"":user.getAddr()) %></textarea><br>
		<input type="submit" value="下单"/>
	</form>
</center>

