<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/college/college.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write(Anne_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
} else {
	document.write(reqFlashPlayer+'anne.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="205" height="131" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/college/Anne.swf"  />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
<embed src="../Includes/pages/college/Anne.swf" quality="high" bgcolor="#ffffff" width="205" height="131" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"></embed>
</object>
</noscript>
<% Else %>
<div class="ptranscript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px;"><span>Video trascript</span></h2>
<p>
What attracted me most about working at Bank of America was their focus on improving their processes to really was to help their customers and ensure their customers have a great experience and I have a passion for that.  I really like what Quality & Productivity does their use of Six Sigma, Lean and other tools and it was important for me to find a position where I was able to do that.  While I was in grad school I was doing a research project on Bank of America and that started my interest in the company.  I attended a conference for the women's MBA while I was in Boston which led to my employment with the company.
</p>
</div>
<% End If %>