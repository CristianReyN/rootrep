<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && price_video ) {
	document.write('<H2 class="hidden">Allen Price&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(price_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",price_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+price_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(price_video,true,true,true,true,true,true);"><img name="dilstart" style="margin: 0px;" src="'+price_video.thumb_off+'" alt="" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",jeremy_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+price_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",jeremy_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+price_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Allen Price&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/associate/Price.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Price.swf"  />
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
>>Allen Price, GMRM Global Credit: My name is Allen Price.<br>
I am a Senior Vice President in the Global Corporate Investment Bank Risk Management Group.<br>
My responsibility is the risk management of and support of the Global Structure Finance Business line.<br>
My favorite part of kind of what I do on a daytoday basis is really working with my front office partners, the folks who are in the origination and structuring role as they think about how we can best bring value to our customers.<br>
I think one of the things that as a risk officer I am charged with keeping in the back of my mind or the front of my mind, I guess, is the risk reward equation.<br>
The folks who are going out and talking to the customers to sort of develop the business, if you will, they're focusing on the risk and reward, but with more emphasis toward reward.<br>
The risk officers we focus on the risk, but you have to keep that balance in place at all times.<br>
And so it's fun for me to sit down and think through structurally how can we add more value to our customer base, how can we help them with what they're trying to do and at the same time be appropriately compensated, reward, while managing and mitigating the risks associated with whatever the transaction is.<br>
So keeping that risk reward equation in constant balance is a challenge, and it's fun as well.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>