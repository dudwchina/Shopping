<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<%@page import="java.sql.*,com.bjsxt.shopping.*,java.util.*"%>
<%
	List<Category> categories=Category.getCategories();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<script language="javascript" src="script/TV20.js"></script>

		<title></title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<script type="text/javascript">
			function t(key,parentey){
				document.forms["form"].pid.value=key;
				}
		</script>
	</head>

	<body>
		<script language="javascript">
  
  	 addNode(-1,0,"所有类别","images/top.gif");
    	<%
    	for(Iterator<Category> it=categories.iterator();it.hasNext(); ){
    		Category c=it.next();
    	%>
    	addNode(<%=c.getPid() %>,<%=c.getId() %>,"<%=c.getName() %>","images/top.gif");
    	<%
    	}
    	%>
    	showTV();
    	addListener("click","t");
    
    </script>
	
		<form name="form" action="categoryadd.jsp" method="post">
		<input type="hidden" name="action" value="add" />
		<table align="center" border="1">
		<tr><td>pid:</td><td>
		<input type="text" name="pid" value="" readonly/>
		</td></tr>
		<tr><td>类别名称:</td><td>
		<input type="text" name="name"/>
		</td></tr>
		<tr><td>类别描述:</td><td>
		<textarea name="descr" rows="8" cols="40"></textarea>
		</td></tr>
		<tr><td>
		<input type="submit" value="提交"/>
		</td></tr>
		</table>
		</form>
	</body>
</html>
