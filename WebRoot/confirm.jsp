<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>

<%
	request.setCharacterEncoding("GBK");
	User user=(User)session.getAttribute("user");
	if(user==null){
		out.println("����δ��¼�������ȷ�ϼ������򣬰��г��ۣ�ע������ѵ�");
		out.println("<a href=confirmusenormal.jsp>����</a><br>");
		out.println("<a href=login.jsp>��¼</a>");
	}
	
	Cart cart=(Cart)session.getAttribute("cart");
	if(cart==null){
		out.println("��û��ѡ���κ���Ʒ");
		return;
	}
%>

<form action="cartupdate.jsp" method="post" >
<table border="1" align="center">
  <tr>
    <th>��ƷID</th>
    <th>��Ʒ����</th>
    <th>��Ʒ�۸�(<%=(user==null?"�г���":"��Ա��") %>)</th>
    <th>��Ʒ����</th>
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
	��<%=Math.round(cart.getTotalPrice()*100)/100.0 %>Ԫ<br>
	<%
		if(user!=null){
			%>
			��ӭ����<%=user.getUsername() %>����ȷ�������ͻ���Ϣ��<br>
			<%
		}
	%>
	
	<form action="order.jsp" method="post">
		�ͻ���Ϣ��<br>
		<textarea rows="3" cols="20" name="address"><%=(user==null?"":user.getAddr()) %></textarea><br>
		<input type="submit" value="�µ�"/>
	</form>
</center>

