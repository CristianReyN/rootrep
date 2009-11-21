<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action,page_section, Metatag
mpage = "lob"
spage = "lob_mortgagecareers"
tpage = "lob_servicing"
%>
<!-- #include file="../includes/breadcrumb.asp" -->
<%
title = breadcrumb_extended
standart_href = "../mortgagecareers/lob_servicing.asp"
job_search_action = "../jobsearch/searchresult.asp"
page_self = "../ada/lob_servicing.asp"
page_section="ADA"
Dim flashPage
flashPage = false
Dim subtitle
subtitle="Servicing"
Metatag="From this page you will learn about jobs in the Loan Servicing group within Bank of America Mortgage."
Keywords="Bank of America, Mortgage, Fulfillment, Home Equity, Reverse Mortgages, Insurance, Sales, Servicing, Mortgage Lender, Loan Servicer, Home Lending, Job Opportunities, Job Search, Career Search."
'****************************** ADDED FOR HOT JOB OPENING***************************
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
<!-- #include file="../includes/pages/mortgage/servicing.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="footer.asp" -->
<!-- Footer -->

