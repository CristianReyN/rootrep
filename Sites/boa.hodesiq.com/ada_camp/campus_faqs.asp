<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Campus Recruiting | How to Apply | Campus FAQs"
mpage = "camp"
spage = "how_to_apply"
tpage = "campus_faqs"
standart_href = "../campusrecruiting/campus_faqs.asp"
page_self = "../ada_camp/campus_faqs.asp"
Metatag="FAQs Overview page of campus site. Includes answers to common questions about Bank of America and careers in the U.S. and internationally. Campus Events and Career Fit & Profile Submission Tools."
page_section="ADA"
Dim flashPage
flashPage = false
Dim r1,r2,r3
r1 = True
r2 = True
r3 = True
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
<!-- #include file="../includes/pages/camp/campus_faqs.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../ada/footer.asp" -->
<!-- Footer -->

