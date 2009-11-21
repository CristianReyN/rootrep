<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" type="text/javascript">
var ENV;
ENV = '<% Response.write SITE_U_R_L %>';
</script>
<script language="JavaScript1.2" src="../Includes/pages/college/college.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write(Chris_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'chris.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="205" height="131" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="<% Response.write SITE_U_R_L %>Includes/pages/college/Chris.swf"  />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
<embed src="<% Response.write SITE_U_R_L %>Includes/pages/college/Chris.swf" quality="high" bgcolor="#ffffff" width="205" height="131" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"></embed>
</object>
</noscript>
<% Else %>
<div class="ptranscript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px;"><span>Video transcript</span></h2>
<p>
I was attracted to come to work for Bank of America because I had two former classmates who joined the same group within the bank that I currently work for.  They had a great experience and came back to campus and did a really great job of selling it to me and talking about the opportunities within a large company and how they were encouraged to pursue their various interests.  The diversity of people they had gotten to work with really sounded like an appealing place to work for a young professional and I was hooked.  One of the things that helped me prepare for my interview process with Bank of America is all the involvement I had with professional organizations during my graduate school program.  Organizations specific to the discipline that you are interested in can be very helpful in providing resources and exposing you to professionals and some of the challenges they face in their careers.
</p>
</div>
<% End If %>