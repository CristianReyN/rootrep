<script type="text/javascript" src="swfobject/swfobject.js"></script>
<script type="text/javascript" src="swfaddress/swfaddress.js"></script>
<script language="javascript">
function CreateBookmarkLink(par1,par2,par3,par4)
{		
	title = "Career Fit Tool Results"; 
	var temp = location.href;
	urlSave = original+"#"+par1+"&"+par2+"&"+par3+"&"+par4;

	if (window.sidebar) // Mozilla Firefox Bookmark
	{
		window.sidebar.addPanel(title, urlSave,"");
	}
	else if( window.external )// IE Favorite
	{
		window.external.AddFavorite( urlSave, title);
	}
	else if(window.opera && window.print)// Opera Hotlist
	{
		return true;
	}
}

function change(par1,par2,par3,par4)
{
	var temp = location.href;
	location.href=temp+"#"+par1+"&"+par2+"&"+par3+"&"+par4;
}

var original= location.href; 
function originalUrl()
{
	location.href=original;
}

var tempURL = location.href;
values =false;

fragmentoTexto = tempURL.split('#');        
if(fragmentoTexto.length>1)
{
	items=fragmentoTexto[1].split('&');
	if(items.length>1)
	{
		values=true;
	}            
}
</script>
		<img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom-3)%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="578" height="100%" valign="top" style="padding: 0px 0px 0px <%=left_margin_0%>px;">
<a name="skipmaincontent"></a><h1 class="hidden">Career Fit Tool</h1>
<script type="text/javascript">
// <![CDATA[
document.write('<div id="career_fit_tool_links"></div><div id="career_fit_tool" style="height: auto;"><a href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="In order to view this page you need Flash Player 8+ support! Please download latest version."><img src="../images/camp/cft_flash.jpg" width="577" height="580" alt="In order to view this page you need Flash Player 8+ support! Please download latest version." title="In order to view this page you need Flash Player 8+ support! Please download latest version." border="0" style="margin: 0px;" /><\/a><\/div>');
var so = new SWFObject('compass.swf', 'compass', '577px', '580px', '8', '#ffffff');
so.addParam('allowScriptAccess','always');
so.addParam('wmode','transparent');
if(values)
{
	tempIt=items[0].split('/');
	if(tempIt.length>1)
	{
		items[0]=tempIt[1];
	}
	else
	{
		items[0]=tempIt[0];
	}	         
	so.addVariable("fr","result");	          
	so.addVariable("c1",items[0]);	          
	so.addVariable("c2",items[1]);	          
	so.addVariable("c3",items[2]);	          
	so.addVariable("c4",items[3]);
}
so.useExpressInstall('swfobject/expressinstall.swf');
so.addParam('menu', 'false');
//if(so.write('career_fit_tool')){}
if(so.write('career_fit_tool')) document.getElementById("career_fit_tool_links").innerHTML = '<a class="auraltext" href="<%=ada_href %>" onFocus="hover(this,\'show-tab\');" onblur="hover(this,\'auraltext\');" title="Access non-flash Version of Career Fit Tool">Access non-flash Version of Career Fit Tool<\/a><a class="auraltext" href="#skipflash" onFocus="hover(this,\'show-tab\');" onblur="hover(this,\'auraltext\');" title="Skip Flash content">Skip Flash content<\/a>';
// ]]>
</script>
<noscript>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="577" height="580" id="compass" align="middle">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="compass.swf" />
	<param name="quality" value="high" />
	<param name="wmode" value="transparent" />
	<param name="bgcolor" value="#ffffff" />
	<embed src="compass.swf" quality="high" bgcolor="#ffffff" width="577" height="580" id="compass" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" style="margin: 0px;" /></embed>
</object>
</noscript>
				</td>
			</tr>
		</table><a name="skipflash"></a>