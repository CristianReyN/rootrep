<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../campus.aspx"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<!-- #include file="../includes/career_fit_tool_programs.asp" -->
<%
Set program = programs(532)
title = breadcrumb & "Campus Recruiting | Explore Careers | " & program.Item("full_degree") & " | " & program.Item("region") & " | " & program.Item("title")
mpage = "camp"
spage = "explore_careers"
tpage = "undergraduate_programs"
fpage = "asiafn-global-treasury-services-analyst-program"
standart_href = "../campusrecruiting/asiafn-global-treasury-services-analyst-program.asp"
page_self = "../ada_camp/asiafn-global-treasury-services-analyst-program.asp"
%><!-- #include file="../includes/camp_program_meta_description.asp" --><%
Metatag=CAMP_META_DESRIPTION
page_section="ADA"
Dim r1,r2,r3
r1 = True
r2 = True
r3 = True
r4 = True
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
	<td valign="top" width="578" height="100%" class="ncamp">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/camp/asiafn-global-treasury-services-analyst-program.asp" -->
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../ada/footer.asp" -->
<!-- Footer -->

