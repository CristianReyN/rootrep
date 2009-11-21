<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" type="text/javascript">
var ENV;
ENV = '<% Response.write SITE_U_R_L %>';
</script>
<script language="JavaScript1.2" src="../Includes/pages/college/college.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write('<H2 class="hidden">Tony&acute;s Associate Testimonial Video<\/H2>');
	document.write(Tony_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'tony.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<H2 class="hidden">Tony&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="<% Response.write SITE_U_R_L %>Includes/pages/college/Tony.swf" width="205" height="131" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="<% Response.write SITE_U_R_L %>Includes/pages/college/Tony.swf" />
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
<div class="ptranscript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px;"><span>Video transcript</span></h2>
<p>
Though I have only been with the bank for five months now I have already been able to work on a Six Sigma project with several senior level managers and through that experience I networked with these individuals and learned from them how they do their jobs.  I learned about the corporate treasury associate program through an on-campus recruiting event where several bank associates came down and spoke with students that were interested.  After that we had a round of on-campus interviews which were followed by the final round which were up in Charlotte.  We were actually able to visit the bank 's headquarters and meet with the senior member executives as well as people we would be working with from day to day.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>