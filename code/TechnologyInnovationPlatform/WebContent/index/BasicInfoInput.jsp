<%@page import="com.dao.BasicInformationDaoImpl"%>
<%@page import="com.model.BasicInformation"%>
<%@page import="javax.websocket.Session"%>
<%@page import="com.model.User"%>
<%@page import="com.dao.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/BasicInfoInput.js"></script>
<script type="text/javascript" src="../js/StandardIndustrialClassificationCodes.js"></script>
<link rel="stylesheet" type="text/css" href="../css/BasicInfoInput.css">
<title>欢迎</title>
</head>
<body>
<%
	User user = (User)session.getAttribute("user");
	BasicInformationDaoImpl basicInformationDaoImpl = new BasicInformationDaoImpl();
	BasicInformation basicInformation = null;
	if(basicInformationDaoImpl.load(user.getUsername()) == null)
	{
		basicInformation = new BasicInformation();
	}
	else
	{
		basicInformation = basicInformationDaoImpl.load(user.getUsername());
	}
%>
<div id="top">
<jsp:include page="../inc/top.jsp" >
		<jsp:param name="op" value="展示" />
</jsp:include>
</div>
    <div align="center">
    <br>
	<br>
	<br>
	<font size=25 face="宋体">
	完善基本信息
	</font>
	<hr />
	
	</div>
	<br>
	<div id="box3">
	<br>
	<br>
	

<form action="BasicInfo.jsp" method="post">
	<!-- 这个id 不需要再页面上显示 , 就作为一个隐藏域传到服务器 -->
	<input type="hidden" name="id" value="<%=user.getId() %>" />
	<div id="box4">
	<table border="1" width="900">
	<tr><th colspan="5">基本信息表</th></tr>
	<tr>
	<td>平台名称</td> <td colspan="2">
	<%
	if(user.getPlatformname()==null)
	{
		user.setPlatformname("");
	}
	%>
	<input type="text" name="ptname" value="<%=user.getPlatformname() %>" class="t"/></td>
	 <td>平台编号</td> <td><%=user.getUsername() %></td>
	</tr>
	
	<tr>
	<td>批准年月</td> 
	<td>
	<select name="year" size="1">
	<%
	String approveddate = user.getApproveddate();
	String[] str = approveddate.split("-");
		for(int i=1950;i<=2018;i++)
		{
			if(String.valueOf(i).equals(str[0]))
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
			if(String.valueOf(i).equals(str[1]))
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
		</td> 
		
	<td>批准文号</td> <td colspan="2">
	<%
	if(user.getApprovednumber()==null)
	{
		user.setApprovednumber("");
	}
	%>
	<input type="text" name="pzwh" value="<%=user.getApprovednumber() %>" class="t"/></td>
	</tr>
	
	<tr>
	<td>技术领域</td>
	<td colspan="4">
	<%
	if(user.getTechnicalfield()==null)
	{
		user.setTechnicalfield("");
	}
	%>
	<input type="text" name="jsly" value="<%=user.getTechnicalfield() %>" class="t"/></td>
	</tr>
	
	<tr>
	<td>平台级别</td> <td>
	<%
	String x = basicInformation.getLevel();
	if(x==null||"".equals(x))
	{
		%>
		<input type=checkbox name="ptjb1" value="国家级" />国家级
		<input type=checkbox name="ptjb1" value="省级" />省级
		<%
	}
	else
	{
	String[] xarray = x.split(" ");
	if(xarray.length==1)
	{
		if("国家级".equals(xarray[0]))
		{
		%>
		<input type=checkbox name="ptjb1" value="国家级" checked="checked" />国家级
		<input type=checkbox name="ptjb1" value="省级" />省级
		<%
		}
		else
		{
			%>
			<input type=checkbox name="ptjb1" value="国家级" />国家级
			<input type=checkbox name="ptjb1" value="省级" checked="checked" />省级
			<%
		}
		
	}
	else
	{
	%>
		<input type=checkbox name="ptjb1" value="国家级" checked="checked"/>国家级
		<input type=checkbox name="ptjb1" value="省级" checked="checked"/>省级
	<%
	}
	}
	%>
	<input type="hidden" name="ptjb" id="ptjb"/>
	</td>
	
	<td>所在市县（区）</td> 
	<td colspan="2">
	
	<%
	if(basicInformation.getLocation()==null||"".equals(basicInformation.getLocation()))
	{
		%>
		<select id="sheng" name="sheng">
		<option value="">-请选择-</option>
		</select>
		<select id="shi" name="shi">
		<option value="">-请选择-</option>
		</select>
		<select id="xian" name="xian">
		<option value="">-请选择-</option>
		</select>
		<%
	}
	else
	{
		%>
		<select id="sheng" name="sheng">
		<%
		String s = basicInformation.getLocation();
		String[] sarray = s.split(" ");
	
	if(sarray[0]==null||"".equals(sarray[0]))
	{
	%>
		<option value="">-请选择-</option>
	<%
	}
	else
	{
	%>
		<option value=""><%=sarray[0] %></option>
	<%
	}
	%>
	</select>
	
	<select id="shi" name="shi">
	<%
	if(sarray[1]==null||"".equals(sarray[1]))
	{
	%>
		<option value="">-请选择-</option>
	<%
	}
	else
	{
	%>
		<option value=""><%=sarray[1] %></option>
	<%
	}
	%>
	</select>
	
	<select id="xian" name="xian">
	<%
	if(sarray[2]==null||"".equals(sarray[2]))
	{
	%>
		<option value="">-请选择-</option>
	<%
	}
	else
	{
	%>
		<option value=""><%=sarray[2] %></option>
	<%
	}
	}
	%>
	</select>
	
	<input type="hidden" name="szsx" id="szsx"/>
	<script>
var osheng=document.getElementById("sheng");
var oshi=document.getElementById("shi");
var oxian=document.getElementById("xian");

var arr_sheng=["河北省","吉林省","云南省","四川省","山西省"];

var arr_shi=[
	["石家庄市","唐山市","保定市","承德市","邯郸市","邢台市","衡水市","沧州市","张家口市","秦皇岛市","廊坊市"],
    ["吉林市","长春市","蛟河市","白城市"],
    ["昆明市","大理市","丽江市","西双版纳市"],
    ["乐山市","成都市","大同市","高新市"],
    ["太原市","屏显市","乐宝市","李伟市"]
];

var arr_xian=[
		[
        	["石家庄县1","石家庄县2"],["唐山县1","唐山县2"],["保定县1","保定县2"],["平泉县","兴隆县","滦平县","隆化县","丰宁县","宽城县","围场县"],["渭南市1","渭南市2"],["渭南市1","渭南市2"],["渭南市1","渭南市2"],["渭南市1","渭南市2"],["渭南市1","渭南市2"],["渭南市1","渭南市2"],["渭南市1","渭南市2"]
    	],
        [
            ["西安县1","西安县2"],["咸阳市1","咸阳市2"],["漂河镇","市区"],["渭南市1","渭南市2"]
        ],
        [
            ["昆明市1","昆明市2"],["大理市1","大理市2"],["丽江市1","丽江市2"],["西双版纳市1","西双版纳市2"]
        ],
        [
            ["乐山市1","乐山市2"],["成都市1","成都市2"],["大同市1","大同市2"],["高新市1","高新市2"]
        ],
        [
            ["太原市1","太原市2"],["屏显市1","屏显市2"],["乐宝市1","乐宝市2"],["李伟市1","李伟市2"]
        ]
];

var  quanju_arr;//创建一个全局对象，用于存储一个中间数组

function input_arr(arr,event){//封装一个函数，用于向下拉栏中添加元素
    for(var i=0;i<arr.length;i++){//下拉栏内的元素来源于数组中的元素，遍历数组
        var option=new Option(arr[i],i);//创建Option对象（这个O要大写），存入值
        event.appendChild(option);//把option添加到event对象的末尾
    }
}

input_arr(arr_sheng,osheng);//调用,给省下拉栏添元素

osheng.onchange= function () {//给下拉栏绑定事件（当下拉栏元素改变时执行）
    oshi.options.length=1;//当省下拉栏改变时，清空市的下拉栏内元素
    oxian.options.length=1;//当省下拉栏改变时，清空县的下拉栏内元素
    var index=this.value;//每一个option标签都有一个value值索引，获取索引，用于数组中元素的选择
    var arr_shi_next=arr_shi[index];//获取当前选择省的市元素并赋给一个数组
    quanju_arr=arr_xian[index];//获取当前选择省中市的县元素并赋给定义的中间数组
    input_arr(arr_shi_next,oshi);//调用,给市下拉栏添元素
}

oshi.onchange= function () {
    oxian.options.length=1;
    var index=this.value;
    var arr_xian_next=quanju_arr[index];
    input_arr(arr_xian_next,oxian);//调用,给县下拉栏添元素
    
    
}
</script>
	</td> 
	</tr>
	
	<tr>
	<td rowspan="2">平台组织形态</td> 
	<td rowspan="2" colspan="2">
	
	 <%
	  if(basicInformation.getOrganization()==null||"".equals(basicInformation.getOrganization()))
	  {
	  %>
	  <input type="radio" name="ptzzxt" value="内设机构相对独立"  id="r01" onclick="message0()"/>内设机构相对独立
	  &nbsp;&nbsp;&nbsp;
	  <input type="radio" name="ptzzxt" value="独立法人"  id="r02" onclick="message0()">独立法人<span id="r0s" style="display:none;color:red;">请选择一种平台组织形态</span>
	  <%
	  }
	  else if("内设机构相对独立".equals(basicInformation.getOrganization()))
	  {
	  %>
	  <input type="radio" name="ptzzxt" value="内设机构相对独立"  id="r01" onclick="message0()" checked="checked"/>内设机构相对独立
	  &nbsp;&nbsp;&nbsp;
	  <input type="radio" name="ptzzxt" value="独立法人"  id="r02" onclick="message0()">独立法人<span id="r0s" style="display:none;color:red;">请选择一种平台组织形态</span>
	  
	  <%
	  }
	  else
	  {
	  %>
	  
	  <input type="radio" name="ptzzxt" value="内设机构相对独立"  id="r01" onclick="message0()" />内设机构相对独立
	  &nbsp;&nbsp;&nbsp;
	  <input type="radio" name="ptzzxt" value="独立法人"  id="r02" onclick="message0()" checked="checked">独立法人<span id="r0s" style="display:none;color:red;">请选择一种平台组织形态</span>
	  
	  <%
	  }
	  %>
	  
<div id="fr" style="float:right;display:none;">

<% 
if("独立法人".equals(basicInformation.getOrganization()))
{
%>
<script>
		  document.getElementById("fr").style.display = "block";
</script>
<%
}
	  if(basicInformation.getLegaltype()==null||"".equals(basicInformation.getLegaltype()))
	  {
	  %>
	  	<input type="radio" name="frlx" value="企业法人"  id = "r001"/>企业法人
		<br>
		<input type="radio" name="frlx" value="事业法人" id = "r002"/>事业法人
		<br>
		<input type="radio" name="frlx" value="社团法人" id = "r003"/>社团法人<span id="r00s" style="display:none;color:red;">请选择一种法人类型</span>
	  <%
	  }
	  else if("企业法人".equals(basicInformation.getLegaltype()))
	  {
	  %>
	  	<input type="radio" name="frlx" value="企业法人"  id = "r001" checked = "checked"/>企业法人
		<br>
		<input type="radio" name="frlx" value="事业法人" id = "r002"/>事业法人
		<br>
		<input type="radio" name="frlx" value="社团法人" id = "r003"/>社团法人<span id="r00s" style="display:none;color:red;">请选择一种法人类型</span>
	  <%
	  }
	  else if("事业法人".equals(basicInformation.getLegaltype()))
	  {
	  %>
		<input type="radio" name="frlx" value="企业法人"  id = "r001" />企业法人
		<br>
		<input type="radio" name="frlx" value="事业法人" id = "r002" checked = "checked"/>事业法人
		<br>
		<input type="radio" name="frlx" value="社团法人" id = "r003"/>社团法人<span id="r00s" style="display:none;color:red;">请选择一种法人类型</span>
	  
	  <%  
	  }
	  else
	  {
	  %> 
	    <input type="radio" name="frlx" value="企业法人"  id = "r001" />企业法人
		<br>
		<input type="radio" name="frlx" value="事业法人" id = "r002" />事业法人
		<br>
		<input type="radio" name="frlx" value="社团法人" id = "r003" checked = "checked"/>社团法人<span id="r00s" style="display:none;color:red;">请选择一种法人类型</span>
	  <%
	  }
	  %>
</div>
	</td> 
	
	  <td colspan="2">
	  <%
	  if(basicInformation.getConstructiontype()==null||"".equals(basicInformation.getConstructiontype()))
	  {
	  %>
	  <input type="radio" name="gjqk" value="多单位联合共建" id="r11" >多单位联合共建   
	  <input type="radio" name="gjqk" value="依托单位独自建设" id="r12">依托单位独自建设<span id="r1s" style="display:none;color:red;">请选择一种单位共建情况</span>
	  <%
	  }
	  else if("多单位联合共建".equals(basicInformation.getConstructiontype()))
	  {
	  %>
	  <input type="radio" name="gjqk" value="多单位联合共建" id="r11" checked="checked">多单位联合共建  
	  <input type="radio" name="gjqk" value="依托单位独自建设" id="r12">依托单位独自建设<span id="r1s" style="display:none;color:red;">请选择一种单位共建情况</span>
	  <%
	  }
	  else
	  {
	  %>
	  <input type="radio" name="gjqk" value="多单位联合共建" id="r11">多单位联合共建  
	  <input type="radio" name="gjqk" value="依托单位独自建设" checked="checked" id="r12">依托单位独自建设<span id="r1s" style="display:none;color:red;">请选择一种单位共建情况</span>
	  <%
	  }
	  %>
	  </td>
	</tr>
	
	<tr>
	<td colspan="2">京津冀共建
	<%
	  if(basicInformation.getIsIsjointdevelopment()==null||"".equals(basicInformation.getIsIsjointdevelopment()))
	  {
	  %>
	  <input type="radio" name="jjjgj" value="是" id="r21" >是   
	  <input type="radio" name="jjjgj" value="否" id="r22">否<span id="r2s" style="display:none;color:red;">请选择一种共建情况</span>
	  <%
	  }
	  else if("是".equals(basicInformation.getIsIsjointdevelopment()))
	  {
	  %>
	  <input type="radio" name="jjjgj" value="是" id="r21" checked="checked">是 
	  <input type="radio" name="jjjgj" value="否" id="r22">否<span id="r2s" style="display:none;color:red;">请选择一种共建情况</span>
	  <%
	  }
	  else
	  {
	  %>
	  <input type="radio" name="jjjgj" value="是" id="r21">是
	  <input type="radio" name="jjjgj" value="否" checked="checked" id="r22">否<span id="r2s" style="display:none;color:red;">请选择一种共建情况</span>
	  <%
	  }
	  %>
	</td>
	</tr>
	
	<tr>
	<td>服务的主要国民经济行业</td> 
	<td colspan="4">
	<select name="fwdzygmjjhy1" id="category" style="width: 150px;float: left;margin-left:30px"></select>
	<select name="fwdzygmjjhy2" id="division" style="width: 150px;float: left;margin-left: 40px;"></select>
	<select name="fwdzygmjjhy3" id="group" style="width: 150px;float: left;margin-left: 40px;"></select>
	<select id="section" style="display:none"></select>
	<script type="text/javascript">  
    	addressInit('category','division','group','section','A 农、林、牧、渔业', '01 农业', '011 谷物种植', '0111 稻谷种植');  
	</script> 
	</td>
	</tr>
	
	<tr>
	<td>所属的主要学科</td> 
	<td colspan="4">
	<select id="ssdzyxk1" name="ssdzyxk1" style="width: 150px;float: left;margin-left:30px">
	<option value="">请选择一级学科分类</option></select>
	<select id="ssdzyxk2" name="ssdzyxk2" style="width: 150px;float: left;margin-left:40px">
	<option value="">请选择二级学科分类</option></select>
	<select id="ssdzyxk3" name="ssdzyxk3" style="width: 150px;float: left;margin-left:40px">
	<option value="">请选择三级学科分类</option></select>
	</tr>
	
	<tr>
	<td>依托单位名称</td> <td colspan="2">
	<%
	if(basicInformation.getSupportunitname()==null)
	{
		basicInformation.setSupportunitname("");
	}
	%>
	<input type="text" name="ytdwname" value="<%=basicInformation.getSupportunitname() %>" id="a1" onblur="message1()"><span id="a1s" style="display:none;color:red;">依托单位名称不能为空</span></td> 
	<td>依托单位组织机构代码(社会信用代码)</td> <td>
	<%
	if(basicInformation.getCode()==null)
	{
		basicInformation.setCode("");
	}
	%>
	<input type="text" name="ytdwzzjgdm" value="<%=basicInformation.getCode() %>" id="a2" onblur="message2()"><span id="a2s" style="display:none;color:red;">依托单位组织机构代码(社会信用代码)不能为空</span></td> 
	</tr>
	
	<tr>
	<td>依托单位法人代表姓名</td> <td colspan="2">
	<%
	if(basicInformation.getLegalname()==null)
	{
		basicInformation.setLegalname("");
	}
	%>
	<input type="text" name="ytdwfrname" value="<%=basicInformation.getLegalname() %>" id="a3" onblur="message3()"><span id="a3s" style="display:none;color:red;">依托单位法人代表姓名不能为空</span></td>  
	<td>办公电话</td> <td>
	<%
	if(basicInformation.getSupportunitofficephone()==null)
	{
		basicInformation.setSupportunitofficephone("");
	}
	%>
	<input type="text" name="bgdh" value="<%=basicInformation.getSupportunitofficephone() %>" id="a4" onblur="message4()"><span id="a4s" style="display:none;color:red;">办公电话不能为空</span></td> 
	</tr>
	
	<tr>
	<td>依托单位类型</td><td colspan="4">
	<%
	  if(basicInformation.getSupportunittype()==null||"".equals(basicInformation.getSupportunittype()))
	  {
	  %>
	  <input type="radio" name="ytdwlx" value="企业" id="r31"/>企业
	  <input type="radio" name="ytdwlx" value="科研机构" id="r32"/>科研机构  
	  <input type="radio" name="ytdwlx" value="高等院校" id="r33"/>高等院校  
	  <input type="radio" name="ytdwlx" value="检测机构" id="r34"/>检测机构 
	  <input type="radio" name="ytdwlx" value="医疗机构" id="r35"/>医疗机构  
	  <input type="radio" name="ytdwlx" value="政府机构" id="r36"/>政府机构  
	  <input type="radio" name="ytdwlx" value="社团组织" id="r37"/>社团组织  
	  <input type="radio" name="ytdwlx" value="其他" id="r38"/>其他
	  
	  <span id="r3s" style="display:none;color:red;">请选择一种共建单位类型</span>
	  <%
	  }
	  else if("企业".equals(basicInformation.getSupportunittype()))
	  {
	  %>
	  <input type="radio" name="ytdwlx" value="企业" id="r31" checked="checked"/>企业
	  <input type="radio" name="ytdwlx" value="科研机构" id="r32"/>科研机构  
	  <input type="radio" name="ytdwlx" value="高等院校" id="r33"/>高等院校  
	  <input type="radio" name="ytdwlx" value="检测机构" id="r34"/>检测机构 
	  <input type="radio" name="ytdwlx" value="医疗机构" id="r35"/>医疗机构  
	  <input type="radio" name="ytdwlx" value="政府机构" id="r36"/>政府机构  
	  <input type="radio" name="ytdwlx" value="社团组织" id="r37"/>社团组织  
	  <input type="radio" name="ytdwlx" value="其他" id="r38"/>其他
	  
	  <span id="r3s" style="display:none;color:red;">请选择一种共建单位类型</span>
	  <%
	  }
	  else if("科研机构".equals(basicInformation.getSupportunittype()))
	  {
	  %>
	  <input type="radio" name="ytdwlx" value="企业" id="r31" />企业
	  <input type="radio" name="ytdwlx" value="科研机构" id="r32" checked="checked"/>科研机构  
	  <input type="radio" name="ytdwlx" value="高等院校" id="r33"/>高等院校  
	  <input type="radio" name="ytdwlx" value="检测机构" id="r34"/>检测机构 
	  <input type="radio" name="ytdwlx" value="医疗机构" id="r35"/>医疗机构  
	  <input type="radio" name="ytdwlx" value="政府机构" id="r36"/>政府机构  
	  <input type="radio" name="ytdwlx" value="社团组织" id="r37"/>社团组织  
	  <input type="radio" name="ytdwlx" value="其他" id="r38"/>其他
	  
	  <span id="r3s" style="display:none;color:red;">请选择一种共建单位类型</span>
	  <%
	  }
	  else if("高等院校".equals(basicInformation.getSupportunittype()))
	  {
	  %>
	  <input type="radio" name="ytdwlx" value="企业" id="r31" />企业
	  <input type="radio" name="ytdwlx" value="科研机构" id="r32" />科研机构  
	  <input type="radio" name="ytdwlx" value="高等院校" id="r33" checked="checked"/>高等院校  
	  <input type="radio" name="ytdwlx" value="检测机构" id="r34"/>检测机构 
	  <input type="radio" name="ytdwlx" value="医疗机构" id="r35"/>医疗机构  
	  <input type="radio" name="ytdwlx" value="政府机构" id="r36"/>政府机构  
	  <input type="radio" name="ytdwlx" value="社团组织" id="r37"/>社团组织  
	  <input type="radio" name="ytdwlx" value="其他" id="r38"/>其他
	  
	  <span id="r3s" style="display:none;color:red;">请选择一种共建单位类型</span>
	  <%
	  }
	  
	  else if("检测机构".equals(basicInformation.getSupportunittype()))
	  {
	  %>
	  <input type="radio" name="ytdwlx" value="企业" id="r31" />企业
	  <input type="radio" name="ytdwlx" value="科研机构" id="r32" />科研机构  
	  <input type="radio" name="ytdwlx" value="高等院校" id="r33"/>高等院校  
	  <input type="radio" name="ytdwlx" value="检测机构" id="r34" checked="checked"/>检测机构 
	  <input type="radio" name="ytdwlx" value="医疗机构" id="r35"/>医疗机构  
	  <input type="radio" name="ytdwlx" value="政府机构" id="r36"/>政府机构  
	  <input type="radio" name="ytdwlx" value="社团组织" id="r37"/>社团组织  
	  <input type="radio" name="ytdwlx" value="其他" id="r38"/>其他
	  
	  <span id="r3s" style="display:none;color:red;">请选择一种共建单位类型</span>
	  <%
	  }
	
	  else if("医疗机构".equals(basicInformation.getSupportunittype()))
	  {
	  %>
	  <input type="radio" name="ytdwlx" value="企业" id="r31" />企业
	  <input type="radio" name="ytdwlx" value="科研机构" id="r32" />科研机构  
	  <input type="radio" name="ytdwlx" value="高等院校" id="r33"/>高等院校  
	  <input type="radio" name="ytdwlx" value="检测机构" id="r34"/>检测机构 
	  <input type="radio" name="ytdwlx" value="医疗机构" id="r35" checked="checked"/>医疗机构  
	  <input type="radio" name="ytdwlx" value="政府机构" id="r36"/>政府机构  
	  <input type="radio" name="ytdwlx" value="社团组织" id="r37"/>社团组织  
	  <input type="radio" name="ytdwlx" value="其他" id="r38"/>其他
	  
	  <span id="r3s" style="display:none;color:red;">请选择一种共建单位类型</span>
	  <%
	  }
	
	  else if("政府机构".equals(basicInformation.getSupportunittype()))
	  {
	  %>
	  <input type="radio" name="ytdwlx" value="企业" id="r31" />企业
	  <input type="radio" name="ytdwlx" value="科研机构" id="r32" />科研机构  
	  <input type="radio" name="ytdwlx" value="高等院校" id="r33"/>高等院校  
	  <input type="radio" name="ytdwlx" value="检测机构" id="r34"/>检测机构 
	  <input type="radio" name="ytdwlx" value="医疗机构" id="r35"/>医疗机构  
	  <input type="radio" name="ytdwlx" value="政府机构" id="r36" checked="checked"/>政府机构  
	  <input type="radio" name="ytdwlx" value="社团组织" id="r37"/>社团组织  
	  <input type="radio" name="ytdwlx" value="其他" id="r38"/>其他
	  
	  <span id="r3s" style="display:none;color:red;">请选择一种共建单位类型</span>
	  <%
	  }
	
	  else if("社团组织".equals(basicInformation.getSupportunittype()))
	  {
	  %>
	  <input type="radio" name="ytdwlx" value="企业" id="r31" />企业
	  <input type="radio" name="ytdwlx" value="科研机构" id="r32" />科研机构  
	  <input type="radio" name="ytdwlx" value="高等院校" id="r33"/>高等院校  
	  <input type="radio" name="ytdwlx" value="检测机构" id="r34"/>检测机构 
	  <input type="radio" name="ytdwlx" value="医疗机构" id="r35"/>医疗机构  
	  <input type="radio" name="ytdwlx" value="政府机构" id="r36"/>政府机构  
	  <input type="radio" name="ytdwlx" value="社团组织" id="r37" checked="checked"/>社团组织  
	  <input type="radio" name="ytdwlx" value="其他" id="r38"/>其他
	  
	  <span id="r3s" style="display:none;color:red;">请选择一种共建单位类型</span>
	  <%
	  }
	
	  else if("其他".equals(basicInformation.getSupportunittype()))
	  {
	  %>
	  <input type="radio" name="ytdwlx" value="企业" id="r31" />企业
	  <input type="radio" name="ytdwlx" value="科研机构" id="r32" />科研机构  
	  <input type="radio" name="ytdwlx" value="高等院校" id="r33"/>高等院校  
	  <input type="radio" name="ytdwlx" value="检测机构" id="r34"/>检测机构 
	  <input type="radio" name="ytdwlx" value="医疗机构" id="r35"/>医疗机构  
	  <input type="radio" name="ytdwlx" value="政府机构" id="r36"/>政府机构  
	  <input type="radio" name="ytdwlx" value="社团组织" id="r37"/>社团组织  
	  <input type="radio" name="ytdwlx" value="其他" id="r38" checked="checked"/>其他
	  
	  <span id="r3s" style="display:none;color:red;">请选择一种共建单位类型</span>
	  <%
	  }
	  %>
	</td>
	</tr>
	
	<tr>
	<td>共建单位</td>
	<td colspan="4" id="gjdw0">
	<script>
			var count = 0;
	</script>
	<%
	if(basicInformation.getBuildunit()==null||"".equals(basicInformation.getBuildunit()))
	{
		basicInformation.setBuildunit("");
	}
	else
	{
		String g = basicInformation.getBuildunit();
		String[] garray = g.split(" ");
		if(garray.length==1)
		{
		%>
			<input type="text" name="gjdw1" id="gjdw1" value="<%=garray[0] %>">
			<script>
			count = 1;
			</script>
		<%
		}
		else if(garray.length==2)
		{
		%>
			<input type="text" name="gjdw1" id="gjdw1" value="<%=garray[0] %>">
			<input type="text" name="gjdw2" id="gjdw2" value="<%=garray[1] %>">
			<script>
			count = 2;
			</script>
		<%
		}
		else
		{
		%>
			<input type="text" name="gjdw1" id="gjdw1" value="<%=garray[0] %>">
			<input type="text" name="gjdw2" id="gjdw2" value="<%=garray[1] %>">
			<input type="text" name="gjdw3" id="gjdw3" value="<%=garray[2] %>">
			<script>
			count = 3;
			</script>
		<%
		}
	}
	%>
	<input type="button" value="增加" onclick="add()"/>
	<input type="button" value="减少" onclick="del()"/>
	
	<input type="hidden" name="gjdw" id="gjdw"/>
	</td>
	</tr>
	
	<tr><td rowspan="5">平台主任（院长）</td> <td>姓名</td> 
	<td>
	<%
	if(basicInformation.getDirectorname()==null)
	{
		basicInformation.setDirectorname("");
	}
	%>
	<input type="text" name="name" value="<%=basicInformation.getDirectorname() %>"></td> 
	<td>性别</td> 
	<td>
	<%
	if(basicInformation.getSex()==null)
	{
		basicInformation.setSex("");
	}
	
	  if(basicInformation.getSex()==null||"".equals(basicInformation.getSex()))
	  {
	  %>
	  <input type="radio" name="sex" value="男" id="r41" >男 
	  <input type="radio" name="sex" value="女" id="r42">女<span id="r4s" style="display:none;color:red;">请选择性别</span>
	  <%
	  }
	  else if("男".equals(basicInformation.getSex()))
	  {
	  %>
	  <input type="radio" name="sex" value="男" id="r41" checked="checked">男  
	  <input type="radio" name="sex" value="女" id="r42">女<span id="r4s" style="display:none;color:red;">请选择性别</span>
	  <%
	  }
	  else
	  {
	  %>
	  <input type="radio" name="sex" value="男" id="r41" >男  
	  <input type="radio" name="sex" value="女" id="r42" checked="checked">女<span id="r4s" style="display:none;color:red;">请选择性别</span>
	  <%
	  }
	  %>
	
	</td></tr>
	<tr> <td>出生年月</td> <td>
	<select name="year1" size="1">
		<%
		String birth = basicInformation.getBirth();
		
		for(int i=1950;i<=2018;i++)
		{
			if(birth!=null)
			{
				String[] str1 = birth.split("-");
				if(String.valueOf(i).equals(str1[0]))
				{
					%>
					<option value="<%=String.valueOf(i)%>" selected="selected"><%=i %></option>
					<%
				}	
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
		
		<select name="month1" size="1" >
		<%
		for(int i=1;i<=12;i++)
		{
			if(birth!=null)
			{
				String[] str1 = birth.split("-");
				if(String.valueOf(i).equals(str1[1]))
				{
					%>
					<option value="<%=String.valueOf(i)%>" selected="selected"><%=i %></option>
					<%
				}	
			}
		else
		{
			%>
			<option value="<%=String.valueOf(i)%>"><%=i %></option>
			<%
		}}
		%>
		</select></td> 
		<td>职称</td>
		<td>
		<%
	if(basicInformation.getTitle()==null)
	{
		basicInformation.setTitle("");
	}
	%>
	<input type="text" name="zc" value="<%=basicInformation.getTitle() %>"></td></tr>
	<tr> <td>所学专业</td> 
	<td>
	<%
	if(basicInformation.getProfessional()==null)
	{
		basicInformation.setProfessional("");
	}
	%>
	<input type="text" name="zy" value="<%=basicInformation.getProfessional() %>"></td> 
	<td>学历</td>
	<td>
	<%
	if(basicInformation.getEducation()==null)
	{
		basicInformation.setEducation("");
	}
	%>
	<input type="text" name="xl" value="<%=basicInformation.getEducation() %>"></td></tr>
	<tr> <td>学位</td>
    <td>
    <%
	if(basicInformation.getAcademicdegree()==null)
	{
		basicInformation.setAcademicdegree("");
	}
	%>
    <input type="text" name="xw" value="<%=basicInformation.getAcademicdegree() %>"></td> 
    <td>办公电话</td>
    <td>
    <%
	if(basicInformation.getDirectorofficephone()==null)
	{
		basicInformation.setDirectorofficephone("");
	}
	%>
    <input type="text" name="officephone" value="<%=basicInformation.getDirectorofficephone() %>"></td></tr>
	<tr> <td>手机</td> 
	<td>
	<%
	if(basicInformation.getMobliephone()==null)
	{
		basicInformation.setMobliephone("");
	}
	%>
	<input type="text" name="telephone" value="<%=basicInformation.getMobliephone() %>"></td> 
	<td>E-mail</td>
	<td>
	<%
	if(basicInformation.getEmail()==null)
	{
		basicInformation.setEmail("");
	}
	%>
	<input type="text" name="email" value="<%=basicInformation.getEmail() %>"></td></tr>
	<tr> <td>平台网站名称</td>
	 <td>
	 <%
	if(basicInformation.getWebsite()==null)
	{
		basicInformation.setWebsite("");
	}
	%>
	 <input type="text" name="ptwzname" value="<%=basicInformation.getWebsite() %>"></td>
	 <td>网址</td><td colspan="2">
	 <%
	if(basicInformation.getUrl()==null)
	{
		basicInformation.setUrl("");
	}
	%>
	 <input type="text" name="wz" value="<%=basicInformation.getUrl() %>"></td></tr>
	<tr> <td>平台通讯地址</td> <td colspan="2">
	<%
	if(basicInformation.getAddress()==null)
	{
		basicInformation.setAddress("");
	}
	%>
	<input type="text" name="txdz" value="<%=basicInformation.getAddress() %>"></td> 
	<td>邮编</td>
	<td>
	<%
	if(basicInformation.getZipcode()==null)
	{
		basicInformation.setZipcode("");
	}
	%>
	<input type="text" name="yb" value="<%=basicInformation.getZipcode() %>"></td></tr>
	
</table>

</div>
	<div id="box5">
        <table cellpadding="0" cellspacing="0" border="1" >
           <tr>
           <td colspan="2">
               <input type="submit" value="保存修改"
               style="border-style:none; 
                width:124px; 
                height:35px; 
                background-repeat:no-repeat;" 
                onclick="return message()"
               ></td>
              </tr>
         </table>
      </div>
      <div id="box6">
      <table cellpadding="0" cellspacing="0" border="1" >
           <tr>
           <td colspan="2">
               <input type="reset" value="重 &nbsp;置"
               style="border-style:none; 
                width:124px; 
                height:35px; 
                background-repeat:no-repeat;" 
               >
            </td>
            </tr>
            
        </table>
        </div>
        </form>
   </div>
   
   
    <br>
	<br>

</body>
</html>