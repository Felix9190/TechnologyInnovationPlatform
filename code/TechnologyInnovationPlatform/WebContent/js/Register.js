$(document).ready
(
    function()
	{
    	var usernameright = false;
    	var passwordright = false;
    	var passwordsright = false;
    	var platformnameright = false;
    	var approvednumberright = false;
    	var technicalfieldright = false;
    	
		$("#username").blur
		(
			function()
			{
				var isexist = false;
				var users = $("[name='alluser']");
				for(var i = 0 ; i < users.length ; i ++)
				{
					if($(users[i]).val()==$("#username").val())
					{
						isexist = true;
					}
				}
				var username = $("#username").val();
				if(username.length<6||username.length>18)
				{
					$(".tip").eq(0).html('<span style="color:red;"><img src="../image/wrong.PNG">账号长度为6-18位</span>');
				}
				else if (isexist == true) 
				{
					$(".tip").eq(0).html('<span style="color:red;"><img src="../image/wrong.PNG">用户已存在</span>');
				}
				else
				{
					$(".tip").eq(0).html('<img src="../image/right.PNG" />');
				}
			}
		)
		$("#password").blur
		(
			function()
			{
				var password = $("#password").val();
				if(password.length<6||password.length>16)
				{
					$(".tip").eq(1).html('<span style="color:red;"><img src="../image/wrong.PNG">密码长度为6-16位</span>');
				}
				else
				{
					$(".tip").eq(1).html('<img src="../image/right.PNG" />');
				}
			}
		)
		$("#passwords").keyup
		(
			function()
			{
				var password = $("#password").val();
				var passwords = $("#passwords").val();
				if(password!=passwords)
				{
					$(".tip").eq(2).html('<span style="color:red;"><img src="../image/wrong.PNG">密码不一致</span>');
					passwordsright = false;
				}
				else
				{
					$(".tip").eq(2).html('<img src="../image/right.PNG" />');
					passwordsright = true;
				}
			}
		)
		$("#platformname").keyup
		(
			function()
			{
				if($("#platformname").val()=="")
				{
					$(".tip").eq(3).html('<span style="color:red;"><img src="../image/wrong.PNG">平台名称不能为空</span>');
				}
				else
				{
					$(".tip").eq(3).html('<img src="../image/right.PNG" />');
				}
			}
		)
		$("#approvednumber").keyup
		(
			function()
			{
				if($("#approvednumber").val()=="")
				{
					$(".tip").eq(4).html('<span style="color:red;"><img src="../image/wrong.PNG">批准文号不能为空</span>');
				}
				else
				{
					$(".tip").eq(4).html('<img src="../image/right.PNG" />');
				}
			}
		)
		$("#technicalfield").keyup
		(
			function()
			{
				if($("#technicalfield").val()=="")
				{
					$(".tip").eq(5).html('<span style="color:red;"><img src="../image/wrong.PNG">技术领域不能为空</span>');
				}
				else
				{
					$(".tip").eq(5).html('<img src="../image/right.PNG" />');
				}
			}
		)
		$(".inpt").keyup
		(
				function()
				{
					var isexist = false;
					var users = $("[name='alluser']");
					for(var i = 0 ; i < users.length ; i ++)
					{
						if($(users[i]).val()==$("#username").val())
						{
							isexist = true;
						}
					}
					var username = $("#username").val();
					if(username.length<6||username.length>18)
					{
						usernameright = false;
					}
					else if (isexist == true) 
					{
						usernameright = false;
					}
					else
					{
						usernameright = true;
					}

					var password = $("#password").val();
					if(password.length<6||password.length>16)
					{
						passwordright = false;
					}
					else
					{
						passwordright = true;
					}
					if($("#platformname").val()!="")
					{
						platformnameright = true;
					}
					else
					{
						platformnameright = false;
					}
					if($("#approvednumber").val()!="")
					{
						approvednumberright = true;
					}
					else
					{
						approvednumberright = false;
					}
					if($("#technicalfield").val()!="")
					{
						technicalfieldright = true;
					}
					else
					{
						technicalfieldright = false;
					}
					if(usernameright&&passwordright&&passwordsright&&platformnameright&&approvednumberright&&technicalfieldright==true)
					{
						$("#submit").removeAttr("disabled");
						$("#submit").css("color","green");
					}
					else
					{
						$("#submit").attr("disabled","disabled");
						$("#submit").css("color","gray");
					}
				}	
		)
		$("#btn").click
		(
			function()
			{
				window.location.href = "Login.jsp";
    		}
		)
	}  
);