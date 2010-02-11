<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && benitez_video ) {
	document.write('<H2 class="hidden">Deborah BenitezLedtje&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(benitez_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",benitez_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+benitez_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(benitez_video,true,true,true,true,true,true);"><img name="dilstart" style="margin: 0px;" src="'+benitez_video.thumb_off+'" alt="Play Deborah BenitezLedtje&acute;s Associate Testimonial Video" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",benitez_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+benitez_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",benitez_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+benitez_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Deborah BenitezLedtje&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/associate/Benitez.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Benitez.swf"  />
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
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px; text-align: left;"><span>Video transcript</span></h2>
<p>
>>Deborah BenitezLedtje, Southeast Vault Services:  My name is Deborah BenitezLedtje.<br>
I am an Operations Manager with Cash Services and I have been with the bank for almost four years now.<br>
I currently manage a cash vault for Bank of America in Charlotte.<br>
We receive deposits from customers and we process that cash and prepare currency to either be used in circulation or sent to the Federal Reserve, and I pretty much manage the operations day to day, financials, everything that goes on in the cash vault.<br>
One of the things we like to stress with associates that are interviewing for our cash vault or any position with the bank is you have to really keep in mind the benefits.<br>
The Bank of America offers fantastic benefits.<br>
It is wonderful, and I'm not just talking about dental or medical.<br>
The Rewarding Success Program.<br>
I don't know of another company that offers that.<br>
If the bank makes money, we make money.<br>
That's so exciting.<br>
I mean, there aren't very many companies that offer that, but the benefits you get from being a Bank of America associate are just there's no comparison.<br>
I think the most important thing for someone to be successful at an operations role is flexibility.<br>
Understanding that it is volume driven.<br>
It is production driven.<br>
And you kind of have to know that going in.<br>
There's a lot of benefits on the other side.<br>
It's a little more relaxed, a little more casual.<br>
You aren't customerfacing, so it's a little bit more laid back.<br>
We have a lot of fun at work, and we like to kick back and play music and it's a totally different atmosphere, but you do have to remember because it is production driven, it is an operations unit that is driven by volume. If the volume is there, we have to be there, and my associates know that, our whole team knows that.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>