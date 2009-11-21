<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<%
mpage = "lob"
spage = "lb_career_compass"
ada_href = "../ada/lb_career_compass.asp"
page_self = "../learnmore/lb_career_compass.asp"
ada_title = breadcrumb & "Lines of Business | Career Compass"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="This tool can help you determine which Bank of America lines of business match your skills and interests."
	
	page_number = 1
	previous_page_number = page_number - 1
	next_page_number = page_number + 1
%>
<!-- #include file="../includes/pages/lb_career_compass_function.asp" -->
<%
title = breadcrumb & "Lines of Business | Career Compass | Step " & page_number
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
<!-- #include file="../includes/pages/lb_career_compass.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

