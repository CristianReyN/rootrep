<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && jeremy_video ) {
	document.write('<H2 class="hidden">Jeremy&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(jeremy_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",jeremy_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+jeremy_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(jeremy_video,true,true,true,true,true,true);"><img name="dilstart" style="margin: 0px;" src="'+jeremy_video.thumb_off+'" alt="" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",jeremy_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+jeremy_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",jeremy_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+jeremy_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Jeremy&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/swf/jeremy_test.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/swf/jeremy_test.swf"  />
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
One of the things I like best about my typical workday is coaching the associates on my team. I'm very privileged to work with such a great and cohesive group of people, that all have different strengths.  And, we utilize those strengths to all reach a common goal, which is delivering a consistent and branded client experience.  Some of us have talents in trading, others in sales and new accounts, others in servicing existing accounts.  As a Senior Investment Specialist, I'm responsible for coaching everything from industry knowledge that I've gained to sharing best practices.  And by sharing that we all come to reach the same common goal, which is delivering a consistent, branding client experience.
<br><br>
I found out about the opportunity with Bank of America because I was contacted by one of the corporate recruiters after I had posted my resume on a job networking website. And, the recruiter that contacted me felt that I would be a good fit for the position.  Shortly afterward, I interviewed and was very impressed with the corporation, our department and its leadership - so when I was offered the position, I gladly accepted it.
<br><br>
I'm very proud to work for Bank of America.  The growth and innovation that has taken place within Bank of America Investment Services and Global Wealth and Investment Management as a whole has been very exciting.  We're constantly changing, growing, improving and adapting to the marketplace, and this has created numerous opportunities for our associates as well as myself.  This may be joining a specialized team such as retirement or sales, or it may be joining a group that is outside of the investment center that may support us in our daily functions.
<br><br>
It's very important to me, in my career, to have the opportunity to learn new skills and to grow professionally so that I can succeed in my current role - as well as be prepared when advancement opportunities do arise, and what I found with Bank of America is that there are no barriers to this.  We have a great leadership team that is very open to new ideas and thoughts, and we actually meet regularly to share those ideas and thoughts which help improve our processes.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>