<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && placencia_video ) {
	document.write('<H2 class="hidden">Patricia Placencia&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(placencia_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",placencia_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+placencia_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(placencia_video,true,true,true,true,true,true);"><img name="dilstart" style="margin: 0px;" src="'+placencia_video.thumb_off+'" alt="" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",placencia_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+placencia_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",placencia_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+placencia_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Patricia Placencia&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/associate/Placencia.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Placencia.swf"  />
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
>>Patricia Placencia, Mortgage Retail Lending Branch Manager:  My name is Patricia Placencia.<br>
I am the Consumer Real Estate Sales Manager for Bristol County.<br>
I have been with the bank for seven years now.<br>
I began my career as a Teller seven years ago in the consumer bank and later on transitioned to several different roles as a Personal Banker, a Small Business Specialist.<br>
Then had the exciting opportunity to come over to the real estate side of the world.<br>
In 2003, I was a Mortgage Loan Officer for about a year.<br>
Then I was promoted to Producing Sales Manager and just a few months ago, I was promoted to the Consumer Real Estate Sales Manager covering Rhode Island, Bristol County.<br>
I love interacting with my Mortgage Loan Officers.<br>
I love coaching them.<br>
I love watching them grow.<br>
I love watching them succeed and be, you know, top performers within the company.<br>
A typical day for me, since I have 16 new loan officers that have been with the company for less than a year, I spend a lot of my day coaching all day, every day and in conference calls, but a large portion of my time is spent coaching.<br>
I meet with my newhires on a weekly basis to go over any new products or enhancements to products.
I also invite business partners to talk a little bit about what they do and how they can help their customers, because it's all about deepening the relationship.<br>
So it's not just teaching them how to do a mortgage and how to close it.<br>
It's about bringing in that customer and deepening the relationship as a whole.<br>
So it's really important to me to introduce them to their partners throughout the bank, the Business Bank, Consumer Bank and Premier.<br>
I wanted to come work for Bank of America because I knew that I could come to one organization and grow within various roles in the organization, and it's evident by my career path.<br>
I started my role seven years ago as a parttime Teller and shortly thereafter, I was promoted to head Teller, promoted to a Personal Banker, Small Business Specialist and about three years ago, I was promoted over as a Mortgage Loan Officer in the Consumer Real Estate Division, and there's still more to come.<br>
It's a tremendous bank to work for.<br>
The culture is awesome.<br>
They listen to the voice of the associates here.<br>
It's all about the associate and the customer and the shareholder here.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>