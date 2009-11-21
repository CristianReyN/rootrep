<tr valign="top"><td>
<div id="lnav">
	<ul>
		<li<% if mpage = "overview" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="overview.asp" title="Overview" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Overview</a></div>
		</li>
		<li<% if mpage = "jobsearch" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../jobsearch.aspx" title="Job Search" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Job Search</a></div>
		</li>
		<li<% if mpage = "areasoftalent" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "areasoftalent" Then%> style="padding-right: 0px;"<%End If%>><a href="areasoftalent.asp" title="Job Areas" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Job Areas</a>
<%
	If mpage = "areasoftalent" Then
		call JobAreasNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<% if mpage = "lob" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "lob" Then%> style="padding-right: 0px;"<%End If%>><a href="lob.asp" title="Lines of Business" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Lines of Business</a>
<%
	If mpage = "lob" Then
		call LobNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<% if mpage = "learnmore" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "learnmore" Then%> style="padding-right: 0px;"<%End If%>><a href="learnmore.asp" title="Related Information" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Related Information</a>
<%
	If mpage = "learnmore" Then
		call RelInfoNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<% if mpage = "staffingevents" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="staffingevents.asp" title="Staffing Events" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Staffing Events</a></div>
		</li>
		<li<% if mpage = "globalcareers" And spage = "" then Response.Write " class=""home""" end if %>>
<div<%If mpage = "globalcareers" Then%> style="padding-right: 0px;"<%End If%>><a href="<%=GLOBAL_URL%>ada/" title="Global Careers" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Global Careers</a>
<%
	If mpage = "globalcareers" Then
		call GlobalCareersNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<% if mpage = "fags" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="faq.asp" title="Frequently Asked Questions" onfocus="this.className='g-over';" onblur="this.className='g';" style="line-height: 1.2em;">Frequently Asked Questions</a></div>
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
<div><a href="administration.asp" class="sbtxt" title="Administration" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Administration</a></div>
				</li>
				<li<% if spage = "finance" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="finance.asp" class="sbtxt" title="CFO Group/Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">CFO Group/Finance</a></div>
				</li>
				<li<% if spage = "communications" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="communications.asp" class="sbtxt" title="Communications" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Communications</a></div>
				</li>
				<li<% if spage = "consumerbanking" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="consumerbanking.asp" class="sbtxt" title="Consumer Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Consumer Banking</a></div>
				</li>
				<li<% if spage = "customercare" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="customercare.asp" class="sbtxt" title="Customer Care" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Customer Care</a></div>
				</li>
				<li<% if spage = "humanresources" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="humanresources.asp" class="sbtxt" title="Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Human Resources</a></div>
				</li>
				<li<% if spage = "operations" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="operations.asp" class="sbtxt" title="Operations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Operations</a></div>
				</li>
				<li<% if spage = "riskevaluation" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="riskevaluation.asp" class="sbtxt" title="Risk Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Management</a></div>
				</li>
				<li<% if spage = "sales" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="sales.asp" class="sbtxt" title="Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Sales</a></div>
				</li>
				<li<% if spage = "technology" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="technology.asp" class="sbtxt" title="Technology" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Technology</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function RelInfoNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "benefitsadv" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="benefitsadv.asp" class="sbtxt" title="Benefits and Advantages" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits and Advantages</a></div>
				</li>
				<li<% if spage = "diversity" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="diversity.asp" class="sbtxt" title="Diversity and Inclusion" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Diversity and Inclusion</a></div>
				</li>
				<li<% if spage = "corpinfo" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="corpinfo.asp" class="sbtxt" title="Corporate Information" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Information</a></div>
				</li>
				<li<% if spage = "staffingprocess" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="staffingprocess.asp" class="sbtxt" title="Our Staffing Process" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Our Staffing Process</a></div>
				</li>
				<li<% If spage = "collrecruiting" And (tpage = "" Or tpage = "information_for_parents") then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="collrecruiting.asp" class="sbtxt" title="Campus Recruiting" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus Recruiting</a></div>
				</li>
<%	If mpage = "learnmore" And spage = "collrecruiting" Then %>
				<li class="tertiary"<% if tpage = "career_compass" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="explore.asp" class="sbtxt" title="College Career Compass" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">College Career Compass</a></div>
				</li>
				<li class="tertiary"<% if tpage = "undergraduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="undergraduate_programs.asp" class="sbtxt" title="Undergraduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Undergraduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "graduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="graduate_programs.asp" class="sbtxt" title="Graduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Graduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "internships_program" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="internships_program.asp" class="sbtxt" title="Internships" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Internships</a></div>
				</li>
<%	End If %>
				<li<% if spage = "resume_interview_tips" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="resume_interview_tips.asp" class="sbtxt" title="Resume &amp; Interview Tips" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Resume &amp; Interview Tips</a></div>
				</li>
				<li<% if spage = "military_veteran_recruiting" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="military_veteran_recruiting.asp" class="sbtxt" title="Military &amp; Veteran Recruiting" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Military &amp; Veteran Recruiting</a></div>
				</li>
				<li<% if spage = "feedback" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="feedback.asp" class="sbtxt" title="Give Us Your Feedback" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Give Us Your Feedback</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function LobNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "lobgcsbb" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lobgcsbb.asp" class="sbtxt" title="Global Consumer &amp; Small Business Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Consumer &amp; Small Business Banking</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobgcsbb" Then %>
				<li class="tertiary"<% if tpage = "lobnbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lobnbcc.asp" class="sbtxt" title="Non-Banking Center Channel" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Non-Banking Center Channel</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lobbcc.asp" class="sbtxt" title="Banking Center Channel" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Banking Center Channel</a></div>
				</li>
<%	End If %>
				<li<% if spage = "lobgcib" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lobgcib.asp" class="sbtxt" title="Global Corporate &amp; Investment Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Corporate &amp; Investment Banking</a></div>
				</li>
				<li<% if spage = "lobgwim" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lobgwim.asp" class="sbtxt" title="Global Wealth &amp; Investment Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Wealth &amp; Investment Management</a></div>
				</li>
				<li<% if spage = "lobgto" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lobgto.asp" class="sbtxt" title="Global Technology &amp; Operations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Technology &amp; Operations</a></div>
				</li>
				<li<% if spage = "lobcss" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lobcss.asp" class="sbtxt" title="Corporate Staff &amp; Support" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Staff &amp; Support</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobcss" Then %>
				<li class="tertiary"<% if tpage = "lobghr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lobghr.asp" class="sbtxt" title="Global Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Human Resources</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobcf" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lobcf.asp" class="sbtxt" title="CFO Group/Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">CFO Group/Finance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgmca" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lobgmca.asp" class="sbtxt" title="Global Marketing &amp; Corporate Affairs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Marketing &amp; Corporate Affairs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lobgr.asp" class="sbtxt" title="Risk Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Management</a></div>
				</li>
<%	End If %>
				<li<% Response.Write li %><% if spage = "lb_career_compass" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="lb_career_compass.asp" class="sbtxt" title="Skills Assessment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Skills Assessment</a></div>
				</li>
			</ul>
<%
	End Function
%>




<%
	Function GlobalCareersNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "asia" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="<%=GLOBAL_URL%>ada/asia.aspx" class="sbtxt" title="Asia" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Asia</a></div>
				</li>
<%	If mpage = "globalcareers" And spage = "asia" Then %>
				<li class="tertiary"<% if tpage = "bana" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/bana.aspx" class="sbtxt" title="Bank of America in Asia" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Bank of America in Asia</a></div>
				</li>
				<li class="tertiary"<% if tpage = "bacs" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/ba_continuum.aspx" class="sbtxt" title="BA Continuum" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">BA Continuum</a></div>
				</li>
<%	End If %>
<%	If mpage = "globalcareers" And spage = "asia" And tpage = "bacs" Then %>
				<li class="quaternary"<% if fpage = "continuum_lob" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/continuum_lob.aspx" class="sbtxt" title="BA Continuum Lines of Business" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Lines of Business</a></div>
				</li>
				<li class="quaternary"<% if fpage = "continuum_benefits" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/continuum_benefits.aspx" class="sbtxt" title="BA Continuum Benefits" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits</a></div>
				</li>
				<li class="quaternary"<% if fpage = "continuum_culture" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/continuum_culture.aspx" class="sbtxt" title="BA Continuum Culture &amp; Work Environment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Culture &amp; Work Environment</a></div>
				</li>
				<li class="quaternary"<% if fpage = "continuum_staffing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/continuum_staffing.aspx" class="sbtxt" title="BA Continuum Staffing Process" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Staffing Process</a></div>
				</li>
<%	End If %>
				<li<% if spage = "canada" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="<%=GLOBAL_URL%>ada/canada.aspx" class="sbtxt" title="Canada" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Canada</a></div>
				</li>
<%	If mpage = "globalcareers" And spage = "canada" Then %>
				<li class="tertiary"<% if tpage = "canada_lob" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/canada_lob.aspx" class="sbtxt" title="Canada Lines of Business" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Lines of Business</a></div>
				</li>
				<li class="tertiary"<% if tpage = "canada_benefits" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/canada_benefits.aspx" class="sbtxt" title="Canada Benefits" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits</a></div>
				</li>
				<li class="tertiary"<% if tpage = "canada_culture" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/canada_culture.aspx" class="sbtxt" title="Canada Culture &amp; Work Environment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Culture &amp; Work Environment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "canada_staffing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/canada_staffing.aspx" class="sbtxt" title="Canada Staffing Process" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Staffing Process</a></div>
				</li>
<%	End If %>
				<li<% if spage = "emea" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="<%=GLOBAL_URL%>ada/emea.aspx" class="sbtxt" title="Europe, Middle East and Africa" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Europe, Middle East and Africa</a></div>
				</li>
<%	If mpage = "globalcareers" And spage = "emea" Then %>
				<li class="tertiary"<% if tpage = "emea_lob" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/emea_lob.aspx" class="sbtxt" title="Europe, Middle East and Africa Lines of Business" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Lines of Business</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea_benefits" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/emea_benefits.aspx" class="sbtxt" title="Europe, Middle East and Africa Benefits" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea_culture" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/emea_culture.aspx" class="sbtxt" title="Europe, Middle East and Africa Culture &amp; Work Environment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Culture &amp; Work Environment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea_staffing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="<%=GLOBAL_URL%>ada/emea_staffing.aspx" class="sbtxt" title="Europe, Middle East and Africa Staffing Process" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Staffing Process</a></div>
				</li>
<%	End If %>
			</ul>
<%
	End Function
%>