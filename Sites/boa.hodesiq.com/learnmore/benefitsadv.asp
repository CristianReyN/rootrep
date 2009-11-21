<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag
title = "Bank of America | Career | Benefits and Advantages"
mpage = "learnmore"
spage = "benefitsadv"
ada_href = "../ada/benefitsadv.asp"
page_self = "../learnmore/benefitsadv.asp"
ada_title = "Bank of America | Career | Benefits and Advantages, Text Only Version"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="Link from related information where an individual is going to learn more in-depth information about the organization.  From Benefits and Advantages you can click through to learn about the benefits of the company, learn what is offered in terms of work/life balance and find out more information about life in the major markets.  You can also job search from this page or go to the other areas within related information such as diversity, corporate information, college recruiting, and investment banking careers."
%>
<!-- Header -->
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->

			<tr valign="top"><td style="background: #cadceb;" height="50" valign="bottom" align="right">
<a href="<%=ada_href %>" title="<%=ada_title %>" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Text Only Version</a>&nbsp;&nbsp;
			</td></tr>
			<tr valign="top"><td style="background: #ececec;" height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="1"><img src="../images/clear.gif" width="1" height="1" alt="" border="0"></td>
	<td width="11" class="divl"><img src="../images/clear.gif" width="10" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/benefitsadv.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

