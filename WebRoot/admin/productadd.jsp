<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@page import="java.sql.Timestamp"%>
<%@include file="_SessionCheck.jsp" %>

<%
	request.setCharacterEncoding("GBK");
	String strCategoryId=request.getParameter("categoryid");
	int categoryId=0;
	if(strCategoryId!=null && !strCategoryId.trim().equals("")){
		categoryId=Integer.parseInt(strCategoryId);
	}
		
	
	String action=request.getParameter("action");
	if(action!=null && action.trim().equals("add")){
		String name=request.getParameter("name");
		String descr=request.getParameter("descr");
		double normalPrice=Double.parseDouble(request.getParameter("normalprice"));
		double memberPrice=Double.parseDouble(request.getParameter("memberprice"));
		
		
		Category c=Category.getCategoryById(categoryId);
		if(!c.isLeaf()){
			out.println("非叶子节点不能添加商品");
			return;
		}
		
		Product p=new Product();
		p.setId(-1);
		p.setName(name);
		p.setDescr(descr);
		p.setNormalPrice(normalPrice);
		p.setMemberPrice(memberPrice);
		p.setPdate(new Timestamp(System.currentTimeMillis()));
		p.setCategoryId(categoryId);
		
		ProductMgr.getInstance().addProduct(p);
		out.println("产品类别添加成功！");
		//response.sendRedirect("categorylist.jsp");
		return;
		
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>类别添加</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
	<!--
		var arrLeaf=new Array();
		function checkdata(){
				if(arrLeaf[document.form.categoryid.selectedIndex]!="leaf"){
					alert("不能选择非叶子节点");
					document.form.categoryid.focus();
					return false;
					}
					return true;					
			}
	-->
	</script>
  </head>
  
  <body>
  	<center>添加产品类别</center>
	<form action="productadd.jsp" method="post" onsubmit="return checkdata()" name="form">
	<input type="hidden" name="action" value="add" />
	<table><%--
		<tr>
			<td>id：</td>
			<td><input type="text" name="id"></td>
		</tr>
		--%><tr>
			<td>name：</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>descr：</td>
			<td><textarea name="descr" rows="3" cols="40"></textarea></td>
		</tr>
		<tr>
			<td>normalprice：</td>
			<td><input type="text" name="normalprice"></td>
		</tr>
		<tr>
			<td>memberprice：</td>
			<td><input type="text" name="memberprice"></td>
		</tr>
		<tr>
			<td>categoryId：</td>
			<td>
			<select name="categoryid">
			<option value="0">所有类别</option>
				<script type="text/javascript">
    			arrLeaf[0]="noleaf";
    			</script>
			<%
			int index=1;
			List<Category> categories=Category.getCategories();
    		for(Iterator<Category> it=categories.iterator();it.hasNext(); ){
    		Category c=it.next();
    		String preStr="";
    		for(int i=0;i<c.getGrade();i++){
    			preStr+="--";
    			}%>
    			<script type="text/javascript">
    			arrLeaf['<%=index%>']='<%=c.isLeaf()?"leaf":"noleaf"%>';
    			</script>
    			<option value="<%=c.getId() %>" <%=c.getId()==categoryId?"selected":"" %>><%=preStr+c.getName() %></option>
    		<%	
    		index++;
    		}
    		%>
			</select>
			</td>
		</tr>
		
		<tr><td colspan="2"><input type="submit" value="提交"/></td></tr>
	</table>
	</form>
  </body>
</html>
