<%@page import="com.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/Register.js"></script>
<title>账号中心-注册成功</title>
</head>
<body>
<%
User user=(User)request.getAttribute("user");
%>
<div align="center">
<img src="../image/success.PNG"><font size="6px"><%=user.getUsername() %>注册成功！</font>
<br>
<input type="button" id="btn" value="返回登录">
</div>

</body>
</html>