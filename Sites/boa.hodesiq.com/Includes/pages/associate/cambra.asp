<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/associate/associate.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write('<a name="video"></a><H2 class="hidden">Gretchen Cambra&acute;s Associate Testimonial Video</H2>');
	document.write(Cambra_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'cambra.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Gretchen Cambra&acute;s Associate Testimonial Video</H2>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Cambra.swf"  />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
<embed src="../Includes/pages/associate/Cambra.swf" quality="high" bgcolor="#ffffff" width="259" height="166" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"></embed>
</object>
<table border="0" cellspacing="0" cellpadding="0" bgcolor="#e7313c" width="100%">
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
>>Gretchen Cambra, Technology Personnel:  My name is Gretchen Cambra.<br>
I'm a Human Resources Manager, and I support Global Technology and Operations, and I've been with the bank for six years.<br>
Well, I think probably the best part about my job is there is no typical day.<br>
Each day brings a new challenge, particularly in this role where I'm dealing with senior leaders and they're dealing with new challenges every day, whether it's business challenge, a technology challenge, a people challenge.<br>
So really no one day looks the same.<br>
I handle things such as organizational design and structure.<br>
I handle things such as talent management and talent planning: Where are we getting our talent from?<br>
How do we manage the talent that we have and really develop them?<br>
All the way down to certain issues or daily items that might come up from an associate or manager perspective.
My job is exciting.<br>
No day looks the same.<br>
The people that I work with are great and because you're working with people so much and so many different varieties of people, I mean, I support probably 800 in total and so with 800 people, you're bound to get just a number of different personalities, perspectives, experiences, cultures, diversity of thought and it's it's anything but boring.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>