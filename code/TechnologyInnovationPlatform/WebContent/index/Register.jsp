<%@page import="com.model.User"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/Register.js"></script>
<link rel="stylesheet" type="text/css" href="../css/Register.css">
<title>账号中心-注册</title>
</head>
<body>
<br>
<br>
<div class="main">
	<div class="top">
		<div class="top_left">
		账号注册
		</div>
		<div class="top_right">
		已有账号？去<a href="Login.jsp">登录</a>
		</div>
	</div>
	<div class="content">
	<div class="content_left">
	</div>
	<div class="content_right">
	<%
    	UserDaoImpl userDao = new UserDaoImpl();
    	List<User> users = userDao.load();
    	for(User alluser : users)
    	{
    %>
    	<input type="hidden" name="alluser" value="<%=alluser.getUsername() %>" >
    <%
    	}
    %>
	<form action="Register" method="post">
	<br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;账号：<input type="text" name="username" id="username" class="inpt" placeholder="6-18位字母数字组合"/>
	<span class="tip"></span>	
	<br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码：<input type="password" name="password" id="password" class="inpt" placeholder="6-16位密码，区分大小写"/>
	<span class="tip"></span>
	<br><br>
	确认密码：<input type="password" name="passwords" id="passwords" class="inpt" placeholder="再次输入密码"/>
	<span class="tip"></span>
	<br><br>
	平台名称：<input type="text" name="platformname" id="platformname" class="inpt" placeholder="输入平台名称"/>
	<span class="tip"></span>
	<br><br>
	批准年月：<select name="year" size="1">
		<%
		for(int i=1950;i<=2018;i++)
		{
			if(i==2018)
			{
				%>
				<option value="<%=String.valueOf(i)%>" selected="selected"><%=i %></option>
				<%
			}
			else
			{
				%>
				<option value="<%=String.valueOf(i)%>"><%=i %></option>
				<%
			}
		}
		%>
		</select>
		<select name="month" size="1">
		<%
		for(int i=1;i<=12;i++)
		{
			%>
			<option value="<%=String.valueOf(i)%>"><%=i %></option>
			<%
		}
		%>
		</select>
	<br><br>
	批准文号：<input type="text" name="approvednumber" id="approvednumber" class="inpt" placeholder="输入批准文号"/>
	<span class="tip"></span>
	<br><br>
	技术领域：<input type="text" name="technicalfield" id="technicalfield" class="inpt" placeholder="输入技术领域"/>
	<span class="tip"></span>
	<br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" id="submit" value="提交" disabled="disabled">
	&nbsp;&nbsp;
	<input type="reset" value="重置">
	</form>
	</div>
	</div>
</div>
</body>
</html>