<%
Function InArray(item,A)
	Dim i
	For i=0 To UBound(A) Step 1
		If A(i) = item Then
			InArray=True
			Exit Function
		End If
	Next
	InArray=False
End Function

Function howToApply (program)
	
	If ( program.Item("region") = ASIA AND program.Item("degree") = ASSOCIATE AND program.Item("fulltime_intern") = FULLTIME) OR _
		InArray(program.Item("url"), Array( _
			"asiafs-global-capital-markets-associate-program.asp", _
			"asiafs-global-investment-banking-associate-program.asp", _
			"asiafs-global-markets-sales-trading-associate-program.asp", _
			"asiafs-global-research-associate-program.asp" _
		)) Then
%>
<p class="bac">In order to be considered a candidate for this opportunity, you must apply via <a href="http://www.baml.com/CampusAsiaPac"class="bac" target="_blank">www.baml.com/CampusAsiaPac<span class="hidden"> Link opens a new window</span></a>. Please note application dates/deadlines vary depending on location of the program, ensure you check and apply in a timely manner as late submissions will not be considered. <a href="https://static.wcn.co.uk/company/ml/apply_now.html" class="bac" target="_blank">To apply<span class="hidden"> Link opens a new window</span></a>  now, first sign in as a new or returning user. If you don't have an existing account, you'll need to register as a new user. Then, complete your Candidate Profile and designate your program(s) of interest. Please note that in order for your application to be considered complete, you must reach the final &ldquo;Thank You&rdquo; page. For Asia opportunities you are not required to apply through your Career Services or through an on-campus resume drop.</p>
<%
	ElseIf ( program.Item("region") = ASIA) OR _
			InArray(program.Item("url"), Array( _
			"asiafn-chief-financial-office-analyst-program.asp", _
			"asiafn-global-capital-markets-analyst-program.asp", _
			"asiafn-global-corporate-banking-analyst-program.asp", _
			"asiafn-global-investment-banking-analyst-program.asp", _
			"asiafn-global-markets-sales-trading-analyst-program.asp", _
			"asiafn-global-research-analyst-program.asp", _
			"asiafn-global-treasury-services-analyst-program.asp", _
			"asiafn-global-wealth-investment-management-analyst-program.asp", _
			"asiafn-operations-analyst-program.asp", _
			"asiafn-technology-developer-analyst-program.asp", _
			"asiafn-technology-infrastructure-leadership-development-rotation-program.asp", _
			"asiain-global-capital-markets-summer-analyst-program.asp", _
			"asiain-global-corporate-banking-summer-analyst-program.asp", _
			"asiain-global-investment-banking-summer-analyst-program.asp", _
			"asiain-global-markets-sales-trading-summer-analyst-program.asp", _
			"asiain-global-research-summer-analyst-program.asp", _
			"asiain-global-treasury-services-summer-analyst-program.asp", _
			"asiain-global-wealth-investment-management-summer-analyst-program.asp", _
			"asiain-operations-summer-analyst-program.asp", _
			"asiain-technology-developer-analyst-internship-program.asp", _
			"asiain-technology-infrastructure-summer-analyst-program.asp", _
			"asiais-global-capital-markets-summer-associate-program.asp", _
			"asiais-global-investment-banking-summer-associate-program.asp", _
			"asiais-global-markets-sales-trading-summer-associate-program.asp", _
			"asiais-global-research-summer-associate-program.asp" _
		)) Then
%>
<p class="bac">In order to be considered a candidate for this opportunity, you must apply via <a href="http://www.baml.com/CampusAsiaPac"class="bac" target="_blank">www.baml.com/CampusAsiaPac<span class="hidden"> Link opens a new window</span></a>. Please note application dates/deadlines vary depending on location of the program, ensure you check and apply in a timely manner as late submissions will not be considered. <a href="https://static.wcn.co.uk/company/ml/apply_now.html" class="bac" target="_blank">To apply<span class="hidden"> Link opens a new window</span></a> now, first sign in as a new or returning user. If you don't have an existing account, you'll need to register as a new user. Then, complete your Candidate Profile and designate your program(s) of interest. Please note that in order for your application to be considered complete, you must reach the final &ldquo;Thank You&rdquo; page. Shortly after your application has been completed, you should receive an invitation to conduct an online test, please ensure you follow instructions and complete the test within 72 hours.  For Asia opportunities you are not required to apply through your Career Services or through an on-campus resume drop.</p>
<%
	ElseIf ( program.Item("region") = AMERICAS AND program.Item("sub_region") = CANADA) OR _
			InArray(program.Item("url"), Array( _
			"cafn-global-investment-banking-capital-markets-analyst-program.asp", _
			"cafn-global-markets-sales-trading-analyst-program.asp", _
			"cafn-technology-analyst-program.asp", _
			"cafs-global-investment-banking-capital-markets-associate-program.asp", _
			"cafs-global-markets-sales-trading-associate-program.asp", _
			"cain-global-investment-banking-capital-markets-summer-analyst-program.asp", _
			"cain-global-markets-sales-trading-summer-analyst-program.asp", _
			"cain-research-analyst-summer-program.asp", _
			"cais-global-investment-banking-capital-markets-summer-associate-program.asp", _
			"cais-global-markets-sales-trading-summer-associate-program.asp" _
		)) Then
%>
<p class="bac">In order to be considered a candidate for this opportunity, you must apply via <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="">www.bankofamerica.com/campusrecruiting</a> . To <a href="<% If page_section <> "ADA" Then  %>../learnmore/<% Else  %>../ada/<% End If %>sendresume.asp" class="bac" title="" target="<%=HOWTOAPPLY_TARGET%>">submit your profile<% If HOWTOAPPLY_TARGET = "_blank" Then %><span class="hidden"> Link opens a new window</span><% End If%></a>, first sign in as a new or returning user. If you don&#39;t have an existing account, you&#39;ll need to register as a new user. Then, complete your Candidate Profile and designate your program(s) of interest. Please note that in order for your application to be considered complete, you must reach the final &ldquo;Thank You&rdquo; page. In addition, please follow any procedures set forth through the Career Services office on your campus.</p>
<%
	ElseIf program.Item("region") = EMEA OR _
			InArray(program.Item("url"), Array( _
			"emeafn-card-services-analyst-programme.asp", _
			"emeafn-compliance-analyst-programme.asp", _
			"emeafn-global-banking-markets-credit-risk-management-analyst-programme.asp", _
			"emeafn-global-capital-markets-analyst-programme.asp", _
			"emeafn-global-commercial-corporate-investment-banking-technology-operations-analyst-programme.asp", _
			"emeafn-global-corporate-banking-analyst-programme.asp", _
			"emeafn-global-investment-banking-analyst-programme.asp", _
			"emeafn-global-markets-analyst-programme.asp", _
			"emeafn-global-markets-operations-middle-office-analyst-programme.asp", _
			"emeafn-global-quantitative-research-analyst-programme.asp", _
			"emeafn-global-research-analyst-programme.asp", _
			"emeafn-global-treasury-solutions-analyst-programme.asp", _
			"emeafn-human-resources-analyst-programme.asp", _
			"emeafn-international-corporate-treasury-analyst-programme.asp", _
			"emeafn-market-risk-analyst-programme.asp", _
			"emeafn-merrill-lynch-wealth-management-analyst-programme.asp", _
			"emeafn-quantitative-management-analyst-programme.asp", _
			"emeafn-technology-analyst-programme.asp", _
			"emeafn-technology-infrastructure-analyst-programme.asp", _
			"emeafs-global-corporate-investment-banking-associate-programme.asp", _
			"emeafs-global-markets-associate-programme.asp", _
			"emeafs-global-markets-quantitative-analytics-associate-programme.asp", _
			"emeafs-global-research-associate-programme.asp", _
			"emeain-compliance-summer-analyst-programme.asp", _
			"emeain-enterprise-technology-delivery-analyst-fixed-term-placement-12-months.asp", _
			"emeain-global-banking-markets-credit-risk-management-summer-analyst-programme.asp", _
			"emeain-global-capital-markets-analyst-fixed-term-placement-3-6-months.asp", _
			"emeain-global-capital-markets-summer-analyst-programme.asp", _
			"emeain-global-commercial-corporate-investment-banking-technology-operations-summer-analyst-programme.asp", _
			"emeain-global-corporate-banking-analyst-fixed-term-placement-3-6-months.asp", _
			"emeain-global-corporate-banking-summer-analyst-programme.asp", _
			"emeain-global-investment-banking-analyst-fixed-term-placement-3-6-months.asp", _
			"emeain-global-investment-banking-summer-analyst-programme.asp", _
			"emeain-global-markets-analyst-fixed-term-placement-3-6-months.asp", _
			"emeain-global-markets-operations-middle-office-summer-analyst-programme.asp", _
			"emeain-global-markets-sales-trading-summer-analyst-programme.asp", _
			"emeain-global-quantitative-research-summer-analyst-programme.asp", _
			"emeain-global-research-analyst-fixed-term-placement-3-6-months.asp", _
			"emeain-global-research-summer-analyst-programme.asp", _
			"emeain-global-treasury-solutions-fixed-term-placement-3-6-months.asp", _
			"emeain-global-treasury-solutions-summer-analyst-programme.asp", _
			"emeain-human-resources-summer-analyst-programme.asp", _
			"emeain-international-corporate-treasury-summer-analyst-programme.asp", _
			"emeain-market-risk-summer-analyst-programme.asp", _
			"emeain-merrill-lynch-wealth-management-summer-analyst-programme.asp", _
			"emeain-quantitative-management-summer-analyst-programme.asp", _
			"emeain-south-african-graduate-analyst-fixed-term-placement-12-months.asp", _
			"emeain-technology-developer-analyst-fixed-term-placement-12-months.asp", _
			"emeain-technology-developer-analyst-fixed-term-placement-6-months.asp", _
			"emeain-technology-developer-analyst-summer-intern-programme.asp", _
			"emeain-technology-infrastructure-fixed-term-placement-12-months.asp", _
			"emeain-technology-infrastructure-summer-analyst-programme.asp", _
			"emeais-global-corporate-investment-banking-summer-associate-programme.asp", _
			"emeais-global-markets-quantitative-analytics-associate-fixed-term-placement-5-months.asp", _
			"emeais-global-markets-sales-trading-summer-associate-programme.asp", _
			"emeais-global-research-summer-associate-programme.asp" _
		)) Then
%>
<ul class="bac">
	<li>Click here to start your <a href="https://static.wcn.co.uk/company/ml/apply_now.html" class="bac" target="_blank">application<span class="hidden"> Link opens a new window</span></a>
	<li>Search for the programme, division and location you wish to apply for and select the programme title</li>
	<li>Select &lsquo;Apply Now&rsquo; and sign in as a new or returning user</li>
	<li>Complete all 3 sections of the application form – basic information, numerical test and longer questions
	<li>Submit form – please note that in order for your application to be considered, you must have submitted all 3 stages by the application deadline</li>
</ul>
<%
	ElseIf ( program.Item("region") = AMERICAS AND program.Item("sub_region") = U_S_A) OR _
			InArray(program.Item("url"), Array( _
			"usfn-assistant-manager-leadership-development-program.asp", _
			"usfn-commercial-real-estate-banking-analyst-program.asp", _
			"usfn-corporate-audit-management-program.asp", _
			"usfn-corporate-security-analyst.asp", _
			"usfn-corporate-treasury-analyst-program.asp", _
			"usfn-corporate-workplace-analyst.asp", _
			"usfn-enterprise-change-technology-operations-leader-development-rotational-program.asp", _
			"usfn-finance-management-associate-program.asp", _
			"usfn-global-banking-markets-credit-risk-analyst-program.asp", _
			"usfn-global-commercial-banking-analyst-program.asp", _
			"usfn-global-commodities-analyst-program.asp", _
			"usfn-global-investment-banking-capital-markets-analyst-program.asp", _
			"usfn-global-markets-operations-middle-office-rotational-program.asp", _
			"usfn-global-markets-public-finance-analyst-program.asp", _
			"usfn-global-markets-sales-trading-analyst-program.asp", _
			"usfn-global-research-analyst-program.asp", _
			"usfn-global-risk-management-program.asp", _
			"usfn-global-treasury-solutions-analyst-program.asp", _
			"usfn-global-wealth-investment-management-analyst-program.asp", _
			"usfn-institutional-mortgage-services-development-program.asp", _
			"usfn-markets-risk-analyst-progam.asp", _
			"usfn-operations-management-analyst-program.asp", _
			"usfn-quantitative-management-program.asp", _
			"usfn-supply-chain-management-associate-program.asp", _
			"usfn-technology-developer-analyst-program.asp", _
			"usfs-consumer-mba-program-banking-center-channel-track.asp", _
			"usfs-corporate-workplace-senior-analyst.asp", _
			"usfs-global-commercial-banking-associate-program.asp", _
			"usfs-global-commodities-associate-program.asp", _
			"usfs-global-investment-banking-capital-markets-associate-program.asp", _
			"usfs-global-markets-sales-trading-associate-program.asp", _
			"usfs-global-research-associate-program.asp", _
			"usfs-global-wealth-investment-management-associate-program.asp", _
			"usfs-home-Loans-insurance-mba-program.asp", _
			"usfs-human-resources-development-program.asp", _
			"usfs-operations-mba-program.asp", _
			"usfs-supply-chain-management-mba-program.asp", _
			"usfs-technology-mba-program.asp", _
			"usin-applied-technology-program.asp", _
			"usin-commercial-real-estate-banking-summer-analyst-program.asp", _
			"usin-corporate-audit-intern-program.asp", _
			"usin-corporate-security-analyst-internship.asp", _
			"usin-corporate-treasury-internship-program.asp", _
			"usin-corporate-workplace-analyst-internship.asp", _
			"usin-enterprise-change-technology-operations-intern-program.asp", _
			"usin-finance-intern-program.asp", _
			"usin-global-banking-markets-credit-risk-summer-analyst-program.asp", _
			"usin-global-commercial-banking-summer-analyst-program.asp", _
			"usin-global-commodities-summer-analyst-program.asp", _
			"usin-global-investment-banking-capital-markets-summer-analyst-program.asp", _
			"usin-global-markets-operations-middle-office-intern-program.asp", _
			"usin-global-markets-public-finance-summer-analyst-program.asp", _
			"usin-global-markets-sales-trading-summer-analyst-program.asp", _
			"usin-global-research-summer-analyst-program.asp", _
			"usin-global-treasury-solutions-summer-analyst-program.asp", _
			"usin-global-wealth-investment-management-summer-analyst-program.asp", _
			"usin-institutional-mortgage-services-analyst-intern-program.asp", _
			"usin-markets-risk-intern-program.asp", _
			"usin-operations-management-analyst-intern-program.asp", _
			"usin-supply-chain-management-intern-program.asp", _
			"usin-technology-developer-analyst-intern-program.asp", _
			"usin-wealth-management-branch-office-internship.asp", _
			"usis-consumer-small-business-banking-mba-intern-program.asp", _
			"usis-corporate-workplace-senior-analyst-internship.asp", _
			"usis-global-commodities-summer-associate-program.asp", _
			"usis-global-investment-banking-capital-markets-summer-associate-program.asp", _
			"usis-global-markets-quantitative-summer-associate-program.asp", _
			"usis-global-markets-sales-trading-summer-associate-program.asp", _
			"usis-global-research-summer-associate-program.asp", _
			"usis-global-wealth-investment-management-summer-associate-program.asp", _
			"usis-home-Loans-insurance-mba-intern-program.asp", _
			"usis-operations-mba-intern-program.asp", _
			"usis-supply-chain-management-mba-internship-program.asp", _
			"usis-technology-mba-intern-program.asp" _
		)) Then
%><p class="bac">In order to be considered a candidate for this opportunity, you must create a profile at <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="">www.bankofamerica.com/campusrecruiting</a> by following the instructions in the How to Apply section within your region of interest. To create and then <a href="<% If page_section <> "ADA" Then  %>../learnmore/<% Else  %>../ada/<% End If %>sendresume.asp" class="bac" title="" target="<%=HOWTOAPPLY_TARGET%>">submit your profile<% If HOWTOAPPLY_TARGET = "_blank" Then %><span class="hidden"> Link opens a new window</span><% End If%></a>, first sign in as a new or returning user. If you don’t have an existing account, you’ll need to register as a new user. Then, complete your candidate profile and designate your program(s) of interest. Please note that you must reach the final &ldquo;Thank You&rdquo; page.</p>
<%
			If InArray(program.Item("url"), Array( _
				"usin-applied-technology-program.asp" _
			)) Then
%>
<p class="bac">In addition, please log&ndash;in to UNC Charlotte NinerJobNet via <a href="http://unccharlotte.experience.com/" class="bac" title="" target="_blank">http://unccharlotte.experience.com/<span class="hidden"> Link opens a new window</span></a> and search for the &ldquo;Bank of America Applied Technology Program&rdquo; job posting.  Please follow the directions for each of the application components below in order to submit a complete application package.  Application submissions that do not contain all the requirements listed below will not be considered.</p>
<H3 class="bac">1) Resume </H3>
<p class="bac">Attach a resume to your NinerJobNet application and include the following information (if applicable):</p>
<p class="bac">Academic Performance</p>
<ul class="bac">
	<li>Cumulative GPA</li>
	<li>Major GPA</li>
</ul>
<p class="bac">Leadership Experience</p>
<ul class="bac">
	<li>Name of Club/Community Organization</li>
	<li>Position held</li>
	<li>Accomplishments</li>
</ul>
<p class="bac">Work Experience</p>
<ul class="bac">
	<li>Company Name</li>
	<li>Position held</li>
	<li>Accomplishments</li>
</ul>
<p class="bac">Awards, Scholarships and Recognition</p>
<ul class="bac">
	<li>Name of Organization that provided the Award, Scholarship, or Recognition</li>
	<li>Description of the Award, Scholarship, or Recognition</li>
	<li>Description of Accomplishment</li>
</ul>
<H3 class="bac">2) Cover Letter </H3>
<p class="bac">Attach a one&ndash;page cover letter to your NinerJobNet application that addresses the following questions:</p>
<p class="bac">A. Why are you applying to participate in the Applied Technology Program with Bank of America?</p>
<p class="bac">B. What skills do you possess that make you a strong candidate?  </p>
<p class="bac">C. How will this program help you achieve your career plans?</p>
<H3 class="bac">3) Transcript </H3>
<p class="bac">Attach a copy of your transcript to your NinerJobNet application.  Your unofficial transcript can be accessed through 49er&ndash;Express, <a href="https://49erexpress.uncc.edu/cp/home/displaylogin" class="bac" title="" target="_blank">https://49erexpress.uncc.edu/cp/home/displaylogin<span class="hidden"> Link opens a new window</span></a>.  (You can copy and paste your transcript into a Word document / text file, or you can provide a .pdf version saved from 49er&ndash;Express.)  All candidates selected for interviews will be required to submit an official transcript before interviewing for the position.</p>
<%
			End If
	Else
	End If
End Function






'Function InArray(strValue)
'	Dim i
'	For i = 0 to UBound([arrayname])
'		If selCriteria(i,1) = cstr(strValue) Then
'			InArray = TRUE
'			Exit Function
'		End If
'	Next
'	InArray = FALSE 
'End Function
%>