		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" class="divt"><img src="../../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" valign="top">
<img src="../../images/mortgage.jpg" width="578" height="166" alt="Bank of America Home Loans." title="Bank of America Home Loans." border="0">
<div class="hidden">Bank of America Home Loans.</div>
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<img src="../../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="100%" valign="top">
<a name="skipmaincontent"></a><H1 class="hidden">Mortgage Careers</H1>
<div style="float: left; width: <% If page_section = "ADA" Then %>357<% ElseIf page_section <> "ADA" Then %>299<%End If%>px;">
	<p style="margin: <% If page_section = "ADA" Then %>12<% Else %>0<%End If%>px <%=right_margin%>px 0px <%=left_margin_0%>px;">
<b>Bank&nbsp;of&nbsp;America&#39;s commitment to the mortgage industry is focused on continuous growth, increased teamwork, and excellent customer service.</b>
	</p>
	<p style="margin: 12px <%=right_margin%>px 0px <%=left_margin_0%>px;">
As the nation&#39;s largest mortgage lender and loan servicer, and the world&#39;s most trusted lender, Bank&nbsp;of&nbsp;America Home Loans embraces a commitment to responsible home lending. 
	</p>
	<p style="margin: 12px <%=right_margin%>px 0px <%=left_margin_0%>px;">
Our every action is focused on Bringing Opportunity Home for those we serve, assisting new and existing customers in achieving their dreams of home ownership and preservation.
	</p>
<%
	If page_section = "ADA" Then
		If mpage = "areasoftalent" Then
			href = "../ada/locations.asp"
		ElseIf mpage = "lob" Then
			href = "../ada/lob_locations.asp"
		End If
	Else
		If mpage = "areasoftalent" Then
			href = "../mortgagecareers/locations.asp"
		ElseIf mpage = "lob" Then
			href = "../mortgage/locations.asp"
		End If
	End If
%>
	<p style="margin: 12px <%=right_margin%>px 0px <%=left_margin_0%>px;">
To meet this challenge, Bank&nbsp;of&nbsp;America relies on a world-class team of associates operating out of <a class="p" href="<%=href%>" title="Locations">locations</a> across the country.
	</p>
	<p style="margin: 12px <%=right_margin%>px 0px <%=left_margin_0%>px;">
Individuals who choose to build a career at Bank&nbsp;of&nbsp;America Home Loans typically join in one of the following areas:
	</p>
	<p style="margin: 12px <%=right_margin%>px 0px <%=left_margin_0%>px;">
	<ul>
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
		<li><a class="p" href="<%=href%>" title="Fulfillment">Fulfillment</a></li>
<%
	If page_section = "ADA" Then
		If mpage = "areasoftalent" Then
			href = "../ada/homeequity.asp"
		ElseIf mpage = "lob" Then
			href = "../ada/lob_homeequity.asp"
		End If
	Else
		If mpage = "areasoftalent" Then
			href = "../mortgagecareers/homeequity.asp"
		ElseIf mpage = "lob" Then
			href = "../mortgage/homeequity.asp"
		End If
	End If
%>
		<li><a class="p" href="<%=href%>" title="Home Equity/Reverse Mortgages">Home Equity/Reverse Mortgages</a></li>
<%
	If page_section = "ADA" Then
		If mpage = "areasoftalent" Then
			href = "../ada/insurancem.asp"
		ElseIf mpage = "lob" Then
			href = "../ada/lob_insurance.asp"
		End If
	Else
		If mpage = "areasoftalent" Then
			href = "../mortgagecareers/insurance.asp"
		ElseIf mpage = "lob" Then
			href = "../mortgage/insurance.asp"
		End If
	End If
%>
		<li><a class="p" href="<%=href%>" title="Insurance">Insurance</a></li>
<%
	If page_section = "ADA" Then
		If mpage = "areasoftalent" Then
			href = "../ada/mortgagesales.asp"
		ElseIf mpage = "lob" Then
			href = "../ada/lob_mortgagesales.asp"
		End If
	Else
		If mpage = "areasoftalent" Then
			href = "../mortgagecareers/mortgagesales.asp"
		ElseIf mpage = "lob" Then
			href = "../mortgage/mortgagesales.asp"
		End If
	End If
%>
		<li><a class="p" href="<%=href%>" title="Mortgage Sales">Mortgage Sales</a></li>
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
		<li><a class="p" href="<%=href%>" title="Servicing">Servicing</a></li>
	</ul>
	</p>
	<p style="margin: 12px <%=right_margin%>px 0px <%=left_margin_0%>px;">
We encourage you to explore each of these areas and learn more about how our organization can help you achieve your own personal and professional goals.
	</p>
<%
Dim familyid, rowcount
talentid=12
rowcount=6
%>
	<H2 class="h2" style="margin: 12px <%=right_margin%>px 2px 0px;">New Opportunities</H2>
	<table cellpadding="2" cellspacing="0" border="0" summary="" style="margin-left: <%=left_margin_0%>px;">
<!--#include file="../../../hot_jobs.asp"-->
	</table>
	<br><br>
</div>
<% If page_section = "ADA" Then %>
<div style="float: right; margin: 0px 0px 0px 18px; padding: 0px; width: 203px;">
	<!-- #include file="../mortgage/mortgagevideo.asp" -->
<% ElseIf page_section <> "ADA" Then %>
<div align="right" style="float: right; margin: 0px 0px 0px 20px; padding: 0px; width: 259px;">
	<!-- #include file="../mortgage/mortgagevideo.asp" -->
	<a href="#video" class="hlink">Mortgage Careers Video</a>
<% End If  %>
<% If spage = "mortgagecareers" Then %>

<% Else  %>

<% End If  %>
<div style="width: 201px; border: 1px solid #e8e8e9; margin: 12px 0px 0px 0px; padding: 0px 0px 6px 0px;">
	<H2 class="g" style="margin: 0px 0px 0px 0px; text-align: left;"><%=JOB_SEARCH_TITLE%></H2>
	<img src="../../images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 1px 0px 6px 0px; background: #e8e8e9;" align="top"><br clear="all">
<!-- #include file="../../jobsearch.asp" -->
</div>
<br><br>
				</td>
			</tr>
		</table>