<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.BasicInformationDaoImpl"%>
<%@page import="com.model.BasicInformation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../ECharts/echarts.min.js"></script>
</head>
<body>
<%
	String str = request.getParameter("str");
	String[] arr = str.split("-");
	BasicInformationDaoImpl basicInformationDaoImpl = new BasicInformationDaoImpl();
	List<BasicInformation> basicInformations3 = new ArrayList<BasicInformation>();
	basicInformations3 = basicInformationDaoImpl.lookByEconomyLoad(arr[0], arr[1], arr[2]);//第3级数据集合
	List<BasicInformation> basicInformations2 = new ArrayList<BasicInformation>();
	basicInformations2 = basicInformationDaoImpl.lookByEconomyLoad(arr[0], arr[1]);//第2级数据集合
	List<BasicInformation> basicInformations = new ArrayList<BasicInformation>();

	
	String[] array = null;
	int[] count = null;
	if(arr[0].equals("A 农、林、牧、渔业"))
	{
		if(arr[1].equals("01 农业"))
		{
			array = new String[]{"011 谷物种植","012 豆类、油料和薯类种植","013 棉、麻、糖、烟草种植","014 蔬菜、食用菌及园艺作物种植","015 水果种植","016 坚果、含油果、香料和饮料作物种","017 中药材种植","019 其他农业"};
			count = new int[7];
			for(int i = 0;i < count.length;i++)
			{
				basicInformations = basicInformationDaoImpl.lookByEconomyLoad("A 农、林、牧、渔业", "01 农业",array[i]);
				count[i]=basicInformations.size();
			}
		}
		else if(arr[1].equals("02 林业"))
		{
			array = new String[]{"021 林木育种和育苗","022 造林和更新","023 森林经营和管护","024 木材和竹材采运","025 林产品采集"};
			count = new int[5];
			for(int i = 0;i < count.length;i++)
			{
				basicInformations = basicInformationDaoImpl.lookByEconomyLoad("A 农、林、牧、渔业", "02 林业", array[i]);
				count[i]=basicInformations.size();
			}
		}
		else if(arr[1].equals("03 畜牧业"))
		{
			array = new String[]{"031 牲畜饲养","032 家禽饲养","033 狩猎和捕捉动物","039 其他畜牧业"};
			count = new int[4];
			for(int i = 0;i < count.length;i++)
			{
				basicInformations = basicInformationDaoImpl.lookByEconomyLoad("A 农、林、牧、渔业", "03 畜牧业", array[i]);
				count[i]=basicInformations.size();
			}
		}
		else
		{
			array = new String[]{"041 水产养殖","042 水产捕捞"};
			count = new int[2];
			for(int i = 0;i < count.length;i++)
			{
				basicInformations = basicInformationDaoImpl.lookByEconomyLoad("A 农、林、牧、渔业", "04 渔业", array[i]);
				count[i]=basicInformations.size();
			}
		}
	}
	else if(arr[0].equals("B 采矿业"))
	{
		if(arr[1].equals("06 煤炭开采和洗选业"))
		{
			array = new String[]{"061 烟煤和无烟煤开采洗选","062 褐煤开采洗选","069 其他煤炭采选"};
			count = new int[3];
			for(int i = 0;i < count.length;i++)
			{
				basicInformations = basicInformationDaoImpl.lookByEconomyLoad("B 采矿业", "06 煤炭开采和洗选业", array[i]);
				count[i]=basicInformations.size();
			}
		}
		else if(arr[1].equals("07 石油和天然气开采业"))
		{
			array = new String[]{"071 石油开采","072 天然气开采"};
			count = new int[2];
			for(int i = 0;i < count.length;i++)
			{
				basicInformations = basicInformationDaoImpl.lookByEconomyLoad("B 采矿业", "07 石油和天然气开采业", array[i]);
				count[i]=basicInformations.size();
			}
		}
		else if(arr[1].equals("08 黑色金属矿采选业"))
		{
			array = new String[]{"081 铁矿采选","082 锰矿、铬矿采选","089 其他黑色金属矿采选"};
			count = new int[3];
			for(int i = 0;i < count.length;i++)
			{
				basicInformations = basicInformationDaoImpl.lookByEconomyLoad("B 采矿业", "08 黑色金属矿采选业", array[i]);
				count[i]=basicInformations.size();
			}
		}
		else if(arr[1].equals("09 有色金属矿采选业"))
		{
			array = new String[]{"091 常用有色金属矿采选","092 贵金属矿采选","093 稀有稀土金属矿采选"};
			count = new int[3];
			for(int i = 0;i < count.length;i++)
			{
				basicInformations = basicInformationDaoImpl.lookByEconomyLoad("B 采矿业", "09 有色金属矿采选业", array[i]);
				count[i]=basicInformations.size();
			}
		}
		else if(arr[1].equals("10 非金属矿采选业"))
		{
			array = new String[]{"101 土砂石开采","102 化学矿开采","103 采盐","109 石棉及其他非金属矿采选"};
			count = new int[4];
			for(int i = 0;i < count.length;i++)
			{
				basicInformations = basicInformationDaoImpl.lookByEconomyLoad("B 采矿业", "10 非金属矿采选业", array[i]);
				count[i]=basicInformations.size();
			}
		}
		else if(arr[1].equals("11 开采辅助活动"))
		{
			array = new String[]{"111 煤炭开采和洗选辅助活动","112 石油和天然气开采辅助活动","119 其他开采辅助活动"};
			count = new int[3];
			for(int i = 0;i < count.length;i++)
			{
				basicInformations = basicInformationDaoImpl.lookByEconomyLoad("B 采矿业", "11 开采辅助活动", array[i]);
				count[i]=basicInformations.size();
			}
		}
		else
		{
			array = new String[]{"120 其他采矿业"};
			count = new int[1];
			for(int i = 0;i < count.length;i++)
			{
				basicInformations = basicInformationDaoImpl.lookByEconomyLoad("B 采矿业", "12 其他采矿业", array[i]);
				count[i]=basicInformations.size();
			}
		}
	}
	else
	{
		//可添加
	}
	int count2 = basicInformations2.size();
	int count3 = basicInformations3.size();
	for(int i =0;i<count.length;i++)
	{
		System.out.print(count[i]+" "+array[i]);
	}
%>
<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        var test = [];
        <%
        for(int i = 0;i <count.length;i++)
        {
        	//String name = array[i];
        	//int value = count[i];
        	%>
        	var json = "{\"name\":\"" + array[i] + "\",\"value\":" + count[i]+ "}";
        	<%
        	
         
        }	      
        %>
        

        // 指定图表的配置项和数据
        var option = {series : [
            {
                name: '中的比例分布',
                type: 'pie',
                radius: '55%',
                data:json
     
                
            }
        ]
};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
</script>

<table border="1" cellpadding="0" cellspacing="0">
<caption>服务于<%=arr[2] %>行业的<%=count3 %>个创新平台明细表</caption>
				<tr>
					<td>平台名称</td>
					<td>平台编号</td>
					<td>服务的主要国民经济行业(1级)</td>
					<td>服务的主要国民经济行业(2级)</td>
					<td>服务的主要国民经济行业(3级)</td>
					<td>技术领域</td>
					<td>平台级别</td>
					<td>所在市县</td>
					<td>批准年月</td>
					<td>更多</td>
				</tr>
					<%
						for(BasicInformation basicInformation:basicInformations3)
						{
					%>
				<tr>
					<td><%=basicInformation.getPlatformname() %></td>
					<td><%=basicInformation.getUsername() %></td>
					<td><%=basicInformation.getServicesector1() %></td>
					<td><%=basicInformation.getServicesector2() %></td>
					<td><%=basicInformation.getServicesector3() %></td>
					<td><%=basicInformation.getTechnicalfield() %></td>
					<td><%=basicInformation.getLevel() %></td>
					<td><%=basicInformation.getLocation() %></td>
					<td><%=basicInformation.getApproveddate()%></td>
					<td><a href="info.jsp?id=<%=basicInformation.getId() %>">详细</a></td>
				</tr>
					<%
						}
					%>	
</table>
</body>
</html>