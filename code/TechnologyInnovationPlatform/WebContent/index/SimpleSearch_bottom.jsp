<%@page import="com.model.BasicInformation"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.BasicInformationDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"  href="../css/Search.css">
</head>
<body>
<%
	String str1 = request.getParameter("str1");
	String str2 = request.getParameter("str2");
	String str3 = request.getParameter("str3");
	BasicInformationDaoImpl basicInformationDaoImpl = new BasicInformationDaoImpl();
	List<BasicInformation> basicInformations = null;
	if(str2==null||"".equals(str2))
	{
		str2="";
		basicInformations = basicInformationDaoImpl.load();
	}
	else
	{
		basicInformations = basicInformationDaoImpl.load(str1,str2,str3);
	}
%>
<div align="center">
<table border="1" cellpadding="0" cellspacing="0">
<caption><h4>检索结果</h4></caption>
<tr>共<%=basicInformations.size() %>条检索结果</tr>
				<tr>
					<td>平台名称</td>
					<td>平台编号</td>
					<td>技术领域</td>
					<td>平台级别</td>
					<td>所在市县</td>
					<td>批准年月</td>
					<td>更多</td>
				</tr>
					<%
						for(BasicInformation basicInformation:basicInformations)
						{
					%>
				<tr>
					<td><%=basicInformation.getPlatformname() %></td>
					<td><%=basicInformation.getUsername() %></td>
					<td><%=basicInformation.getTechnicalfield() %></td>
					<td><%=basicInformation.getLevel() %></td>
					<td><%=basicInformation.getLocation() %></td>
					<td><%=basicInformation.getApproveddate()%></td>
					<td><a href="info.jsp?username=<%=basicInformation.getUsername() %>">详细</a></td>
				</tr>
					<%
						}
					%>	
</table>
</div>
</body>
</html>