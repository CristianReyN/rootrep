<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/college/college.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write(Nathan_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'nathan.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="205" height="131" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/college/Nathan.swf"  />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
<embed src="../Includes/pages/college/Nathan.swf" quality="high" bgcolor="#ffffff" width="205" height="131" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"></embed>
</object>
</noscript>
<% Else %>
<div class="ptranscript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px;"><span>Video trascript</span></h2>
<p>
My current workplace environment is fantastic.  I work on a world class team with bright people who love what they that are doing, they are passionate and best of all that are a lot of fun to work with.  The team environment is truly something we exemplify here in the company I see that everyday when I come to work.  Two most important aspects of working for a company, one that I have opportunities to grow and develop and Bank of America as a changing growing company offers that to me as an associate and also being a father I want a company that allows me to have good work/life balance.  So I can come to work and I can work hard but I am also strongly encouraged to take the time that I need to do what I need to do in my personal life outside of the work place.  I have learned that you have to be proactive in all that you do, think ahead.  This is the type of environment where we are encouraged to do this we are not penalized for being proactive or even making mistakes.  I have also learned that you need to reach out to your teams and leverage everyone on your team it's a great team environment.  So reach out don't hesitate to ask other people what they are doing they will be more than happy to help you succeed.
</p>
</div>
<% End If %>