<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../campus.aspx"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<%
mpage = "camp"
spage = "career_fit_tool"
tpage = ""
standart_href = "../campusrecruiting/career_fit_tool.asp"
Metatag="Career Finder detail page on campus site. Provides tailored questionnaire tool to match candidates' skills to ideal positions within the Bank's various Business Areas."
page_self = "../ada_camp/career_fit_tool.asp"
page_section="ADA"
Dim flashPage
flashPage = false
	
	page_number = 0
	previous_page_number = page_number - 1
	next_page_number = page_number + 1
	session.Contents.Remove("pages")
	
	from_request = FALSE
	fp = session.Contents("fit_programs")
	if fp <> "" Then
		fit_programs = Split(fp,":")
		if UBound(fit_programs) = 5 Then
			Response.Redirect("career_fit_tool_10.asp?p="&fp)
		Else
			session.Contents.Remove("fit_programs")
		End If
	End If
%>
<!-- #include file="../includes/career_fit_tool_pr.asp" -->
<%
title = breadcrumb & "Campus Recruiting | Find Your Fit | Career Finder"
	call createPage(page,0,"<span style=""font-size : 1.2em; line-height : 1.6em;"">Curious about where you could fit in at Bank of America?</span>","Just answer nine easy questions about your experience and goals, and we’ll match you up with the career opportunities that suit you best.")
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