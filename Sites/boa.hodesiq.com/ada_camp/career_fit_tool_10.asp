<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action,page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<%
mpage = "camp"
spage = "find_your_fit"
tpage = "career_fit_tool"
standart_href = "../campusrecruiting/career_fit_tool.asp"
job_search_action = "../jobsearch/searchresult.asp"
Metatag=""
page_self = "../ada_camp/career_fit_tool.asp"
page_section="ADA"
Dim flashPage
flashPage = false
	
	page_number = 10
	previous_page_number = page_number - 1
	next_page_number = page_number + 1
	
	from_request = FALSE
	fp = Request.QueryString("p")
	'remember points'fpp = session.Contents("fit_program_points")
	'remember points'Dim fit_program_points
	if fp <> "" Then
		fit_programs = Split(fp,":")
		'remember points'If Not IsEmpty(fpp) Then fit_program_points = Split(fpp,":")
		if UBound(fit_programs) = 5 Then
			from_request = TRUE
			session.Contents("fit_programs") = fp
			'remember points'session.Contents("fit_program_points") = fpp
		Else
			session.Contents.Remove("fit_programs")
			'remember points'session.Contents.Remove("fit_program_points")
		End If
	End If
%>
<!-- #include file="../includes/pages/camp/career_fit_tool_function.asp" -->
<%
title = breadcrumb & "Campus Recruiting | Find Your Fit | Career Fit Tool | Program List"
%>
<!-- Header -->
<!-- #include file="../ada/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../ada/lnav.asp" -->
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
<!-- #include file="../includes/pages/camp/career_fit_tool_ui.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../ada/footer.asp" -->
<!-- Footer -->