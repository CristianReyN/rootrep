<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<!-- #include file="../includes/career_fit_tool_programs.asp" -->
<%
Set program = programs(148)
title = breadcrumb & "Campus Recruiting | Explore Careers | " & program.Item("full_degree") & " | " & program.Item("region") & " | " & program.Item("title")
mpage = "camp"
spage = "explore_careers"
tpage = "internships"
fpage = "asiais-global-markets-associate-internship"
ada_href = "../ada_camp/asiais-global-markets-associate-internship.asp"
page_self = "../campusrecruiting/asiais-global-markets-associate-internship.asp"
ada_title = breadcrumb & "Campus Recruiting | Explore Careers | " & program.Item("full_degree") & " | " & program.Item("region") & " | " & program.Item("title")
%><!-- #include file="../includes/camp_program_meta_description.asp" --><%
Metatag=CAMP_META_DESRIPTION
Dim r1,r2,r3
r1 = True
r2 = True
r3 = True
r4 = True
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
<!-- #include file="../includes/pages/camp/asiais-global-markets-associate-internship.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

