function addElementsByClassName(tag,clsName,arr)
{	
	if(!arr) arr = new Array();
	var elems = document.getElementsByTagName(tag);
	for(var i = 0; i < elems.length; i++)
		if(elems[i].className == clsName) arr[arr.length] = elems[i];
	return arr;
}

var c_vstart, s_vstart;
var c_kstate=0, s_kstate=0;

function c_KeyCheck(e)
{
	var KeyID = (window.event) ? event.keyCode : e.keyCode;
	if ( ( KeyID == 37 || KeyID == 38 || KeyID == 39 || KeyID == 40 ) ) c_kstate = 1; else c_kstate = 0;
}
function c_commit()
{
	if ( c_vstart != document.jsearch.countryid.value ) document.jsearch.submit();
}

function s_KeyCheck(e)
{
	var KeyID = (window.event) ? event.keyCode : e.keyCode;
	if ( ( KeyID == 37 || KeyID == 38 || KeyID == 39 || KeyID == 40 ) ) s_kstate = 1; else s_kstate = 0;
}
function s_commit()
{
	if ( s_vstart != document.jsearch.stateid.value ) document.jsearch.submit();
}

window.onload_do = new Array();

function addListener(element, eventName, handler) {
	if (element.addEventListener) {
		element.addEventListener(eventName, handler, false);
	}
	else if (element.attachEvent) {
		element.attachEvent('on' + eventName, handler);
	}
	else {
		element['on' + eventName] = handler;
	}
}
function getWindowWidth() {
  return document.compatMode=='CSS1Compat' && !window.opera?document.documentElement.clientWidth:document.body.clientWidth;
}
function getWindowHeight() {
  return document.compatMode=='CSS1Compat' && !window.opera?document.documentElement.clientHeight:document.body.clientHeight;
}
function city_help(e)
{
	var x = 0, y = 0, e = !e ? window.event : e;
	if ( e )
	{
		if (e.pageX || e.pageY) { x = e.pageX; y = e.pageY; }
		else if (e.clientX || e.clientY) { x = e.clientX + document.body.scrollLeft + document.documentElement.scrollLeft; y = e.clientY + document.body.scrollTop + document.documentElement.scrollTop; }
	}
	var w = 625, h = 346;
	if( ( he_lp = $("help") ) && ( ihe_lp = $("ihelp") ) )
	{
		if ( he_lp.style.display == "block" )
		{
			ihe_lp.style.width = "0px";
			ihe_lp.style.height = "0px";
			he_lp.style.width = "0px";
			he_lp.style.height = "0px";
			he_lp.style.left = "-10000px";
			he_lp.style.top = "-10000px";
			he_lp.style.display = "none";
		}
		else
		{
			ihe_lp.src = "../overview/chelp.html";
			ihe_lp.style.width = w+"px";
			ihe_lp.style.height = h+"px";
			he_lp.style.width = w+"px";
			he_lp.style.height = h+"px";
			var ww = getWindowWidth();
			if ( x > ( ww - w ) ) { if ( ww - w - 6 < 0) x = 0; else x = ww - w - 6; }
			he_lp.style.left = x +"px"; //he_lp.style.left = ( ( getWindowWidth() - w ) / 2 ) +"px";
			y = y + 12;
			var wh = getWindowHeight();
			if ( y > ( wh - h ) ) { if ( y > ( h + 24 ) ) y = y - h - 24; else y = 0; }
			he_lp.style.top = y +"px"; //he_lp.style.top = ( ( getWindowHeight() - h ) / 2 - 26 ) +"px";
			he_lp.style.display = "block";
		}
	}
}

var helpp = false;
function help_popup(width,height)
{
	if ( !helpp || helpp.closed ) helpp = openWindow("../overview/chelp.html","helpp",width,height,0,0,0,"auto",0,0,0,0,true,0);
	else if ( helpp ) helpp.close();
}

function startPs()
{
	if ( window.onload_do.length > 0 )
	{
		for (var i=0; i<window.onload_do.length; i++)
		{
			window.onload_do[i]();
		}
	}
	
	if ( $("lmh") ) addListener( $("lmh"), "click", function(e){ city_help(e); } );
	if ( $("hdh") ) addListener( $("hdh"), "click", function(e){ help_popup(625,346); /*city_help(e);*/ } );
	
	if ( document.jsearch && document.jsearch.countryid )
	{
		document.jsearch.countryid.onkeydown = c_KeyCheck;
		c_vstart = document.jsearch.countryid.value;
		if ( document.all ) document.jsearch.countryid.onblur = c_commit;
	}
	if ( document.jsearch && document.jsearch.stateid )
	{
		document.jsearch.stateid.onkeydown = s_KeyCheck;
		s_vstart = document.jsearch.stateid.value;
		if ( document.all ) document.jsearch.stateid.onblur = s_commit;
	}
	
	if(document.getElementById("jsearch"))
	{
		$("jsearch").style.top = $("jsearchli").offsetTop-1;
		$("jsearch").style.visibility = "visible";
	}
	if(document.getElementById("jaaot"))
	{
		$("jaaot").style.top = $("areasoftalentli").offsetTop-1;
		$("jaaot").style.visibility = "visible";
	}
	if($("lob"))
	{
		$("lob").style.top = $("lobli").offsetTop-1;
		$("lob").style.visibility = "visible";
	}
	if($("camp"))
	{
		$("camp").style.top = $("campli").offsetTop-1;
		$("camp").style.visibility = "visible";
	}
	if($("loc"))
	{
		$("loc").style.top = $("locli").offsetTop-1;
		$("loc").style.visibility = "visible";
	}
	if($("relinfo"))
	{
		$("relinfo").style.top = $("learnmoreli").offsetTop-1;
		$("relinfo").style.visibility = "visible";
	}
	if($("glc"))
	{
		$("glc").style.top = $("globalli").offsetTop-1;
		$("glc").style.visibility = "visible";
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
	
if($("lnav")){
	var elements = $("lnav").getElementsByTagName("li");
	for (var i=0; i<elements.length; i++)
	{
		/*elements[i].onfocus=function() {
			this.className+=" fover";
		}
		elements[i].onblur=function() {
			this.className=this.className.replace(new RegExp("fover\\b"), "");
		}*/
		
		//if(document.all)
		//{
			elements[i].onmouseover=function() {
				this.className+=" fover";
				this.className = this.className.trim();
				if(window.tdiv && (this.id=="areasoftalentli" || this.id=="learnmoreli" || this.id=="lobli" || this.id=="globalli" || this.id=="campli"))tdiv(false);
			}
			elements[i].onmouseout=function() {
				this.className=this.className.replace(new RegExp(" fover\\b"),"").replace(new RegExp("fover\\b"),"");//replace with space for IE, without space for FF
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
					this.li.className = this.li.className.trim();
					if(this.pli)
					{
						this.pli.className+=" fover";
						this.pli.className = this.pli.className.trim();
					}
					if(window.tdiv && this.li && (this.li.id=="areasoftalentli" || this.li.id=="learnmoreli" || this.li.id=="lobli" || this.li.id=="globalli" || this.li.id=="campli"))tdiv(false);
					if(window.tdiv && this.pli && (this.pli.id=="areasoftalentli" || this.pli.id=="learnmoreli" || this.pli.id=="lobli" || this.pli.id=="globalli" || this.pli.id=="campli"))tdiv(false);
				}
				lia[0].onblur=function() {
					this.className=this.baseClassName;
					this.li.className=this.li.className.replace(new RegExp(" fover\\b"),"").replace(new RegExp("fover\\b"),"");//replace with space for IE, without space for FF
					if(this.pli) this.pli.className=
						this.pli.className.replace(new RegExp(" fover\\b"),"").replace(new RegExp("fover\\b"),"");//replace with space for IE, without space for FF
					if(window.tdiv && this.li && (this.li.id=="areasoftalentli" || this.li.id=="learnmoreli" || this.li.id=="lobli" || this.li.id=="globalli" || this.li.id=="campli"))tdiv(true);
					if(window.tdiv && this.pli && (this.pli.id=="areasoftalentli" || this.pli.id=="learnmoreli" || this.pli.id=="lobli" || this.id=="globalli" || this.pli.id=="campli"))tdiv(true);
				}
			}
		//}
	}
}
}

String.prototype.trim = function()
{
	return this.replace(/^\s+|\s+$/g,"");
}


if ( !window.openWindow )
{
	function openWindow(pageToLoad,winName,width,height,lo,me,re,sc,st,ti,to,ho,center,fs) { xposition=0; yposition=0; if ((parseInt(navigator.appVersion) >= 4 ) && (center)){ xposition = (screen.width - width) / 2; yposition = (screen.height - height) / 2; } args = "width=" + width + "," + "height=" + height + "," + "location="+lo+"," + "menubar="+me+"," + "resizable="+re+"," + "scrollbars="+sc+"," + "status="+st+"," + "titlebar="+ti+"," + "toolbar="+to+"," + "hotkeys="+ho+"," + "screenx=" + xposition + "," + "screeny=" + yposition + "," + "left=" + xposition + "," + "top=" + yposition + "," + "fullscreen=" + fs; return window.open( pageToLoad,winName,args);}
}
if ( !window.setCookie )
{
	function setCookie(c_name,value,expiredays)
	{
		var exdate=new Date()
		exdate.setDate(exdate.getDate()+expiredays)
		document.cookie=c_name+ "=" +escape(value)+
		((expiredays==null) ? "" : ";expires="+exdate.toGMTString())
	}
}
if ( !window.getCookie )
{
	function getCookie(c_name)
	{
		if (document.cookie.length>0)
		{
			c_start=document.cookie.indexOf(c_name + "=")
			if (c_start!=-1)
			{ 
				c_start=c_start + c_name.length+1 
				c_end=document.cookie.indexOf(";",c_start)
				if (c_end==-1) c_end=document.cookie.length
				return unescape(document.cookie.substring(c_start,c_end))
			} 
		}
		return false;
	}
}

function $(pNd)
{
	try
	{
		var node;
		switch(typeof (pNd))
		{
			case 'string':
				node = document.getElementById(pNd);
				break;
			case 'object':
				node = pNd;
				break;
			default:
				node = false;
				break;
		}
		return node;
	}catch(e){return false;}
}

function strReplace(s,p,r){var pos=s.indexOf(p);var len=p.length;while(pos != -1){s1=s.substring(0,pos);s2=s.substring(pos+len,s.length);s=s1+r+s2;pos=s.indexOf(p);}return s;}