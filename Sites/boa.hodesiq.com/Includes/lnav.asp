<tr valign="top"><td>
<div id="lnav">
	<ul>
		<li<% if mpage = "overview" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../overview/overview.asp" title="Overview" onfocus="this.className='g-over';" onblur="this.className='g';">Overview</a></div>
		</li>
		<li<% if mpage = "jobsearch" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../jobsearch.aspx" title="Job Search" onfocus="this.className='g-over';" onblur="this.className='g';">Job Search</a></div>
		</li>
		<li id="areasoftalentli"<% if mpage = "areasoftalent" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "areasoftalent" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../areasoftalent/areasoftalent.asp" id="areasoftalent" title="Job Areas" onfocus="this.className='g-over';" onblur="this.className='g';">Job Areas</a>
<%
	If mpage = "areasoftalent" Then
		call JobAreasNav(""," class=""home""")
	Else
		call JobAreasNav(" id=""jaaot""","")
	End If
%>
</div>
		</li>
		<li id="lobli"<% if mpage = "lob" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "lob" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../learnmore/lob.asp" id="lobli" title="Lines of Business" onfocus="this.className='g-over';" onblur="this.className='g';">Lines of Business</a>
<%
	If mpage = "lob" Then
		call LobNav(""," class=""home""","")
	'ElseIf mpage = "areasoftalent" Then
	'	call LobNav(" id=""lob_aot""",""," class=""loblili""")
	Else
		call LobNav(" id=""lob""",""," class=""loblili""")
	End If
%>
</div>
		</li>
		<li id="learnmoreli"<% if mpage = "learnmore" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "learnmore" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../learnmore/learnmore.asp" id="learnmore" title="Related Information" onfocus="this.className='g-over';" onblur="this.className='g';">Related Information</a>
<%
	If mpage = "learnmore" Then
		call RelInfoNav(""," class=""home""","")
	'ElseIf mpage = "lob" And (Not spage = "lobgcsbb") And (Not spage = "lobcss") Then
	'	call RelInfoNav(" id=""relinfo_lob""",""," class=""relinfolili""")
	'ElseIf mpage = "lob" And spage = "lobgcsbb" Then
	'	call RelInfoNav(" id=""relinfo_lobgcsbb""",""," class=""relinfolili""")
	'ElseIf mpage = "lob" And spage = "lobcss" Then
	'	call RelInfoNav(" id=""relinfo_lobcss""",""," class=""relinfolili""")
	'ElseIf mpage = "areasoftalent" Then
	'	call RelInfoNav(" id=""relinfo_aot""",""," class=""relinfolili""")
	Else
		call RelInfoNav(" id=""relinfo""",""," class=""relinfolili""")
	End If
%>
</div>
		</li>
		<li<% if mpage = "staffingevents" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../staffingevents/staffingevents.asp" title="Staffing Events" onfocus="this.className='g-over';" onblur="this.className='g';">Staffing Events</a></div>
		</li>
		<li id="globalli"<% if mpage = "globalcareers" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "globalcareers" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="<%=GLOBAL_URL%>" id="globalcareers" title="Global Careers" onfocus="this.className='g-over';" onblur="this.className='g';">Global Careers</a>
<%
	If mpage = "globalcareers" Then
		call GlobalCareersNav(""," class=""home""")
	Else
		call GlobalCareersNav(" id=""glc""","")
	End If
%>
</div>
		</li>
		<li<% if mpage = "fags" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../faq/faq.asp" title="Frequently Asked Questions" onfocus="this.className='g-over';" onblur="this.className='g';">Frequently Asked Questions</a></div>
		</li>
	</ul>
</div>
</td></tr>



<%
	Function JobAreasNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "administration" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../administration/" class="sbtxt" title="Administration" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Administration</a></div>
				</li>
				<li<% if spage = "finance" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../finance/" class="sbtxt" title="CFO Group/Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">CFO Group/Finance</a></div>
				</li>
				<li<% if spage = "communications" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../communications/" class="sbtxt" title="Communications" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Communications</a></div>
				</li>
				<li<% if spage = "consumerbanking" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../consumerbank/" class="sbtxt" title="Consumer Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Consumer Banking</a></div>
				</li>
				<li<% if spage = "customercare" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../customercare/" class="sbtxt" title="Customer Care" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Customer Care</a></div>
				</li>
				<li<% if spage = "humanresources" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../hr/" class="sbtxt" title="Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Human Resources</a></div>
				</li>
				<li<% if spage = "operations" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../operations/" class="sbtxt" title="Operations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Operations</a></div>
				</li>
				<li<% if spage = "riskevaluation" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../riskevaluation/" class="sbtxt" title="Risk Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Management</a></div>
				</li>
				<li<% if spage = "sales" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../sales/" class="sbtxt" title="Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Sales</a></div>
				</li>
				<li<% if spage = "technology" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../tech/" class="sbtxt" title="Technology" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Technology</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function RelInfoNav(id,ul,li)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% Response.Write li %><% if spage = "benefitsadv" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/benefitsadv.asp" class="sbtxt" title="Benefits and Advantages" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits and Advantages</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "diversity" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/diversity.asp" class="sbtxt" title="Diversity and Inclusion" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Diversity and Inclusion</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "corpinfo" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/corpinfo.asp" class="sbtxt" title="Corporate Information" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Information</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "staffingprocess" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../staffingevents/staffingprocess.asp" class="sbtxt" title="Our Staffing Process" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Our Staffing Process</a></div>
				</li>
				<li<% Response.Write li %><% If spage = "collrecruiting" And (tpage = "" Or tpage = "information_for_parents") then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/collrecruiting.asp" class="sbtxt" title="Campus Recruiting" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus Recruiting</a></div>
				</li>
<%	If mpage = "learnmore" And spage = "collrecruiting" Then %>
				<li class="tertiary"<% if tpage = "career_compass" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/explore.asp" class="sbtxt" title="College Career Compass" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">College Career Compass</a></div>
				</li>
				<li class="tertiary"<% if tpage = "undergraduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/undergraduate_programs.asp" class="sbtxt" title="Undergraduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Undergraduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "graduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/graduate_programs.asp" class="sbtxt" title="Graduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Graduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "internships_program" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/internships_program.asp" class="sbtxt" title="Internships" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Internships</a></div>
				</li>
<%	End If %>
				<li<% Response.Write li %><% if spage = "resume_interview_tips" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/resume_interview_tips.asp" class="sbtxt" title="Resume &amp; Interview Tips" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Resume &amp; Interview Tips</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "military_veteran_recruiting" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../military/" class="sbtxt" title="Military &amp; Veteran Recruiting" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Military &amp; Veteran Recruiting</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "feedback" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../feedback/feedback.asp" class="sbtxt" title="Give Us Your Feedback" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Give Us Your Feedback</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function LobNav(id,ul,li)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% Response.Write li %><% if spage = "lobgcsbb" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/lobgcsbb.asp" class="sbtxt" title="Global Consumer &amp; Small Business Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Consumer &amp; Small Business Banking</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobgcsbb" Then %>
				<li class="tertiary"<% if tpage = "lobnbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../consumerproductsandoperations/" class="sbtxt" title="Non-Banking Center Channel" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Non-Banking Center Channel</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../consumerbanking/" class="sbtxt" title="Banking Center Channel" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Banking Center Channel</a></div>
				</li>
<%	End If %>
				<li<% Response.Write li %><% if spage = "lobgcib" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../gcib/" class="sbtxt" title="Global Corporate &amp; Investment Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Corporate &amp; Investment Banking</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "lobgwim" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../wealthmanagement/" class="sbtxt" title="Global Wealth &amp; Investment Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Wealth &amp; Investment Management</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "lobgto" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../technology/" class="sbtxt" title="Global Technology &amp; Operations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Technology &amp; Operations</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "lobcss" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/lobcss.asp" class="sbtxt" title="Corporate Staff &amp; Support" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Staff &amp; Support</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobcss" Then %>
				<li class="tertiary"<% if tpage = "lobghr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../humanresources/" class="sbtxt" title="Global Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Human Resources</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobcf" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../CFOgroup/" class="sbtxt" title="CFO Group/Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">CFO Group/Finance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgmca" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../marketing/" class="sbtxt" title="Global Marketing &amp; Corporate Affairs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Marketing &amp; Corporate Affairs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../risk/" class="sbtxt" title="Risk Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Management</a></div>
				</li>
<%	End If %>
				<li<% Response.Write li %><% if spage = "lb_career_compass" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/lb_career_compass.asp" class="sbtxt" title="Skills Assessment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Skills Assessment</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function GlobalCareersNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "asia" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="<%=GLOBAL_URL%>asia.aspx" class="sbtxt" title="Asia" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Asia</a></div>
				</li>
<%	If mpage = "globalcareers" And spage = "asia" Then %>
				<li class="tertiary"<% if tpage = "bana" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>bana.aspx" class="sbtxt" title="Bank of America in Asia" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Bank of America in Asia</a></div>
				</li>
				<li class="tertiary"<% if tpage = "bacs" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ba_continuum.aspx" class="sbtxt" title="BA Continuum" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">BA Continuum</a></div>
				</li>
<%	End If %>
<%	If mpage = "globalcareers" And spage = "asia" And tpage = "bacs" Then %>
				<li class="quaternary"<% if fpage = "continuum_lob" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>continuum_lob.aspx" class="sbtxt" title="BA Continuum Lines of Business" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Lines of Business</a></div>
				</li>
				<li class="quaternary"<% if fpage = "continuum_benefits" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>continuum_benefits.aspx" class="sbtxt" title="BA Continuum Benefits" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits</a></div>
				</li>
				<li class="quaternary"<% if fpage = "continuum_culture" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>continuum_culture.aspx" class="sbtxt" title="BA Continuum Culture &amp; Work Environment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Culture &amp; Work Environment</a></div>
				</li>
				<li class="quaternary"<% if fpage = "continuum_staffing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>continuum_staffing.aspx" class="sbtxt" title="BA Continuum Staffing Process" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Staffing Process</a></div>
				</li>
<%	End If %>
				<li<% if spage = "canada" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="<%=GLOBAL_URL%>canada.aspx" class="sbtxt" title="Canada" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Canada</a></div>
				</li>
<%	If mpage = "globalcareers" And spage = "canada" Then %>
				<li class="tertiary"<% if tpage = "canada_lob" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>canada_lob.aspx" class="sbtxt" title="Canada Lines of Business" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Lines of Business</a></div>
				</li>
				<li class="tertiary"<% if tpage = "canada_benefits" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>canada_benefits.aspx" class="sbtxt" title="Canada Benefits" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits</a></div>
				</li>
				<li class="tertiary"<% if tpage = "canada_culture" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>canada_culture.aspx" class="sbtxt" title="Canada Culture &amp; Work Environment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Culture &amp; Work Environment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "canada_staffing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>canada_staffing.aspx" class="sbtxt" title="Canada Staffing Process" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Staffing Process</a></div>
				</li>
<%	End If %>
				<li<% if spage = "emea" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="<%=GLOBAL_URL%>emea.aspx" class="sbtxt" title="Europe, Middle East and Africa" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Europe, Middle East and Africa</a></div>
				</li>
<%	If mpage = "globalcareers" And spage = "emea" Then %>
				<li class="tertiary"<% if tpage = "emea_lob" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>emea_lob.aspx" class="sbtxt" title="Europe, Middle East and Africa Lines of Business" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Lines of Business</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea_benefits" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>emea_benefits.aspx" class="sbtxt" title="Europe, Middle East and Africa Benefits" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea_culture" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>emea_culture.aspx" class="sbtxt" title="Europe, Middle East and Africa Culture &amp; Work Environment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Culture &amp; Work Environment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea_staffing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>emea_staffing.aspx" class="sbtxt" title="Europe, Middle East and Africa Staffing Process" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Staffing Process</a></div>
				</li>
<%	End If %>
			</ul>
<%
	End Function
%>