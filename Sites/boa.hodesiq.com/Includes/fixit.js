
function fixIE()
{
	var theObjects = document.getElementsByTagName("object");
	for (var i = 0; i < theObjects.length; i++)
	{
		theObjects[i].outerHTML = theObjects[i].outerHTML;
	}
	document.getElementById('aroftalent').blur();
	document.getElementById('learnmore').blur();
}
//fixIE();
