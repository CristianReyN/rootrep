<script language="JavaScript1.2" src="../Includes/pages/mywork/mywork.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
function preloadThumb()
{
	MM_preloadImages('../Includes/pages/mywork/thumbnails/mywork_on.jpg','../Includes/pages/mywork/thumbnails/mywork_off.jpg');
}
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && mywork_video ) {
	document.write('<H2 class="hidden">My Work&reg; Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(mywork_video,258,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",258,22,true,true,true,true,true,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",mywork_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+mywork_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(mywork_video,true,true,true,true,true,true);" title="Play My Work&reg; Video"><img name="dilstart" style="margin: 0px;" src="'+mywork_video.thumb_off+'" alt="Play My Work&reg; Video" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",258,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",mywork_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+mywork_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",258,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",mywork_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+mywork_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">My Work&reg; Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/rjp/flashplayer_xml20080308.swf" width="258" height="166" FlashVars="var1=../Includes/pages/mywork/MYWORK.xml" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/rjp/flashplayer_xml20080308.swf" />
	<param name="FlashVars" value="var1=../Includes/pages/mywork/MYWORK.xml" />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
</object>
</noscript>