
function fixIE(obj)
{
	if(obj)
	{
		var theObjects = document.getElementsByTagName("object");
		for (var i = 0; i < theObjects.length; i++)
		{
			theObjects[i].outerHTML = theObjects[i].outerHTML;
		}
	}
	if(document.getElementById('jaaot')) document.getElementById('jaaot').blur();
	if(document.getElementById('lob')) document.getElementById('lob').blur();
	if(document.getElementById('camp')) document.getElementById('camp').blur();
	if(document.getElementById('relinfo')) document.getElementById('relinfo').blur();
	if(document.getElementById('glc')) document.getElementById('glc').blur();
}
//fixIE();
