<%@ page language="java" import="java.util.*,com.bjsxt.shopping.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%
	request.setCharacterEncoding("GBK");
	String action=request.getParameter("action");
	if(action!=null && action.trim().equals("register")){
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String phone=request.getParameter("phone");
		String addr=request.getParameter("addr");
		
		User u=new User();
		u.setUsername(username);
		u.setPassword(password);
		u.setPhone(phone);
		u.setAddr(addr);
		u.setRdate(new Date());
		
		u.save();
		
		out.println("恭喜你，注册成功！");
		
		return;
		
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>用户注册</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language=JavaScript src="script/regcheckdata.js"></script>
	<script type="text/javascript">
		var req;
		
		function validate(){
			var idField=document.getElementById("userid");
			var url="validate.jsp?id="+escape(idField.value);
			if(window.XMLHttpRequest){
				req=new XMLHttpRequest();
				}else if(window.ActiveXObject){
					req=new ActiveXObject("Microsoft.XMLHTTP");
					}
			req.open("GET", url, true);
			req.onreadystatechange=callback;
			req.send(null);
		}

		function callback(){
			//alert(req.readyState);
			if(req.readyState==4){
				if(req.status==200){
				//alert(req.responseText);
					var msg=req.responseXML.getElementsByTagName("msg")[0];
					setMsg(msg.childNodes[0].nodeValue);
				}
				}
			}

		function setMsg(msg){
			//alert(msg);
			if(msg=="invalide")
				document.getElementById("usermsg").innerHTML="<font color='red'>用户名无效</font>";
			else
				document.getElementById("usermsg").innerHTML="<font color='green'>可以注册</font>";
			}
	</script>
	</head>

	<body>
		<form name="form" action="register.jsp" method="post" onSubmit="return checkdata()">
		<input type="hidden" name="action" value="register" />
			<table width="750" align="center" border="2">
				<tr>
					<td colspan="2" align="center">用户注册</td>
				</tr>
				<tr>
					<td>用户名：</td>
					<td>
						<input type=text id="userid" name="username" size="30" maxlength="10" onblur="validate()">
						<div id="usermsg"></div>
					</td>
				</tr>
				<tr>
					<td>密码：</td>
					<td>
						<input type=password name="password" size="15" maxlength="12">
					</td>
				</tr>
				<tr>
					<td>密码确认</td>
					<td>
						<input type=password name="password2" size="15" maxlength="12">
					</td>
				</tr>
				
				<tr>
					<td>电话</td>
					<td>
						<input type=text name="phone" size="15" maxlength="12">
					</td>
				</tr>
				<tr>
					<td>地址</td>
					<td>
						<textarea rows="12" cols="80" name="addr"></textarea>
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
