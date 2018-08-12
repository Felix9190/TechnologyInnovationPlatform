var position = 0;
function showNext()
{
	if(position != 4)
	{
		position += 1;
		document.getElementsByTagName("tr")[position].style.display = "table-row";
	}
}
function closeFront()
{
	if(position != 0)
	{
		document.getElementsByTagName("tr")[position].style.display = "none";
		position -= 1;
	}
}