<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../campus.aspx"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Campus Recruiting | Our Culture | Making a difference"
mpage = "camp"
spage = "our_culture"
tpage = "making_a_difference"
ada_href = "../ada_camp/making_a_difference.asp"
page_self = "../campusrecruiting/making_a_difference.asp"
ada_title = breadcrumb & "Campus Recruiting | Our Culture | Making a difference"
Metatag="Community Involvement Overview page of campus site. Includes details of the Bank's community and corporate philanthropy programs, Campus Events and Career Fit and Profile Submission Tools."
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
<!-- #include file="../includes/pages/camp/making_a_difference.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

