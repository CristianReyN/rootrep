<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && shuwen_video ) {
	document.write('<H2 class="hidden">Shu Wen&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(shuwen_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",shuwen_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+shuwen_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(shuwen_video,true,true,true,true,true,true);"><img name="dilstart" style="margin: 0px;" src="'+shuwen_video.thumb_off+'" alt="" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",shuwen_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+shuwen_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",shuwen_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+shuwen_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Shu Wen&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/swf/Shu_Wen.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/swf/Shu_Wen.swf"  />
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
I have been at Bank of America for two years now and I currently work in the Global Markets Financial Exchange corporate sales group.  
<br><br>
I graduated from an accounting program from graduate school so the natural progression for most accountants is to go to one of the big firms.  I realized that the job in the banking industry at Bank of America would be one that is so much more interesting and dynamic and challenging.  
<br><br>
I love meeting new people and I love interacting with people and I think this is precisely the reason why I wanted to join the FX team.  Everyday there are new challenges and everyday you are working to meet these challenges and to make sure that the deals and your clients are fulfilled to the best.
<br><br>
My main functions are really to actually support my team in executing the FX trades and actually answering to client inquiries.
<br><br>
Every single second of every single minute the markets are actually moving.  We need to really execute the trades as soon as possible and we need to get the rates quickly from the traders, get it back to the client, let them know if there are any changes in the market, whether it's down or not and what other movements in the market are happening right now so they can make the decision as to whether or not they should execute the various hedging or trading positions. 
<br><br>
If and when there are any major moves or news in the market, we actually try to understand better, understand the moves in the market so we actually serve more of an advisory role in this sense.
<br><br>
My team consists of six people and I must say I really love my team a lot.  They have been very supportive of me, especially my boss.  A lot of guidance has been given to me from the start when I had to grasp the basics and foundation of the way to handle client accounts.  
<br><br>
I think Bank of America has a more open culture.  There's less bureaucracy and a lot more processes are definitely more efficient.  I think there's a lot of accession to senior management.  From the day I stepped in, until now, I believe my knowledge and skills have definitely improved a lot.  I have grown confidence in executing client trades and I'm actually doing client trades on a daily basis.
<br><br>
I'm trying to learn more on the derivatives side, the options products, because we do have clients who are interested in the more exotic options so that's why I want to learn more, so that I can hopefully, in the future when I handle these client accounts, I can serve them better.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>