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
	if(document.getElementById("jaaot"))
	{
		document.getElementById("jaaot").style.top = document.getElementById("areasoftalentli").offsetTop-1;
		document.getElementById("jaaot").style.visibility = "visible";
	}
	if(document.getElementById("lob"))
	{
		document.getElementById("lob").style.top = document.getElementById("lobli").offsetTop-1;
		document.getElementById("lob").style.visibility = "visible";
	}
	if(document.getElementById("camp"))
	{
		document.getElementById("camp").style.top = document.getElementById("campli").offsetTop-1;
		document.getElementById("camp").style.visibility = "visible";
	}
	if(document.getElementById("relinfo"))
	{
		document.getElementById("relinfo").style.top = document.getElementById("learnmoreli").offsetTop-1;
		document.getElementById("relinfo").style.visibility = "visible";
	}
	if(document.getElementById("glc"))
	{
		document.getElementById("glc").style.top = document.getElementById("globalli").offsetTop-1;
		document.getElementById("glc").style.visibility = "visible";
	}
	
	if(window.preloadCC) preloadCC();
	if(window.initTab) initTab();
	
	var aa = new Array();
	aa = addElementsByClassName("a","p",aa);
	aa = addElementsByClassName("a","ip",aa);
	aa = addElementsByClassName("a","g",aa);
	aa = addElementsByClassName("a","sbtxt",aa);
	aa = addElementsByClassName("a","left",aa);
	aa = addElementsByClassName("a","left2",aa);
	aa = addElementsByClassName("a","ftrlnk",aa);
	aa = addElementsByClassName("a","btn1",aa);
	aa = addElementsByClassName("a","bac",aa);
	aa = addElementsByClassName("a","bacb",aa);
	for (var i=0; i<aa.length; i++) {
		aa[i].baseClassName = aa[i].className;
		aa[i].onmouseover=function() {
			this.className=this.baseClassName+'-over';
		}
		aa[i].onfocus=function() {
			this.className=this.baseClassName+'-over';
		}
		aa[i].onmouseout=function() {
			this.className=this.baseClassName;
		}
		aa[i].onblur=function() {
			this.className=this.baseClassName;
		}
	}
	
if(document.getElementById("lnav")){
	var elements = document.getElementById("lnav").getElementsByTagName("li");
	for (var i=0; i<elements.length; i++)
	{
		elements[i].onfocus=function() {
			this.className+=" fover";
		}
		elements[i].onblur=function() {
			this.className=this.className.replace(new RegExp("fover\\b"), "");
		}
		
		if(document.all)
		{
			elements[i].onmouseover=function() {
				this.className+=" fover";
				if(window.tdiv && (this.id=="areasoftalentli" || this.id=="learnmoreli" || this.id=="lobli" || this.id=="globalli" || this.id=="campli"))tdiv(false);
			}
			elements[i].onmouseout=function() {
				this.className=this.className.replace(new RegExp(" fover\\b"), "");
				if(window.tdiv && (this.id=="areasoftalentli" || this.id=="learnmoreli" || this.id=="lobli" || this.id=="globalli" || this.id=="campli"))tdiv(true);
			}
			
			lia = elements[i].getElementsByTagName("a");
			if(lia.length > 0)
			{
				lia[0].li = elements[i];
				lia[0].baseClassName = lia[0].className;
				li = elements[i].getElementsByTagName("li");
				for (var l=0; l<li.length; l++)
				{
					lia2 = li[l].getElementsByTagName("a");
					if(lia2.length > 0) lia2[0].pli = elements[i];
				}
				lia[0].onfocus=function() {
					this.className=this.baseClassName+'-over';
					this.li.className+=" fover";
					if(this.pli) this.pli.className+=" fover";
					if(window.tdiv && this.li && (this.li.id=="areasoftalentli" || this.li.id=="learnmoreli" || this.li.id=="lobli" || this.li.id=="globalli" || this.li.id=="campli"))tdiv(false);
					if(window.tdiv && this.pli && (this.pli.id=="areasoftalentli" || this.pli.id=="learnmoreli" || this.pli.id=="lobli" || this.pli.id=="globalli" || this.pli.id=="campli"))tdiv(false);
				}
				lia[0].onblur=function() {
					this.className=this.baseClassName;
					this.li.className=this.li.className.replace(new RegExp(" fover\\b"), "");
					if(this.pli) this.pli.className=
						this.pli.className.replace(new RegExp(" fover\\b"), "");
					if(window.tdiv && this.li && (this.li.id=="areasoftalentli" || this.li.id=="learnmoreli" || this.li.id=="lobli" || this.li.id=="globalli" || this.li.id=="campli"))tdiv(true);
					if(window.tdiv && this.pli && (this.pli.id=="areasoftalentli" || this.pli.id=="learnmoreli" || this.pli.id=="lobli" || this.id=="globalli" || this.pli.id=="campli"))tdiv(true);
				}
			}
		}
	}
}
}