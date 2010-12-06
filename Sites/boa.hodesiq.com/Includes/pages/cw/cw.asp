<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/cw/cw.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
function preloadThumb()
{
	MM_preloadImages('../Includes/pages/cw/thumbnails/andrey_on.jpg','../Includes/pages/cw/thumbnails/andrey_off.jpg');
}
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && andrey_video ) {
	document.write('<H2 class="hidden">Corporate Workplace Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(andrey_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",andrey_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+andrey_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(andrey_video,true,true,true,true,true,true);" title="Play Corporate Workplace Video"><img name="dilstart" style="margin: 0px;" src="'+andrey_video.thumb_off+'" alt="Play Corporate Workplace Video" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",andrey_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+andrey_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",andrey_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+andrey_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Corporate Workplace Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/rjp/flashplayer_xml20080308.swf" width="259" height="166" FlashVars="var1=../Includes/pages/cw/CW.xml" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="sameDomain" />
	<param name="movie" value="../Includes/pages/rjp/flashplayer_xml20080308.swf" />
	<param name="FlashVars" value="var1=../Includes/pages/cw/CW.xml" />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
</object>
</noscript>
<% Else %>
<div class="transcript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px; text-align: left;"><span>Video transcript</span></h2>
<p>
My name is Audrey Rajnak, and I am currently a Senior Analyst in Corporate Workplace's Global Project Management office. 
<br><br>
Corporate Workplace is made up of associates with a very wide range of backgrounds. I'm in the Global Project Management office and we have associates who are true construction management professionals. They're building new office buildings and new stores. All the way to the other end of the spectrum where I find myself in financial analytics building our multi-billion dollar capital plan and overseeing the budget.
<br><br>
Corporate Workplace partners with the Lines of Business to turn the Lines of Business cost of real estate into a competitive advantage. We do this by delivering world-class office space to help the Lines of Business achieve their business objectives.
<br><br>
I have an exciting role on the project management team, where I am part of a team that is responsible for building out a multi-billion dollar capital cash flow plan. 
<br><br>
Bank of America has a 20 billion dollar, ten-year commitment to the environment, and that's across the corporation. To meet that obligation, Corporate Workplace is playing a huge role. We are implementing office space that is environmentally friendly. We have a hybrid-vehicle car program. And in addition to that, our tower in New York, One Bryant Park, is widely recognized as the most environmentally friendly office tower in the world.
<br><br>
While working on a multi-billion dollar capital plan is very exciting, where I have truly come to enjoy the most about working at Bank of America is the associates that I work with. They are true professionals, they are always willing to help me learn and expand. And they are always there to help.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>