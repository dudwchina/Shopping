<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>

<%
Cart cart=(Cart)session.getAttribute("cart");
if(cart==null){
	cart=new Cart();
	session.setAttribute("cart",cart);
}


	List<CartItem> items=cart.getItems();
	for(int i=0;i<items.size();i++){
		CartItem ci=items.get(i);
		String strCount=request.getParameter("p"+ci.getProductId());
		if(strCount!=null && !strCount.trim().equals("")){
			ci.setCount(Integer.parseInt(strCount));
			//System.out.println(ci.getCount());
		}
	}
%>
<center>数量修改成功</center>
3秒钟后自动重定向到
<div id="num"></div><br/>
<script  type="text/javascript">
<!--
//  Place this in the 'head' section of your page.  
var leftTime=3000;
function delayURL() {
	document.getElementById("num").innerHTML=leftTime/1000;
	leftTime-=1000;
	if(leftTime==0){
		document.location.href="cart.jsp";
		}
}

setInterval(delayURL, 1000);

//-->

</script>


