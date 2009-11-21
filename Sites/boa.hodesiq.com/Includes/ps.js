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
if(window.preloadCC) preloadCC();
	var aa = new Array();
	aa = addElementsByClassName("a","p",aa);
	aa = addElementsByClassName("a","g",aa);
	aa = addElementsByClassName("a","sbtxt",aa);
	aa = addElementsByClassName("a","left",aa);
	aa = addElementsByClassName("a","left2",aa);
	aa = addElementsByClassName("a","ftrlnk",aa);
	aa = addElementsByClassName("a","btn1",aa);
	for (var i=0; i<aa.length; i++) {
		aa[i].baseClassName = aa[i].className;
		aa[i].onmouseover=function() {
			this.className=this.baseClassName+'-over';
		}
		aa[i].onmouseout=function() {
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
				if(tdiv && (this.id=="areasoftalentli" || this.id=="learnmoreli" || this.pli.id=="lobli"))tdiv(false);
			}
			elements[i].onmouseout=function() {
				this.className=this.className.replace(new RegExp(" fover\\b"), "");
				if(tdiv && (this.id=="areasoftalentli" || this.id=="learnmoreli" || this.pli.id=="lobli"))tdiv(true);
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
					if(tdiv && this.li && (this.li.id=="areasoftalentli" || this.li.id=="learnmoreli" || this.pli.id=="lobli"))tdiv(false);
					if(tdiv && this.pli && (this.pli.id=="areasoftalentli" || this.pli.id=="learnmoreli" || this.pli.id=="lobli"))tdiv(false);
				}
				lia[0].onblur=function() {
					this.className=this.baseClassName;
					this.li.className=this.li.className.replace(new RegExp(" fover\\b"), "");
					if(this.pli) this.pli.className=
						this.pli.className.replace(new RegExp(" fover\\b"), "");
					if(tdiv && this.li && (this.li.id=="areasoftalentli" || this.li.id=="learnmoreli" || this.pli.id=="lobli"))tdiv(true);
					if(tdiv && this.pli && (this.pli.id=="areasoftalentli" || this.pli.id=="learnmoreli" || this.pli.id=="lobli"))tdiv(true);
				}
			}
		}
	}
}
}