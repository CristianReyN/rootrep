<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, flash, Metatag
title = "Bank of America | Career | Operations"
mpage = "areasoftalent"
spage = "operations"
ada_href = "../ada/operations.asp"
page_self = "../operations/default.asp"
ada_title = "Bank of America | Career | Operations, Text Only Version"
Dim flashPage
flashPage = false
Dim subtitle
subtitle="Operations"
Metatag="Operations is one area of talent for careers at Bank of America. From this page you can listen to an associate, see hot job opportunities, and click to positions in operations, change management & process, legal and services."

'****************************** ADDED FOR HOT JOB OPENING***************************
Dim talentid,rowcount
talentid=6 
rowcount=6
%>
<!-- Header -->
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->
		<tr valign="top"><td style="background: #cadceb;" height="50" valign="bottom" align="right">
<a href="<%=ada_href %>" title="<%=ada_title %>" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Text Only Version</a>&nbsp;&nbsp;
			</td></tr>	<tr valign="top"><td style="background: #ececec;" height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="1"><img src="../images/clear.gif" width="1" height="1" alt="" border="0"></td>
	<td width="11" class="divl"><img src="../images/clear.gif" width="10" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/operations.asp" -->
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

