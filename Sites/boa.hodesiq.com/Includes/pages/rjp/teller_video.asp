<script language="JavaScript1.2" src="../Includes/pages/rjp/rjp.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
function preloadThumb()
{
	MM_preloadImages('../Includes/pages/rjp/thumbnails/rjp_teller_on.gif','../Includes/pages/rjp/thumbnails/rjp_teller_off.gif');
}
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && teller_video ) {
	document.write('<H2 class="hidden">Realistic Job Preview - Teller Positions Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(teller_video,400,300,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",400,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",teller_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+teller_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(teller_video,true,true,true,true,true,true);" title="Play Realistic Job Preview - Teller Positions Video"><img name="dilstart" style="margin: 0px;" src="'+teller_video.thumb_off+'" alt="Play Realistic Job Preview - Teller Positions Video" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",400,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",teller_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+teller_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",400,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",teller_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+teller_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Realistic Job Preview - Teller Positions Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/rjp/flashplayer_xml20080308.swf" width="400" height="300" FlashVars="var1=../Includes/pages/rjp/TELLER_VIDEO.xml" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/rjp/flashplayer_xml20080308.swf" />
	<param name="FlashVars" value="var1=../Includes/pages/rjp/TELLER_VIDEO.xml" />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
</object>
</noscript>