<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action,page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Lines of Business | CFO Group/Finance"
mpage = "lob"
spage = "lobcss"
tpage = "lobcf"
standart_href = "../CFOgroup/"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="Explore a career in Corporate Finance with Bank of America's Corporate Staff & Support."
page_self = "../ada/lobcf.asp"
page_section="ADA"
Dim flashPage
flashPage = false
Dim subtitle
subtitle="CFO Group/Finance"
'****************************** ADDED FOR HOT JOB OPENING***************************
Dim talentid,rowcount
talentid=4 
rowcount=6
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
<!-- #include file="../includes/pages/lobcf.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="footer.asp" -->
<!-- Footer -->

