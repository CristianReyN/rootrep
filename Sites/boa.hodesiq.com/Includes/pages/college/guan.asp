<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" type="text/javascript">
var ENV;
ENV = '<% Response.write SITE_U_R_L %>';
</script>
<script language="JavaScript1.2" src="../Includes/pages/college/college.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write('<H2 class="hidden">Guan&acute;s Associate Testimonial Video<\/H2>');
	document.write(Guan_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'guan.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<H2 class="hidden">Guan&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="<% Response.write SITE_U_R_L %>Includes/pages/college/Guan.swf" width="205" height="131" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="<% Response.write SITE_U_R_L %>Includes/pages/college/Guan.swf" />
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
The culture at Bank of America is quite diverse depending upon which group you work the culture can be quite different.  For example the current group I am working in is very academic because we hire a group of PhDs who do very complicated credit modeling.  However, in my previous job because I was involved in a two year rotational program it was much more fast paced because we were on the trading floor and we were aiding the traders and measuring their risk.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>