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
 �µ��ˣ�<%=so.getUser().getUsername() %>
 ��ϸ��
 <table border="1" align="center">
	  <tr>
	    <th>��Ʒ����</th>
	    <th>��Ʒ�۸�</th>
	    <th>��Ʒ����</th>
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
