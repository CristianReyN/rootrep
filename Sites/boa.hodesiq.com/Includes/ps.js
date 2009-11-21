function addElementsByClassName(tag,clsName,arr)
{	
	if(!arr) arr = new Array();
	var elems = document.getElementsByTagName(tag);
	for(var i = 0; i < elems.length; i++)
		if(elems[i].className == clsName) arr[arr.length] = elems[i];
	return arr;
}

function startPs()
{
	
	var aa = new Array();
	aa = addElementsByClassName("a","p",aa);
	aa = addElementsByClassName("a","left",aa);
	aa = addElementsByClassName("a","left2",aa);
	aa = addElementsByClassName("a","ftrlnk",aa);
	for (var i=0; i<aa.length; i++) {
		aa[i].onmouseover=function() {
			this.wasClassName=this.className; this.className=this.className+'-over';
		}
		aa[i].onmouseout=function() {
			this.className=this.wasClassName;
		}
	}
}