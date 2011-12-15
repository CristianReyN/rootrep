<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../overview/overview.asp"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Locations | Costa Rica | Staffing Process"
mpage = "locations"
spage = "costa_rica"
tpage = "costa_rica_staffing"
standart_href = "../locations/costa_rica_staffing.asp"
page_section="ADA"
Dim flashPage
flashPage = false
Metatag="BA Continuum Costa Rica Limitada staffing process detail page of Bank of America career web site. Provides overview of the non-bank subsidiary's job fulfillment process, as well dynamic job search."
Keywords="hiring managers, BA Continuum Costa Rica, BA Continuum, Costa Rica, staffing process, job requirements, interviews, recruitment, events, recruitment events, job fairs, employment opportunities, referral programs, career, job search, Bank of Opportunity"
%>
<!-- Header -->
<!-- #include file="header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/costa_rica_staffing.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="footer.asp" -->
<!-- Footer -->

