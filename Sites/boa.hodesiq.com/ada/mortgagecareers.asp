<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../overview/overview.asp"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Job Areas | Mortgage Careers"
mpage = "areasoftalent"
spage = "mortgagecareers"
tpage = ""
standart_href = "../mortgagecareers/"
page_self = "../ada/mortgagecareers.asp"
page_section="ADA"
Dim flashPage
flashPage = false
Dim subtitle
subtitle="Mortgage Careers"
Metatag="Landing page for Bank of America Mortgage. From this page you can view the interview of a Home Loan Manager and view current opportunities with Mortgage."
Keywords="Bank of America, Mortgage, Fulfillment, Home Equity, Reverse Mortgages, Insurance, Sales, Servicing, Mortgage Lender, Loan Servicer, Home Lending, Job Opportunities, Job Search, Career Search."
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
<!-- #include file="../includes/pages/mortgage/mortgagecareers.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="footer.asp" -->
<!-- Footer -->

