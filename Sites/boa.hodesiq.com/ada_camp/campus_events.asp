<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Campus Recruiting | Campus Events"
mpage = "camp"
spage = "campus_events"
standart_href = "../campusrecruiting/campus_events.asp"
Metatag=""
page_section="ADA"
Dim flashPage
flashPage = false
Dim r1,r2,r3
r1 = False
r2 = False
r3 = False
r4 = False
%>
<!-- Header -->
<!-- #include file="../ada/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../ada/lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
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
<!-- #include file="../ada/footer.asp" -->
<!-- Footer -->

