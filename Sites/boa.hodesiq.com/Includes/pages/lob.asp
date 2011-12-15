		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top">
<img src="../images/lob.jpg" width="578" height="166" alt="Lines of Business. Explore a career with the Bank of Opportunity." title="Lines of Business. Explore a career with the Bank of Opportunity." border="0">
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<a name="skipmaincontent"></a><H1 class="hidden">Lines of Business</H1>
		<img src="../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="373" height="100%" valign="top" style="<%=middle_content_padding%>">
<p style="margin: 0px 0px 12px 0px;">There&#39;s opportunity everywhere you look at Bank&nbsp;of&nbsp;America. No matter what your specialty is, you&#39;ll find unbounded possibilities to expand your skills and grow your career.
<br><br>
Opportunity awaits. Learn more about:
</p>
<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../learnmore/" %>
<a href="<%	if page_section <> "ADA" then%>../learnmore/lobgcsbb.asp<% Else %>lobgcsbb.asp<%End If %>" class="left2" title="Global Consumer &amp; Small Business Banking">Global Consumer &amp; Small Business Banking</a>

<br><br>
<a href="<%	if page_section <> "ADA" then%>../gcib/<% Else %>lobgcib.asp<%End If %>" class="left2" title="Global Banking &amp; Markets">Global Banking &amp; Markets</a>
<br><br>
<a href="<%	if page_section <> "ADA" then%>../globalcommercialbanking/<% Else %>lobgcb.asp<%End If %>" class="left2" title="Global Commercial Banking">Global Commercial Banking</a>
<br><br>
<a href="<%	if page_section <> "ADA" then%>../wealthmanagement/<% Else %>lobgwim.asp<%End If %>" class="left2" title="Global Wealth &amp; Investment Management">Global Wealth &amp; Investment Management</a>
<br><br>
<a href="<%	if page_section <> "ADA" then%>../financialadvisor/<% Else %>lobfa.asp<%End If %>" class="left2" title="Financial Advisor">Financial Advisor</a>


<br><br>
<a href="<%	if page_section <> "ADA" then%>../technology/<% Else %>lobgto.asp<%End If %>" class="left2" title="Global Technology &amp; Operations">Global Technology &amp; Operations</a>
<br><br>
<a href="<% Response.write href_pre %>lobcss.asp" class="left2" title="Corporate Staff &amp; Support">Corporate Staff &amp; Support</a>
<br><br>
<a href="<%	if page_section <> "ADA" then%>../mortgage/<% Else %>lob_mortgage.asp<% End If %>" class="left2" title="Mortgage">Mortgage</a>
<br><br>
				</td>
				<td width="205" height="100%" valign="top">
<div style="border: 1px solid #e8e8e9; margin: 0px 0px 12px 0px; padding: 0px 0px 6px 0px;">
	<H2 class="g" style="margin: 0px 0px 0px 0px;"><%=JOB_SEARCH_TITLE%></H2>
	<img src="../images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 1px 0px 6px 0px; background: #e8e8e9;" align="top"><br clear="all">
<!-- #include file="../jobsearch.asp" -->
</div><% twitter_standalone = true %>
<div style="text-align: center; margin: 0px; padding: 0px;">
<!-- #include file="../twitter.asp" -->
</div>
<br><br>
				</td>
			</tr>
		</table>