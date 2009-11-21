<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag
title = "Bank of America | Career | Insurance Plans"
mpage = "learnmore"
spage = "benefitsadv"
ada_href = "../ada/insurance.asp"
page_self = "../learnmore/insurance.asp"
ada_title = "Bank of America | Career | Insurance Plans, Text Only Version"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="Information is available on this page highlighting the plans available through Bank of America for Insurance."
%>
<!-- Header -->
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->

			<tr valign="top"><td height="30" style="background: #cadceb;" valign="bottom" align="right">
<a href="<%=ada_href %>" title="<%=ada_title %>" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Text Only Version</a>&nbsp;&nbsp;
			</td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/insurance.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

