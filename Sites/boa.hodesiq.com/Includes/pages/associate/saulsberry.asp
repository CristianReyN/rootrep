<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/associate/associate.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write(Saulsberry_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'saulsberry.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Saulsberry.swf"  />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
<embed src="../Includes/pages/associate/Saulsberry.swf" quality="high" bgcolor="#ffffff" width="259" height="166" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"></embed>
</object>
</noscript>
<% Else %>
<div class="transcript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px;"><span>Video trascript</span></h2>
<p>
>>Shawn Saulsberry, Governance and Operations:  My name is Shawn Saulsberry.<br>
I am a service delivery consultant.<br>
I work in a corporate staff, Business Technology Group responsible for Human Resources Technology, and I've been with the Bank of America for about three and a half years.<br>
I typically begin my day with looking at my calendar, organizing all of my meetings, preparing for technical calls.<br>
That's a big part of my day. I spend most of the day dealing with vendors or dealing with customers over the phone talking about our technology solutions and where the best fits are.<br>
We work with a ton of web technology.<br>
I've done a lot of work with vendors and their technology.<br>
So anything you can imagine a technology company using, we use it here at the bank.<br>
So from Java to, you know, all of the C Plus Plus applications, all of the web development tools, video tools, we use them here.<br>
I like the fact that in my particular world as a consultant, I can basically be an entrepreneur.<br>
So my management allows me to kind of work with my business partners and fulfill their needs.<br>
I'm not micromanaged.<br>
I'm able to be a free thinker and present new ideas to the business partner as well as to my technology partners.<br>
So I think that's the best part of what I do.<br>
Just sort of being an entrepreneur within a big company like the Bank of America.<br>
Someone described it to me as a company of companies, and I like that concept.<br>
Because the fact is, although the bank is big, there is so much opportunity here.<br>
I can move from department to department.<br>
Of course, depending on my great performance in my current role, I can basically go anywhere that I want to and leverage technology in any part of the business.<br>
So that's very exciting to me.
</p>
</div>
<% End If %>