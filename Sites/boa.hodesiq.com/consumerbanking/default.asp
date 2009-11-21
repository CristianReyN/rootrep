<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Lines of Business | Global Consumer &amp; Small Business Banking | Banking Center Channel/Consumer Banking"
mpage = "lob"
spage = "lobgcsbb"
tpage = "lobbcc"
ada_href = "../ada/lobbcc.asp"
page_self = "../consumerbanking/default.asp"
ada_title = breadcrumb & "Lines of Business | Global Consumer &amp; Small Business Banking | Banking Center Channel/Consumer Banking"
job_search_action = "../jobsearch/searchresult.asp"
Dim flashPage
flashPage = false
Dim subtitle
subtitle="Banking Center Channel/Consumer Banking"
Metatag="Explore careers in our banking centers, with Bank of America's Global Consumer & Small Business Banking."

'****************************** ADDED FOR HOT JOB OPENING***************************
Dim talentid,rowcount
talentid=10 
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
<!-- #include file="../includes/pages/lobbcc.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

