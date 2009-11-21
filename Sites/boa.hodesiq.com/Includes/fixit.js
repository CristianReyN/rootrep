
function fixIE()
{
	var theObjects = document.getElementsByTagName("object");
	for (var i = 0; i < theObjects.length; i++)
	{
		theObjects[i].outerHTML = theObjects[i].outerHTML;
	}
	if(document.getElementById('aroftalent')) document.getElementById('aroftalent').blur();
	if(document.getElementById('learnmore')) document.getElementById('learnmore').blur();
	if(document.getElementById('lob')) document.getElementById('lob').blur();
}
//fixIE();
