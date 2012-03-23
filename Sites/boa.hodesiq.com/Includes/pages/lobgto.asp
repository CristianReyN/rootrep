		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" valign="top">
<img src="../images/banners/global_technology_operations.jpg" width="578" height="166" alt="Global Technology &amp; Operations. Explore a career with the Bank of Opportunity." title="Global Technology &amp; Operations. Explore a career with the Bank of Opportunity." border="0">
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<img src="../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="100%" valign="top">
<a name="skipmaincontent"></a><H1 class="hidden">Global Technology &amp; Operations</H1>
<div style="float: left; width: 357px;">
<p class="bac" style="margin: <% If page_section = "ADA" Then %>0<% Else %>0<%End If%>px <%=right_margin%>px 0px <%=left_margin_0%>px;">
At Bank&nbsp;of&nbsp;America, Global Technology &amp; Operations (GT&amp;O) teammates work from office locations in 40 countries around the world.  Along with being an innovative leader in technology, the company offers progressive learning experiences, recognition for T&amp;O excellence, support for diversity goals, advancement of women, and other ways to ensure excellent career opportunities.</p>
 
<p class="bac">The GT&amp;O team provides end-to-end technology and fulfillment to approximately 58 million consumer households, small businesses, corporate and institutional relationships, and wealth and investment management clients. In the United States, it serves approximately 5,700 retail banking offices, 18,000 ATMs and award-winning online banking with 30 million active users.  Also, as one of the most global organizations at Bank&nbsp;of&nbsp;America, GT&amp;O has been established in some countries for more than 50 years.</p>

<p class="bac">By managing the company&#39;s global infrastructure and ensuring its ability to deliver an improved experience to clients around the world, the GT&amp;O team plays an important role at Bank&nbsp;of&nbsp;America and is uniquely positioned to influence how financial services are conducted now and in the years ahead.</p>
<br>
<img class="dotdiv" style="margin: 6px 0px 0px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<br>
<H2 class="h2" style="margin: 12px <%=right_margin%>px 2px <%=left_margin_0%>px;">Recently Posted Opportunities</H2>
<table cellpadding="2" cellspacing="0" border="0" summary="" style="width: 294px; margin-left: <%=left_margin_0%>px;">
<%
'******* HOT JOB OPENING '*******
Dim familyid, talentid, HotJobsPageName, globaljobsfamilyids, rowcount, hot_countryid
hot_countryid = Request("countryid")
If hot_countryid = "" Then hot_countryid = 1
If hot_countryid = 1 Then
	familyid=""
	talentid="6"
    HotJobsPageName = "Technology"
	globaljobsfamilyids=""
	rowcount=6
%>
<!--#include file="../../hot_jobs.asp"-->
<%
	talentid="9"
%>
<!--#include file="../../hot_jobs2.asp"-->
<%
Else
	familyid = ""
	talentid=0
    HotJobsPageName = "Technology"
	globaljobsfamilyids="30,15,6,2,22,20,24,29"
	rowcount=12
End If
%>
</table>
<br><br>
</div>
<div style="float: right; margin: 0px 0px 0px 18px; padding: 0px; width: 201px;">
	<div style="width: 201px; border: 1px solid #e8e8e9; margin: 0px 0px 0px 0px; padding: 0px 0px 6px 0px;">
		<H2 class="g" style="margin: 0px 0px 0px 0px; text-align: left;"><%=JOB_SEARCH_TITLE%></H2>
		<img src="../../images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 1px 0px 6px 0px; background: #e8e8e9;" align="top"><br clear="all">
		<!-- #include file="../jobsearch.asp" -->
	</div>
<br><br>
</div>
				</td>
			</tr>
		</table>