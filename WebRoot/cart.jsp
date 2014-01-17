<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>

<%
	Cart cart=(Cart)session.getAttribute("cart");
	if(cart==null){
		out.println("您没有选中任何物品");
		return;
	}
%>

<center>购物车</center>
<form action="cartupdate.jsp" method="post" >
<table border="1" align="center">
  <tr>
    <th>商品ID</th>
    <th>商品名称</th>
    <th>商品价格</th>
    <th>商品数量</th>
  </tr>
  <%
  	List<CartItem> items=cart.getItems();
  	for(int i=0;i<items.size();i++)
  	{
  		CartItem ci=items.get(i);
  		%>
  
  <tr>
    <td><%=ci.getProductId() %></td>
    <td><%=ci.getName() %></td>
    <td><%=ci.getPrice() %></td>
    <td><input type="text" name="<%="p"+ci.getProductId() %>" value="<%=ci.getCount() %>"></td>
  </tr> 
  
  <%
  	}
  	%>
  	
</table>
<center>
	共<%=Math.round(cart.getTotalPrice()*100)/100.0 %>元<br>
	<hr>
	<input type="submit" value="修改购买数量" />
	<input type="button" value="确认订单" onclick="document.location.href='confirm.jsp'" />
</center>
</form>


