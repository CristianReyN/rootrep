<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../overview/overview.asp"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, Metatag
mpage = "locations"
spage = "united_states"
tpage = "benefitsadv"
fpage = "majormarketlife"
%>
<!-- #include file="../includes/breadcrumb.asp" -->
<%
title = breadcrumb_extended
ada_href = "../ada/majormarketlife.asp"
page_self = "../learnmore/majormarketlife.asp"
ada_title = breadcrumb_extended
Metatag="Primary locations for Bank of America are New York, NY and Charlotte, NC and this page gives a little information on each of the markets."
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
<!-- #include file="../includes/pages/majormarketlife.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

