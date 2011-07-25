<%
Response.Redirect("../campus-find-your-fit.aspx")
Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Campus Recruiting | Find Your Fit | Career Fit Tool"
mpage = "camp"
spage = "career_fit_tool"
tpage = ""
ada_href = "../ada_camp/career_fit_tool.asp"
page_self = "../campusrecruiting/career_fit_tool.asp"
ada_title = breadcrumb & "Campus Recruiting | Find Your Fit | Career Fit Tool"
Metatag="Career Fit Tool detail page on campus site. Provides tailored questionnaire tool to match candidates' skills to ideal positions within the Bank's various Business Areas."
Dim r1,r2,r3
r1 = True
r2 = True
r3 = True
r4 = False
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
<!-- #include file="../includes/pages/camp/career_fit_tool.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

