<tr valign="top"><td>
<div id="lnav">
	<ul>
		<li<%If mpage = "overview" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/overview.asp" title="Overview" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Overview</a></div>
		</li>
		<li<%If mpage = "jobsearch" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../jobsearch.aspx" title="Job Search" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Job Search</a></div>
		</li>
		<li<%If mpage = "areasoftalent" Then %><%If spage = "" Then %> class="home"<%Else%> style="padding-bottom:0px;"<%End if %><%End if %>>
<div<%If mpage = "areasoftalent" Then%> style="padding-right: 0px;"<%End If%>><a href="../ada/areasoftalent.asp" title="Job Areas" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Job Areas</a>
<%
	If mpage = "areasoftalent" Then
		call JobAreasNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<%If mpage = "lob" Then %><%If spage = "" Then %> class="home"<%Else%> style="padding-bottom:0px;"<%End if %><%End if %>>
<div<%If mpage = "lob" Then%> style="padding-right: 0px;"<%End If%>><a href="../ada/lob.asp" title="Lines of Business" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Lines of Business</a>
<%
	If mpage = "lob" Then
		call LobNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<%If mpage = "camp" Then %><%If spage = "" Then %> class="home"<%Else%> style="padding-bottom:0px;"<%End if %><%End if %>>
<div<%If mpage = "camp" Then%> style="padding-right: 0px;"<%End If%>><a href="../ada_camp/" title="Campus Recruiting" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Campus Recruiting</a>
<%
	If mpage = "camp" Then
		call CampNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<%If mpage = "locations" Then %><%If spage = "" Then %> class="home"<%Else%> style="padding-bottom:0px;"<%End if %><%End if %>>
<div<%If mpage = "locations" Then%> style="padding-right: 0px;"<%End If%>><a href="../ada/regions.asp" title="Locations" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Locations</a>
<%
	If mpage = "locations" Then
		call LocationsNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<%If mpage = "media_gallery" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../ada/media_gallery.asp" title="Media Gallery" onfocus="this.className='g-over';" onblur="this.className='g';">Media Gallery</a></div>
		</li>
		<li<%If mpage = "staffingevents" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/staffingevents.asp" title="Staffing Events" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Staffing Events</a></div>
		</li>
		<li<%If mpage = "fags" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../ada/faq.asp" title="Frequently Asked Questions" onfocus="this.className='g-over';" onblur="this.className='g';">Frequently Asked Questions</a></div>
		</li>
		<li<%If mpage = "feedback" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../ada/feedback.asp" title="Give Us Your Feedback" onfocus="this.className='g-over';" onblur="this.className='g';" style="line-height: 1.2em;">Give Us Your Feedback</a></div>
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
			</td></tr>
<%
		End If
%>




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
				<li class="tertiary"<% if tpage = "cw_teams" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/cw_teams.asp" class="sbtxt" title="Corporate Workplace Teams" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Workplace Teams</a></div>
				</li>
<%	End If %>

				<li<% if spage = "customercare" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/customercare.asp" class="sbtxt" title="Customer Care" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Customer Care</a></div>
				</li>
				<li<% if spage = "humanresources" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/humanresources.asp" class="sbtxt" title="Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Human Resources</a></div>
				</li>
				
				<li<% if spage = "mortgagecareers" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/mortgagecareers.asp" class="sbtxt" title="Mortgage" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Mortgage</a></div>
				</li>
<%	If mpage = "areasoftalent" And spage = "mortgagecareers" Then %>
				<li class="tertiary"<% if tpage = "aot_fulfilment" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/fulfilment.asp" class="sbtxt" title="Fulfillment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Fulfillment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_homeequity" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/homeequity.asp" class="sbtxt" title="Home Equity" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Home Equity</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_insurance" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/insurancem.asp" class="sbtxt" title="Insurance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Insurance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_mortgagesales" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/mortgagesales.asp" class="sbtxt" title="Mortgage Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Mortgage Sales</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_servicing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/servicing.asp" class="sbtxt" title="Servicing" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Servicing</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_locations" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/locations.asp" class="sbtxt" title="Locations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Locations</a></div>
				</li>
<%	End If %>
				
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
	Function LobNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "lobgcsbb" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobgcsbb.asp" class="sbtxt" title="Global Consumer &amp; Small Business Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Consumer &amp; Small Business Banking</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobgcsbb" Then %>
				<li class="tertiary"<% if tpage = "lobnbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lobnbcc.asp" class="sbtxt" title="Non-Banking Center Channel" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Non-Banking Center Channel</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lobbcc.asp" class="sbtxt" title="Banking Center Channel" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Banking Center Channel</a></div>
				</li>
<%	End If %>
				<li<% if spage = "lobgbmwm" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobgbmwm.asp" class="sbtxt" title="Global Banking, Markets &amp; Wealth Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Banking, Markets &amp; Wealth Management</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobgbmwm" Then %>
				<li class="tertiary"<% if tpage = "lobgcib" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lobgcib.asp" class="sbtxt" title="Global Banking &amp; Markets" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Banking &amp; Markets</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgwim" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lobgwim.asp" class="sbtxt" title="Global Wealth &amp; Investment Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Wealth &amp; Investment Management</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobfa" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lobfa.asp" class="sbtxt" title="Financial Advisor" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Financial Advisor</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgcb" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lobgcb.asp" class="sbtxt" title="Global Commercial Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Commercial Banking</a></div>
				</li>
<%	End If %>
				<li<% if spage = "lobgto" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobgto.asp" class="sbtxt" title="Global Technology" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Technology</a></div>
				</li>
				<li<% if spage = "lobcss" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../ada/lobcss.asp" class="sbtxt" title="Corporate Staff &amp; Support" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Staff &amp; Support</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobcss" Then %>
				<li class="tertiary"<% if tpage = "lobghr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lobghr.asp" class="sbtxt" title="Global Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Human Resources</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobcf" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lobcf.asp" class="sbtxt" title="CFO Group/Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">CFO Group/Finance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgmca" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lobgmca.asp" class="sbtxt" title="Global Marketing &amp; Corporate Affairs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Marketing &amp; Corporate Affairs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lobgr.asp" class="sbtxt" title="Risk Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Management</a></div>
				</li>
				<li class="tertiary"<% if tpage = "corporateworkplace" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/corporateworkplace.asp" class="sbtxt" title="Corporate Workplace" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Workplace</a></div>
				</li>
<%	End If %>
				
				<li<% if spage = "lob_mortgagecareers" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/lob_mortgage.asp" class="sbtxt" title="Mortgage" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Mortgage</a></div>
				</li>
<%	If mpage = "lob" And spage = "lob_mortgagecareers" Then %>
				<li class="tertiary"<% if tpage = "lob_fulfilment" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lob_fulfilment.asp" class="sbtxt" title="Fulfillment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Fulfillment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_homeequity" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lob_homeequity.asp" class="sbtxt" title="Home Equity" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Home Equity</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_insurance" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lob_insurance.asp" class="sbtxt" title="Insurance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Insurance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_mortgagesales" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lob_mortgagesales.asp" class="sbtxt" title="Mortgage Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Mortgage Sales</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_servicing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lob_servicing.asp" class="sbtxt" title="Servicing" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Servicing</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_locations" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada/lob_locations.asp" class="sbtxt" title="Locations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Locations</a></div>
				</li>
<%	End If %>
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
				<li class="tertiary"<% if tpage = "undergraduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/analyst_programs.asp" class="sbtxt" title=" Analyst Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';"> Analyst Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "graduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/associate_phd_programs.asp" class="sbtxt" title="Associate & PhD Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Associate & PhD Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "internships" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/internships.asp" class="sbtxt" title="Internships" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Internships</a></div>
				</li>
<%	End If %>

				<li<% if spage = "our_culture" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada_camp/our_culture.asp" class="sbtxt" title="Our Culture" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Our Culture</a></div>
				</li>
<%	If mpage = "camp" And spage = "our_culture" Then %>
				<li class="tertiary"<% if tpage = "diversity_and_inclusion" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/diversity_and_inclusion.asp" class="sbtxt" title="Diversity and Inclusion" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Diversity and Inclusion</a></div>
				</li>
				<li class="tertiary"<% if tpage = "making_a_difference" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/making_a_difference.asp" class="sbtxt" title="Making a Difference" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Making a Difference</a></div>
				</li>
				<li class="tertiary"<% if tpage = "the_environment" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/the_environment.asp" class="sbtxt" title="The Environment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">The Environment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "benefits_and_rewards" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/benefits_and_rewards.asp" class="sbtxt" title="Benefits and Rewards" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits and Rewards</a></div>
				</li>
				<li class="tertiary"<% if tpage = "information_for_parents" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/information_for_parents.asp" class="sbtxt" title="Information for Parents" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Information for Parents</a></div>
				</li>
<%	End If %>

				<li<% if spage = "find_your_fit" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada_camp/find_your_fit.asp" class="sbtxt" title="Find Your Fit" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Find Your Fit</a></div>
				</li>
<%	If mpage = "camp" And spage = "find_your_fit" Then %>
				<li class="tertiary"<% if tpage = "career_fit_tool" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/career_fit_tool.asp" class="sbtxt" title="Career Fit Tool" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Career Fit Tool </a></div>
				</li>
<%	End If %>

				<li<% if spage = "campus_events" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../CampusEvents.aspx" class="sbtxt" title="Campus Events" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus Events</a></div>
				</li>
				
				<li<% if spage = "how_to_apply" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada_camp/how_to_apply.asp" class="sbtxt" title="How to Apply" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">How to Apply</a></div>
				</li>
<%	If mpage = "camp" And spage = "how_to_apply" Then %>
				<li class="tertiary"<% if tpage = "interview_tips" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/interview_tips.asp" class="sbtxt" title="Interview Tips" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Interview Tips</a></div>
				</li>
				<li class="tertiary"<% if tpage = "glossary" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/glossary.asp" class="sbtxt" title="Glossary" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Glossary</a></div>
				</li>
				<li class="tertiary"<% if tpage = "campus_faqs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../ada_camp/campus_faqs.asp" class="sbtxt" title="Campus FAQs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus FAQs</a></div>
				</li>
<%	End If %>
			</ul>
<%
	End Function
%>



<%
	Function LocationsNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "asia_overview" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="/asia_pacific.aspx" class="sbtxt" title="Asia Pacific" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Asia Pacific</a></div>
				</li>
				<li<% if spage = "canada" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="/canada.aspx" class="sbtxt" title="Canada" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Canada</a></div>
				</li>
				<li<% if spage = "costa_rica" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/costa_rica.asp" class="sbtxt" title="Costa Rica" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Costa Rica</a></div>
				</li>
				<li<% if spage = "emea" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="/emea.aspx" class="sbtxt" title="Europe, Middle East and Africa" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Europe, Middle East<br>and Africa</a></div>
				</li>
				<li<% if spage = "united_states" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../ada/learnmore.asp" class="sbtxt" title="United States" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">United States</a></div>
				</li>
			</ul>
<%
	End Function
%>