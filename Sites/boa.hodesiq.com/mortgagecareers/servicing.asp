<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Job Areas | Mortgage Careers | Servicing"
mpage = "areasoftalent"
spage = "mortgagecareers"
tpage = "aot_servicing"
ada_href = "../ada/servicing.asp"
page_self = "../mortgagecareers/servicing.asp"
ada_title = breadcrumb & "Job Areas | Mortgage Careers | Servicing"
job_search_action = "../jobsearch/searchresult.asp"
Dim flashPage
flashPage = false
Dim subtitle
subtitle="Servicing"
Metatag=""
'****************************** ADDED FOR HOT JOB OPENING***************************
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
<!-- #include file="../includes/pages/mortgage/servicing.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

