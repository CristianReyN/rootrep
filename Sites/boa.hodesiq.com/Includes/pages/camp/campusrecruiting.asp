		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top">
				<%if page_section <> "ADA" then %>
				<script language="JavaScript1.2" src="../includes/cr.js" type="text/javascript"></script>
				<script language="JavaScript1.2" type="text/javascript">
//<!--
function hover(ref, classRef) { eval(ref).className = classRef; }
requiredMajorVersion = 8;
hasRequestedVersion = DetectFlashVer(8, 0, 8);
if ( hasRequestedVersion ) {
	document.write('<a class="auraltext" href="<%=ada_href %>" onFocus="hover(this,\'show-tab\');" onblur="hover(this,\'auraltext\');" title="Access non-flash Version of Campus Recruiting">Access non-flash Version of Campus Recruiting<\/a>');
	document.write('<a class="auraltext" href="#skipflash" onFocus="hover(this,\'show-tab\');" onblur="hover(this,\'auraltext\');" title="Skip Flash content">Skip Flash content<\/a>');
	document.write(cr_flash);
} else {
	document.write('<a href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version."><img src="../images/camp/campusrecruiting.jpg" width="578" height="152" alt="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." border="0" style="margin: 0px;" /><\/a><br><a href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." class="bac" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';">This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version.<\/a><br><br>'); 
}
//-->
</script>
<noscript>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="578" height="152" id="mks_template_med" align="middle">
	<param name="allowScriptAccess" value="sameDomain" />
	<param name="allowFullScreen" value="false" />
	<param name="movie" value="../images/camp/mks_template_med.swf" />
	<param name="quality" value="high" />
	<param name="wmode" value="transparent" />
	<param name="bgcolor" value="#ffffff" />
	<embed src="../images/camp/mks_template_med.swf" quality="high" bgcolor="#ffffff" width="578" height="152" name="mks_template_med" id="mks_template_med" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" style="margin: 0px;" /></embed>
</object>
</noscript>
				<%else%>
<img src="../images/camp/campusrecruiting.jpg" width="578" height="152" alt="Campus Recruiting. Choose. Connect. Grow. Learn more." title="Campus Recruiting. Choose. Connect. Grow. Learn more." border="0" style="margin: 0px;" usemap="#crlearn" />
<map name="crlearn">
<area alt="Campus Recruiting. Choose. Connect. Grow. Learn more." title="Campus Recruiting. Choose. Connect. Grow. Learn more." coords="472,122,568,143" href="our_culture.asp">
</map>
				<%end if%>
<div class="hidden">Campus Recruiting. Choose. Connect. Grow. Learn more.</div>
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table><a name="skipflash"></a>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr><td valign="top"><img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom+3)%>" alt="" border="0"><br /></td>
				<%if page_section = "ADA" then %>
			<td align="right" valign="top" style="padding-top: 2px;"><a href="<%= standart_href%>" title="Return to standard page with video" class="bac" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with flash</a></td>
				<%end if%>
			</tr>
		</table>
		<a name="skipmaincontent"></a><H1 class="hidden">Campus Recruiting</H1>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="393" height="100%" valign="top" style="<%=middle_content_padding%>">
<h2 class="bach">Where do you want your career to go?</h2>
<p class="bac">
Your only limits at Bank of America are how hard you're willing to work and how far you can reach. With us, you can use your energy, initiative, and talent to create a career you'll be proud of.
</p>
<p class="bac">
Along the way &mdash; with access to the finest resources, training, and mentoring support &mdash; you'll reap the benefits of personal attention <i>and</i> the kind of opportunities that only a bank of our size can offer.
</p>
<p class="bac">
At Bank of America, you'll have every opportunity to carve out a successful career on your own terms &mdash; and to make a real impact from day one. What you do with that is completely up to you.
</p>
				</td>
				<td width="185" height="100%" style="padding-top: 1px;" valign="top">
<!-- #include file="../../camprnav.asp" -->
				</td>
			</tr>
		</table>