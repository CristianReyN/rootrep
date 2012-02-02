<%
change_from = "1/30/2012 00:00:00 AM"
If trim(Request.ServerVariables("SERVER_NAME")) = "boa.hodesiq.com" _
		OR trim(Request.ServerVariables("SERVER_NAME")) = "careers.bankofamerica.com" _
		OR trim(Request.ServerVariables("SERVER_NAME")) = "bankofamerica.com" _
		Then change_from = "1/30/2012 00:00:00 AM"
SetLocale(1033)
	ATS_change = false
If now() >= cdate(change_from) Then ATS_change = true

	BAMS_URL = "https://bacfhrs.taleo.net/careersection/10200/joblist.ftl?lang=en"
	BAMS_TARGET = "_blank"
If ATS_change Then
	BAMS_URL = "http://careers.peopleclick.com/careerscp/client_boamerchantservices/external/search.do" 'BAMS_URL = "../overview/manage_your_profile.asp"
	BAMS_TARGET = "_blank"
End If
%>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top">
<img src="../images/bams.jpg" width="578" height="166" alt="Banc of America Merchant Services, LLC" title="Banc of America Merchant Services, LLC" border="0">
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<a name="skipmaincontent"></a>
		<img src="../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="373" height="100%" valign="top" style="padding: 0px <%=right_margin%>px 0px <%=left_margin_0%>px;">
<H1 style="padding: 0px;">Grow Your Career with Us</H1>

<p style="margin: 0px;"><a href="<%=BAMS_URL%>" title="" target="<%=BAMS_TARGET%>" class="bacb">Search for current career opportunities<% If BAMS_TARGET = "_blank" Then %><span class="hidden"> Link opens a new window</span><% End If%></a> within Banc of America Merchant Services, LLC.</p>
<% If ATS_change Then %>
<p class="bac note"><strong>Note:</strong> When applying for a position through the above link, you will be prompted to create a profile. Due to a system upgrade as of January 30, 2012, if you had an existing job profile with Bank of America Merchant Services, you must create a new profile at the prompt. This only applies to Bank of America Merchant Services positions. If you would like to access your prior job profile information and job application history, you may do so by accessing the Bank of America job search link in the left-hand navigation.</p>
<% End If %>
<h2 class="bacs">Join our team.</h2>
<p class="bac">Are you looking to join a growing company positioned to become the global leader in the payments industry? We are one of the most recognized and respected brands in the country, and the largest payment processor in the United States. With this winning combination, we offer outstanding career opportunities and advancement, and we promote a healthy work/life balance through special benefits and programs.</p>

<h2 class="bacs">Who we are.</h2>
<p class="bac">Bank&nbsp;of&nbsp;America Merchant Services is a premier payments company providing the technology, product portfolio and industry track record of First Data Corp. with the relationship strength, geographical coverage and prominent global brand of Bank&nbsp;of&nbsp;America to serve existing and future clients. Bank&nbsp;of&nbsp;America Merchant Services, the result of a strategic alliance between Bank&nbsp;of&nbsp;America and First Data, delivers next-generation payment solutions and industry-leading point-of-sale solutions to our clients.</p>

<h2 class="bacs">Why we are on the leading edge.</h2>
<p class="bac">As an industry leader with a powerful commitment to the merchant business, Bank&nbsp;of&nbsp;America Merchant Services delivers a comprehensive suite of innovative payment solutions to merchants of all sizes. We have industry-leading products, technology solutions, an expansive geographic footprint, 380,000 merchant relationships and 1,500 full-time associates.</p>

<p class="bac nobr">In addition, Bank&nbsp;of&nbsp;America Merchant Services offers a full suite of benefits, including:</p>
<ul>
	<li>Medical</li>
	<li>Dental</li>
	<li>Vision</li>
	<li>401(k) Plan</li>
	<li>Tuition Reimbursement</li>
	<li>Paid vacation and sick time off</li>
</ul>

<p class="bac">Bank&nbsp;of&nbsp;America Merchant Services is an Equal Opportunity Employer.</p>

				</td>
				<td width="205" height="100%" style="padding-top: 1px;" valign="top" align="right">
<a href="<%=BAMS_URL%>" title="Banc of America Merchant Services, LLC Job Search" target="<%=BAMS_TARGET%>" style="display : block;  width : 187px; height : 105px;"><img src="../images/BOA_MerchantJobSearch_2.jpg" width="187" height="105" alt="Banc of America Merchant Services, LLC Job Search" border="0"><% If BAMS_TARGET = "_blank" Then %><span class="hidden"> Link opens a new window</span><% End If%></a>
<img src="../images/clear.gif" width="185" height="5" alt="" border="0"><br clear="all">
<% If ATS_change Then %>
<a href="../learnmore/pdf/BenefitsRecruitingFlyer.pdf" title="Benefits at Banc of America Merchant Services, LLC" target="_blank" style="display : block;  width : 187px; height : 105px;"><img src="../images/BOA_MerchantBenefits_2.jpg" width="187" height="105" alt="Benefits at Banc of America Merchant Services, LLC" border="0"><span class="hidden"> Link opens a new window - PDF file</span></a>
<img src="../images/clear.gif" width="185" height="5" alt="" border="0"><br clear="all">
<% End If %>
				</td>
			</tr>
		</table>