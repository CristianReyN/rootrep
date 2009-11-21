<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" type="text/javascript">
var ENV;
ENV = '<% Response.write SITE_U_R_L %>';
</script>
<script language="JavaScript1.2" src="../Includes/pages/college/college.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write('<H2 class="hidden">Erin&acute;s Associate Testimonial Video<\/H2>');
	document.write(Erin_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'erin.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<H2 class="hidden">Erin&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="<% Response.write SITE_U_R_L %>Includes/pages/college/Erin.swf" width="205" height="131" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="<% Response.write SITE_U_R_L %>Includes/pages/college/Erin.swf" />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
</object>
<table border="0" cellspacing="0" cellpadding="0" bgcolor="#e7313c" width="100%">
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
I learned about my current position from a conference called NSHMBA and there I talked to a recruiter about the Global Consumer position that I currently have became very interested and pursued the position from there.  What's important to me in my career is learning and growth and opportunity for advancement, Bank of America offers all of those things and I have really been looking forward to my future at Bank of America. Two things that stands out to me when I think of Global Consumer Business Bank is my exposure to executives and two is the focus on the customer.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>