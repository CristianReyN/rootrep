<%@ Language=VBScript %><%
Response.Status="301 Moved Permanently"
Response.Redirect "../marketing/"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag
mpage = "lob"
spage = "lobcss"
tpage = "lobgmca"
%>
<!-- #include file="../includes/breadcrumb.asp" -->
<%
title = breadcrumb_extended
standart_href = "../marketing/"
Metatag="Explore a career in Global Marketing & Corporate Affairs with Bank of America's Corporate Staff & Support."
page_self = "../ada/lobgmca.asp"
page_section="ADA"
Dim flashPage
flashPage = false
%>
<!-- Header -->
<!-- #include file="header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td height="50" valign="bottom"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/lobgmca.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="footer.asp" -->
<!-- Footer -->

