<% suffix = ""
	If suf_fix <> "" Then
		suffix = "mg"
	End If
	If page_section <> "ADA" Then
		If suffix = "" Then %>
<script language="JavaScript1.2" src="../Includes/pages/camp/video/campl.js" type="text/javascript"></script>
	<% Else %>
<script language="JavaScript1.2" src="../Includes/pages/camp/video/campl_mg.js" type="text/javascript"></script>
	<% End If %>
<script language="JavaScript1.2" type="text/javascript">
function preloadThumb()
{
	MM_preloadImages('../Includes/pages/camp/video//thumbnails/tony_on.jpg','../Includes/pages/camp/video/thumbnails/tony_off.jpg');
}
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && tony_video ) {
	document.write('<H2 class="hidden">Tony&#39;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo<%=suffix%>" style="display: none;"><a name="video<%=suffix%>"></a>');
	document.write(getVideo(tony_video,205,131,"javaflash<%=suffix%>",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash<%=suffix%>",205,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",tony_video.ada_anchor+"<%=suffix%>"));
	document.write('</div>');
	document.write('<div id="videothumb<%=suffix%>">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart<%=suffix%>\',\'\',\''+tony_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo<%=suffix%>(tony_video,true,true,true,true,true,true);" title="Play Tony&#39;s Associate Testimonial Video"><img name="dilstart<%=suffix%>" style="margin: 0px;" src="'+tony_video.thumb_off+'" alt="Play Tony&#39;s Associate Testimonial Video" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash<%=suffix%>",205,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",tony_video.ada_anchor+"<%=suffix%>"));
	document.write('</div>');
	document.write('<div id="videothumb_off<%=suffix%>" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+tony_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash<%=suffix%>",205,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",tony_video.ada_anchor+"<%=suffix%>"));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+tony_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Tony&#39;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/college/Tony.swf" width="205" height="131" id="javaflash<%=suffix%>" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/college/Tony.swf"  />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
</object>
<table border="0" cellspacing="0" cellpadding="0" bgcolor="#d4001a" width="100%">
	<tr>
		<td nowrap align="center" height="18" width="100%">
			<a href="<%=ada_href %>#vt<%=suffix%>" title="Video transcript" class="btn1">Video transcript</a>
		</td>
	</tr>
</table>
</noscript>
<% Else %>
<div class="transcript">
<a name="vt<%=suffix%>"></a><h2 class="h1" style="margin: 0px 0px 6px 0px; text-align: left;"><span>Video transcript</span></h2>
<p>
Though I have only been with the bank for five months now I have already been able to work on a Six Sigma project with several senior level managers and through that experience I networked with these individuals and learned from them how they do their jobs.  I learned about the corporate treasury associate program through an on-campus recruiting event where several bank associates came down and spoke with students that were interested.  After that we had a round of on-campus interviews which were followed by the final round which were up in Charlotte.  We were actually able to visit the bank&#39;s headquarters and meet with the senior member executives as well as people we would be working with from day to day.
<br>
<br>
<a href="<%=standart_href%>" title="Return to standard page with video" class="bac" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</p>
</div>
<% End If %>