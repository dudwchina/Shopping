<%@ page language="java" import="java.util.*,com.bjsxt.shopping.*" pageEncoding="GB18030"%>
<%
	response.setContentType("text/xml");
	response.setHeader("Cache-Control","no-store");//HTTP1.1
	response.setHeader("Pragma","no-cache");//HTTP1.0
	response.setDateHeader("Expires",0);//prevents caching at the proxy server
	
	String id=request.getParameter("id");
	//System.out.println(id);
	boolean flag=User.userExist(id);
	if(flag==true)
		response.getWriter().write("<msg>valide</msg>");
	else
		response.getWriter().write("<msg>invalide</msg>");
%>