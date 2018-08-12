<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/nav.css">
<link rel="stylesheet" type="text/css" href="../font/iconfont.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/nav.js"></script>
<script type="text/javascript" src="../js/Admin.js"></script>
<title>管理员页面</title>
</head>
<body>
<div class="top">
<jsp:include page="../inc/top.jsp" >
		<jsp:param name="op" value="展示" />
</jsp:include>
<h1>河北省科技创新年报统计系统</h1>
</div>
<div class="nav"><!--导航栏 -->
        <div class="nav-top">
            <div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="../image/mini.png" ></div>
        </div>
        <ul>
            <li class="nav-item">
                <a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>综合管理</span><i class="my-icon nav-more"></i></a>
                <ul>
                    <li><a onclick="userManager()"><span>用户管理</span></a></li>
                    <li><a onclick="infoManager()"><span>填报信息审核</span></a></li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="javascript:;"><i class="my-icon nav-icon icon_2"></i><span>综合查询</span><i class="my-icon nav-more"></i></a>
                <ul>
                    <li><a onclick="simpleSearch()"><span>简单检索</span></a></li>
                    <li><a onclick="middleSearch()"><span>多条件检索</span></a></li>
                    <li><a onclick="superSearch()"><span>高级检索</span></a></li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>分类浏览</span><i class="my-icon nav-more"></i></a>
                <ul>
                    <li><a onclick="lookByEconomy()"><span>国民经济</span></a></li>
                    <li><a ><span>主要学科</span></a></li>
                </ul>
            </li>
        </ul>
</div>
<iframe class="myframe" id="myframe" name="myframe" src="SuperSearch.jsp" frameborder="0"></iframe>
</body>
</html>