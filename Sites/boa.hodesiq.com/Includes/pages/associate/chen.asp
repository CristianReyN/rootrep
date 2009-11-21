<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/associate/associate.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write('<a name="video"></a><H2 class="hidden">Rich Chen&acute;s Associate Testimonial Video<\/H2>');
	document.write(Chen_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
	createStopAudio();
} else {
	document.write(reqFlashPlayer+'chen.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Rich Chen&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/associate/Chen.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Chen.swf"  />
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
>>Rich Chen, Finance Business Support:  Hi.<br>
My name is Rich Chen, and I work in Finance Business Support for Global Wealth and Investment Management Business.<br>
It's headquartered in Boston and I work there as well as in Midtown Manhattan.<br>
I think the best way to explain the finances role is that they're a business partner and adviser to the line of business.<br>
So you basically have people who represent the company and try to sell our products to our various clients, and their primary focus should be in terms of selling and generating incremental revenue for the company.<br>
Finance's role is basically to be an information provider to those people.<br>
Help them understand what sort of businesses they're generating and from what product products or delivery channels they're coming from and helping them manage their expense structure so that they don't kind of overspend or they're more efficient in lines with how we compete with some of our competitors.<br>
I think my favorite thing about the job is that it is so fluid in nature because there's so much going on on a day-to-day basis.<br>
It allows me to be involved with several different things which prevents, I guess, a job from becoming routine, and I really like to be, you know, challenged from a, I guess, a multitasking perspective, so I really enjoy on being on multiple, different projects at the time and having to balance the priorities for yourself and figure out what needs to be done at any given moment while also keeping things on your mind in the back burner.<br>
Coming in from a legacy company, I think the thing that surprised me most about Bank of America was the intimate feel you get within your team or respective group that you're within.<br>
I guess just seeing how large Bank of America is, currently with 200,000 plus associates, you think it's easy to get lost in the shuffle of things.<br>
However, you know, through my four or five years, I definitely feel that the work that you do, you see the value of it on a day-to-day basis.<br>
It doesn't really get lost in the whole grand scheme of things, and I guess that's something that I was really impressed by in joining in this company.<br>
There's a true connection between what we do and what the line of business ends up carrying out on a day-to-day basis, and you really see the connection and results that you're basically Impacting on a day-to-day basis.<br>
I can't say that you'll experience that necessarily at any other company, but I know that at Bank of America, you definitely will.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>