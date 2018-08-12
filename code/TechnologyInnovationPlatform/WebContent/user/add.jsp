<%@page import="com.jaovo.msg.Util.ValidateUtil"%>
<%@page import="com.jaovo.msg.Util.UserException"%>
<%@page import="com.jaovo.msg.dao.UserDaoImpl"%>
<%@page import="com.jaovo.msg.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	//接收客户端传递过来的参数
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String ptname = request.getParameter("ptname");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String pzwh = request.getParameter("pzwh");
	String jsly = request.getParameter("jsly");
	boolean validate = ValidateUtil.validateNull(request, new String[]{"username","password","ptname","pzwh","jsly"});
	if(!validate)
	{
%>
	<jsp:forward page="addInput.jsp"></jsp:forward>
<%
//<jsp:forward page="registerInput.jsp"></jsp:forward>这种方式跳转不能改变浏览器地址，刷新的话会导致重复提交！！！
	}
	User user = new User();
	user.setUsername(username);
	user.setPassword(password);
	user.setPtname(ptname);
	user.setYear(year);
	user.setMonth(month);
	user.setPzwh(pzwh);
	user.setJsly(jsly);
	UserDaoImpl userDao = new UserDaoImpl();
	try
	{
	userDao.add(user);
	request.setAttribute("user", user);
	//重定向request使用不了
	%>
	<jsp:forward page="addSuccess.jsp"></jsp:forward>
	<%
	}catch(UserException e){
%>
	<h3 style="color:red ; font-size:50px">发生错误 : <%=e.getMessage() %></h3>
	<%
	}
	%>
</html>