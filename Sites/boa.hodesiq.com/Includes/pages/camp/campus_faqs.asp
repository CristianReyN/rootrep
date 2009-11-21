<%
Dim tab
tab = 1
If Request("t") <> "" Then tab = Request("t")
%>
		<img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom-3)%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="393" height="100%" valign="top" style="<%=middle_content_padding%>">
<a name="skipmaincontent"></a><h1 class="bac" style="margin-bottom: 12px;">Campus Frequently Asked Questions</h1>
<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
var tabs = new Array(), pageId = "<%=pageId%>", categoryId = "<%=categoryId%>";
tabs[0] = new Tab("U.S.","t1","../images/camp/t1.gif","../images/camp/t1a.gif","dt1");
tabs[1] = new Tab("EMEA","t2","../images/camp/t2.gif","../images/camp/t2a.gif","dt2");
tabs[2] = new Tab("Asia","t3","../images/camp/t3.gif","../images/camp/t3a.gif","dt3");
if(window.cmCreatePageviewTag) cmCreatePageviewTag(pageId+":"+tabs[<%=tab%>-1].t, null, null,categoryId);
tabs[<%=tab%>-1].coremetrics = true;
</script>
<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<img id="t1" name="t1" class="h" src="../images/camp/t1<% If tab = 1 Then %>a<% End If %>.gif" border="0" alt="" /></td>
				<td valign="top">
					<img id="t2" name="t2" class="h" src="../images/camp/t2<% If tab = 2 Then %>a<% End If %>.gif" border="0" alt="" /></td>
				<td valign="top">
					<img id="t3" name="t3" class="h" src="../images/camp/t3<% If tab = 3 Then %>a<% End If %>.gif" border="0" alt="" /></td>
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
<div id="dt1" style="display: <% If tab = 1 Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">

<h2 class="bac">How do I apply?</h2>
<p class="bac">Please visit <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a> and navigate to the "How to Apply" page. If you're not a college or advanced degree student, or if you're interested in opportunities in another area of the company, please visit <a href="<% If page_section <> "ADA" Then  %>../overview/<% End If %>overview.asp" class="bac" title="Careers Website">www.bankofamerica.com/careers</a>.</p>

<h2 class="bacs">What are the requirements to be considered for campus opportunities? </h2>
<p class="bac">Each program has individual requirements. However, to be considered for any program you must be currently enrolled in a college or advanced degree program.  If you are not currently enrolled in college to obtain a degree, you can visit <a href="<% If page_section <> "ADA" Then  %>../overview/<% End If %>overview.asp" class="bac" title="Careers Website">www.bankofamerica.com/careers</a> for opportunities available through our corporate/lateral recruiting group.</p>

<h2 class="bacs">When does Bank of America recruit students for full-time opportunities?</h2>
<p class="bac">Bank of America recruits students for full-time opportunities in September for placement following their December / May graduation date.  For example, we recruit in September of 2008 for roles that begin in June of 2009.</p>

<h2 class="bacs">When does Bank of America recruit students for internship opportunities?</h2>
<p class="bac">Bank of America recruits students for internship opportunities in February for summer placement in May/June.  For example, the students extended offers in February of 2009 will begin in May/June of 2009.</p>
 
<h2 class="bacs">Does Bank of America consider sophomores for internship opportunities?</h2>
<p class="bac">While some programs may consider sophomores for internships, we typically target rising seniors so they can be considered for full-time conversion placement.</p>

<h2 class="bacs">What is the deadline for referring a candidate to the program?</h2>
<p class="bac">All candidates you would like to be considered for full-time employment must be received by September 15th. All internship candidates must be received by January 15th.</p>

<h2 class="bacs">How can I decide what program is best for me?</h2>
<p class="bac">We have created a guided questionnaire on the campus recruiting website to help you find the opportunities that match your skill set and interests.  Please visit <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a>.</p>

<h2 class="bacs">What academic background are you looking for in candidates?</h2>
<p class="bac">We look for both traditional and non-traditional candidates and encourage candidates of all majors and backgrounds to apply. The one requirement for all: demonstrated superior academic achievement.</p>

<h2 class="bacs">Can I interview for more than one program?</h2>
<p class="bac">Yes, you can go through the interview process with more than one program. If you are interviewing for more than one program at Bank of America, please notify your recruiter(s).</p>

<h2 class="bacs">Are positions available globally, and who is eligible to fill them? </h2>
<p class="bac">Bank of America is a global company with offices in more than 35 countries worldwide. Candidates will need the appropriate work authorizations if hired into a program outside of their country of citizenship.</p>

<h2 class="bacs">If I have posted on the Bank of America Campus Recruiting site, do I need to post through my career center as well?</h2>
<p class="bac">If our opportunity is posted at your campus, you must post at both your career center and <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a>.</p>

<h2 class="bacs">Does the bank offer sponsorship?</h2>
<p class="bac">Sponsorship requirements vary by program.</p>

<h2 class="bacs">Is it appropriate to send a thank you note after my interview?</h2>
<p class="bac">An email thank you to the person who interviewed you is appropriate but not required. If you do choose to send a thank you note, make sure to tailor the message for the person you met with. It is not appropriate to send the same email to multiple interviewers.</p>

	</div>
</div>
<div id="dt2" style="display: <% If tab = 2 Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">

<h2 class="bac">How do I apply?</h2>
<p class="bac">Please visit <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="Campus Recruiting Website">www.bankofamerica.com/campusrecruiting</a> and navigate to the "How to Apply" page.  All applications for positions must be made online.  We encourage candidates to apply early.</p>

<h2 class="bacs">What are the requirements to be considered for campus opportunities?</h2>
<p class="bac">Each business area has individual requirements but candidates must demonstrate a combination of academic aptitude, quantitative skills, strategic and creative thinking and written and oral communications skills.  In addition you must have obtained or are realistically expecting to obtain a minimum 2:1 degree or equivalent.  Underlying all this, you must demonstrate dedication to a career in banking.</p>

<h2 class="bacs">When does Bank of America recruit students for full time opportunities?</h2>
<p class="bac">Bank of America recruits for full time opportunities in September, October and November for placement the following June/July.</p>

<h2 class="bacs">When does Bank of America recruit students for internship opportunities?</h2>
<p class="bac">Bank of America recruits for internship opportunities in December, January and February for a summer placement in June, July and August.</p>

<h2 class="bacs">How can I decide what program is best for me?</h2>
<p class="bac">We have created a guided questionnaire on the campus recruiting website to help you find the opportunities that match your skill set and interests.</p>

<h2 class="bacs">What academic background are you looking for in candidates?</h2>
<p class="bac">We look for both traditional and non-traditional candidates and encourage candidates of all backgrounds to apply. The one requirement for all: demonstrated superior academic achievement.</p>

<h2 class="bacs">Can I interview for more than one line of business?</h2>
<p class="bac">No - you should select just one line of business for application.</p>

<h2 class="bacs">Are positions available globally, and who is eligible to fill them?</h2>
<p class="bac">Bank of America is a global company with offices in more than 35 countries worldwide. Candidates will need the appropriate work authorizations if hired into an office outside of their country of citizenship.</p>

	</div>
</div>
<div id="dt3" style="display: <% If tab = 3 Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">

<h2 class="bac">How do I apply?</h2>
<p class="bac">We recruit candidates through the university careers centers of our target schools.  Please contact your university careers center for more details.</p>
<p class="bac">If you are not a student completing a Bachelor's or MBA degree, or are interested in opportunities in another area of the company, please visit <a href="http://www.bankofamerica.com/asiacareers" target="_blank" class="bac" title="Asia Careers Website">www.bankofamerica.com/asiacareers</a>.</p>

<h2 class="bacs">What are the requirements to be considered for campus opportunities?</h2>
<p class="bac">Each program has individual requirements; however, to be considered for any program you must be currently enrolled in a Bachelor's degree or MBA program.</p>
<p class="bac">If you are not currently completing a degree, you can visit <a href="http://www.bankofamerica.com/asiacareers" target="_blank" class="bac" title="Asia Careers Website">www.bankofamerica.com/asiacareers</a> for experienced-hire opportunities.</p>

<h2 class="bacs">When does Bank of America recruit students for full time opportunities?</h2>
<p class="bac">Tokyo &amp; Singapore:  Bank of America recruits Bachelor's degree students for full-time opportunities in the Fall of 2008 for roles that begin in June 2009.</p>
<p class="bac">India:  Bank of America recruits MBA students for full-time opportunities in the Spring of 2009 for roles that begin in April/May 2009.</p>

<h2 class="bacs">What academic background are you looking for in candidates?</h2>
<p class="bac">You should have deep and broad finance knowledge, excellent verbal and written communication skills.  In addition, you must demonstrate superior academic achievement.  If you have fluent written and spoken Asian language skills it would be an advantage.</p>

<h2 class="bacs">Are positions available in the United States, Europe or other parts of Asia, and who is eligible to fill them?</h2>
<p class="bac">Bank of America is a global company with offices in more than 20 countries worldwide.  If you are interested in opportunities in the United States, Europe or other parts of Asia, please visit <a href="<% If page_section <> "ADA" Then  %>../overview/<% End If %>overview.asp" class="bac" title="Careers Website">www.bankofamerica.com/careers</a>.</p>
<p class="bac">Candidates will need the appropriate work authorizations if hired outside of their country of citizenship.</p>

<h2 class="bacs">Is it appropriate to send a thank-you note after my interview? </h2>
<p class="bac">An e-mail thank you to the person who interviewed you is appropriate but not required. If you do choose to send a thank-you note, make sure to tailor the message for the person you met with. It is not appropriate to send the same e-mail to multiple interviewers.</p>

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