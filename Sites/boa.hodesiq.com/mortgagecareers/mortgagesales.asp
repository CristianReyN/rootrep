<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../overview/overview.asp"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Job Areas | Mortgage Careers | Mortgage Sales"
mpage = "areasoftalent"
spage = "mortgagecareers"
tpage = "aot_mortgagesales"
ada_href = "../ada/mortgagesales.asp"
page_self = "../mortgagecareers/mortgagesales.asp"
ada_title = breadcrumb & "Job Areas | Mortgage Careers | Mortgage Sales"
Dim flashPage
flashPage = false
Dim subtitle
subtitle="Mortgage Sales"
Metatag="From this page you will learn about how jobs in Mortgage Sales and Fulfillment contribute to the Bank of America Mortgage."
Keywords="Bank of America, Mortgage, Fulfillment, Home Equity, Reverse Mortgages, Insurance, Sales, Servicing, Mortgage Lender, Loan Servicer, Home Lending, Job Opportunities, Job Search, Career Search."
%>
<!-- Header -->
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/mortgage/mortgagesales.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

