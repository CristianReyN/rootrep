<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && michael_video ) {
	document.write('<H2 class="hidden">Michael&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(michael_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",michael_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+michael_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(michael_video,true,true,true,true,true,true);" title="Play Michael&acute;s Associate Testimonial Video"><img name="dilstart" style="margin: 0px;" src="'+michael_video.thumb_off+'" alt="Play Michael&acute;s Associate Testimonial Video" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",michael_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+michael_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",michael_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+michael_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Michael&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/swf/michael_test.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="sameDomain" />
	<param name="movie" value="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/swf/michael_test.swf"  />
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
>>Michael, Human Resources Executive<br><br>
I think that the Marine Corps has provided me with a number of transferable skills, some of those are just some of the basic skills that are at the core - such as integrity, personal courage, commitment, camaraderie which are all very transferable to the leadership model that we have at Bank of America. So, by far, those are some of the things that set the skills that military professionals have apart from some of their civilian peers and counterparts.
<br><br>
I think some of the things Bank of America does for those that are transitioning into the organization, particularly with their affinity organizations that they have and groups that they have to support that transition, a variety of different networking organizations that we have at Bank of America.  And, some pretty detailed on-boarding plans for some of the executive levels that we bring in really help individuals acclimate well to the Bank of America organization and culture.
<br><br>
I certainly would recommend Bank of America as an opportunity for individuals transferring out of the military into the civilian marketplace.  I think particularly some of the core values and leadership models that we have at Bank of America are very similar to those that the military holds in its core ethics and beliefs that those organizations have.  
<br><br>
For those that are interested in Bank of America I certainly recommend checking out the career opportunities on the careers website we have at Bank of America.com.  Additionally, any networking that can be done with the multitude of associates we have at the bank can certainly open some great doors and opportunities for individuals.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>