<%@page import="com.jaovo.msg.Util.ValidateUtil"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>用户添加页面</title>
</head>
<body>
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
     <img src="../images/backimage.jpg" height="100%" width="100%"/>    
     </div>
	<jsp:include page="inc.jsp" >
		<jsp:param name="op" value="添加" />
	</jsp:include>
	<form action="add.jsp" method="post">
		<table align="center" border="1" width="500">
			<tr>
				<td>用户名称 : </td>
				<td>
					<input type="text" name="username" />
									</td>
			</tr>
				<tr>
    			<td>用户密码:</td>
    			<td>
    				<input type="password" name="password" />
    				
    			</td>
    		</tr>
    		
    		<tr>
    			<td>平台名称:</td>
    			<td>
    				<input type="text" name="ptname" />
    				    			</td>
    		</tr>
    		
    		<tr>
    			<td>批准年月:</td>
    			<td>
    			<select name="year" size="1">
		<%
		for(int i=1950;i<=2018;i++)
		{
				%>
				<option value="<%=String.valueOf(i)%>"><%=i %></option>
				<%
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
    			</td>
    		</tr>
    		
    		<tr>
    			<td>批准文号:</td>
    			<td>
    				<input type="text" name="pzwh" />
    				    			</td>
    		</tr>
    		
    		<tr>
    			<td>技术领域:</td>
    			<td>
    				<input type="text" name="jsly" />
    				
    			</td>
    		</tr>
    		
    		<tr align="center">
    			<td colspan="2">
    				<input type="submit" value="提交" />
    				<input type="reset" value="重置" />
    			</td>
    		</tr>
		</table>
	</form>
</body>
</html>