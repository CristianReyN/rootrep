<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../campus.aspx"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Campus Recruiting | How to Apply | Glossary"
mpage = "camp"
spage = "how_to_apply"
tpage = "glossary"
ada_href = "../ada_camp/glossary.asp"
page_self = "../campusrecruiting/glossary.asp"
ada_title = breadcrumb & "Campus Recruiting | How to Apply | Glossary"
Metatag="Glossary Overview page on campus site. Includes a list of and definitions for common Bank terms and acronyms of value to candidates. Campus Events and Career Fit & Profile Submission Tools."
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
<!-- #include file="../includes/pages/camp/glossary.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

