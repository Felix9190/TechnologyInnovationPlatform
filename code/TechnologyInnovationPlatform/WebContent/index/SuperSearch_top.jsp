<%@page import="com.model.BasicInformation"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.BasicInformationDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/Jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/SuperSearch.js"></script>
<link rel="stylesheet" type="text/css"  href="../css/Search.css">
</head>
<body>
<div align="center">
<h4>高级检索</h4>
<form action="SuperSearch_bottom.jsp" method="post" target="SuperSearch_bottom">
<table>
<tr>
<td>
<a onclick="showNext()"><img src="../image/add.png"></a>
<a onclick="closeFront()"><img src="../image/delete.png"></a>
</td>
<td>
(
<select name="str1[]">
			  <option value="平台名称">平台名称</option>
			  <option value="平台编号">平台编号</option>
			  <option value="技术领域">技术领域</option>
			  <option value="平台级别">平台级别</option>
			  <option value="所在市县">所在市县</option>
</select>
</td>
<td>
	<input name="str2[]" placeholder="输入检索条件">
</td>
<td>
<select name="str3[]">
	<option value="模糊">模糊</option>
	<option value="精确">精确</option> 
</select>
)
</td>
</tr>


<tr style="display: none;">
<td>
<select name="str4[]">
			  <option value="并且">并且</option>
			  <option value="或者">或者</option>
</select>
</td>
<td>
(
<select name="str1[]">
			  <option value="平台名称">平台名称</option>
			  <option value="平台编号">平台编号</option>
			  <option value="技术领域">技术领域</option>
			  <option value="平台级别">平台级别</option>
			  <option value="所在市县">所在市县</option>
</select>
</td>
<td>
			<input name="str2[]" placeholder="输入检索条件">
</td>
<td>
<select name="str3[]">
	<option value="模糊">模糊</option>
	<option value="精确">精确</option>			  
</select>
)
</td>

</tr>

<tr style="display: none;">
<td>
<select name="str4[]">
			  <option value="并且">并且</option>
			  <option value="或者">或者</option>
</select>
</td>
<td>
(
<select name="str1[]">
			  <option value="平台名称">平台名称</option>
			  <option value="平台编号">平台编号</option>
			  <option value="技术领域">技术领域</option>
			  <option value="平台级别">平台级别</option>
			  <option value="所在市县">所在市县</option>
</select>
</td>
<td>
			<input name="str2[]" placeholder="输入检索条件">
</td>
<td>
<select name="str3[]">
	<option value="模糊">模糊</option>
	<option value="精确">精确</option>
</select>
)
</td>
</tr>

<tr style="display: none;">
<td>
<select name="str4[]">
			  <option value="并且">并且</option>
			  <option value="或者">或者</option>
</select>
</td>
<td>
(
<select name="str1[]">
			  <option value="平台名称">平台名称</option>
			  <option value="平台编号">平台编号</option>
			  <option value="技术领域">技术领域</option>
			  <option value="平台级别">平台级别</option>
			  <option value="所在市县">所在市县</option>
</select>
</td>
<td>
			<input name="str2[]" placeholder="输入检索条件">
</td>
<td>
<select name="str3[]">
	<option value="模糊">模糊</option>
	<option value="精确">精确</option>	  
</select>
)
</td>
</tr>
<tr style="display: none;">
<td>
<select name="str4[]">
			  <option value="并且">并且</option>
			  <option value="或者">或者</option>
</select>
</td>
<td>
(
<select name="str1[]">
			  <option value="平台名称">平台名称</option>
			  <option value="平台编号">平台编号</option>
			  <option value="技术领域">技术领域</option>
			  <option value="平台级别">平台级别</option>
			  <option value="所在市县">所在市县</option>
</select>
</td>
<td>
			<input name="str2[]" placeholder="输入检索条件">
</td>
<td>
<select name="str3[]">
	<option value="模糊">模糊</option>
	<option value="精确">精确</option>	  
</select>
)
</td>
</tr>
</table>
<input type="submit" value="提交" ><br>
</div>
</form>
</body>
</html>