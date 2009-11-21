<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action,page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Campus Recruiting | Our Culture | Diversity and inclusion"
mpage = "camp"
spage = "our_culture"
tpage = "diversity_and_inclusion"
standart_href = "../campusrecruiting/diversity_and_inclusion.asp"
page_self = "../ada_camp/diversity_and_inclusion.asp"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="Diversity and Inclusion Overview page of campus site. Includes workforce data, facts, awards & recognition for the Bank's commitment to diversity, Campus Events, Career Fit and Profile Submission Tools."
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
<!-- #include file="../includes/pages/camp/diversity_and_inclusion.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../ada/footer.asp" -->
<!-- Footer -->

