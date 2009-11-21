<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" type="text/javascript">
var ENV;
ENV = '<% Response.write SITE_U_R_L %>';
</script>
<script language="JavaScript1.2" src="../Includes/pages/college/college.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write('<H2 class="hidden">Anne&acute;s Associate Testimonial Video<\/H2>');
	document.write(Anne_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'anne.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<H2 class="hidden">Anne&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="<% Response.write SITE_U_R_L %>Includes/pages/college/Anne.swf" width="205" height="131" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="<% Response.write SITE_U_R_L %>Includes/pages/college/Anne.swf" />
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
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px; text-align: left;"><span>Video transcript</span></h2>
<p>
What attracted me most about working at Bank of America was their focus on improving their processes to really was to help their customers and ensure their customers have a great experience and I have a passion for that.  I really like what Quality &amp; Productivity does their use of Six Sigma, Lean and other tools and it was important for me to find a position where I was able to do that.  While I was in grad school I was doing a research project on Bank of America and that started my interest in the company.  I attended a conference for the women's MBA while I was in Boston which led to my employment with the company.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>