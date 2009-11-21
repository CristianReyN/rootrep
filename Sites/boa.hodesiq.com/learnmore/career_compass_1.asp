<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<%
mpage = "learnmore"
spage = "collrecruiting"
tpage = "career_compass"
ada_href = "../ada/career_compass.asp"
page_self = "../learnmore/career_compass.asp"
ada_title = breadcrumb & "Campus Recruiting | Career Compass"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="Page designed for student recruiting. Links available on the page: undergraduate/analyst programs, graduate/associate programs, internships and a campus recruiting calendar. The option to do a job search is also present on this page."
	
	page_number = 1
	previous_page_number = page_number - 1
	next_page_number = page_number + 1
%>
<!-- #include file="../includes/pages/career_compass_function.asp" -->
<%
title = breadcrumb & "Campus Recruiting | Career Compass | Step " & page_number
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
<!-- #include file="../includes/pages/career_compass.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

