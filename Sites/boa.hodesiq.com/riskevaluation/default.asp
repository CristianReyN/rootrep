<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, flash, Metatag
title = "Bank of America | Career | Risk Management"
mpage = "areasoftalent"
spage = "riskevaluation"

ada_href = "../ada/riskevaluation.asp"
page_self = "../riskevaluation/default.asp"
ada_title = "Bank of America | Career | Risk Management"
job_search_action = "../jobsearch/searchresult.asp"
Dim flashPage
flashPage = false
Dim subtitle
subtitle="Risk Management"
Metatag="Risk Evaluation is one area of talent for careers at Bank of America. From this page you can listen to an associate, see hot job opportunities, and click to positions in risk evaluation."

'****************************** ADDED FOR HOT JOB OPENING***************************
Dim talentid,rowcount
talentid=7 
rowcount=6
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
<!-- #include file="../includes/pages/riskevaluation.asp" -->
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

