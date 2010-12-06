<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" type="text/javascript">
var ENV;
ENV = '<% Response.write SITE_U_R_L %>';
</script>
<script language="JavaScript1.2" src="../Includes/pages/college/college.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write('<H2 class="hidden">Nathan&acute;s Associate Testimonial Video<\/H2>');
	document.write(Nathan_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'nathan.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<H2 class="hidden">Nathan&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="<% Response.write SITE_U_R_L %>Includes/pages/college/Nathan.swf" width="205" height="131" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="sameDomain" />
	<param name="movie" value="<% Response.write SITE_U_R_L %>Includes/pages/college/Nathan.swf" />
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
My current workplace environment is fantastic.  I work on a world class team with bright people who love what they that are doing, they are passionate and best of all that are a lot of fun to work with.  The team environment is truly something we exemplify here in the company I see that everyday when I come to work.  Two most important aspects of working for a company, one that I have opportunities to grow and develop and Bank of America as a changing growing company offers that to me as an associate and also being a father I want a company that allows me to have good work/life balance.  So I can come to work and I can work hard but I am also strongly encouraged to take the time that I need to do what I need to do in my personal life outside of the work place.  I have learned that you have to be proactive in all that you do, think ahead.  This is the type of environment where we are encouraged to do this we are not penalized for being proactive or even making mistakes.  I have also learned that you need to reach out to your teams and leverage everyone on your team it's a great team environment.  So reach out don't hesitate to ask other people what they are doing they will be more than happy to help you succeed.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>