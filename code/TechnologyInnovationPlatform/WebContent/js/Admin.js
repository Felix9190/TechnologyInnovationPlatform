//用户管理
function userManager() 
{
	document.getElementById("myframe").src="../user/list.jsp";
}

//填报信息审核
function infoManager() 
{
	document.getElementById("myframe").src="List.jsp";
}


//简单检索
function simpleSearch() 
{
	document.getElementById("myframe").src="SimpleSearch.jsp";
}

//多条件检索
function middleSearch() 
{
	document.getElementById("myframe").src="MiddleSearch.jsp";
}

//高级检索
function superSearch() 
{
	document.getElementById("myframe").src="SuperSearch.jsp";
}

//按国民经济分类浏览
function lookByEconomy() 
{
	document.getElementById("myframe").src="LookByEconomy.jsp";
}