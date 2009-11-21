<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/college/college.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write(Erin_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'erin.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="205" height="131" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/college/Erin.swf"  />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
<embed src="../Includes/pages/college/Erin.swf" quality="high" bgcolor="#ffffff" width="205" height="131" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"></embed>
</object>
</noscript>
<% Else %>
<div class="ptranscript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px;"><span>Video trascript</span></h2>
<p>
I learned about my current position from a conference called NSHMBA and there I talked to a recruiter about the Global Consumer position that I currently have became very interested and pursued the position from there.  What's important to me in my career is learning and growth and opportunity for advancement, Bank of America offers all of those things and I have really been looking forward to my future at Bank of America. Two things that stands out to me when I think of Global Consumer Business Bank is my exposure to executives and two is the focus on the customer.
</p>
</div>
<% End If %>