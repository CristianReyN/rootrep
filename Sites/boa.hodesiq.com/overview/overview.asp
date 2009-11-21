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
Dim skipFlash
skipFlash="1"
Metatag="Main page of the careers site. From this page you can listen to a virtual host who gives a quick tour to point in the direction of either engaging information, job search information or more in-depth information about employment with Bank of America. From this page you can job search to find if there is an opportunity available. You can click to more links about benefits, diversity, corporate information, college information, global locations and to Investment Banking Careers."
playflash = Request.Cookies("PFOT")
If playflash = "" Then Response.Cookies("PFOT") = "1"
%>
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td style="background: #cadceb;" height="50">
<div id="flash1" style="position: absolute;">
<table width="160" cellpadding="0" cellspacing="0" border="0" summary="">
<tr><td align="right"><br><a href="<%=ada_href %>" title="<%=ada_title %>" class="p2">Video Transcript</a>&nbsp;&nbsp;</td></tr>
</table><div id="flash_in" style="display: <% If playflash="1" Then Response.write "none" Else Response.write "inline"%>;">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="310" height="390" title="virtualhost" id=ShockwaveFlash1>
  <param name="movie" value="virtualhost.swf" />
  <param name="quality" value="high" />
  <param value="transparent" name="wmode" />
  <embed src="virtualhost.swf" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="310" height="390"></embed>
</object>
</div></div>
</td></tr>
			<tr valign="top"><td style="background: #ececec;" height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="1"><img src="../images/clear.gif" width="1" height="1" alt="" border="0"></td>
	<td width="11" class="divl"><img src="../images/clear.gif" width="10" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body--><a name="skipmaincontent"></a>
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/overview.asp" -->
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

