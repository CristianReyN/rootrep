<%
Dim tab
tab = 1
If Request("t") <> "" Then tab = Request("t")
%>
		<img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom-3)%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="393" height="100%" valign="top" style="<%=middle_content_padding%>">
<a name="skipmaincontent"></a><H1 class="bac"<% If page_section <> "ADA" Then %> style="margin-bottom: 12px;"<% End If %>>Campus Frequently Asked Questions</H1>
		<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
var tab = <%=tab%>, cname = "tabstate_cf";
var tabstate = getTabState(cname);
if(tabstate && tabstate != tab) self.location.replace("<%=page_self%>?t="+tabstate);
var tabs = new Array(), pageId = "<%=pageId%>", categoryId = "<%=categoryId%>";
tabs[0] = new Tab("Americas","t1","../images/camp/t_americas.gif","../images/camp/t_americas_a.gif","dt1","t1h");
tabs[1] = new Tab("EMEA","t2","../images/camp/t_emea.gif","../images/camp/t_emea_a.gif","dt2","t2h");
tabs[2] = new Tab("Asia Pacific","t3","../images/camp/t_asia_pacific.gif","../images/camp/t_asia_pacific_a.gif","dt3","t3h");
if(window.cmCreatePageviewTag) cmCreatePageviewTag(pageId+":"+tabs[tab-1].t, null, null,categoryId);
tabs[tab-1].coremetrics = true;
</script>
		<% End If %>
<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top">
		<% If page_section = "ADA" Then %>
		<a name="t1"></a>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<img src="../images/camp/tlt.gif" border="0" alt="" /></td>
				<td width="100%" background="../images/camp/trtb.gif" valign="top" align="right">
					<img src="../images/camp/trt.gif" border="0" alt="" /></td>
			</tr>
		</table>
		<% Else %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<img id="t1" name="t1" class="h" src="../images/camp/t_americas<% If tab = 1 Then %>_a<% End If %>.gif" border="0" alt="Campus Frequently Asked Questions Americas – includes US &amp; Canada" /></td>
				<td valign="top">
					<img id="t2" name="t2" class="h" src="../images/camp/t_emea<% If tab = 2 Then %>_a<% End If %>.gif" border="0" alt="Campus Frequently Asked Questions EMEA" /></td>
				<td valign="top">
					<img id="t3" name="t3" class="h" src="../images/camp/t_asia_pacific<% If tab = 3 Then %>_a<% End If %>.gif" border="0" alt="Campus Frequently Asked Questions Asia Pacific" /></td>
				<td width="100%" background="../images/camp/trtb.gif" valign="top" align="right">
					<img src="../images/camp/trt.gif" border="0" alt="" /></td>
			</tr>
		</table>
		<% End If %>
	</td>
</tr>
<tr>
	<td valign="top">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td background="../images/camp/tl.gif" valign="top">
					<img src="../images/camp/tl.gif" width="6" height="10" border="0" alt="" /></td>
				<td width="100%" valign="top">
		<% If page_section <> "ADA" Then %>
<H2 class="hidden">Campus Frequently Asked Questions Americas – includes US &amp; Canada</H2>
<a href="#" id="t1h" class="hide-tab" title="Campus Frequently Asked Questions Americas – includes US &amp; Canada">Campus Frequently Asked Questions Americas – includes US &amp; Canada</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px 0px 0px;">
		<tr>
			<td valign="top" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Campus Frequently Asked Questions Americas – includes US &amp; Canada</H2></td>
		</tr>
		<tr>
			<td valign="top" align="right">
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t2" title="Campus Frequently Asked Questions EMEA" class="bacb">Campus Frequently Asked Questions EMEA</a></H2>
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t3" title="Campus Frequently Asked Questions Asia Pacific" class="bacb">Campus Frequently Asked Questions Asia Pacific</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt1" style="display: <% If tab = 1 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">

<H3 class="bac">How do I apply?</H3>
<p class="bac">Please visit <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a> and navigate to the "How to Apply" page. If you&#39;re not a college/university or advanced degree student, or if you&#39;re interested in opportunities in another area of the company, please visit <a href="<% If page_section <> "ADA" Then  %>../overview/<% End If %>overview.asp" class="bac" title="Careers Website">www.bankofamerica.com/careers</a>.</p>

<H3 class="bacs">What are the requirements to be considered for campus opportunities?</H3>
<p class="bac">Each program has individual requirements. However, to be considered for any program you must be currently enrolled in a college/university or advanced degree program. If you are not currently enrolled in college/university to obtain a degree, you can visit <a href="<% If page_section <> "ADA" Then  %>../overview/<% End If %>overview.asp" class="bac" title="Careers Website">www.bankofamerica.com/careers</a> for opportunities available through our corporate/lateral recruiting group.</p>

<H3 class="bacs">When does Bank&nbsp;of&nbsp;America recruit students for full-time opportunities?</H3>
<p class="bac">Bank&nbsp;of&nbsp;America recruits students for full-time opportunities in September for placement following their December / May graduation date. For example, we recruit in September of 2009 for roles that begin in June of 2010.</p>

<H3 class="bacs">When does Bank&nbsp;of&nbsp;America recruit students for internship opportunities?</H3>
<p class="bac">Bank&nbsp;of&nbsp;America recruits students for internship opportunities in February for summer placement in May/June. For example, the students extended offers in February of 2010 will begin in May/June of 2010.</p>

<H3 class="bacs">Does Bank&nbsp;of&nbsp;America consider sophomores for internship opportunities?</H3>
<p class="bac">While some programs may consider sophomores for internships, we typically target rising seniors so they can be considered for full-time conversion placement.</p>

<H3 class="bacs">What is the deadline for referring a candidate to the campus program?</H3>
<p class="bac">All candidates you would like to be considered for full-time employment must be received by September 15th. All internship candidates must be received by January 15th.</p>

<H3 class="bacs">How can I decide what program is best for me?</H3>
<p class="bac">We have created a guided questionnaire on the campus recruiting website called the Career Fit Tool to help you find the opportunities that match your skill set and interests. Please visit <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a>.</p>

<H3 class="bacs">What academic background are you looking for in candidates?</H3>
<p class="bac">We look for both traditional and non-traditional candidates and encourage candidates of all majors and backgrounds to apply. The one requirement for all: demonstrated superior academic achievement.</p>

<H3 class="bacs">Can I interview for more than one program?</H3>
<p class="bac">Yes, you can go through the interview process with more than one program. If you are interviewing for more than one program at Bank&nbsp;of&nbsp;America, please notify your recruiter(s).</p>

<H3 class="bacs">Are positions available globally, and who is eligible to fill them?</H3>
<p class="bac">Bank&nbsp;of&nbsp;America is a global company with offices in more than 40 countries worldwide. Candidates will need the appropriate work authorizations if hired into a program outside of their country of citizenship.</p>


<H3 class="bacs">If I have posted on the Bank&nbsp;of&nbsp;America Campus Recruiting site, do I need to post through my career center as well? (US only excludes Canada)</H3>
<p class="bac">If our opportunity is posted at your campus, you must post at both your career center and <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a>.</p>

<H3 class="bacs">Does the bank offer sponsorship for opportunities in the U.S.?</H3>
<p class="bac">The bank will not offer sponsorship beginning February 17, 2009 and ending February 17, 2011 under the new Immigration Sponsorship (Troubled Asset Relief Program = TARP) funding laws.</p>

<H3 class="bacs">Is it appropriate to send a thank you note after my interview?</H3>
<p class="bac">An email thank you to the person who interviewed you is appropriate but not required. If you do choose to send a thank you note, make sure to tailor the message for the person you met with. It is not appropriate to send the same email to multiple interviewers.</p>
	</div>
</div>
		<% If page_section = "ADA" Then %>
				</td>
				<td background="../images/camp/tr.gif" valign="top">
					<img src="../images/camp/tr.gif" width="6" height="4" border="0" alt="" /></td>
			</tr>
			<tr>
				<td valign="top">
					<img src="../images/camp/tlb.gif" border="0" alt="" /></td>
				<td width="100%" background="../images/camp/tb.gif" valign="top">
					<img src="../images/camp/tb.gif" height="6" width="100%"  border="0" alt="" /></td>
				<td valign="top">
					<img src="../images/camp/trb.gif" border="0" alt="" /></td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td valign="top">
		<a name="t2"></a>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" style="margin-top: 0px;" summary="">
			<tr>
				<td valign="top">
					<img src="../images/camp/tlt.gif" border="0" alt="" /></td>
				<td width="100%" background="../images/camp/trtb.gif" valign="top" align="right">
					<img src="../images/camp/trt.gif" border="0" alt="" /></td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td valign="top">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td background="../images/camp/tl.gif" valign="top">
					<img src="../images/camp/tl.gif" width="6" height="10" border="0" alt="" /></td>
				<td width="100%" valign="top">
		<% End If %>
		<% If page_section <> "ADA" Then %>
<H2 class="hidden">Campus Frequently Asked Questions EMEA</H2>
<a href="#" id="t2h" class="hide-tab" title="Campus Frequently Asked Questions EMEA">Campus Frequently Asked Questions EMEA</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="top" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Campus Frequently Asked Questions EMEA</H2></td>
		</tr>
		<tr>
			<td valign="top" align="right">
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t1" title="Campus Frequently Asked Questions Americas – includes US &amp; Canada" class="bacb">Campus Frequently Asked Questions Americas – includes US &amp; Canada</a></H2>
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t3" title="Campus Frequently Asked Questions Asia Pacific" class="bacb">Campus Frequently Asked Questions Asia Pacific</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt2" style="display: <% If tab = 2 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
<H3 class="bac">How do I apply?</H3>
<p class="bac">Please visit <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a> and navigate to the "How to Apply" page. All applications for positions must be made online. CVs are not accepted for analyst roles. For MBA and PhD positions, you are required to upload your CV. We encourage candidates to apply early.</p>

<H3 class="bacs">What are the requirements to be considered for campus opportunities?</H3>
<p class="bac">Each business area has individual requirements but candidates must demonstrate a combination of academic aptitude, quantitative skills, strategic and creative thinking and written and oral communication skills. In addition you must have obtained or are realistically expecting to obtain a minimum 2:1 degree or equivalent for analyst roles. For MBA and PhD positions, completion of an MBA or relevant PhD is required. Underlying all this, you must demonstrate dedication to a career in banking.</p>

<H3 class="bacs">When does Bank&nbsp;of&nbsp;America recruit students for full time opportunities?</H3>
<p class="bac">Bank&nbsp;of&nbsp;America recruits for full time opportunities in September, October and November for placement the following June/July.</p>

<H3 class="bacs">When does Bank&nbsp;of&nbsp;America recruit students for internship opportunities?</H3>
<p class="bac">Bank&nbsp;of&nbsp;America recruits for internship opportunities in December, January and February for a summer placement.</p>

<H3 class="bacs">How can I decide what program is best for me?</H3>
<p class="bac">We have created a guided questionnaire (Career Fit Tool) on the campus recruiting website to help you find the opportunities that match your skill set and interests. Please visit <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a>.</p>

<H3 class="bacs">What academic background are you looking for in candidates?</H3>
<p class="bac">We recruit from all degree disciplines. Strong academic qualifications are important, as are initiative, strategic and creative thinking, communication skills and a genuine interest in the financial markets. For quantitative positions, strong mathematical and analytical skills are required.</p>

<H3 class="bacs">Can I apply to multiple offices and divisions?</H3>
<p class="bac">No &mdash; you may only apply to one office and one division.</p>

<H3 class="bacs">Are positions available globally, and who is eligible to fill them?</H3>
<p class="bac">Bank&nbsp;of&nbsp;America is a global company with offices in more than 40 countries worldwide. Candidates may apply to the Americas, EMEA and Asia Pacific regions.</p>

<H3 class="bacs">I graduated last year. Am I eligible to apply for a Summer Internship?</H3>
<p class="bac">No &mdash; candidates must be in their penultimate year of study to be eligible to apply for a summer internship.</p>

<H3 class="bacs">If I apply for a position in the Americas or Asia Pacific region, would I attend an assessment centre and interview here in London?</H3>
<p class="bac">In some circumstances, candidates are able to be interviewed in London in person. Alternatives are a telephone/video interview.</p>
	</div>
</div>
		<% If page_section = "ADA" Then %>
				</td>
				<td background="../images/camp/tr.gif" valign="top">
					<img src="../images/camp/tr.gif" width="6" height="4" border="0" alt="" /></td>
			</tr>
			<tr>
				<td valign="top">
					<img src="../images/camp/tlb.gif" border="0" alt="" /></td>
				<td width="100%" background="../images/camp/tb.gif" valign="top">
					<img src="../images/camp/tb.gif" height="6" width="100%"  border="0" alt="" /></td>
				<td valign="top">
					<img src="../images/camp/trb.gif" border="0" alt="" /></td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td valign="top">
		<a name="t3"></a>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" style="margin-top: 0px;" summary="">
			<tr>
				<td valign="top">
					<img src="../images/camp/tlt.gif" border="0" alt="" /></td>
				<td width="100%" background="../images/camp/trtb.gif" valign="top" align="right">
					<img src="../images/camp/trt.gif" border="0" alt="" /></td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td valign="top">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td background="../images/camp/tl.gif" valign="top">
					<img src="../images/camp/tl.gif" width="6" height="10" border="0" alt="" /></td>
				<td width="100%" valign="top">
		<% End If %>
		<% If page_section <> "ADA" Then %>
<H2 class="hidden">Campus Frequently Asked Questions Asia Pacific</H2>
<a href="#" id="t3h" class="hide-tab" title="Campus Frequently Asked Questions Asia Pacific">Campus Frequently Asked Questions Asia Pacific</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="top" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Campus Frequently Asked Questions Asia Pacific</H2></td>
		</tr>
		<tr>
			<td valign="top" align="right">
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t1" title="Campus Frequently Asked Questions Americas – includes US &amp; Canada" class="bacb">Campus Frequently Asked Questions Americas – includes US &amp; Canada</a></H2>
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t2" title="Campus Frequently Asked Questions EMEA" class="bacb">Campus Frequently Asked Questions EMEA</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt3" style="display: <% If tab = 3 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">

<H3 class="bac">How do I apply?</H3>
<p class="bac">Please visit <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a> and navigate to the "How to Apply" page. If you&#39;re not a college/university or advanced degree student, or if you&#39;re interested in opportunities in another area of the company, please visit <a href="<% If page_section <> "ADA" Then  %>../overview/<% Else  %>../ada/<% End If %>overview.asp" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/careers</a>.</p>

<H3 class="bacs">What are the requirements to be considered for campus opportunities?</H3>
<p class="bac">Each program has individual requirements; however, to be considered for any program you must be currently enrolled in a Bachelor/Master/PhD degree or MBA program.
<br><br>
If you are not currently completing a degree, you can visit <a href="http://www.bankofamerica.com/asiacareers" class="bac" title="www.bankofamerica.com/asiacareers">www.bankofamerica.com/asiacareers</a> for experienced-hire opportunities.</p>

<H3 class="bacs">When does Bank&nbsp;of&nbsp;America recruit students for full time opportunities?</H3>
<p class="bac"><b>Australia:</b> Bank&nbsp;of&nbsp;America recruits Bachelor&#39;s degree students for full-time opportunities in January to March of 2010 for roles that begin in January 2011.</p>
<p class="bac"><b>Japan:</b> Bank&nbsp;of&nbsp;America recruits through two different channels for full-time opportunities, Japanese universities (Bachelor&#39;s degree students) and overseas universities (Bachelor&#39;s degree and MBA students).</p>
<p class="bac" style="margin-left: 24px;"><b>Japanese universities</b> &mdash; Application between late October 2009 to January 2010.</p>
<p class="bac" style="margin-left: 24px;"><b>Overseas universities</b> &mdash; Application between September to October 2009.  Finalists will be invited to the Boston Career Forum (in November) for final round interviews.</p>
<p class="bac"><b>Singapore:</b> Bank&nbsp;of&nbsp;America recruits Bachelor&#39;s degree students for full-time opportunities in September/October 2009 for roles that begin in 2010.</p>

<H3 class="bacs">When does Bank&nbsp;of&nbsp;America recruit students for internship opportunities?</H3>
<p class="bac"><b>Australia:</b> Bank&nbsp;of&nbsp;America recruits Bachelor&#39;s degree students for summer opportunities in July of 2009 for an internship from December 2009 to January 2010.</p>
<p class="bac"><b>Hong Kong:</b> Bank&nbsp;of&nbsp;America recruits Bachelor&#39;s degree and MBA students for summer opportunities between September to December 2009 for an internship from June to August 2010.</p>
<p class="bac"><b>Japan:</b> Bank&nbsp;of&nbsp;America recruits Bachelor/Master/PhD degree and MBA students for summer opportunities in September/October 2009 for an internship from June to August 2010.  Finalists will be invited to the Boston Career Forum (in November) for final round interviews.</p>
<p class="bac"><b>Singapore:</b> Bank&nbsp;of&nbsp;America recruits Bachelor&#39;s degree students for summer opportunities in September/October 2009 for an internship from May to July 2010.</p>

<H3 class="bacs">Does Bank&nbsp;of&nbsp;America consider sophomores for internship opportunities?</H3>
<p class="bac">No, we typically target penultimate year students/rising seniors so they can be considered for full-time conversion placement.</p>

<H3 class="bacs">How can I decide what program is best for me?</H3>
<p class="bac">We have created a guided questionnaire on the campus recruiting website called the Career Fit Tool to help you find the opportunities that match your skill set and interests. Please visit <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a>. </p>

<H3 class="bacs">What academic background are you looking for in candidates?</H3>
<p class="bac">You should have a consistent track record of strong academic qualifications, and you will need to demonstrate drive and a genuine interest in the area you apply to.  In addition, you should possess excellent verbal and written communication skills.</p>

<H3 class="bacs">Do I have to be able to speak/read/write a local language in order to work in Asia?</H3>
<p class="bac">Local language skills are a real benefit; however, they are not a requirement (English is the common business language used in Bank&nbsp;of&nbsp;America).  Some opportunities in Japan will require business level Japanese language skills which are necessary for interacting with clients.</p>

<H3 class="bacs">Can I interview for more than one program?</H3>
<p class="bac">This will vary depending on the region. Please check the regional site and if you have any questions please notify your recruiter(s).</p>

<H3 class="bacs">Are positions available globally, and who is eligible to fill them?</H3>
<p class="bac">Bank&nbsp;of&nbsp;America is a global company with offices in more than 40 countries worldwide. Candidates will need the appropriate work authorizations if hired into a program outside of their country of citizenship.</p>

<H3 class="bacs">Are there opportunities to visit the Asia offices?</H3>
<p class="bac">Open House events can be organized in the Hong Kong office for selected schools participating in the Asia Trek programs.  These events are limited to specific dates.  Please contact the relevant recruiter to enquire.</p>

<H3 class="bacs">If I have posted on the Bank&nbsp;of&nbsp;America Campus Recruiting site, do I need to post through my career center as well?</H3>
<p class="bac">For Asia opportunities you do not need to post through your career center as we only accept direct online applications via <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a>.</p>

<H3 class="bacs">Is it appropriate to send a thank you note after my interview?</H3>
<p class="bac">An e-mail thank you to the person who interviewed you is appropriate but not required. If you do choose to send a thank you note, make sure to tailor the message for the person you met with. It is not appropriate to send the same e-mail to multiple interviewers.</p>

	</div>
</div>
				</td>
				<td background="../images/camp/tr.gif" valign="top">
					<img src="../images/camp/tr.gif" width="6" height="4" border="0" alt="" /></td>
			</tr>
			<tr>
				<td valign="top">
					<img src="../images/camp/tlb.gif" border="0" alt="" /></td>
				<td width="100%" background="../images/camp/tb.gif" valign="top">
					<img src="../images/camp/tb.gif" height="6" width="100%"  border="0" alt="" /></td>
				<td valign="top">
					<img src="../images/camp/trb.gif" border="0" alt="" /></td>
			</tr>
		</table>
	</td>
</tr>
</table>
<br>
				</td>
				<td width="185" height="100%" style="padding-top: 7px;" valign="top">
<!-- #include file="../../camprnav.asp" -->
				</td>
			</tr>
		</table>