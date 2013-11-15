<%@ page language="java" import="java.util.*,com.bjsxt.shopping.*" pageEncoding="GB18030"%>


<%
	request.setCharacterEncoding("GBK");
	User u=(User)session.getAttribute("user");
	String action=request.getParameter("action");
	if(action!=null&&action.equals("modify")){
		u.setUsername(request.getParameter("username"));
		u.setPhone(request.getParameter("phone"));
		u.setAddr(request.getParameter("addr"));
		u.update(u);
		out.println("恭喜你，修改成功！");
		return;
	}
		
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>个人信息修改</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language=JavaScript src="script/regcheckdata.js"></script>
	</head>

	<body>
		<form name="form" action="usermodify.jsp" method="post">
		<input type="hidden" name="action" value="modify" />
			<table width="750" align="center" border="2">
				<tr>
					<td colspan="2" align="center">个人信息修改</td>
				</tr>
				<tr>
					<td>用户名：</td>
					<td>
						<input type=text name="username" size="30" maxlength="10" value="<%=u.getUsername() %>">
					</td>
				</tr>
	<%--		<tr>
					<td>密码：</td>
					<td>
						<input type=password name="password" size="15" maxlength="12">
					</td>
				</tr>
				--%>
				
				<tr>
					<td>电话</td>
					<td>
						<input type=text name="phone" size="15" maxlength="12" value="<%=u.getPhone() %>">
					</td>
				</tr>
				<tr>
					<td>地址</td>
					<td>
						<textarea rows="12" cols="80" name="addr"><%=u.getAddr() %></textarea>
					</td>
				</tr>
				
				<tr>
					<td></td>
					<td>
						<input type="submit" value="提交">
						<input type="reset" value="重置">
					</td>
				</tr>
				
			</table>
		</form>
	</body>
</html>
