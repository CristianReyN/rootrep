<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && cambra_video ) {
	document.write('<H2 class="hidden">Gretchen Cambra&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(cambra_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",cambra_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onclick="playVideo(cambra_video,true,true,true,true,true,true);"><img style="margin: 0px;" src="'+cambra_video.thumb_on+'" alt="" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",jeremy_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+cambra_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",jeremy_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+cambra_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Gretchen Cambra&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/associate/Cambra.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Cambra.swf"  />
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