<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../overview/overview.asp"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Job Areas"
mpage = "areasoftalent"
spage = ""
standart_href = "../areasoftalent/areasoftalent.asp"
Metatag="There are ten areas of talent that Bank of America has grouped their job families to.  Each of these areas of talent are grouped to help a reader understand where they may fit in with the organization. Ten areas of talent include: administration, customer care, communications, finance, human resources, operations, risk evaluation, sales, technology and consumer banking. You can click from this page to go to individuals pages that list hot job opportunities, associate testimonials, links to specific job family positions."
page_self = "../ada/areasoftalent.asp"
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
<!-- #include file="../includes/pages/areasoftalent.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="footer.asp" -->
<!-- Footer -->

