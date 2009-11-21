<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && saulsberry_video) {
	document.write('<H2 class="hidden">Shawn Saulsberry&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(saulsberry_video.url,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",saulsberry_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onclick="playVideo(saulsberry_video,true,true,true,true,true,true);"><img style="margin: 0px;" src="'+saulsberry_video.thumb_on+'" alt="" border="0" align="absmiddle"></a>');
	document.write(getHTMLControl("javaflash",259,22,false,false,false,false,false,false));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+saulsberry_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(getHTMLControl("javaflash",259,22,false,false,false,false,false,false));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+saulsberry_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Shawn Saulsberry&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/associate/Saulsberry.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Saulsberry.swf"  />
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
<div class="transcript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px;"><span>Video transcript</span></h2>
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
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>