<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<%@page import="java.sql.*,com.bjsxt.shopping.*,java.util.*" %>
<%@include file="_SessionCheck.jsp" %>

<%
	int id=Integer.parseInt(request.getParameter("id"));
	SalesOrder so=OrderMgr.getInstance().loadById(id);
	
%>
<script type="text/javascript">

	function showproductInfo(descr)
{
	document.getElementById("productinfo").innerHTML="<font size=3 color=red>"+descr+"</font>";
}

</script>
<center>
 下单人：<%=so.getUser().getUsername() %>
 明细：
 <table border="1" align="center">
	  <tr>
	    <th>商品名称</th>
	    <th>商品价格</th>
	    <th>商品数量</th>
	  </tr>
	  <%
	  	List<SalesItem> items=so.getItems();
	  	for(int i=0;i<items.size();i++)
	  	{
	  		SalesItem si=items.get(i);
	  		%>
	  
	  <tr>
	    <td onmouseover="showproductInfo('<%=si.getProduct().getName() %>')"><%=si.getProduct().getName() %></td>
	    <td><%=si.getUnitprice() %></td>
	    <td><%=si.getCount() %></td>
	  </tr> 
	  
	  <%
	  	}
	  	%>
  	
</table>
	<div style="border:5px double purple;width:400;height:30" id="productinfo">
	</div>
</center>
