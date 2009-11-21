<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && henderson_video ) {
	document.write('<H2 class="hidden">Chanel Henderson&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(henderson_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",henderson_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+henderson_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(henderson_video,true,true,true,true,true,true);"><img name="dilstart" style="margin: 0px;" src="'+henderson_video.thumb_off+'" alt="" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",henderson_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+henderson_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",henderson_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+henderson_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Chanel Henderson&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/associate/Henderson.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Henderson.swf"  />
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
>>Chanel Henderson, Tower PMO Administration:  My name is Chanel Henderson.<br>
I've been with Bank of America for ten years.<br>
I work with Global Technology and Operations Group, and I am a Business Support Manager for the My Work Flexible Work Program where I oversee the operations of all of the Flexible Work sites.<br>
A typical day for me at work is that, first of all, I will work from one of various My Work locations, the program locations, and I could do various things throughout the day.<br>
I may work with a group of associates to educate them on the program or otherwise help them with the enrollment activities, or I may be in a meeting with teammates in helping to determine how our next Flexible work site will be able to help the associates to maximize their productivity.<br>
We are allowing associates to work in nontraditional ways.<br>
The program gives the associates and the managers choice about when and where they work.<br>
They work when they need to, when they're most productive.<br>
They work where they need to.<br>
My favorite characteristic of my job is being able to be part of an innovative team, being part of Bank of America innovation is exciting.<br>
The My Work program is new.<br>
It's fresh.<br>
Folks are very, very excited about it, so I feel very honored to have an opportunity to be part of such an exciting initiative.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>