<tr valign="top"><td>
<div id="lnav">
	<ul>
		<li<% if mpage = "overview" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/overview.asp" title="Overview" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Overview</a></div>
		</li>
		<li<% if mpage = "jobsearch" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../jobsearch.aspx" title="Job Search" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Job Search</a></div>
		</li>
		<li<% if mpage = "areasoftalent" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "areasoftalent" Then%> style="padding-right: 0px;"<%End If%>><a href="../ada/areasoftalent.asp" title="Job Areas" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Job Areas</a>
<%
	If mpage = "areasoftalent" Then
		call JobAreasNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<% if mpage = "lob" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "lob" Then%> style="padding-right: 0px;"<%End If%>><a href="../ada/lob.asp" title="Lines of Business" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Lines of Business</a>
<%
	If mpage = "lob" Then
		call LobNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<% if mpage = "camp" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "camp" Then%> style="padding-right: 0px;"<%End If%>><a href="../ada_camp/" title="Campus Recruiting" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Campus Recruiting</a>
<%
	If mpage = "camp" Then
		call CampNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<% if mpage = "learnmore" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "learnmore" Then%> style="padding-right: 0px;"<%End If%>><a href="../ada/learnmore.asp" title="Related Information" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Related Information</a>
<%
	If mpage = "learnmore" Then
		call RelInfoNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<% if mpage = "staffingevents" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/staffingevents.asp" title="Staffing Events" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Staffing Events</a></div>
		</li>
		<li<% if mpage = "globalcareers" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "globalcareers" Then%> style="padding-right: 0px;"<%End If%>><a href="<%=GLOBAL_URL%>ada/" title="Global Careers" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Global Careers</a></div>
		</li>
		<li<% if mpage = "fags" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../ada/faq.asp" title="Frequently Asked Questions" onfocus="this.className='g-over';" onblur="this.className='g';" style="line-height: 1.2em;">Frequently Asked Questions</a></div>
		</li>
	</ul>
</div>
</td></tr>

<%
	return_image = "Return to standard page"
	return_title = "Return to standard page"
	return_text = "Return to<br>standard<br>page"
	if mpage = "overview" And spage <> "eeoc" then
%>
			<tr valign="top"><td height="90" valign="bottom">
<table width="160" height="60" cellpadding="0" cellspacing="0" border="0" summary="" style="background: #ebebeb; border-top: 1px solid #dadada; border-bottom: 1px solid #dadada;"><tr><td style="padding: 5px 6px 5px 12px;"><div style="border: 1px solid #dadada;"><img src="../images/virtual-host.jpg" width="52" height="52" alt="Return to standard page with video" border="0" style="border: 1px solid #ebebeb;"></div></td><td width="100%"><a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to<br>standard page<br>with video</a></td></tr></table>
<%
		End If
%>
			</td></tr>




<%
	Function JobAreasNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "administration" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/administration.asp" class="sbtxt" title="Administration" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Administration</a></div>
				</li>
				<li<% if spage = "finance" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/finance.asp" class="sbtxt" title="CFO Group/Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">CFO Group/Finance</a></div>
				</li>
				<li<% if spage = "communications" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/communications.asp" class="sbtxt" title="Communications" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Communications</a></div>
				</li>
				<li<% if spage = "consumerbanking" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/consumerbanking.asp" class="sbtxt" title="Consumer Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Consumer Banking</a></div>
				</li>
				
				<li<% if spage = "corporateworkplace" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/corporateworkplace.asp" class="sbtxt" title="Corporate Workplace" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Workplace</a></div>
				</li>
<%	If mpage = "areasoftalent" And spage = "corporateworkplace" Then %>
				<li class="tertiary"<% if tpage = "cw_teams" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/cw_teams.asp" class="sbtxt" title="Corporate Workplace Teams" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Workplace Teams</a></div>
				</li>
<%	End If %>

				<li<% if spage = "customercare" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/customercare.asp" class="sbtxt" title="Customer Care" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Customer Care</a></div>
				</li>
				<li<% if spage = "humanresources" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/humanresources.asp" class="sbtxt" title="Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Human Resources</a></div>
				</li>
				<li<% if spage = "operations" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/operations.asp" class="sbtxt" title="Operations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Operations</a></div>
				</li>
				<li<% if spage = "riskevaluation" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/riskevaluation.asp" class="sbtxt" title="Risk Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Management</a></div>
				</li>
				<li<% if spage = "sales" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/sales.asp" class="sbtxt" title="Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Sales</a></div>
				</li>
				<li<% if spage = "technology" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/technology.asp" class="sbtxt" title="Technology" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Technology</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function RelInfoNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "benefitsadv" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/benefitsadv.asp" class="sbtxt" title="Benefits and Advantages" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits and Advantages</a></div>
				</li>
				<li<% if spage = "diversity" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/diversity.asp" class="sbtxt" title="Diversity and Inclusion" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Diversity and Inclusion</a></div>
				</li>
				<li<% if spage = "corpinfo" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/corpinfo.asp" class="sbtxt" title="Corporate Information" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Information</a></div>
				</li>
				<li<% if spage = "staffingprocess" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/staffingprocess.asp" class="sbtxt" title="Our Staffing Process" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Our Staffing Process</a></div>
				</li>
				<li<% if spage = "resume_interview_tips" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/resume_interview_tips.asp" class="sbtxt" title="Resume &amp; Interview Tips" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Resume &amp; Interview Tips</a></div>
				</li>
				<li<% if spage = "military_veteran_recruiting" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/military_veteran_recruiting.asp" class="sbtxt" title="Military &amp; Veteran Recruiting" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Military &amp; Veteran Recruiting</a></div>
				</li>
				<li<% if spage = "feedback" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/feedback.asp" class="sbtxt" title="Give Us Your Feedback" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Give Us Your Feedback</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function LobNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "lobgcsbb" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobgcsbb.asp" class="sbtxt" title="Global Consumer &amp; Small Business Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Consumer &amp; Small Business Banking</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobgcsbb" Then %>
				<li class="tertiary"<% if tpage = "lobnbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobnbcc.asp" class="sbtxt" title="Non-Banking Center Channel" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Non-Banking Center Channel</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobbcc.asp" class="sbtxt" title="Banking Center Channel" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Banking Center Channel</a></div>
				</li>
<%	End If %>
				<li<% if spage = "lobgcib" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobgcib.asp" class="sbtxt" title="Global Corporate &amp; Investment Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Corporate &amp; Investment Banking</a></div>
				</li>
				<li<% if spage = "lobgwim" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobgwim.asp" class="sbtxt" title="Global Wealth &amp; Investment Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Wealth &amp; Investment Management</a></div>
				</li>
				<li<% if spage = "lobgto" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobgto.asp" class="sbtxt" title="Global Technology" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Technology</a></div>
				</li>
				<li<% if spage = "lobcss" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobcss.asp" class="sbtxt" title="Corporate Staff &amp; Support" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Staff &amp; Support</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobcss" Then %>
				<li class="tertiary"<% if tpage = "lobghr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobghr.asp" class="sbtxt" title="Global Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Human Resources</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobcf" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobcf.asp" class="sbtxt" title="CFO Group/Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">CFO Group/Finance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgmca" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobgmca.asp" class="sbtxt" title="Global Marketing &amp; Corporate Affairs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Marketing &amp; Corporate Affairs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobgr.asp" class="sbtxt" title="Risk Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Management</a></div>
				</li>
				<li class="tertiary"<% if tpage = "corporateworkplace" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/corporateworkplace.asp" class="sbtxt" title="Corporate Workplace" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Workplace</a></div>
				</li>
<%	End If %>
				<li<% Response.Write li %><% if spage = "lb_career_compass" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lb_career_compass.asp" class="sbtxt" title="Skills Assessment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Skills Assessment</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function CampNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "explore_careers" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada_camp/explore_careers.asp" class="sbtxt" title="Explore Careers" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Explore Careers</a></div>
				</li>
<%	If mpage = "camp" And spage = "explore_careers" Then %>
				<li class="tertiary"<% if tpage = "undergraduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/undergraduate_programs.asp" class="sbtxt" title="Undergraduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Undergraduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "graduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/graduate_programs.asp" class="sbtxt" title="Graduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Graduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "internships" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/internships.asp" class="sbtxt" title="Internships" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Internships</a></div>
				</li>
<%	End If %>

				<li<% if spage = "our_culture" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada_camp/our_culture.asp" class="sbtxt" title="Our Culture" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Our Culture</a></div>
				</li>
<%	If mpage = "camp" And spage = "our_culture" Then %>
				<li class="tertiary"<% if tpage = "diversity_and_inclusion" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/diversity_and_inclusion.asp" class="sbtxt" title="Diversity and Inclusion" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Diversity and Inclusion</a></div>
				</li>
				<li class="tertiary"<% if tpage = "making_a_difference" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/making_a_difference.asp" class="sbtxt" title="Making a Difference" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Making a Difference</a></div>
				</li>
				<li class="tertiary"<% if tpage = "the_environment" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/the_environment.asp" class="sbtxt" title="The Environment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">The Environment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "benefits_and_rewards" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/benefits_and_rewards.asp" class="sbtxt" title="Benefits and Rewards" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits and Rewards</a></div>
				</li>
				<li class="tertiary"<% if tpage = "information_for_parents" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/information_for_parents.asp" class="sbtxt" title="Information for Parents" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Information for Parents</a></div>
				</li>
<%	End If %>

				<li<% if spage = "find_your_fit" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada_camp/find_your_fit.asp" class="sbtxt" title="Find Your Fit" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Find Your Fit</a></div>
				</li>
<%	If mpage = "camp" And spage = "find_your_fit" Then %>
				<li class="tertiary"<% if tpage = "career_fit_tool" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/career_fit_tool.asp" class="sbtxt" title="Career Fit Tool" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Career Fit Tool </a></div>
				</li>
				<li class="tertiary"<% if tpage = "business_areas" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/business_areas.asp" class="sbtxt" title="Business Areas" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Business Areas</a></div>
<%	End If %>

				<li<% if spage = "campus_events" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../CampusEvents.aspx" class="sbtxt" title="Campus Events" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus Events</a></div>
				</li>
				
				<li<% if spage = "how_to_apply" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada_camp/how_to_apply.asp" class="sbtxt" title="How to Apply" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">How to Apply</a></div>
				</li>
<%	If mpage = "camp" And spage = "how_to_apply" Then %>
				<li class="tertiary"<% if tpage = "interview_tips" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/interview_tips.asp" class="sbtxt" title="Interview Tips" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Interview Tips</a></div>
				</li>
				<li class="tertiary"<% if tpage = "glossary" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/glossary.asp" class="sbtxt" title="Glossary" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Glossary</a></div>
				</li>
				<li class="tertiary"<% if tpage = "campus_faqs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada_camp/campus_faqs.asp" class="sbtxt" title="Campus FAQs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus FAQs</a></div>
				</li>
<%	End If %>
			</ul>
<%
	End Function
%>