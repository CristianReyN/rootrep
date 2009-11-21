
function Tab(t,n,na,a,d)
{
	this.t = t;
	this.n = n;
	this.na = na;
	this.a = a;
	this.d = d;
	this.img = null;
	this.div = null;
	this.coremetrics = false;
}

if(!window.MM_swapImage){ document.write('<scr' + 'ipt language="javascript" src="../Includes/mm.js'); document.write('"></scr' + 'ipt>');}

function initTab()
{
	MM_preloadImages("../images/camp/t1.gif","../images/camp/t1a.gif","../images/camp/t2.gif","../images/camp/t2a.gif","../images/camp/t3.gif","../images/camp/t3a.gif");
	if(window.preload_add) preload_add();
	for (var i=0; i<tabs.length; i++)
	{
		tabs[i].img = document.images[tabs[i].n];
		if(tabs[i].img)
		{
			tabs[i].img.tab = tabs[i];
			tabs[i].img.onclick = function(){atab(this);};
			tabs[i].div = document.getElementById(tabs[i].d);
		}
	}
}

function atab(img)
{
	if(img&&img.tab)
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
	}
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