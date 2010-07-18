
function Tab(t,n,na,a,d,h)
{
	this.t = t;
	this.n = n;
	this.na = na;
	this.a = a;
	this.d = d;
	this.h = h;
	this.img = null;
	this.href = null;
	this.div = null;
	this.first_link = null;
	this.last_link = null;
	this.coremetrics = false;
}

if(!window.MM_swapImage){ document.write('<scr' + 'ipt language="javascript" src="../Includes/mm.js'); document.write('"></scr' + 'ipt>');}

var last_tabno = -1;

var on_click = false, on_click_timeout;// IE Fix
function no_click()// IE Fix
{
	on_click = false;
	on_click_timeout = null;
}

function initTab()
{
	MM_preloadImages("../images/camp/t_americas.gif","../images/camp/t_americas_a.gif","../images/camp/t_emea.gif","../images/camp/t_emea_a.gif","../images/camp/t_asia_pacific.gif","../images/camp/t_asia_pacific_a.gif");
	if(window.preload_add) preload_add();
	for (var i=0; i<tabs.length; i++)
	{
		tabs[i].tabno = i;
		tabs[i].img = document.images[tabs[i].n];
		tabs[i].href = document.getElementById(tabs[i].h);
		
		if (tabs[i].img)
		{
			tabs[i].img.tab = tabs[i];
			tabs[i].img.onclick = function(){ if( document.all ) on_click = true;/* IE Fix */ last_tabno = -1; atab(this); if( document.all ) on_click_timeout = setTimeout('no_click();', 500);/* IE Fix */ };
			tabs[i].div = document.getElementById(tabs[i].d);
			if(tabs[i].div)
			{
				var links = tabs[i].div.getElementsByTagName("a");
				if(links.length > 0)
				{
					tabs[i].first_link = links[0];
					tabs[i].last_link = links[links.length-1];
				}
			}
		}
		
		if (tabs[i].href)
		{
			tabs[i].href.tab = tabs[i];
			tabs[i].href.img = tabs[i].n;
			tabs[i].href.onfocus = function(){ if( !document.all || !on_click )/* IE Fix */ atab(document.images[this.img]); };
			//if( i == (tabs.length - 1) ) tabs[i].href.onblur = function(){ last_tabno = -1; };
		}
	}
}

function atab(img)
{
	if(img&&img.tab)
	{
		if ( last_tabno != -1 && last_tabno == img.tab.tabno && !window_blur )
		{
			var tab_img = false;
			for (var i=0; i<tabs.length; i++)
			{
				if( tabs[i].n == img.tab.n && i > 0 ) tab_img = tabs[i-1].img;
			}
			img = tab_img;
		}
		
		if ( img )
		{
			if(!img.tab.coremetrics&&window.cmCreatePageviewTag)
			{
				cmCreatePageviewTag(pageId+":"+img.tab.t, null, null,categoryId);
				img.tab.coremetrics = true;
			}
			for (var i=0; i<tabs.length; i++)
			{
				if(tabs[i].n!=img.tab.n) tabs[i].div.style.display = "none";
				MM_swapImage(tabs[i].img.name,"",tabs[i].na);
			}
			img.tab.div.style.display = "inline";
			MM_swapImage(img.name,"",img.tab.a);
			if(cname && cname!="") setTabState(cname,img.tab.n,1*60*60*1000);
			
			if ( last_tabno != -1 && last_tabno > img.tab.tabno ) { if ( img.tab.last_link ) img.tab.last_link.focus(); else img.tab.href.focus(); }
			else { /*if (img.tab.first_link ) img.tab.first_link.focus(); else */img.tab.href.focus(); }
			
			last_tabno = img.tab.tabno;
		}
		else
			last_tabno = -1;
	}
	else
		last_tabno = -1;
}

function setTabState(c_name,value,expire_ms)
{
	var exdate=new Date();
	exdate.setTime(exdate.getTime()+expire_ms);
	document.cookie=c_name + "=" + escape(value) + ((expire_ms==null) ? "" : ";expires="+exdate.toGMTString());
}

function getTabState(c_name)
{
	if (document.cookie.length>0)
	{
		c_start=document.cookie.indexOf(c_name + "=");
		if (c_start!=-1)
		{ 
			c_start=c_start + c_name.length+1;
			c_end=document.cookie.indexOf(";",c_start);
			if (c_end==-1) c_end=document.cookie.length;
			var tabstate = unescape(document.cookie.substring(c_start,c_end));
			switch(tabstate)
			{
				case "t1":
					return 1;
					break;
				case "t2":
					return 2;
					break;
				case "t3":
					return 3;
					break;
			}
			return false;
		} 
	}
	return false;
}

var window_blur = false;
window.onblur = function()
{
	last_tabno = -1;
	window_blur = true;
};


var window_blur = false, window_blur_timeout;
window.onblur = function()
{
	clearTimeout(window_blur_timeout);
	window_blur = true;
};
window.onfocus = function()
{
	clearTimeout(window_blur_timeout);
	window_blur_timeout = setTimeout('no_blur();', 1000);
};
function no_blur()
{
	clearTimeout(window_blur_timeout);
	window_blur = false;
}