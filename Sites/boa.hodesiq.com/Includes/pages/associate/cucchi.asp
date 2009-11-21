<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/associate/associate.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write('<a name="video"></a><H2 class="hidden">Marina LanniCucchi&acute;s Associate Testimonial Video<\/H2>');
	document.write(Cucchi_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'cucchi.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Marina LanniCucchi&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/associate/Cucchi.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Cucchi.swf"  />
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
>>Marina LanniCucchi, GCSBB Communications: I'm Marina LanniCucchi.<br>
I work for Corporate Communications supporting Global, Consumer and Small Business Banking.<br>
I'm located in Waltham, Massachusetts, and I have been with the bank 18 years.<br>
It's more about making sure that we work with the lines of business within the organization, and that's across all the organization segments.<br>
Working with the executives in those lines of business, making sure that we work what we call the horizontal.
Making sure that associates, regardless of what line of business or where they reside, understand what the key messaging is from the top down and from the bottom up as well.<br>
So with everything from writing and meeting with folks and making associates understand what applies to them within the organization, but it's a lot of talking.<br>
It's a lot of conference calls.<br>
It's a lot of site visits.<br>
It's a lot of interaction.<br>
It's partnering with associates across the organization to make sure that we deliver clear and concise communications in a realtime fashion.<br>
In addition in corporate communications, we support web strategy, and that's really about internal communications.<br>
It's the intranet.<br>
It's how we get communications to our associates.<br>
We also support Knowledge Channel broadcasts where the executive actually virtually visits all their associates.
Blast EMail, making sure we get realtime communications out to the associates, fast and furious, if you will, depending on what the nature of the message is, but in addition, we also support site visits where our executives go out and visit our associates.<br>
Doing pulse checks, seeing how they are, meeting, greeting, visiting with our customers, et cetera.
I came to Bank of America and have stayed with Bank of America because I truly believe that I add value at the end of the day.<br>
I have worklife balance and folks go, what exactly does that mean?<br>
It means that I can be the best professional I can possibly be, learn and grow and work with these amazing, talented individuals, but on the flip side, I'm a mom at home and a wife, and I can balance that, have a homecooked meal or go to the soccer game and come back home and sign back onto my computer and still meet my deliverables as a professional for my client, but still be a great mom and be there for when my family needs me, which is most important because you don't get that second chance.<br>
I love what I do.<br>
I learn every day.<br>
I do love my job.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>