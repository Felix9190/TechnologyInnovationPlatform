$(function()
{
	$("input:submit").click(function() 
	{
		var ptjb = "";
		$("input:checkbox[name='ptjb1']:checked").each(function() 
		{
			ptjb += $(this).val() + " ";
		});
		document.getElementById("ptjb").value = ptjb;
	});
})

function getSelectedText()
{
    var select1 = document.getElementById("sheng");
    var options1 = select1.options;
    var index1 = select1.selectedIndex;
    var selectedText1 = options1[index1].text;
    
    var select2 = document.getElementById("shi");
    var options2 = select2.options;
    var index2 = select2.selectedIndex;
    var selectedText2 = options2[index2].text;
    
    var select3 = document.getElementById("xian");
    var options3 = select3.options;
    var index3 = select3.selectedIndex;
    var selectedText3 = options3[index3].text;
    
    var szsx = selectedText1+" "+selectedText2+" "+selectedText3;
    document.getElementById("szsx").value=szsx;
}

function message0()
{
	if(document.getElementById("r02").checked == true)
	{
		document.getElementById("fr").style.display = "block";
	}
	else
	{
		document.getElementById("fr").style.display = "none";
	}
}

function message1()
{
	var a1 = document.getElementById("a1").value;
    if(a1==null || a1=="")
    {
    	document.getElementById("a1s").style.display = "block";
    } 
    else 
    {
   		document.getElementById("a1s").style.display = "none";
    }
}
function message2()
{
	var a2 = document.getElementById("a2").value;
	if(a2==null || a2=="")
	{
		document.getElementById("a2s").style.display="block";
	} 
	else 
	{
			document.getElementById("a2s").style.display="none";
			
	}
}
function message3()
{
	var a3 = document.getElementById("a3").value;
	if(a3==null || a3=="")
	{
		document.getElementById("a3s").style.display="block";
	} 
	else 
	{
		document.getElementById("a3s").style.display="none";		
	}
}
function message4()
{
	var a4 = document.getElementById("a4").value;
	if(a4==null || a4=="")
	{
		document.getElementById("a4s").style.display="block";
	} 
	else 
	{
		document.getElementById("a4s").style.display="none";	
	}
}



function add()
{
	if(count<3)
	{
		count++;
		var x= document.createElement("input");
		x.setAttribute("type","text");
		x.setAttribute("name","gjdw"+count);
		x.setAttribute("id","gjdw"+count);
		var td = document.getElementById("gjdw0");
		td.appendChild(x);
	}
}

function del()
{
	if(count>=1)
	{
		var td = document.getElementById("gjdw"+count);
		td.parentNode.removeChild(td);
		count--;
	}
}

function getGjdw()
{
	if(count==0)
	{
		var gjdw = "";
		document.getElementById("gjdw").value = gjdw;
	}
	if(count==1)
	{
		var gjdw1 = document.getElementById("gjdw1").value;
		var gjdw = gjdw1;
		document.getElementById("gjdw").value = gjdw;
	}
	if(count==2)
	{
		var gjdw1 = document.getElementById("gjdw1").value;
		var gjdw2 = document.getElementById("gjdw2").value;
		var gjdw = gjdw1+" "+gjdw2;
		document.getElementById("gjdw").value = gjdw;
	}
	if(count==3)
	{
		var gjdw1 = document.getElementById("gjdw1").value;
		var gjdw2 = document.getElementById("gjdw2").value;
		var gjdw3 = document.getElementById("gjdw3").value;
		var gjdw = gjdw1+" "+gjdw2+" "+gjdw3;
		document.getElementById("gjdw").value = gjdw;
	}
}


function message()
{
	getSelectedText();
	getGjdw();
	var a = 0;
	var a1 = document.getElementById("a1").value;
    if(a1==null || a1=="")
    {
    	document.getElementById("a1s").style.display="block";
    	a = a + 1;
    } 
    else 
    {
   		document.getElementById("a1s").style.display="none";
    }
    
    var a2 = document.getElementById("a2").value;
	if(a2==null || a2=="")
	{
		document.getElementById("a2s").style.display="block";
		a = a + 1;
	} 
	else 
	{
			document.getElementById("a2s").style.display="none";
	}
	
	var a3 = document.getElementById("a3").value;
	if(a3==null || a3=="")
	{
		document.getElementById("a3s").style.display="block";
		a = a + 1;
	} 
	else 
	{
			document.getElementById("a3s").style.display="none";
	}
	
	var a4 = document.getElementById("a4").value;
	if(a4==null || a4=="")
	{
		document.getElementById("a4s").style.display="block";
		a = a + 1;
	} 
	else 
	{
		document.getElementById("a4s").style.display="none";	
	}
	//平台组织形态
	var r01 = document.getElementById("r01").checked;
	var r02 = document.getElementById("r02").checked;
	if((r01==false)&&(r02==false))
	{
		document.getElementById("r0s").style.display="block";
		a = a + 1;
	} 
	else 
	{
		document.getElementById("r0s").style.display="none";
	}
	
	//法人类型
	var r001 = document.getElementById("r001").checked;
	var r002 = document.getElementById("r002").checked;
	var r003 = document.getElementById("r003").checked;
	if((r02==true)&&(r001==false)&&(r002==false)&&(r003==false))
	{
		document.getElementById("r00s").style.display="block";
		a = a + 1;
	} 
	else 
	{
		document.getElementById("r00s").style.display="none";
	}
	
	var r11 = document.getElementById("r11").checked;
	var r12 = document.getElementById("r12").checked;
	if((r11==false)&&(r12==false))
	{
		document.getElementById("r1s").style.display="block";
		a = a + 1;
	} 
	else 
	{
		document.getElementById("r1s").style.display="none";
	}
	
	var r21 = document.getElementById("r21").checked;
	var r22 = document.getElementById("r22").checked;
	if((r21==false)&&(r22==false))
	{
		document.getElementById("r2s").style.display="block";
		a = a + 1;
	} 
	else 
	{
		document.getElementById("r2s").style.display="none";
	}
	
	var r31 = document.getElementById("r31").checked;
	var r32 = document.getElementById("r32").checked;
	var r33 = document.getElementById("r33").checked;
	var r34 = document.getElementById("r34").checked;
	var r35 = document.getElementById("r35").checked;
	var r36 = document.getElementById("r36").checked;
	var r37 = document.getElementById("r37").checked;
	var r38 = document.getElementById("r38").checked;
	if((r31==false)&&(r32==false)&&(r33==false)&&(r34==false)&&(r35==false)&&(r36==false)&&(r37==false)&&(r38==false))
	{
		document.getElementById("r3s").style.display="block";
		a = a + 1;
	} 
	else 
	{
		document.getElementById("r3s").style.display="none";
	}
	
	
	if(a>=1)
	{
		var b = confirm("您有信息还未填写，确认保存修改？");
		return b;
	}
	else
	{
		var c = confirm("确认保存修改？");
		return c;//不用return confirm()的话，取消表单也会提交
	}
	
	var r41 = document.getElementById("r41").checked;
	var r42 = document.getElementById("r42").checked;
	if((r41==false)&&(r42==false))
	{
		document.getElementById("r4s").style.display="block";
		a = a + 1;
	} 
	else 
	{
		document.getElementById("r4s").style.display="none";
	}
}

//学科三级联动
var num1; 
var num2;
var ssdzyxk1=["数学","信息科学与系统科学","力学"];
var ssdzyxk2=[["数学史","数理逻辑与数学基础","数论","代数学"],["信息科学与系统科学基础学科","系统学","控制理论"],["基础力学","固体力学","振动与波","流体力学"]];
var ssdzyxk3=[[["古代史","近代史","中国史"],["包括演绎逻辑学","证明论"],["包括初等数论","解析数论"],["线性代数","群论"]],[["信息论","控制论","系统论","信息科学与系统科学基础学科其他学科"],["微分动力系统","混沌"],["大系统理论","系统辨识"]],[["理论力学","理性力学","非线性力学"],["弹性力学","塑性力学"],["粘弹性、粘塑性力学","蠕变"],["线性振动力学","固体中的波"]]];
$(function(){
    for(var i=0;i<ssdzyxk1.length;i++){
    $("#ssdzyxk1").append("<option>"+ssdzyxk1[i]+"</option>");
    }
    $("#ssdzyxk1").change(function(){
        $("#ssdzyxk2").children().not(":eq(0)").remove();
        num1=$(this).children("option:selected").index();
        var acity1=ssdzyxk2[num1-1];
        for(var j=0;j<acity1.length;j++){
        $("#ssdzyxk2").append("<option>"+acity1[j]+"</option>");
        }
    $("#ssdzyxk2").change(function(){
        $("#ssdzyxk3").children().not(":eq(0)").remove();
        num2=$(this).children("option:selected").index();
        var contries1=ssdzyxk3[num1-1][num2-1];
        for( var z=0;z<contries1.length;z++){
        $("#ssdzyxk3").append("<option>"+contries1[z]+"</option>");
        }
        });
        });
    });