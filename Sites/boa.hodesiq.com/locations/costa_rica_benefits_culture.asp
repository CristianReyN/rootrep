<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../overview/overview.asp"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Locations | Costa Rica | Benefits, Culture &amp; Work Environment"
mpage = "locations"
spage = "costa_rica"
tpage = "costa_rica_benefits_culture"
ada_href = "../ada/costa_rica_benefits_culture.asp"
page_self = "../locations/costa_rica_benefits_culture.asp"
ada_title = breadcrumb & "Locations | Costa Rica | Benefits, Culture &amp; Work Environment"
Metatag="BA Continuum Costa Rica Limitada culture detail page of Bank of America career web site. Provides overview of the non-bank subsidiary's culture and benefits, as well dynamic job search."
Keywords="BA Continuum Costa Rica, non-bank subsidiary of Bank of America, Bank of America, Costa Rica, benefits, compensation, performance-based bonus, diversity, progressive workplace practices, Inclusive meritocracy, lines of business, staffing process, career, job search"
%>
<!-- Header -->
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0">
			</td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/costa_rica_benefits_culture.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

