		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" valign="top">
<img src="../images/sales.jpg" width="578" height="166" alt="Explore a career with the Bank of Opportunity." title="Explore a career with the Bank of Opportunity." border="0">
<div class="hidden">Sales. Explore a career with the Bank of Opportunity.</div>
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<img src="../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td colspan="2" width="100%" valign="top">
<a name="skipmaincontent"></a><H1 class="hidden">Sales</H1>
<% If page_section = "ADA" Then %>
<!-- #include file="associate/placencia.asp" -->
					<div align="right" style="float: right; margin: 0px 0px 0px <%=right_margin_split%>px; padding: 0px; width: 201px;">
<% End If %>
<% If page_section <> "ADA" Then %>
					<div align="right" style="float: right; margin: 0px 0px 0px <%=right_margin_split%>px; padding: 0px; width: 259px;">
<!-- #include file="associate/placencia.asp" -->
<a href="#video" class="hlink">Patricia Placencia&acute;s Associate Testimonial Video</a>
<% End If  %>
<div style="width: 201px; text-align: left; border: 1px solid #e8e8e9; background: #ffffff; margin: 12px 0px 0px 0px; padding: 0px 0px 6px 0px;">
	<H2 class="g" style="margin: 0px 0px 0px 0px;"><%=JOB_SEARCH_TITLE%></H2>
	<img src="../images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 1px 0px 6px 0px; background: #e8e8e9;" align="top"><br clear="all">
<!-- #include file="../jobsearch.asp" -->
</div>
<br><br>
					</div>
<p style="margin: <% If page_section = "ADA" Then %>12<% Else %>0<%End If%>px <%=right_margin_split%>px 0px <%=left_margin_0%>px;">
Those in sales and product development groups will find a fast-paced and rewarding environment.  By planning and executing in closely aligned teams, with shared accountability, our sales specialists generate sales and increase our market share.
</p>
<%
'******* HOT JOB OPENING '*******
Dim familyid, talentid, globaljobsfamilyids, rowcount
talentid=8
globaljobsfamilyids="28,4"
rowcount=6
%>
<H2 class="h2" style="margin: 12px <%=right_margin%>px 2px <%=left_margin_0%>px;">New Opportunities</H2>
<table cellpadding="2" cellspacing="0" border="0" summary="" style="margin-left: <%=left_margin_0%>px;">
<!--#include file="../../hot_jobs.asp"-->
</table>
<br><br>
				</td>
			</tr>
		</table>