<%@page import="com.model.BasicInformation"%>
<%@page import="com.dao.BasicInformationDaoImpl"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"  href="../css/Search.css">
</head>
<body>
<div align="center">
		<form action="SimpleSearch_bottom.jsp" method="post" target="SimpleSearch_bottom">
			<h4>简单检索</h4>
			检索条件：
			<select name="str1">
			  <option value="平台名称" selected="selected">平台名称</option>
			  <option value="平台编号">平台编号</option>
			  <option value="技术领域">技术领域</option>
			  <option value="平台级别">平台级别</option>
			  <option value="所在市县">所在市县</option>
			</select>
			<input name="str2" placeholder="输入检索条件">
			<select name="str3">
			  <option value="精确" selected="selected">精确</option>
			  <option value="模糊" selected="selected">模糊</option>
			</select>
			<input type="submit" value="提交">
		</form>
</div>
</body>
</html>