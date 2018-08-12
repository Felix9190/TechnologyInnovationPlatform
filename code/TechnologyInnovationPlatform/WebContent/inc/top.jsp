<%@page import="com.model.User"%>
<%@page import="javax.jws.soap.SOAPBinding.Use"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//获取session中保存的用户
	User user = (User)session.getAttribute("user") ;
%>
<style>
	a:link {color: gray}          
    a:visited {color: gray}          
    a:hover {color: red}            
    a:active {color: gray}   
</style>
<div style=" text-align: right ;border-bottom: 0px solid #000;">
	欢迎[<%=user.getUsername() %>]使用该系统&nbsp;
	<a href="<%=request.getContextPath()%>/index/Logout.jsp">退出系统</a>&nbsp;
</div> 