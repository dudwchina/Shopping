<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>

<%
	Cart cart=(Cart)session.getAttribute("cart");
	if(cart==null){
		out.println("��û��ѡ���κ���Ʒ");
		return;
	}
%>

<center>���ﳵ</center>
<form action="cartupdate.jsp" method="post" >
<table border="1" align="center">
  <tr>
    <th>��ƷID</th>
    <th>��Ʒ����</th>
    <th>��Ʒ�۸�</th>
    <th>��Ʒ����</th>
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
	��<%=Math.round(cart.getTotalPrice()*100)/100.0 %>Ԫ<br>
	<hr>
	<input type="submit" value="�޸Ĺ�������" />
	<input type="button" value="ȷ�϶���" onclick="document.location.href='confirm.jsp'" />
</center>
</form>


