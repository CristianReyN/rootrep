<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag
title = "Bank of America | Career | Staffing Events"
mpage = "staffingevents"
spage = ""
ada_href = "../ada/staffingevents.asp"
page_self = "../staffingevents/staffingevents.asp"
ada_title = "Bank of America | Career | Staffing Events, Text Only Version"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="You can link to two sites to see where in the United States a representative from Bank of America will be present at a recruiting event."
%>
<!-- Header -->
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td height="30" style="background: #cadceb;" valign="bottom" align="right">
<a href="<%=ada_href %>" title="<%=ada_title %>" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Text Only Version</a>&nbsp;&nbsp;<br>
			</td></tr>
			<tr valign="top"><td height="300" style="background: #cadceb;" align="center">
<script language="JavaScript1.2" type="text/javascript">
//<!--
requiredMajorVersion = 8;
requiredVersion = 8;
hasRequestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);
function hover(ref, classRef) { eval(ref).className = classRef; }

if ( hasRequestedVersion ) {
   document.write('<a class="auraltext" href="#skipflash" onFocus="hover(this,\'show-tab\'); this.focus()" onblur="hover(this,\'auraltext\')">Skip Flash content</a>');
   document.write('<object tabindex="0" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="152" height="300" id="faq" align="middle" title="Frequently Asked Questions Animation">');
   document.write('<param name="allowScriptAccess" value="sameDomain" />');
   document.write('<param name="movie" value="faq_sea.swf" />');
   document.write('<param name="quality" value="high" />');
   document.write('<param name="wmode" value="transparent" />');
   document.write('<param name="bgcolor" value="#ffffff" />');
   document.write('<embed src="faq_sea.swf" wmode="transparent" quality="high" bgcolor="#ffffff" width="152" height="300" name="faq" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
   document.write('</object>');
} else {
   document.write('<div style="position: relative; width: 152; height: 300;">');
   document.write('<a class="g" onfocus="this.className=\'g-over\';" onblur="this.className=\'g\';" href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="This page requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version.">This page requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version.</a><br>'); 
   document.write('</div>');
}
//-->
</script>
<noscript>
<object tabindex="0" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="152" height="300" id="faq" align="middle" title="Frequently Asked Questions Animation">
	<param name="allowScriptAccess" value="sameDomain" />
	<param name="movie" value="faq_sea.swf" />
	<param name="quality" value="high" />
	<param name="wmode" value="transparent" />
	<param name="bgcolor" value="#ffffff" />
<embed src="faq_sea.swf" wmode="transparent" quality="high" bgcolor="#ffffff" width="152" height="300" name="faq" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
</object>
</noscript>
			</td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/staffingevents.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

