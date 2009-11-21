<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/associate/associate.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write(Henderson_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
} else {
	document.write(reqFlashPlayer+'henderson.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Henderson.swf"  />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
<embed src="../Includes/pages/associate/Henderson.swf" quality="high" bgcolor="#ffffff" width="259" height="166" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"></embed>
</object>
</noscript>
<% Else %>
<div class="transcript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px;"><span>Video trascript</span></h2>
<p>
>>Chanel Henderson, Tower PMO Administration:  My name is Chanel Henderson.<br>
I've been with Bank of America for ten years.<br>
I work with Global Technology and Operations Group, and I am a Business Support Manager for the My Work Flexible Work Program where I oversee the operations of all of the Flexible Work sites.<br>
A typical day for me at work is that, first of all, I will work from one of various My Work locations, the program locations, and I could do various things throughout the day.<br>
I may work with a group of associates to educate them on the program or otherwise help them with the enrollment activities, or I may be in a meeting with teammates in helping to determine how our next Flexible work site will be able to help the associates to maximize their productivity.<br>
We are allowing associates to work in nontraditional ways.<br>
The program gives the associates and the managers choice about when and where they work.<br>
They work when they need to, when they're most productive.<br>
They work where they need to.<br>
My favorite characteristic of my job is being able to be part of an innovative team, being part of Bank of America innovation is exciting.<br>
The My Work program is new.<br>
It's fresh.<br>
Folks are very, very excited about it, so I feel very honored to have an opportunity to be part of such an exciting initiative.
</p>
</div>
<% End If %>