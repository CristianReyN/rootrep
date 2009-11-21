<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag
title = "Bank of America | Career | Job Areas"
mpage = "areasoftalent"
spage = ""
ada_href = "../ada/areasoftalent.asp"
page_self = "../areasoftalent/areasoftalent.asp"
ada_title = "Bank of America | Career | Job Areas"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="There are ten areas of talent that Bank of America has grouped their job families to.  Each of these areas of talent are grouped to help a reader understand where they may fit in with the organization. Ten areas of talent include: administration, customer care, communications, finance, human resources, operations, risk evaluation, sales, technology and consumer banking. You can click from this page to go to individuals pages that list hot job opportunities, associate testimonials, links to specific job family positions."
%>
<!-- Header -->
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td height="30" style="background: #cadceb;" valign="bottom" align="right">
<a href="<%=ada_href %>" title="<%=ada_title %>" class="g" onfocus="this.className='g-over';" onblur="this.className='g';"><%=textonly_version%></a>&nbsp;&nbsp;
			</td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/areasoftalent.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

