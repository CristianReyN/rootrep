<%
Response.Redirect("../ada_camp/")
%>
<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag
mpage = "locations"
spage = "united_states"
tpage = "collrecruiting"
fpage = "graduate"
%>
<!-- #include file="../includes/breadcrumb.asp" -->
<%
title = breadcrumb_extended
standart_href = "../learnmore/graduate.asp"
Metatag="The graduate/associate career programs are for those recent graduates/associates with MBAs or advanced degrees in other fields or those currently enrolled in college/university to obtain an MBA or advanced degree. Detailed information is available on the page for these types of programs."
page_self = "../ada/graduate.asp"
page_section="ADA"
Dim flashPage
flashPage = false
%>
<!-- Header -->
<!-- #include file="header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="lnav.asp" -->
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
<!-- #include file="../includes/pages/graduate.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="footer.asp" -->
<!-- Footer -->

