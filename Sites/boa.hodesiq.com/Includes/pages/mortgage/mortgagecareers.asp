		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" class="divt"><img src="../../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" valign="top">
<img src="../../images/mortgage.jpg" width="578" height="166" alt="Mortgage, Home Equity &amp; Insurance Services. Bank of America." title="Mortgage, Home Equity &amp; Insurance Services. Bank of America." border="0">
<div class="hidden">Mortgage, Home Equity &amp; Insurance Services. Bank of America.</div>
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
As the nation&#39;s largest mortgage lender and loan servicer, and the world&#39;s most trusted lender, Bank&nbsp;of&nbsp;America Mortgage embraces a commitment to responsible home lending. 
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
To meet this challenge, Bank&nbsp;of&nbsp;America relies on a world-class team of over 15,000 associates operating out of <a class="p" href="<%=href%>" title="Locations">locations</a> that include more than 1,000 field offices across the country.
	</p>
	<p style="margin: 12px <%=right_margin%>px 0px <%=left_margin_0%>px;">
Individuals who choose to build a career at Bank&nbsp;of&nbsp;America Mortgage typically join in one of the following areas:
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
<div style="float: right; margin: 0px 0px 0px 20px; padding: 0px; width: 201px;">
	<!-- #include file="../mortgage/mortgagevideo.asp" -->
<% ElseIf page_section <> "ADA" Then %>
<div align="right" style="float: right; margin: 0px 0px 0px 20px; padding: 0px; width: 259px;">
	<!-- #include file="../mortgage/mortgagevideo.asp" -->
	<a href="#video" class="hlink">Mortgage Careers Video</a>
<% End If  %>
	<div style="width: 201px; text-align: left; border: 1px solid #e8e8e9; background: #ffffff; margin: 12px 0px 12px 0px; padding: 0px 0px 6px 0px;">
		<H2 class="g" style="margin: 0px 0px 0px 0px;">Career Opportunities</H2>
			<img src="../../images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 0px 0px 0px 0px; background: #ffffff;" align="top"><br clear="all">
			<img src="../../images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 0px 0px 0px 0px; background: #e8e8e9;" align="top"><br clear="all">
			<p style="margin: 6px 6px 0px 6px;"><a class="left" href="../../jobsearch.aspx?jobareas=12|1&stateid=-1&cityid=-1&keywords=&SearchPage=Sp">View current jobs in Administration</a></p>
			<p style="margin: 6px 6px 0px 6px;"><a class="left" href="../../jobsearch.aspx?jobareas=12|13&stateid=-1&cityid=-1&keywords=&SearchPage=Sp">View current jobs in Credit</a></p>
			<p style="margin: 6px 6px 0px 6px;"><a class="left" href="../../jobsearch.aspx?jobareas=12|9&stateid=-1&cityid=-1&keywords=&SearchPage=Sp">View current jobs in Customer Service</a></p>
			<p style="margin: 6px 6px 0px 6px;"><a class="left" href="../../jobsearch.aspx?jobareas=12|11&stateid=-1&cityid=-1&keywords=&SearchPage=Sp">View current jobs in Marketing</a></p>
			<p style="margin: 6px 6px 0px 6px;"><a class="left" href="../../jobsearch.aspx?jobareas=12|17&stateid=-1&cityid=-1&keywords=&SearchPage=Sp">View current jobs in Operations</a></p>
			<p style="margin: 6px 6px 0px 6px;"><a class="left" href="../../jobsearch.aspx?jobareas=12|8&stateid=-1&cityid=-1&keywords=&SearchPage=Sp">View current jobs in Relationship Management</a></p>
			<p style="margin: 6px 6px 0px 6px;"><a class="left" href="../../jobsearch.aspx?jobareas=12|18&stateid=-1&cityid=-1&keywords=&SearchPage=Sp">View current jobs in Risk Evaluation</a></p>
			<p style="margin: 6px 6px 0px 6px;"><a class="left" href="../../jobsearch.aspx?jobareas=12|19&stateid=-1&cityid=-1&keywords=&SearchPage=Sp">View current jobs in Sales</a></p>
			<p style="margin: 6px 6px 0px 6px;"><a class="left" href="../../jobsearch.aspx?jobareas=12|21&stateid=-1&cityid=-1&keywords=&SearchPage=Sp">View current jobs in Technology</a></p>
	</div>
	<div style="width: 201px; text-align: center; margin: 0px; padding: 0px;">
		<!-- #include file="../../talkingatm.html" -->
	</div>
	<br><br>
</div>
				</td>
			</tr>
		</table>