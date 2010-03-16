<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/camp/video/campr.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
function preloadThumb()
{
	MM_preloadImages('../Includes/pages/camp/video/thumbnails/tucker_on.gif','../Includes/pages/camp/video/thumbnails/tucker_off.gif');
}
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && tucker_video ) {
	document.write('<H2 class="hidden">Tucker&acute;s Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(tucker_video,231,131,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",231,22,true,true,true,false,true,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",tucker_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+tucker_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(tucker_video,true,true,true,false,true,false);" title="Play Tucker&acute;s Testimonial Video"><img name="dilstart" style="margin: 0px;" src="'+tucker_video.thumb_off+'" alt="Play Tucker&acute;s Testimonial Video" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",231,22,false,false,false,false,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",tucker_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+tucker_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",231,22,false,false,false,false,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",tucker_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+tucker_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Tucker&acute;s Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/rjp/flashplayer_xml20080308.swf" width="231" height="131" FlashVars="var1=../Includes/pages/camp/video/TUCKER.xml" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/rjp/flashplayer_xml20080308.swf" />
	<param name="FlashVars" value="var1=../Includes/pages/rjp/TUCKER.xml" />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
</object>
<table border="0" cellspacing="0" cellpadding="0" bgcolor="#d4001a" width="100%">
	<tr>
		<td nowrap align="center" height="18" width="100%">
			<a href="<%=ada_href %>#vt" title="Video transcript" class="btn1">Video transcript</a>
		</td>
	</tr>
</table>
</noscript>
<% Else %>
<div class="transcript">
<p>
<a href="<%= standart_href%>" title="Return to standard page with video" class="bac" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</p>
</div>
<% End If %>