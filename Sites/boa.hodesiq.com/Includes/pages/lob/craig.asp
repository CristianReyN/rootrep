<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && craig_video ) {
	document.write('<H2 class="hidden">Craig&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(craig_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",craig_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+craig_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(craig_video,true,true,true,true,true,true);"><img name="dilstart" style="margin: 0px;" src="'+craig_video.thumb_off+'" alt="" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",craig_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+craig_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",craig_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+craig_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Craig&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/swf/craig_test.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/DITL_TESTIMONIAL/swf/craig_test.swf"  />
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
>>Craig, SVP Global Marketing Olympics<br><br>
I'd say there are two things that I really like about working at the bank, one is just the people that I've had a chance to go and work with.  They really like to be part of a team, really like working together in order to accomplish our business objectives, both for our customers, other associates and for our shareholders.  And then, the other thing that I really like is the variety of projects and roles that I've had a chance to have.  It's really been great for me in terms of my being able to continue to learn and grow and apply myself in new ways.
<br><br>
For me I think the thing that's really most important in terms of my career is the continuing opportunity to learn, develop, and take what I've done in some roles and be able to go and apply it in different ways in new roles.  And that's one of the things I really like about the bank, it fosters an environment that allows you to go do that.  I've been at the bank for over 17 years - and I've probably had 12 different roles during that period of time. So, that ability to stay fresh, and continue to learn and grow is really been something that is very important to me.
<br><br>
I think the best thing about working in Global Marketing and Corporate Affairs is that the work we do has a direct impact on our customers and other associates at the bank.  For instance, the work I'm doing around our Olympic sponsorship really helps benefit our customers, the members of the U.S. Olympic team and is something our associates are very, very excited about as well.
<br><br>
During a typical day I'd have a chance to go and have a lot of different conversations with a variety of different partners.  So, for instance I might start the day having some dialog with members of my team - reviewing current status of particular projects or initiatives they are working on - seeing if there are any issues or problems that I might be able to help them out with.  And then, I might spend some time later on in the day meeting with internal partners.  So, as an example I might meeting with our media team about what our advertising strategy for the Olympics might be.  And then, I might also have an opportunity to talk to some external partners.  This might be a meeting with members of the U.S. Olympic Committee, or I might have an opportunity to give an interview to an external media outlet.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>