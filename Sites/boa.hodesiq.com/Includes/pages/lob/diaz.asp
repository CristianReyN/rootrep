<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && diaz_video ) {
	document.write('<H2 class="hidden">Anthony Diaz&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(diaz_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",diaz_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+diaz_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(diaz_video,true,true,true,true,true,true);"><img name="dilstart" style="margin: 0px;" src="'+diaz_video.thumb_off+'" alt="" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",diaz_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+diaz_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",diaz_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+diaz_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Anthony Diaz&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/associate/Diaz.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Diaz.swf"  />
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
>>Anthony Diaz, Banking Center Manager:  My name is Anthony Diaz.<br>
I'm a Banking Center Manager for Bank of America in Mount Kisco, New York.<br>
My typical day starts with basically getting my team connected in the morning and focused for the day's goals.
We establish a goal in the morning to see what we're going to accomplish, and we talk about the success and we celebrate together in the morning to get the team revved up for the day.<br>
After that, after we open the doors, we immediately go to the floor to greet and meet my customers, welcome them to Bank of America.<br>
I'm more like the traffic director in my banking center when people approach the center or whether they come in to cash a check or apply for a loan, I'm there so they know exactly where they need to go and not feeling confused when they come to my center.<br>
When I joined the company, I always wanted to become a homeowner.<br>
I didn't have a house.<br>
I had a family with a little child, and I never thought that dream would come true.<br>
With the Associate Homeownership Program, Bank of America made it possible for me.<br>
It's not just about the money.<br>
It's about the company and what they're willing to do and what they do to really invest in their associates.<br>
When I look for new associates to come and join the company, I don't look for experience.<br>
A lot of people get hung up in the idea that you must have banking experience.<br>
I look for passion and attitude.<br>
If the associate has the passion and the right attitude to come and work at Bank of America, that associate is willing to work with the public and slowly think about the customer and slowly think about making that emotional connection, not only with your coworkers with the customers, I think that's sufficient enough for me to say this person is going to be a great associate.<br>
All the other banking transactions, we can teach that and we have a sufficient amount of training to help the associate to get through that process.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>