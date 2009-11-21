
function Tab(m,t,n,na,a,d)
{
	this.m = m;
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
	}
}