// JavaScript Document
function flashAddLink(href)
{
	location.href=href;
	CreateBookmarkLink();
}

function CreateBookmarkLink()
{

 title = "Career Fit Tool Results"; 

 url = location.href;

	if (window.sidebar)
	{ // Mozilla Firefox Bookmark
		window.sidebar.addPanel(title, url,"");
	}
	else if( window.external )
	{ // IE Favorite
		window.external.AddFavorite( url, title);
	}
	else if(window.opera && window.print)
	{ // Opera Hotlist
		return true;
	}
 }

function flashReset()
{
	location.href="?";
	eraseCookie('fr');
	eraseCookie('c1');
	eraseCookie('c2');
	eraseCookie('c3');
	eraseCookie('c4');
}
function flashAddCookie(c1,c2,c3,c4)
{
	createCookie('fr','result',1);
	createCookie('c1',c1,1);
	createCookie('c2',c2,1);
	createCookie('c3',c3,1);
	createCookie('c4',c4,1);
}

function createCookie(name,value,hours)
{
	if (hours) {
		var date = new Date();
		date.setTime(date.getTime()+(hours*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	}
	else var expires = "";
	document.cookie = name+"="+value+expires+"; path=/";
}

function readCookie(name)
{
	var nameEQ = name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}

function eraseCookie(name)
{
	createCookie(name,"",-1);
}

function flashReadLink()
{
	return location.href;
}
function getParameter(nombre)
{
	nombre = nombre.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
	var regexS = "[\\?&]"+nombre+"=([^&#]*)";
	var regex = new RegExp( regexS );
	var resultados = regex.exec( window.location.href );
	if( resultados == null )
	{
    	return "";
	}
  	else
	{
    	return resultados[1];
	}
}
function writeParam()
{
	//string takes precedence over cookies
	if(getParameter('fr')=="")
	{
		var frame = readCookie('fr')
	}
	else
	{
		var frame = getParameter('fr');
	}
	
	if(getParameter('c1')=="")
	{
		var career1 = readCookie('c1')
	}
	else
	{
		var career1 = getParameter('c1');
	}
	
	if(getParameter('c2')=="")
	{
		var career2 = readCookie('c2')
	}
	else
	{
		var career2 = getParameter('c2');
	}
	
	if(getParameter('c3')=="")
	{
		var career3 = readCookie('c3')
	}
	else
	{
		var career3 = getParameter('c3');
	}
	
	if(getParameter('c4')=="")
	{
		var career4 = readCookie('c4')
	}
	else
	{
		var career4 = getParameter('c4');
	}
	
	/*var frame = getParameter('fr');
	var career1 = getParameter('c1');
	var career2 = getParameter('c2');
	var career3 = getParameter('c3');
	var career4 = getParameter('c4');*/
	
	document.write('<param name="FlashVars" value="fr='+frame+'&c1='+career1+'&c2='+career2+'&c3='+career3+'&c4='+career4+'" />');
}

function writeEmbed()
{
   //string takes precedence over cookies
	if(getParameter('fr')=="")
	{
		var frame = readCookie('fr')
	}
	else
	{
		var frame = getParameter('fr');
	}
	
	if(getParameter('c1')=="")
	{
		var career1 = readCookie('c1')
	}
	else
	{
		var career1 = getParameter('c1');
	}
	
	if(getParameter('c2')=="")
	{
		var career2 = readCookie('c2')
	}
	else
	{
		var career2 = getParameter('c2');
	}
	
	if(getParameter('c3')=="")
	{
		var career3 = readCookie('c3')
	}
	else
	{
		var career3 = getParameter('c3');
	}
	
	if(getParameter('c4')=="")
	{
		var career4 = readCookie('c4')
	}
	else
	{
		var career4 = getParameter('c4');
	}
	
	/*var frame = getParameter('fr');
	var career1 = getParameter('c1');
	var career2 = getParameter('c2');
	var career3 = getParameter('c3');
	var career4 = getParameter('c4');*/
	
	document.write('<embed src="compass.swf" quality="high" bgcolor="#ffffff" width="577" height="580" name="compass" swliveconnect="true" FlashVars="fr='+frame+'&c1='+career1+'&c2='+career2+'&c3='+career3+'&c4='+career4+'" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
}

function writeAC()
{
	//string takes precedence over cookies
	if(getParameter('fr')=="")
	{
		var frame = readCookie('fr')
	}
	else
	{
		var frame = getParameter('fr');
	}
	
	if(getParameter('c1')=="")
	{
		var career1 = readCookie('c1')
	}
	else
	{
		var career1 = getParameter('c1');
	}
	
	if(getParameter('c2')=="")
	{
		var career2 = readCookie('c2')
	}
	else
	{
		var career2 = getParameter('c2');
	}
	
	if(getParameter('c3')=="")
	{
		var career3 = readCookie('c3')
	}
	else
	{
		var career3 = getParameter('c3');
	}
	
	if(getParameter('c4')=="")
	{
		var career4 = readCookie('c4')
	}
	else
	{
		var career4 = getParameter('c4');
	}
	
	/*var frame = getParameter('fr');
	var career1 = getParameter('c1');
	var career2 = getParameter('c2');
	var career3 = getParameter('c3');
	var career4 = getParameter('c4');*/
	
	document.write('<script language="javascript">');
	document.write("AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0','width','577','height','580','src','compass','quality','high','name', 'compass','swliveconnect','true','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','compass','FlashVars','fr="+frame+"&c1="+career1+"&c2="+career2+"&c3="+career3+"&c4="+career4+"' ); //end AC code</script>");
}