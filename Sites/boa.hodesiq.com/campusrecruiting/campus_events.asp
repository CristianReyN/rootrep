<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Campus Recruiting | Campus Events"
mpage = "camp"
spage = "campus_events"
ada_href = "../ada_camp/campus_events.asp"
page_self = "../campusrecruiting/campus_events.asp"
ada_title = breadcrumb & "Campus Recruiting | Campus Events"
Metatag=""
Dim r1,r2,r3
r1 = False
r2 = False
r3 = False
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
<!-- #include file="../includes/pages/camp/campus_events.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

