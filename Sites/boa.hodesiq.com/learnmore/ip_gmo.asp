<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag
mpage = "locations"
spage = "united_states"
tpage = "collrecruiting"
fpage = "internships_program"
fvpage = "ip_gmo"
%>
<!-- #include file="../includes/breadcrumb.asp" -->
<%
title = breadcrumb_extended
ada_href = "../ada/ip_gmo.asp"
page_self = "../learnmore/ip_gmo.asp"
ada_title = breadcrumb & "Campus Recruiting | Internship Programs | Global Middle Office Rotational Summer Analyst Program (GMO)"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="Page designed for student recruiting. Links available on the page: undergraduate/analyst programs, graduate/associate programs, internships and a campus recruiting calendar. The option to do a job search is also present on this page."
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
<!-- #include file="../includes/pages/ip_gmo.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

