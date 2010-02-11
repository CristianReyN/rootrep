<% suffix = ""
	If suf_fix <> "" Then
		suffix = "mg"
	End If
	If page_section <> "ADA" Then
		If suffix = "" Then %>
<script language="JavaScript1.2" src="../Includes/pages/camp/video/campl.js" type="text/javascript"></script>
	<% Else %>
<script language="JavaScript1.2" src="../Includes/pages/camp/video/campl_mg.js" type="text/javascript"></script>
	<% End If %>
<script language="JavaScript1.2" type="text/javascript">
function preloadThumb()
{
	MM_preloadImages('../Includes/pages/camp/video//thumbnails/nathan_on.jpg','../Includes/pages/camp/video/thumbnails/nathan_off.jpg');
}
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && nathan_video ) {
	document.write('<H2 class="hidden">Nathan&#39;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo<%=suffix%>" style="display: none;"><a name="video<%=suffix%>"></a>');
	document.write(getVideo(nathan_video,205,131,"javaflash<%=suffix%>",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash<%=suffix%>",205,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",nathan_video.ada_anchor+"<%=suffix%>"));
	document.write('</div>');
	document.write('<div id="videothumb<%=suffix%>">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart<%=suffix%>\',\'\',\''+nathan_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo<%=suffix%>(nathan_video,true,true,true,true,true,true);"><img name="dilstart<%=suffix%>" style="margin: 0px;" src="'+nathan_video.thumb_off+'" alt="Play Nathan&#39;s Associate Testimonial Video" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash<%=suffix%>",205,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",nathan_video.ada_anchor+"<%=suffix%>"));
	document.write('</div>');
	document.write('<div id="videothumb_off<%=suffix%>" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+nathan_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash<%=suffix%>",205,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",nathan_video.ada_anchor+"<%=suffix%>"));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+nathan_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video<%=suffix%>"></a><H2 class="hidden">Nathan&#39;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/college/Nathan.swf" width="205" height="131" id="javaflash<%=suffix%>" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/college/Nathan.swf"  />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
</object>
<table border="0" cellspacing="0" cellpadding="0" bgcolor="#d4001a" width="100%">
	<tr>
		<td nowrap align="center" height="18" width="100%">
			<a href="<%=ada_href %>#vt<%=suffix%>" title="Video transcript" class="btn1">Video transcript</a>
		</td>
	</tr>
</table>
</noscript>
<% Else %>
<div class="transcript">
<a name="vt<%=suffix%>"></a><h2 class="h1" style="margin: 0px 0px 6px 0px; text-align: left;"><span>Video transcript</span></h2>
<p>
My current workplace environment is fantastic.  I work on a world class team with bright people who love what they that are doing, they are passionate and best of all that are a lot of fun to work with.  The team environment is truly something we exemplify here in the company I see that everyday when I come to work.  Two most important aspects of working for a company, one that I have opportunities to grow and develop and Bank of America as a changing growing company offers that to me as an associate and also being a father I want a company that allows me to have good work/life balance.  So I can come to work and I can work hard but I am also strongly encouraged to take the time that I need to do what I need to do in my personal life outside of the work place.  I have learned that you have to be proactive in all that you do, think ahead.  This is the type of environment where we are encouraged to do this we are not penalized for being proactive or even making mistakes.  I have also learned that you need to reach out to your teams and leverage everyone on your team it&#39;s a great team environment.  So reach out don't hesitate to ask other people what they are doing they will be more than happy to help you succeed.
<br>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="bac" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</p>
</div>
<% End If %>