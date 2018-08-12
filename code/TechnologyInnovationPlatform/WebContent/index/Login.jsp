<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/Login.js"></script>
<link rel="stylesheet" type="text/css" href="../css/Login.css">
<title>账号中心-登录</title>
</head>
<body>
<br>
<br>
<div class="main">
	<div class="top">
		<div class="top_left">
		河北省科技创新年报统计系统
		</div>
		<div class="top_right">
		没有账号？去<a href="Register.jsp">注册</a>
		</div>
	</div>
	<div class="content">
	<div class="content_left">
	</div>
	<div class="content_right">
	<form action="Login" method="post">
	<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	登录您的账号
	<br><br>
	<input type="text" name="username" id="username" placeholder="账号" /><span class="tip" id="usernametip"><img src="../image/wrong.PNG">用户名不能为空</span><p>
	<input type="password" name="password" id="password" placeholder="密码"/><span class="tip" id="passwordtip"><img src="../image/wrong.PNG">密码不能为空</span><p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" name="login" id="login" value="登录"  onclick="return check()"><p>
	</form>
	</div>
	</div>
</div>
</body>
</html>