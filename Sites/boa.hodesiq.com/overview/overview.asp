<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action,page_section, Metatag
title = "Bank of America | Career | Overview"
mpage = "overview"
spage = ""
ada_href = "../ada/overview.asp"
page_self = "../overview/overview.asp"
ada_title = "Bank of America | Career | Overview, Text Only Version"
job_search_action = "../jobsearch/searchresult.asp"
page_section=""
Dim flashPage
flashPage = true
hide_flash_title = "Stop Audio"
Metatag="Main page of the careers site. From this page you can listen to a virtual host who gives a quick tour to point in the direction of either engaging information, job search information or more in-depth information about employment with Bank of America. From this page you can job search to find if there is an opportunity available. You can click to more links about benefits, diversity, corporate information, college information, global locations and to Investment Banking Careers."
playflash = Request.Cookies("PFOT")
If playflash = "" Then
	Response.Cookies("PFOT") = "1"
	Response.Cookies("PFOT").Expires = "January 1,2038"
End If
If playflash = "1" Then flashPage = false
%>
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td height="450" style="background: #cadceb;">
<div id="flash1" style="position: absolute;">
<table width="160" cellpadding="0" cellspacing="0" border="0" summary="">
<tr><td align="right" style="padding: 0px 9px 6px 6px;"><br>
<% If playflash="" Then %><a href="<%=ada_href %>#vht" id="videotranscript" title="Virtual Host Video Transcript" class="g" onfocus="this.className='g-over';" onblur="this.className='g';" style="line-height: 1.1em;">Virtual Host Video Transcript</a><% Else %><a href="<%=ada_href %>" id="videotranscript" title="<%=ada_title %>" class="g" onfocus="this.className='g-over';" onblur="this.className='g';" style="line-height: 1.1em;">Text Only Version</a><% End If %></td></tr></table>
<script language="JavaScript1.2" type="text/javascript">
//<!--
requiredMajorVersion = 8;
requiredVersion = 8;
hasRequestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);
if ( hasRequestedVersion ) {
	var hiddenFlash = '<a class="auraltext" href="#skipflash" onFocus="hover(this,\'show-tab\'); this.focus()" onblur="hover(this,\'auraltext\')">Skip Flash content</a><br>';
	hiddenFlash += '<object tabindex="0" onmousedown="if(document.getElementById(\'skipflash2\')) document.getElementById(\'skipflash2\').focus();" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="310" height="390" title="virtualhost" id="ShockwaveFlash1">';
	hiddenFlash += '<param name="movie" value="virtualhost.swf" />';
	hiddenFlash += '<param name="quality" value="high" />';
	hiddenFlash += '<param value="transparent" name="wmode" />';
	hiddenFlash += '<embed src="virtualhost.swf" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="310" height="390"></embed>';
	hiddenFlash += '</object>';
   document.write('<div id="flash_in" style="display: inline; width: auto; height: auto;">');
	<% If playflash <> "1" Then %>
   document.write(hiddenFlash);
   <%  Else %>
   document.write('<table width="160" height="60" cellpadding="0" cellspacing="0" border="0" summary="" style="background: #ebebeb; border-top: 1px solid #dadada; border-bottom: 1px solid #dadada;"><tr><td style="padding: 5px 11px 5px 12px;"><div style="border: 1px solid #dadada;"><img src="../images/piper.jpg" width="52" height="52" alt="Replay Virtual Host" border="0" style="border: 1px solid #ebebeb;"></div></td><td width="100%"><a href="Javascript: replayVirtualHost();" title="Replay Virtual Host" class="p" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';">Replay<br>Virtual Host</a></td></tr></table>');
   <%  End If %>
   document.write('</div>');
} else {
   document.write('<div style="position: relative; width: 152; height: 300;">');
   document.write('<a class="g" onfocus="this.className=\'g-over\';" onblur="this.className=\'g\';" href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="This page requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version.">This page requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version.</a><br>'); 
   document.write('</div>');
}
//-->
</script>
<noscript>
<div id="flash_in" style="display: <% If playflash="1" Then Response.write "none" Else Response.write "inline"%>;">
<object tabindex="0" onmousedown="if(document.getElementById('skipflash2')) document.getElementById('skipflash2').focus();" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="310" height="390" title="virtualhost" id=ShockwaveFlash1>
  <param name="movie" value="virtualhost.swf" />
  <param name="quality" value="high" />
  <param value="transparent" name="wmode" />
  <embed src="virtualhost.swf" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="310" height="390"></embed>
</object>
</div>
</noscript>
</div>
			</td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/overview.asp" -->
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->