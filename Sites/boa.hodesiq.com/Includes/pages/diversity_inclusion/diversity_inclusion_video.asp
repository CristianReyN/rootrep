<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/diversity_inclusion/di.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && diversity_video ) {
	document.write('<H2 class="hidden">Diversity and Inclusion film<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(diversity_video,400,300,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",400,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",diversity_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+diversity_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(diversity_video,true,true,true,true,true,true);" title="The diversity of our employees enriches our company. View film &gt;"><div><img name="dilstart" style="margin: 0px;" src="'+diversity_video.thumb_off+'" alt="The diversity of our employees enriches our company. View film &gt;" border="0" align="absmiddle"></div></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",400,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",diversity_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+diversity_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",400,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",diversity_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+diversity_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Diversity and Inclusion film</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/rjp/flashplayer_xml20080308.swf" width="400" height="300" id="javaflash" align="middle">
	<param name="movie" value="../Includes/pages/rjp/flashplayer_xml20080308.swf"  />
	<param name="FlashVars" value="var1=../Includes/pages/lob/xml/DIVERSITY.xml" />
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="sameDomain" />
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
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 12px 0px; text-align: left;"><span>Video transcript</span></h2>
<p>
Our world is constantly changing, shifting and moving at an unprecedented pace. We live in a global society where ideas, cultures and individuals connect and come together to talk, to interact and to build opportunity.
<br><br>
At Bank&nbsp;of&nbsp;America, we embrace viewpoints that carry across time zones - that make us more competitive in a global marketplace. We understand that diversity isn&#39;t only about traditional categories like race or gender. It goes beyond into sexual orientation, disability, experience and cultures.
<br><br>
By sharing fresh perspectives we grow and build a better place to work - an environment where all employees are empowered to excel. It&#39;s about giving all of us, individually and together, the best chance to succeed. 
<br><br>
It is also about strengthening the communities we serve through philanthropy, community development, support of the arts and volunteerism. From meeting the needs of underserved communities to supporting workforce development, we celebrate the ties that connect us all. 
<br><br>
This philosophy expands to working with diverse suppliers. Over the past ten years, we have spent more than Ten Billion dollars working with diverse businesses to provide key services to the bank. We know that by promoting a better economic environment, these organizations will continue to thrive and grow stronger. 
<br><br>
It is about being inclusive, not exclusive in everything we do. Employees work in local neighborhoods and in major cities setting opportunity in motion every day for customers and clients.  
<br><br>
It is critical that we meet our diverse and unique customer needs - providing products and services that make a positive difference in their lives. 
<br><br>
At Bank&nbsp;of&nbsp;America diversity and inclusion is teamwork and globally focused.  It&#39;s the core to who we are and where we are going. 
<br><br>
Bank&nbsp;of&nbsp;America - creating opportunity, making a difference with employees, customers and clients, and in the communities we serve. 
<br><br>
Visit <a href="http://bankofamerica.com/diversity" class="p">bankofamerica.com/diversity</a> to learn more.
<br><br>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p">Return to standard page with video</a>
</p>
</div>
<% End If %>