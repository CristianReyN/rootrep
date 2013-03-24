		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" valign="top">
<img src="../images/operations.jpg" width="578" height="166" alt="Operations. Explore a career with the Bank of Opportunity." title="Operations. Explore a career with the Bank of Opportunity." border="0">
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<img src="../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td colspan="2" width="100%" valign="top">
<a name="skipmaincontent"></a><H1 class="hidden">Operations</H1>
<div style="float: left; width: <% If page_section = "ADA" Then %>357<% ElseIf page_section <> "ADA" Then %>299<%End If%>px;">
<p style="margin: <% If page_section = "ADA" Then %>12<% Else %>0<%End If%>px <%=right_margin%>px 0px <%=left_margin_0%>px;">
Positions within Operations provide overall support for many key areas within Bank&nbsp;of&nbsp;America.  Operations is primarily responsible for overseeing the processes and transactions which help Bank&nbsp;of&nbsp;America maximize profitability and minimize risk.
</p>
<%
'******* HOT JOB OPENING '*******
Dim familyid, talentid, HotJobsPageName, globaljobsfamilyids, rowcount
talentid="6"
familyid=""
HotJobsPageName = "Operations"
'globaljobsfamilyids="2,22,6,20,24,29,15"
globaljobsfamilyids="2,22,6,20,29,15"
rowcount=6
%>
<H2 class="h2" style="margin: 12px <%=right_margin%>px 2px <%=left_margin_0%>px;">Recently Posted Opportunities</H2>
<table cellpadding="2" cellspacing="0" border="0" summary="" style="margin-left: <%=left_margin_0%>px;">
<!--#include file="../../hot_jobs.asp"-->
</table>
<br><br>
</div>
<% If page_section = "ADA" Then %>
<div style="float: right; margin: 0px; padding: 0px; width: 201px;">
	<!-- #include file="associate/benitez.asp" -->
<% ElseIf page_section <> "ADA" Then %>
<div align="right" style="float: right; margin: 0px; padding: 0px; width: 259px;">
	<!-- #include file="associate/benitez.asp" -->
	<a href="#video" class="hlink">Deborah BenitezLedtje&#39;s Associate Testimonial Video</a>
<% End If  %>
	<div style="width: 201px; text-align: left; border: 1px solid #e8e8e9; background: #ffffff; margin: 12px 0px 0px 0px; padding: 0px 0px 6px 0px;">
		<H2 class="g" style="margin: 0px 0px 0px 0px;"><%=JOB_SEARCH_TITLE%></H2>
		<img src="../images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 1px 0px 6px 0px; background: #e8e8e9;" align="top"><br clear="all">
	<!-- #include file="../jobsearch.asp" -->
	</div>
	<div style="width: 201px; text-align: center; margin: 12px 0px 0px 0px; padding: 0px;">
<%
	link = "../cashservices_video/"
	target = ""
	adAlt = "Cash Services Realistic Job Preview Video >>>"
%>
		<map name="cashservices">
			<area title="<%=adAlt%>" alt="<%=adAlt%>" coords="0,0,187,105" href="<%=link%>"<%=target%>>
		</map>
		<img src="../images/clear.gif" width="100%" height="1" vspace="1" alt="" border="0" style="background: #989898;"><br clear="all">
		<img src="../images/clear.gif" width="100%" height="1" vspace="0" alt="" border="0" style="background: #c9c9c9; margin: 0px 0px 6px 0px;"><br clear="all">
		<img src="../images/cash_services.jpg" width="187" height="105" border="0" style="margin: 6px 0px 0px 0px;" usemap="#cashservices" alt="<%=adAlt%>"><br clear="all">
		<img src="../images/clear.gif" width="100%" height="1" vspace="0" alt="" border="0" style="background: #c9c9c9; margin: 15px 0px 0px 0px;"><br clear="all">
		<img src="../images/clear.gif" width="100%" height="1" vspace="1" alt="" border="0" style="background: #989898;"><br clear="all">
	</div>
	<br><br>
</div>
				</td>
			</tr>
		</table>