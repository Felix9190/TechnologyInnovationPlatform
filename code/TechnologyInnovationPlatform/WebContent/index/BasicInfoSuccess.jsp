<%@page import="com.dao.UserDaoImpl"%>
<%@page import="com.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>基本信息录入成功</title>
</head>

<style>
	 a:link {color: blue}          
     a:visited {color: blue}          
     a:hover {color: red}            
     a:active {color: red}
	.t
	{
		width: 100%;
	}

	table
	{
		table-layout: fixed;
	}
	td
	{
		text-align:center;
	}
	body 
	{
	background-image:url(images/backimage.jpg);
	background-size:cover;
	}
	
</style>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	UserDaoImpl userDaoImpl = new UserDaoImpl();
	User user = userDaoImpl.load(id);
%>
<body style="background-color: #ececec;">
<br>
<br>
<br>
<br>
<br>
<div align="center">

<span><%=user.getUsername() %>,恭喜您已成功完善基本信息！</span>
<br>
<br>
<a href="BasicInfoInput.jsp?id=<%=user.getId() %>">点击这里返回</a>
</div>
</body>


</html>