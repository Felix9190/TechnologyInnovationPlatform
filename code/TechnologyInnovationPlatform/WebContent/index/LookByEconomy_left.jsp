<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://static.runoob.com/assets/js/jquery-treeview/jquery.treeview.css" />
	<link rel="stylesheet" href="https://static.runoob.com/assets/js/jquery-treeview/screen.css" />
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script src="https://static.runoob.com/assets/js/jquery-treeview/jquery.cookie.js"></script>
	<script src="https://static.runoob.com/assets/js/jquery-treeview/jquery.treeview.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#browser").treeview({
			toggle: function() {
				console.log("%s was toggled.", $(this).find(">span").text());
			}
		});

		$("#add").click(function() {
			var branches = $("<li><span class='folder'>New Sublist</span><ul>" +
				"<li><span class='file'>Item1</span></li>" +
				"<li><span class='file'>Item2</span></li></ul></li>").appendTo("#browser");
			$("#browser").treeview({
				add: branches
			});
		});
	});
	</script>
	<style type="text/css">
		a
		{
			color:#1a4ab9;
			text-decoration: none;
		}
		body
		{
			background-color: #ececec;
		}
	</style>
</head>
<body>
<div id="main">
<h4>国民经济主要行业</h4>
	<ul id="browser">
				<li class="closed"><span>农、林、牧、渔</span>
					<ul>
						<li class="closed"><span >农业</span>
						    <ul>
						    <li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-01 农业-011 谷物种植" %>" target="LookByEconomy_right">谷物种植</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-01 农业-012 豆类、油料和薯类种植"%>" target="LookByEconomy_right">豆类油料和薯类种植</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-01 农业-013 棉、麻、糖、烟草种植"%>" target="LookByEconomy_right">棉、麻、糖、烟草种植</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-01 农业-014 蔬菜、食用菌及园艺作物种植"%>" target="LookByEconomy_right">蔬菜、食用菌及园艺作物种植</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-01 农业-015 水果种植"%>" target="LookByEconomy_right">水果种植</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-01 农业-016 坚果、含油果、香料和饮料作物种"%>" target="LookByEconomy_right">坚果、含油果、香料和饮料作物种植</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-01 农业-017 中药材种植"%>" target="LookByEconomy_right">中药材种植</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-01 农业-019 其他农业"%>" target="LookByEconomy_right">其他农业</a></li>
						    </ul>
						</li>
					</ul>
					
					<ul>
						<li class="closed"><span >林业</span>
						    <ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-02 林业-021 林木育种和育苗"%>" target="LookByEconomy_right">林木育种和育苗</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-02 林业-022 造林和更新"%>" target="LookByEconomy_right">造林和更新</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-02 林业-023 森林经营和管护"%>" target="LookByEconomy_right">森林经营、管护和改培</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-02 林业-024 木材和竹材采运"%>" target="LookByEconomy_right">木材和竹材采运</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-02 林业-025 林产品采集"%>" target="LookByEconomy_right">林产品采集</a></li>
					</ul>
						</li>
					</ul>
					
					<ul>
						<li class="closed"><span >畜牧业</span>
						   <ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-03 畜牧业-031 牲畜饲养"%>" target="LookByEconomy_right">牲畜饲养</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-03 畜牧业-032 家禽饲养"%>" target="LookByEconomy_right">家禽饲养</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-03 畜牧业-033 狩猎和捕捉动物"%>" target="LookByEconomy_right">狩猎和捕捉动物</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-03 畜牧业-039 其他畜牧业"%>" target="LookByEconomy_right">其他畜牧业</a></li>
						
					</ul>
						</li>
					</ul>
					
					<ul>
						<li class="closed"><span >渔业</span>
						  <ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-04 渔业-041 水产养殖"%>" target="LookByEconomy_right">水产养殖</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="A 农、林、牧、渔业-04 渔业-042 水产捕捞"%>" target="LookByEconomy_right">水产捕捞</a></li>
					</ul>
						</li>
					</ul>
				</li>
				<li class="closed"><span >采矿业</span>
					<ul>
						<li class="closed"><span >煤炭开采和洗选业</span>
						<ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-06 煤炭开采和洗选业-061 烟煤和无烟煤开采洗选"%>" target="LookByEconomy_right">烟煤和无烟煤开采洗选</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-06 煤炭开采和洗选业-062 褐煤开采洗选"%>" target="LookByEconomy_right">褐煤开采洗选</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-06 煤炭开采和洗选业-069 其他煤炭采选"%>" target="LookByEconomy_right">其他煤炭采选</a></li>
						</ul>
						</li>
						<li class="closed"><span >石油和天然气开采业</span>
							<ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-07 石油和天然气开采业-071 石油开采"%>" target="LookByEconomy_right">石油开采</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-07 石油和天然气开采业-072 天然气开采"%>" target="LookByEconomy_right">天然气开采</a></li>
						</ul>
						</li>
						
						<li class="closed"><span >黑色金属矿采选业</span>
							<ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-08 黑色金属矿采选业-081 铁矿采选"%>" target="LookByEconomy_right">铁矿采选</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-08 黑色金属矿采选业-082 锰矿、铬矿采选"%>" target="LookByEconomy_right">锰矿、铬矿采选</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-08 黑色金属矿采选业-089 其他黑色金属矿采选"%>" target="LookByEconomy_right">其他黑色金属矿采选</a></li>
						     </ul>
						</li>
						
						
						<li class="closed"><span>有色金属矿采选业</span>
						<ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-09 有色金属矿采选业-091 常用有色金属矿采选"%>" target="LookByEconomy_right">常用有色金属矿采选</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-09 有色金属矿采选业-092 贵金属矿采选"%>" target="LookByEconomy_right">贵金属矿采选</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-09 有色金属矿采选业-093 稀有稀土金属矿采选"%>" target="LookByEconomy_right">稀有稀土金属矿采选</a></li>
						</ul>
						</li>
						
						<li class="closed"><span>非金属矿采选业</span>
						<ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-10 非金属矿采选业-101 土砂石开采"%>" target="LookByEconomy_right">土砂石开采</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-10 非金属矿采选业-102 化学矿开采"%>" target="LookByEconomy_right">化学矿开采</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-10 非金属矿采选业-103 采盐"%>" target="LookByEconomy_right">采盐</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-10 非金属矿采选业-109 石棉及其他非金属矿采选"%>" target="LookByEconomy_right">石棉及其他非金属矿采选</a></li>
						</ul>
						</li>
						
						<li class="closed"><span>开采辅助活动</span>
						<ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-11 开采辅助活动-111 煤炭开采和洗选辅助活动"%>" target="LookByEconomy_right">煤炭开采和洗选辅助活动</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-11 开采辅助活动-112 石油和天然气开采辅助活动"%>" target="LookByEconomy_right">石油和天然气开采辅助活动</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-11 开采辅助活动-119 其他开采辅助活动"%>" target="LookByEconomy_right">其他开采辅助活动</a></li>
						</ul>
						</li>
						
						<li class="closed"><span>其他采矿业</span>
						<ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="B 采矿业-12 其他采矿业-120 其他采矿业"%>" target="LookByEconomy_right">其他采矿业</a></li>
						</ul>
						</li>
					</ul>
				</li>
				<li class="closed"><span>制造业</span>
					<ul>
						<li class="closed"><span>农副食品加工业</span>
						<ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="C 制造业-13 农副食品加工业-131 谷物磨制"%>" target="LookByEconomy_right">谷物磨制</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="C 制造业-13 农副食品加工业-132 饲料加工"%>" target="LookByEconomy_right">饲料加工</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="C 制造业-13 农副食品加工业-133 植物油加工"%>" target="LookByEconomy_right">植物油加工</a></li>
					    </ul>
						</li>
						
						<li class="closed"><span>食品制造业</span>
						<ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="C 制造业-14 食品制造业-141 焙烤食品制造"%>" target="LookByEconomy_right">焙烤食品制造</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="C 制造业-14 食品制造业-142 糖果、巧克力及蜜饯制造"%>" target="LookByEconomy_right">糖果、巧克力及蜜饯制造</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="C 制造业-14 食品制造业-143 方便食品制造"%>" target="LookByEconomy_right">方便食品制造</a></li>
					    </ul>
						</li>
						
						<li class="closed"><span>酒、饮料和精制茶制造业</span>
						<ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="C 制造业-15 酒、饮料和精制茶制造业-151 酒的制造"%>" target="LookByEconomy_right">酒的制造</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="C 制造业-15 酒、饮料和精制茶制造业-152 饮料制造"%>" target="LookByEconomy_right">饮料制造</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="C 制造业-15 酒、饮料和精制茶制造业-153 精制茶加工"%>" target="LookByEconomy_right">精制茶加工</a></li>
					    </ul>
						</li>
						
						<li class="closed"><span>烟草制品业</span>
						<ul>
						<li><a href="LookByEconomy_right.jsp?str=<%="C 制造业-16 烟草制品业-161 烟叶复烤"%>" target="LookByEconomy_right">酒的制造</a></li>
						<li><a href="LookByEconomy_right.jsp?str=<%="C 制造业-16 烟草制品业-162 卷烟制造"%>" target="LookByEconomy_right">饮料制造</a></li>
						</ul>
						</li>
						
					</ul>
				</li>
				<li class="closed"><span>电力、热力、燃气及水生产和供应业</span>
				    <ul>
				       <li class="closed"><span>电力、热力生产和供应业</span>
				       <ul>
						<li><a href="#">火力发电</a></li>
						<li><a href="#">水力发电</a></li>
						<li><a href="#">核力发电</a></li>
					</ul>
				       </li>
				       
				       
				         <li class="closed"><span>燃气生产和供应业</span>
				       <ul>
						<li><a href="#">燃气生产和供应业</a></li>
						<li><a href="#">房屋建筑业</a></li>
					</ul>
				       </li>
				       
				       
				         <li class="closed"><span>水的生产和供应业</span>
				      <ul>
						<li><a href="#">自来水生产和供应</a></li>
						<li><a href="#">污水处理及其再生利用</a></li>
						<li><a href="#">其他水的处理、利用与分配</a></li>
					</ul>
				       </li>
				    </ul>
				</li>
				
				<li class="closed"><span>建筑业</span>
				    <ul>
				      <li class="closed"><span>土木工程建筑业</span>
				      <ul>
						<li><a href="#">铁路工程建筑</a></li>
						<li><a href="#">公路工程建筑</a></li>
						<li><a href="#">市政道路工程建筑</a></li>
					</ul>
				      </li>
				      
				       <li class="closed"><span>建筑安装业</span>
				      <ul>
						<li><a href="#">电气安装</a></li>
						<li><a href="#">管道和设备安装</a></li>
					</ul>
				      </li>
				      
				        <li class="closed"><span>建筑装饰和其他建筑业</span>
				     <ul>
						<li><a href="#">建筑装饰业</a></li>
						<li><a href="#">工程准备活动</a></li>
						<li><a href="#">建筑物拆除活动</a></li>
					</ul>
				      </li>
				    </ul>
				</li>
			</ul>
</div>
</body>
</html>