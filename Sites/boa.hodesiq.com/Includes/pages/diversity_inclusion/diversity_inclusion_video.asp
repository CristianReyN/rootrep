<script language="JavaScript1.2" src="../Includes/pages/diversity_inclusion/di.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
function preloadThumb()
{
	MM_preloadImages('../Includes/pages/diversity_inclusion/thumbnails/diversity_inclusion_on.gif','../Includes/pages/rjp/thumbnails/diversity_inclusion_off.gif');
}
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && diversity_inclusion_video ) {
	document.write('<H2 class="hidden">Global Diversity and Inclusion Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(diversity_inclusion_video,320,240,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",320,22,true,true,true,true,true,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",diversity_inclusion_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+diversity_inclusion_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(diversity_inclusion_video,true,true,true,true,true,false);"><img name="dilstart" style="margin: 0px;" src="'+diversity_inclusion_video.thumb_off+'" alt="" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",320,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",diversity_inclusion_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+diversity_inclusion_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",320,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",diversity_inclusion_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+diversity_inclusion_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Global Diversity and Inclusion Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/rjp/flashplayer_xml20080308.swf" width="320" height="240" FlashVars="var1=../Includes/pages/diversity_inclusion/DIVERSITY_INCLUSION.xml" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/rjp/flashplayer_xml20080308.swf" />
	<param name="FlashVars" value="var1=../Includes/pages/diversity_inclusion/DIVERSITY_INCLUSION.xml" />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
</object>
</noscript>