<script language="JavaScript1.2" src="../Includes/pages/rjp/rjp.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
function preloadThumb()
{
	MM_preloadImages('../Includes/pages/rjp/thumbnails/cashservices_on.jpg','../Includes/pages/rjp/thumbnails/cashservices_off.jpg');
}
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && cashservices_video ) {
	document.write('<H2 class="hidden">Cash Vault Representative Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(cashservices_video,400,300,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",400,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",cashservices_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+cashservices_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(cashservices_video,true,true,true,true,true,true);" title="Play Cash Vault Representative Video"><img name="dilstart" style="margin: 0px;" src="'+cashservices_video.thumb_off+'" alt="Play Cash Vault Representative Video" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",400,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",cashservices_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+cashservices_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",400,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",cashservices_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+cashservices_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Cash Vault Representative Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/rjp/flashplayer_xml20080308.swf" width="400" height="300" FlashVars="var1=../Includes/pages/rjp/CASHSERVICES.xml" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/rjp/flashplayer_xml20080308.swf" />
	<param name="FlashVars" value="var1=../Includes/pages/rjp/CASHSERVICES.xml" />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
</object>
</noscript>