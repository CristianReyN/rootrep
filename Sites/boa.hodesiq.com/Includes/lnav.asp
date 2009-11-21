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
		call JobAreasNav(""," class=""home""","")
	Else
		call JobAreasNav(" id=""jaaot""",""," class=""jaaotlili""")
	End If
%>
</div>
		</li>
		<li id="lobli"<% if mpage = "lob" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "lob" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../learnmore/lob.asp" id="loblia" title="Lines of Business" onfocus="this.className='g-over';" onblur="this.className='g';">Lines of Business</a>
<%
	If mpage = "lob" Then
		call LobNav(""," class=""home""","")
	Else
		call LobNav(" id=""lob""",""," class=""loblili""")
	End If
%>
</div>
		</li>
		
		<li id="campli"<% if mpage = "camp" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "camp" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../campusrecruiting/" id="camplia" title="Campus Recruiting" onfocus="this.className='g-over';" onblur="this.className='g';">Campus Recruiting</a>
<%
	If mpage = "camp" Then
		call CampNav(""," class=""home""")
	Else
		call CampNav(" id=""camp""","")
	End If
%>
</div>
		</li>
		
		
		<li id="learnmoreli"<% if mpage = "learnmore" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "learnmore" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../learnmore/learnmore.asp" id="learnmorelia" title="Related Information" onfocus="this.className='g-over';" onblur="this.className='g';">Related Information</a>
<%
	If mpage = "learnmore" Then
		call RelInfoNav(""," class=""home""","")
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
<div<%If mpage = "globalcareers" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="<%=GLOBAL_URL%>" id="globallia" title="Global Careers" onfocus="this.className='g-over';" onblur="this.className='g';">Global Careers</a></div>
		</li>
		<li<% if mpage = "fags" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../faq/faq.asp" title="Frequently Asked Questions" onfocus="this.className='g-over';" onblur="this.className='g';">Frequently Asked Questions</a></div>
		</li>
	</ul>
</div>
</td></tr>



<%
	Function JobAreasNav(id,ul,li)
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
				
				<li<% Response.Write li %><% if spage = "corporateworkplace" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../corporateworkplace/" class="sbtxt" title="Corporate Workplace" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Workplace</a></div>
				</li>
<%	If mpage = "areasoftalent" And spage = "corporateworkplace" Then %>
				<li class="tertiary"<% if tpage = "cw_teams" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../corporateworkplace/cw_teams.asp" class="sbtxt" title="Corporate Workplace Teams" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Workplace Teams</a></div>
				</li>
<%	End If %>
				<li<% if spage = "customercare" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../customercare/" class="sbtxt" title="Customer Care" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Customer Care</a></div>
				</li>
				<li<% if spage = "humanresources" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../hr/" class="sbtxt" title="Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Human Resources</a></div>
				</li>
				
				<li<% Response.Write li %><% if spage = "mortgagecareers" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../mortgagecareers/" class="sbtxt" title="Mortgage" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Mortgage</a></div>
				</li>
<%	If mpage = "areasoftalent" And spage = "mortgagecareers" Then %>
				<li class="tertiary"<% if tpage = "aot_fulfilment" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgagecareers/fulfilment.asp" class="sbtxt" title="Fulfilment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Fulfilment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_homeequity" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgagecareers/homeequity.asp" class="sbtxt" title="Home Equity" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Home Equity</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_insurance" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgagecareers/insurance.asp" class="sbtxt" title="Insurance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Insurance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_mortgagesales" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgagecareers/mortgagesales.asp" class="sbtxt" title="Mortgage Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Mortgage Sales</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_servicing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgagecareers/servicing.asp" class="sbtxt" title="Servicing" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Servicing</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_locations" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgagecareers/locations.asp" class="sbtxt" title="Locations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Locations</a></div>
				</li>
<%	End If %>
				
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
				<li<% Response.Write li %><% if spage = "lobgto" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../technology/" class="sbtxt" title="Global Technology" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Technology</a></div>
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
				<li class="tertiary"<% if tpage = "corporateworkplace" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../corporateworkplace/" class="sbtxt" title="Corporate Workplace" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Workplace</a></div>
				</li>
<%	End If %>
				
				<li<% Response.Write li %><% if spage = "lob_mortgagecareers" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../mortgage/" class="sbtxt" title="Mortgage" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Mortgage</a></div>
				</li>
<%	If mpage = "lob" And spage = "lob_mortgagecareers" Then %>
				<li class="tertiary"<% if tpage = "lob_fulfilment" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgage/fulfilment.asp" class="sbtxt" title="Fulfilment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Fulfilment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_homeequity" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgage/homeequity.asp" class="sbtxt" title="Home Equity" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Home Equity</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_insurance" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgage/insurance.asp" class="sbtxt" title="Insurance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Insurance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_mortgagesales" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgage/mortgagesales.asp" class="sbtxt" title="Mortgage Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Mortgage Sales</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_servicing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgage/servicing.asp" class="sbtxt" title="Servicing" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Servicing</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_locations" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../mortgage/locations.asp" class="sbtxt" title="Locations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Locations</a></div>
				</li>
<%	End If %>
				
				<li<% Response.Write li %><% if spage = "lb_career_compass" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/lb_career_compass.asp" class="sbtxt" title="Skills Assessment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Skills Assessment</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function CampNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "explore_careers" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campusrecruiting/explore_careers.asp" class="sbtxt" title="Explore Careers" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Explore Careers</a></div>
				</li>
<%	If mpage = "camp" And spage = "explore_careers" Then %>
				<li class="tertiary"<% if tpage = "undergraduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/undergraduate_programs.asp" class="sbtxt" title="Undergraduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Undergraduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "graduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/graduate_programs.asp" class="sbtxt" title="Graduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Graduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "internships" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/internships.asp" class="sbtxt" title="Internships" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Internships</a></div>
				</li>
<%	End If %>

				<li<% if spage = "our_culture" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campusrecruiting/our_culture.asp" class="sbtxt" title="Our Culture" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Our Culture</a></div>
				</li>
<%	If mpage = "camp" And spage = "our_culture" Then %>
				<li class="tertiary"<% if tpage = "diversity_and_inclusion" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/diversity_and_inclusion.asp" class="sbtxt" title="Diversity and Inclusion" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Diversity and Inclusion</a></div>
				</li>
				<li class="tertiary"<% if tpage = "making_a_difference" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/making_a_difference.asp" class="sbtxt" title="Making a Difference" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Making a Difference</a></div>
				</li>
				<li class="tertiary"<% if tpage = "the_environment" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/the_environment.asp" class="sbtxt" title="The Environment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">The Environment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "benefits_and_rewards" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/benefits_and_rewards.asp" class="sbtxt" title="Benefits and Rewards" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits and Rewards</a></div>
				</li>
				<li class="tertiary"<% if tpage = "information_for_parents" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/information_for_parents.asp" class="sbtxt" title="Information for Parents" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Information for Parents</a></div>
				</li>
<%	End If %>

				<li<% if spage = "find_your_fit" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campusrecruiting/find_your_fit.asp" class="sbtxt" title="Find Your Fit" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Find Your Fit</a></div>
				</li>
<%	If mpage = "camp" And spage = "find_your_fit" Then %>
				<li class="tertiary"<% if tpage = "career_fit_tool" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/career_fit_tool.asp" class="sbtxt" title="Career Fit Tool" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Career Fit Tool </a></div>
				</li>
				<li class="tertiary"<% if tpage = "business_areas" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/business_areas.asp" class="sbtxt" title="Business Areas" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Business Areas</a></div>
<%	End If %>

				<li<% if spage = "campus_events" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../CampusEvents.aspx" class="sbtxt" title="Campus Events" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus Events</a></div>
				</li>
				
				<li<% if spage = "how_to_apply" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campusrecruiting/how_to_apply.asp" class="sbtxt" title="How to Apply" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">How to Apply</a></div>
				</li>
<%	If mpage = "camp" And spage = "how_to_apply" Then %>
				<li class="tertiary"<% if tpage = "interview_tips" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/interview_tips.asp" class="sbtxt" title="Interview Tips" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Interview Tips</a></div>
				</li>
				<li class="tertiary"<% if tpage = "glossary" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/glossary.asp" class="sbtxt" title="Glossary" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Glossary</a></div>
				</li>
				<li class="tertiary"<% if tpage = "campus_faqs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../campusrecruiting/campus_faqs.asp" class="sbtxt" title="Campus FAQs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus FAQs</a></div>
				</li>
<%	End If %>
			</ul>
<%
	End Function
%>