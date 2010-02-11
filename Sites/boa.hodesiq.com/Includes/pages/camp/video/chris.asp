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
	MM_preloadImages('../Includes/pages/camp/video//thumbnails/chris_on.jpg','../Includes/pages/camp/video/thumbnails/chris_off.jpg');
}
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && chris_video ) {
	document.write('<H2 class="hidden">Chris&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo<%=suffix%>" style="display: none;"><a name="video<%=suffix%>"></a>');
	document.write(getVideo(chris_video,205,131,"javaflash<%=suffix%>",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash<%=suffix%>",205,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",chris_video.ada_anchor+"<%=suffix%>"));
	document.write('</div>');
	document.write('<div id="videothumb<%=suffix%>">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart<%=suffix%>\',\'\',\''+chris_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo<%=suffix%>(chris_video,true,true,true,true,true,true);"><img name="dilstart<%=suffix%>" style="margin: 0px;" src="'+chris_video.thumb_off+'" alt="Play Chris&acute;s Associate Testimonial Video" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash<%=suffix%>",205,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",chris_video.ada_anchor+"<%=suffix%>"));
	document.write('</div>');
	document.write('<div id="videothumb_off<%=suffix%>" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+chris_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash<%=suffix%>",205,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",chris_video.ada_anchor+"<%=suffix%>"));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+chris_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Chris&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/college/Chris.swf" width="205" height="131" id="javaflash<%=suffix%>" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/college/Chrisswf"  />
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
I was attracted to come to work for Bank of America because I had two former classmates who joined the same group within the bank that I currently work for.  They had a great experience and came back to campus and did a really great job of selling it to me and talking about the opportunities within a large company and how they were encouraged to pursue their various interests.  The diversity of people they had gotten to work with really sounded like an appealing place to work for a young professional and I was hooked.  One of the things that helped me prepare for my interview process with Bank of America is all the involvement I had with professional organizations during my graduate school program.  Organizations specific to the discipline that you are interested in can be very helpful in providing resources and exposing you to professionals and some of the challenges they face in their careers.
<br>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="bac" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</p>
</div>
<% End If %>