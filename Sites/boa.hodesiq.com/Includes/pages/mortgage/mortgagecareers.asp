		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" class="divt"><img src="../../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" valign="top">
<img src="../../images/mortgage.jpg" width="578" height="166" alt="Bank of America Home Loans" title="Bank of America Home Loans" border="0">
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<img src="../../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="100%" valign="top">
<a name="skipmaincontent"></a><H1 class="hidden">Mortgage Careers</H1>
<div style="float: left; width: 357px;">
<p class="bac" style="margin-top: 0px;"><b>Bank&nbsp;of&nbsp;America&#39;s commitment to the mortgage industry is focused on continuous growth, increased teamwork, and excellent customer service.</b></p>
<p class="bac">As the nation&#39;s largest loan servicer, Bank&nbsp;of&nbsp;America Home Loans embraces a commitment to responsible home lending. Our every action is focused on Bringing Opportunity Home for those we serve, assisting new and existing customers in achieving their dreams of home ownership and preservation.</p>
<p class="bac">Individuals who choose to build a career at Bank&nbsp;of&nbsp;America Home Loans typically join in one of the following areas:</p>
<%
	If page_section = "ADA" Then
		If mpage = "areasoftalent" Then
			href = "../ada/fulfilment.asp"
		ElseIf mpage = "lob" Then
			href = "../ada/lob_fulfilment.asp"
		End If
	Else
		If mpage = "areasoftalent" Then
			href = "../mortgagecareers/fulfilment.asp"
		ElseIf mpage = "lob" Then
			href = "../mortgage/fulfilment.asp"
		End If
	End If
%>
<p class="bac"><a class="bacb" href="<%=href%>" title="Home Loans">Home Loans</a></p>
<%
	If page_section = "ADA" Then
		If mpage = "areasoftalent" Then
			href = "../ada/servicing.asp"
		ElseIf mpage = "lob" Then
			href = "../ada/lob_servicing.asp"
		End If
	Else
		If mpage = "areasoftalent" Then
			href = "../mortgagecareers/servicing.asp"
		ElseIf mpage = "lob" Then
			href = "../mortgage/servicing.asp"
		End If
	End If
%>
<p class="bac"><a class="bacb" href="<%=href%>" title=" Legacy Asset Servicing"> Legacy Asset Servicing</a></p>
<p class="bac">We encourage you to explore each of these areas and learn more about how our organization can help you achieve your own personal and professional goals.</p>
<%
'******* HOT JOB OPENING '*******
Dim familyid, talentid, HotJobsPageName, globaljobsfamilyids, rowcount
talentid=""'12
familyid="17"
HotJobsPageName = "Operations"
globaljobsfamilyids=""'globaljobsfamilyids="7,8,21,22,23,26,28,30"
rowcount=12
%>
	<H2 class="h2" style="margin: 12px <%=right_margin%>px 2px 0px;">Recently Posted Opportunities</H2>
	<table cellpadding="2" cellspacing="0" border="0" summary="" style="margin-left: <%=left_margin_0%>px;">
<!--#include file="../../../hot_jobs.asp"-->
	</table>
	<br><br>
</div>
<div style="float: right; margin: 0px 0px 0px <%=right_margin_split%>px; padding: 0px; width: 201px;">
	<div style="width: 201px; border: 1px solid #e8e8e9; margin: 0px 0px 0px 0px; padding: 0px 0px 6px 0px;">
		<H2 class="g" style="margin: 0px 0px 0px 0px; text-align: left;"><%=JOB_SEARCH_TITLE%></H2>
		<img src="../../images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 1px 0px 6px 0px; background: #e8e8e9;" align="top"><br clear="all">
		<!-- #include file="../../jobsearch.asp" -->
	</div>
<br><br>
</div>
				</td>
			</tr>
		</table>