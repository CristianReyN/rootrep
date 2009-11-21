<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/camp/video/campl.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
function preloadThumb()
{
	MM_preloadImages('../Includes/pages/camp/video//thumbnails/anne_on.jpg','../Includes/pages/camp/video/thumbnails/anne_off.jpg');
}
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && anne_video ) {
	document.write('<H2 class="hidden">Anne&#39;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(anne_video,205,131,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",205,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",anne_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+anne_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(anne_video,true,true,true,true,true,true);"><img name="dilstart" style="margin: 0px;" src="'+anne_video.thumb_off+'" alt="" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",205,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",anne_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+anne_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",205,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",anne_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+anne_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Anne&#39;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/college/Anne.swf" width="205" height="131" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/college/Anne.swf"  />
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
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px; text-align: left;"><span>Video transcript</span></h2>
<p>
What attracted me most about working at Bank of America was their focus on improving their processes to really was to help their customers and ensure their customers have a great experience and I have a passion for that.  I really like what Quality &amp; Productivity does their use of Six Sigma, Lean and other tools and it was important for me to find a position where I was able to do that.  While I was in grad school I was doing a research project on Bank of America and that started my interest in the company.  I attended a conference for the women&#39;s MBA while I was in Boston which led to my employment with the company.
<br>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="bac" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</p>
</div>
<% End If %>