$(document).ready
(
    function()
	{
		$("#username").focus
		(
			function()
			{
				$("#usernametip").css("display","none");
			}
		)
		$("#password").focus
		(
			function()
			{
				$("#passwordtip").css("display","none");
			}
		)
		
	}
);
function check()
{
	var count = 0;
	if($("#username").val()==null||$("#username").val()=="")
	{
		$("#usernametip").css("display","inline");
		count++;
	}
	if($("#password").val()==null||$("#password").val()=="")
	{
		$("#passwordtip").css("display","inline");
		count++;
	}
	if(count!=0)
	{
		return false;
	}
}