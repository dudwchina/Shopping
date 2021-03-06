<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@page import="java.sql.Timestamp"%>
<%@include file="_SessionCheck.jsp" %>

<%!
	public static final int PAGE_SIZE=3;
%>
<%
	request.setCharacterEncoding("GBK");
	String action=request.getParameter("action");
	List<Category> categories=Category.getCategories();
	List<Product> products=new ArrayList<Product>();
	String keyWord=null;
	double lowNormalPrice=-1;
	double highNormalPrice=-1;
	double lowMemberPrice=-1;
	double highMemberPrice=-1;
	Timestamp startDate=null;
	Timestamp endDate=null;
	String strStartDate=null;
	String strEndDate=null;
	
	int categoryId=0;
	int pageCount=0;
	String strProductQuery="";
%>
<%
	String strPageNo=request.getParameter("pageno");
	int pageNo=1;
	if(strPageNo!=null){
		pageNo=Integer.parseInt(strPageNo);
	}
	if(pageNo<1) pageNo=1;
%>
<!-- 复杂查询结果处理开始 -->
<%
	
	if(action!=null && action.trim().equals("complexsearch")){
		 keyWord=request.getParameter("keyword");
		 lowNormalPrice=Double.parseDouble(request.getParameter("lownormalprice"));
		 highNormalPrice=Double.parseDouble(request.getParameter("highnormalprice"));
		 lowMemberPrice=Double.parseDouble(request.getParameter("lowmemberprice"));
		 highMemberPrice=Double.parseDouble(request.getParameter("highmemberprice"));
		 categoryId=Integer.parseInt(request.getParameter("categoryid"));
		
		int[] idArray;
		if(categoryId == 0){
			idArray=null;
		}else{
			idArray=new int[1];
			idArray[0]=categoryId;
		}
		
		
		 strStartDate=request.getParameter("startdate");
		if(strStartDate==null || strStartDate.trim().equals("")){
			startDate=null;
		}else{
			startDate=Timestamp.valueOf(request.getParameter("startdate"));}
		
		 strEndDate=request.getParameter("enddate");
		if(strEndDate==null || strEndDate.trim().equals("")){
			endDate=null;
		}else{
			endDate=Timestamp.valueOf(request.getParameter("enddate"));}	
		
		//List<Product> products=new ArrayList<Product>();
		
		 pageCount=ProductMgr.getInstance().findProducts(products,idArray,keyWord,lowNormalPrice,highNormalPrice,
																	lowMemberPrice,highMemberPrice,startDate,endDate,pageNo,PAGE_SIZE);
		
	}
%>
<!-- 复杂查询处理结束 -->

<!-- 简单查询处理开始 -->
<%
	
	if(action!=null && action.trim().equals("simplesearch2")){
		 String[] strCategoryIds=request.getParameterValues("categoryid");
		 keyWord=request.getParameter("keyword");
		 //categoryId=Integer.parseInt(request.getParameter("categoryid"));
		
		int[] idArray;
		if(strCategoryIds == null || strCategoryIds.length==0){
			idArray=null;
		}else{
			
			for(int i=0;i<strCategoryIds.length;i++){
				strProductQuery+="&categoryid="+strCategoryIds[i];
			}
			//System.out.println(strProductQuery);
			idArray=new int[strCategoryIds.length];
			for(int i=0;i<strCategoryIds.length;i++){
				idArray[i]=Integer.parseInt(strCategoryIds[i]);
			}
			
		}
		
		
		
		
		 pageCount=ProductMgr.getInstance().findProducts(products,idArray,keyWord,-1,-1,
																	-1,-1,null,null,pageNo,PAGE_SIZE);
		
	}
%>
<!-- 简单查询处理结束 -->
		<center>搜索结果</center>
		<table border="1" align="center">
    	<tr>
    		<td>ID</td>
    		<td>Name</td>
    		<td>Descr</td>
    		<td>NormalPrice</td>
    		<td>MemberPrice</td>
    		<td>Pdate</td>
    		<td>CategoryId</td>
    	</tr>
    	<%
    	for(Iterator<Product> it=products.iterator();it.hasNext(); ){
    		Product p=it.next();
    	
    	%>
    	<tr>
    		<td><%=p.getId() %></td>
    		<td><%=p.getName()%></td>
    		<td><%=p.getDescr() %></td>
    		<td><%=p.getNormalPrice() %></td>
    		<td><%=p.getMemberPrice() %></td>
    		<td><%=p.getPdate() %></td>
    		<td><%=p.getCategoryId() %></td>
    		<td><a href="productdelete.jsp?id=<%=p.getId() %>" target="detail">删除</a>
    		|
    		<a href="productmodify.jsp?id=<%=p.getId() %>" target="detail">修改</a></td>
    	</tr>
    	<%
    	}
    	%>
    </table>
    <%
    	if(action!=null && action.trim().equals("complexsearch")){
    		%> 
    		<center>
    	    	共<%=pageCount %>页|
    	    	<a href="productsearch.jsp?action=<%=action %>&keyword=<%=keyWord %>&lownormalprice=<%=lowNormalPrice %>&highnormalprice=<%=highNormalPrice %>&lowmemberprice=<%=lowMemberPrice %>&highmemberprice=<%=highMemberPrice %>&categoryid=<%=categoryId %>&pageno=<%=pageNo-1 %>">上一页</a> |
    	    	<a href="productsearch.jsp?action=<%=action %>&keyword=<%=keyWord %>&lownormalprice=<%=lowNormalPrice %>&highnormalprice=<%=highNormalPrice %>&lowmemberprice=<%=lowMemberPrice %>&highmemberprice=<%=highMemberPrice %>&categoryid=<%=categoryId %>&pageno=<%=pageNo+1 %>">下一页</a> 
    	    </center>
    	    <%
    	}else {
    		%>
    		<center>
    	    	共<%=pageCount %>页|
    	    	<a href="productsearch.jsp?action=<%=action %>&keyword=<%=keyWord %><%=strProductQuery %>&pageno=<%=pageNo-1 %>">上一页</a> |
    	    	<a href="productsearch.jsp?action=<%=action %>&keyword=<%=keyWord %><%=strProductQuery %>&pageno=<%=pageNo+1 %>">下一页</a> 
    	    </center>
    		<%
    	}
    %>
   

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>产品搜索</title>
    
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
		function checkdata(){
			with(document.forms["complex"]){
				if(lownormalprice.value==null || lownormalprice.value==""){
					lownormalprice.value=-1;
					}
				if(highnormalprice.value==null || highnormalprice.value==""){
					highnormalprice.value=-1;
					}
				if(lowmemberprice.value==null || lowmemberprice.value==""){
					lowmemberprice.value=-1;
					}
				if(highmemberprice.value==null || highmemberprice.value==""){
					highmemberprice.value=-1;
					}
				}
		}
	-->
	</script>
  </head>
  
  <body>
  	<center>简单搜索</center>
  	<form action="productsearch.jsp" method="post">
  		<input type="hidden" name="action" value="simplesearch"/>
  		category：<select></select>
  		keyword：<input type="text" name="keyword"/>
  		<input type="submit" value="搜"/>
  	</form>
  	
  	<center>简单搜索2</center>
  	<form action="productsearch.jsp" method="post">
  		<input type="hidden" name="action" value="simplesearch2"/>
  		category：<br>
  		<%
  			for(Iterator<Category> it=categories.iterator();it.hasNext();){
  				Category c=it.next();
  				if(c.isLeaf()){
  					%>
  					<input type="checkbox" name="categoryid" value="<%=c.getId() %>"><%=c.getName() %><br>
  					<%
  				}else {
  					%>
  					<%=c.getName() %><br>
  					<%
  				}
  			}
  		%>
  		keyword：<input type="text" name="keyword"/>
  		<input type="submit" value="搜"/>
  	</form>
  	
  	<center>复杂搜索</center>
	<form action="productsearch.jsp" method="post" onsubmit="checkdata()" name="complex">
	<input type="hidden" name="action" value="complexsearch" />
	<table>
		<tr>
			<td>category：</td>
			<td>
			<select name="categoryid">
			<option value="0">所有类别</option>
			<%
    		for(Iterator<Category> it=categories.iterator();it.hasNext(); ){
    		Category c=it.next();
    		String preStr="";
    		for(int i=0;i<c.getGrade();i++){
    			preStr+="--";
    			}%>
    			<option value="<%=c.getId() %>"><%=preStr+c.getName() %></option>
    		<%	
    		}
    		%>
			</select>
			</td>
		</tr>
		<tr>
			<td>keyword：</td>
			<td><input type="text" name="keyword"/></td>
		</tr>
		<tr>
			<td>normalprice：</td>
			<td>From:<input type="text" name="lownormalprice"></td>
			<td>To:<input type="text" name="highnormalprice"></td>
		</tr>
		<tr>
			<td>memberprice：</td>
			<td>From:<input type="text" name="lowmemberprice"></td>
			<td>To:<input type="text" name="highmemberprice"></td>
		</tr>
		<tr>
			<td>pdate：</td>
			<td>From:<input type="text" name="startdate"></td>
			<td>To:<input type="text" name="enddate"></td>
		</tr>
		
		<tr><td colspan="2"><input type="submit" value="搜"/></td></tr>
	</table>
	</form>
  </body>
</html>
