<% Response.Buffer=True 
Response.Redirect("../campusrecruiting/graduate_programs.asp")
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Graduate/Associate Programs"
mpage = "learnmore"
spage = "collrecruiting"
tpage = "graduate"
ada_href = "../ada/graduate.asp"
page_self = "../learnmore/graduate.asp"
ada_title = breadcrumb & "Graduate/Associate Programs"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="The graduate/associate career programs are for those recent graduates/associates with MBAs or advanced degrees in other fields or those currently enrolled in college/university to obtain an MBA or advanced degree. Detailed information is available on the page for these types of programs."
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
<!-- #include file="../includes/pages/graduate.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

