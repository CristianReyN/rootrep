<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag
mpage = "locations"
spage = "united_states"
tpage = ""
%>
<!-- #include file="../includes/breadcrumb.asp" -->
<%
title = breadcrumb_extended
ada_href = "../ada/learnmore.asp"
page_self = "../learnmore/learnmore.asp"
ada_title = breadcrumb & "Related Information"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="This is the first page to guide you to further information as you continue your search with Bank of America. From this page you can click through to learn more about the benefits and advantages of working at Bank of America. In addition there are links available to diversity, corporate information, college recruiting, global locations, investment banking careers. Job search is also available to search directly from on this page."
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
<!-- #include file="../includes/pages/learnmore.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

