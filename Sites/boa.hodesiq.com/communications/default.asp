<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, flash, Metatag
title = "Bank of America | Career | Communications"
mpage = "areasoftalent"
spage = "communications"
ada_href = "../ada/communications.asp"
page_self = "../communications/default.asp"
ada_title = "Bank of America | Career | Communications, Text Only Version"
flash = true
Dim subtitle
subtitle="Communications"
Metatag="Areas of Talent: Job families have been categorized into a particular area of talent.  " & subtitle & " page includes a small description of the area of talent along with a video testimonial from an employee within the " & subtitle & " area.  Included on this page as well are hot job postings pulled from each of the job families within the finance area.  There are links as well to the career opportunities for the " & subtitle & " area."

'****************************** ADDED FOR HOT JOB OPENING***************************
Dim talentid,rowcount
talentid=3 
rowcount=6
%>
<!-- Header -->
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td style="background: #cadceb;" height="50" valign="bottom" align="right">
<a href="<%=ada_href %>" title="<%=ada_title %>" class="p2">Text Only Version</a>&nbsp;&nbsp;
			</td></tr><tr valign="top"><td style="background: #ececec;" height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="1"><img src="../images/clear.gif" width="1" height="1" alt="" border="0"></td>
	<td width="11" class="divl"><img src="../images/clear.gif" width="10" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body--><a name="skipmaincontent"></a>
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/communications.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->

