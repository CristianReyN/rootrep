<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Lines of Business | Global Technology &amp; Operations"
mpage = "lob"
spage = "lobgto"
ada_href = "../ada/lobgto.asp"
page_self = "../technology/default.asp"
ada_title = breadcrumb & "Lines of Business | Global Technology &amp; Operations"
job_search_action = "../jobsearch/searchresult.asp"
Dim flashPage
flashPage = false
Dim subtitle
subtitle="Global Technology &amp; Operations"
Metatag="Explore a career with Bank of America's Global Technology & Operations."

'****************************** ADDED FOR HOT JOB OPENING***************************
Dim talentid,rowcount
talentid=9 
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
<!-- #include file="../includes/pages/lobgto.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

