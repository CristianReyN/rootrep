<%@ Language=VBScript %><%
Response.Status="301 Moved Permanently"
Response.Redirect "../tech/"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Technology"
mpage = "areasoftalent"
spage = "technology"
standart_href = "../tech/"
Metatag="Technology is one area of talent for careers at Bank of America. From this page you can listen to an associate, see hot job opportunities, and click to positions in technology."
page_self = "../ada/technology.asp"
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
<!-- #include file="../includes/pages/technology.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="footer.asp" -->
<!-- Footer -->

