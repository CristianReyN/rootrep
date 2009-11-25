		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" valign="top">
<img src="../images/cw_b_2.jpg" width="578" height="166" alt="Corporate Workplace. Bank of America." title="Corporate Workplace. Bank of America." border="0">
<div class="hidden">Corporate Workplace. Bank of America.</div>
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<img src="../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="100%" valign="top">
<a name="skipmaincontent"></a><H1 class="hidden">Corporate Workplace</H1>
<div style="float: left; width: <% If page_section = "ADA" Then %>357<% ElseIf page_section <> "ADA" Then %>299<%End If%>px;">
	<p style="margin: <% If page_section = "ADA" Then %>0<% Else %>0<%End If%>px <%=right_margin%>px 0px <%=left_margin_0%>px;">
Corporate Workplace is responsible for 115 million square feet of bank-owned and occupied facilities worldwide. The group strives to discover innovative ways to evolve workspace and differentiate real estate for the bank. Corporate Workplace has opened the world's most environmentally-friendly skyscraper in New York City (at One Bryant Park) and continues to develop flexible work options for associates.
	</p>
	<p style="margin: 12px <%=right_margin%>px 0px <%=left_margin_0%>px;">
Corporate Workplace partners with each line of business to craft solutions for project and facilities management, associate awareness, energy management, and the acquisition and disposition of space. The goal of this partnership is to ensure real estate is a competitive advantage for Bank&nbsp;of&nbsp;America.
	</p>

	<H2 class="h2" style="margin: 12px <%=right_margin%>px 0px 0px;">Our Vision Statement</H2>
	<p style="margin: 12px <%=right_margin%>px 0px 0px;">
Corporate Workplace distinguishes Bank&nbsp;of&nbsp;America from its competition by delivering innovative, environmentally sustainable real estate and workspace solutions.
	</p>

	<p style="margin: 12px <%=right_margin%>px 0px 0px;">
Read more about our <a href="<% If page_section <> "ADA" Then %>../corporateworkplace/cw_teams.asp<% Else %>../ada/cw_teams.asp<%End If%>" class="ip" title="Corporate Workplace teams">Corporate Workplace teams</a>.
	</p>
<%
Dim familyid,rowcount
'familyid=11
talentid=11
rowcount=6
%>
	<H2 class="h2" style="margin: 12px <%=right_margin%>px 2px 0px;">New Opportunities</H2>
	<table cellpadding="2" cellspacing="0" border="0" summary="" style="margin-left: <%=left_margin_0%>px;">
<!--#include file="../../hot_jobs.asp"-->
	</table>
	<br><br>
</div>
<% If page_section = "ADA" Then %>
<div style="float: right; margin: 0px 0px 0px 20px; padding: 0px; width: 201px;">
	<!-- #include file="cw/cw.asp" -->
<% ElseIf page_section <> "ADA" Then %>
<div align="right" style="float: right; margin: 0px 0px 0px 20px; padding: 0px; width: 259px;">
	<!-- #include file="cw/cw.asp" -->
	<a href="#video" class="hlink">Corporate Workplace Video</a>
<% End If  %>
<div style="width: 201px; text-align: left; border: 1px solid #e8e8e9; background: #ffffff; margin: 12px 0px 0px 0px; padding: 0px 0px 6px 0px;">
	<H2 class="g" style="margin: 0px 0px 0px 0px;"><%=JOB_SEARCH_TITLE%></H2>
	<img src="../images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 1px 0px 6px 0px; background: #e8e8e9;" align="top"><br clear="all">
<!-- #include file="../jobsearch.asp" -->
</div>
	<br><br>
</div>
				</td>
			</tr>
		</table>