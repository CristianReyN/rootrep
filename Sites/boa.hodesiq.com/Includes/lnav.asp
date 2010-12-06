<tr valign="top"><td>
<div id="lnav">
	<ul>
		<li<%If mpage = "overview" Then %><%If spage = "" Then %> class="home" style="padding-bottom: 5px;"<%Else%><%End if %><%End if %>>
<div><a class="g" href="../overview/overview.asp" title="Overview" onfocus="this.className='g-over';" onblur="this.className='g';">Overview</a></div>
		</li>
		<li id="jsearchli"<%If mpage = "jobsearch" Then %><%If spage = "" Then %> class="home"<%Else%><%End if %><%End if %>>
<div<%If mpage = "jobsearch" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../jobsearch.aspx" title="Job Search" onfocus="this.className='g-over';" onblur="this.className='g';">Job Search</a>
<%
	If mpage = "jobsearch" Then
		call JSearchNav(""," class=""home""","")
	Else
		call JSearchNav(" id=""jsearch""",""," class=""jsearchlili""")
	End If
%>
</div>
		</li>
		<li id="areasoftalentli"<%If mpage = "areasoftalent" Then %><%If spage = "" Then %> class="home"<%Else%> style="padding-bottom:0px;"<%End if %><%End if %>>
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
		<li id="lobli"<%If mpage = "lob" Then %><%If spage = "" Then %> class="home"<%Else%> style="padding-bottom:0px;"<%End if %><%End if %>>
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
		<li id="campli"<%If mpage = "camp" Then %><%If spage = "" Then %> class="home"<%Else%> style="padding-bottom:0px;"<%End if %><%End if %>>
<div<%If mpage = "camp" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../campus.aspx" id="camplia" title="Campus Recruiting" onfocus="this.className='g-over';" onblur="this.className='g';">Campus Recruiting</a>
<%
	If mpage = "camp" Then
		call CampNav(""," class=""home""")
	Else
		call CampNav(" id=""camp""","")
	End If
%>
</div>
		</li>
		<li<%If mpage = "bams" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../learnmore/bams.asp" title="Banc of America Merchant Services, LLC Job Search" onfocus="this.className='g-over';" onblur="this.className='g';">Banc&nbsp;of&nbsp;America Merchant&nbsp;Services,&nbsp;LLC Job&nbsp;Search</a></div>
		</li>
		<li id="locli"<%If mpage = "locations" Then %><%If spage = "" Then %> class="home"<%Else%> style="padding-bottom:0px;"<%End if %><%End if %>>
<div<%If mpage = "locations" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../locations/" id="loclia" title="Locations" onfocus="this.className='g-over';" onblur="this.className='g';">Locations</a>
<%
	If mpage = "locations" Then
		call LocationsNav(""," class=""home""")
	Else
		call LocationsNav(" id=""loc""","")
	End If
%>
</div>
		</li>
		<li<%If mpage = "media_gallery" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../overview/media_gallery.asp" title="Media Gallery" onfocus="this.className='g-over';" onblur="this.className='g';">Media Gallery</a></div>
		</li>
		<li<%If mpage = "staffingevents" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../staffingevents/staffingevents.asp" title="Staffing Events" onfocus="this.className='g-over';" onblur="this.className='g';">Staffing Events</a></div>
		</li>
		<li<%If mpage = "fags" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../faq/faq.asp" title="Frequently Asked Questions" onfocus="this.className='g-over';" onblur="this.className='g';">Frequently Asked Questions</a></div>
		</li>
		<li<%If mpage = "feedback" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../feedback/feedback.asp" title="Give Us Your Feedback" onfocus="this.className='g-over';" onblur="this.className='g';">Give Us Your Feedback</a></div>
		</li>
	</ul>
</div>
</td></tr>



<%
	Function JSearchNav(id,ul,li)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "appl_with_disabilities" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../appl_with_disabilities.aspx" class="sbtxt" title="Applicants with Disabilities" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Applicants with<br>Disabilities</a></div>
				</li>
			</ul>
<%
	End Function
%>



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
				<li class="tertiary"<% if tpage = "cw_teams" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../corporateworkplace/cw_teams.asp" class="sbtxt" title="Corporate Workplace Teams" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Workplace Teams</a></div>
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
				<li class="tertiary"<% if tpage = "aot_fulfilment" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgagecareers/fulfilment.asp" class="sbtxt" title="Fulfillment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Fulfillment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_homeequity" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgagecareers/homeequity.asp" class="sbtxt" title="Home Equity" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Home Equity</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_insurance" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgagecareers/insurance.asp" class="sbtxt" title="Insurance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Insurance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_mortgagesales" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgagecareers/mortgagesales.asp" class="sbtxt" title="Mortgage Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Mortgage Sales</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_servicing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgagecareers/servicing.asp" class="sbtxt" title="Servicing" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Servicing</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_locations" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgagecareers/locations.asp" class="sbtxt" title="Locations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Locations</a></div>
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
	Function LobNav(id,ul,li)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% Response.Write li %><% if spage = "lobgcsbb" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/lobgcsbb.asp" class="sbtxt" title="Global Consumer &amp; Small Business Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Consumer &amp; Small Business Banking</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobgcsbb" Then %>
				<li class="tertiary"<% if tpage = "lobnbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../consumerproductsandoperations/" class="sbtxt" title="Non-Banking Center Channel" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Non-Banking Center Channel</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../consumerbanking/" class="sbtxt" title="Banking Center Channel" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Banking Center Channel</a></div>
				</li>
<%	End If %>
				<li<% Response.Write li %><% if spage = "lobgbmwm" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding-right: 0px;"><a href="../gbmarketswealthmanagement/" class="sbtxt" title="Global Banking, Markets and Wealth &amp; Investment Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Banking, Markets and Wealth&nbsp;&amp;&nbsp;Investment Management</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobgbmwm" Then %>
				<li class="tertiary"<% if tpage = "lobgcib" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../gcib/" class="sbtxt" title="Global Banking &amp; Markets" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Banking &amp; Markets</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgcb" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../globalcommercialbanking/" class="sbtxt" title="Global Commercial Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Commercial Banking</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgwim" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../wealthmanagement/" class="sbtxt" title="Global Wealth &amp; Investment Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Wealth &amp; Investment Management</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobfa" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../financialadvisor/" class="sbtxt" title="Financial Advisor" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Financial Advisor</a></div>
				</li>
<%	End If %>
				<li<% Response.Write li %><% if spage = "lobgto" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../technology/" class="sbtxt" title="Global Technology" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Technology</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "lobcss" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/lobcss.asp" class="sbtxt" title="Corporate Staff &amp; Support" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Staff &amp; Support</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobcss" Then %>
				<li class="tertiary"<% if tpage = "lobghr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../humanresources/" class="sbtxt" title="Global Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Human Resources</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobcf" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../CFOgroup/" class="sbtxt" title="CFO Group/Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">CFO Group/Finance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgmca" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../marketing/" class="sbtxt" title="Global Marketing &amp; Corporate Affairs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Marketing &amp; Corporate Affairs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../risk/" class="sbtxt" title="Risk Management" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Management</a></div>
				</li>
				<li class="tertiary"<% if tpage = "corporateworkplace" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../corporateworkplace/" class="sbtxt" title="Corporate Workplace" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Workplace</a></div>
				</li>
<%	End If %>
				
				<li<% Response.Write li %><% if spage = "lob_mortgagecareers" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../mortgage/" class="sbtxt" title="Mortgage" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Mortgage</a></div>
				</li>
<%	If mpage = "lob" And spage = "lob_mortgagecareers" Then %>
				<li class="tertiary"<% if tpage = "lob_fulfilment" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgage/fulfilment.asp" class="sbtxt" title="Fulfillment" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Fulfillment</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_homeequity" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgage/homeequity.asp" class="sbtxt" title="Home Equity" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Home Equity</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_insurance" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgage/insurance.asp" class="sbtxt" title="Insurance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Insurance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_mortgagesales" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgage/mortgagesales.asp" class="sbtxt" title="Mortgage Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Mortgage Sales</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_servicing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgage/servicing.asp" class="sbtxt" title="Servicing" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Servicing</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_locations" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgage/locations.asp" class="sbtxt" title="Locations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Locations</a></div>
				</li>
<%	End If %>
			</ul>
<%
	End Function
%>



<%
	Function HiProgram(region)
		if IsEmpty(program) Then
			HiProgram = false
		Else
			If program.Item("region") = region Then
				HiProgram = true
			Else
				HiProgram = false
			End if
		End if
	End Function
	
	Function CampNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "campus-americas" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-Americas.aspx" class="sbtxt" title="Americas" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Americas</a></div>
				</li>
<%	If ( mpage = "camp" And spage = "campus-americas" ) Or HiProgram("Americas") Then %>
				<li class="tertiary"<% if ( tpage = "americas-explore-careers" And fpage = "" ) Or HiProgram("Americas") then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-Americas-explore-careers.aspx" class="sbtxt" title="Explore Careers" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Explore Careers</a></div>
				</li>
				<li class="tertiary"<% if tpage = "americas-our-culture" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-Americas-our-culture.aspx" class="sbtxt" title="Our Culture" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Our Culture</a></div>
				</li>
				<li class="tertiary"<% if tpage = "americas-meet-our-people" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-Americas-meet-our-people.aspx" class="sbtxt" title="Meet Our People" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Meet Our People</a></div>
				</li>
				<li class="tertiary"<% if tpage = "americas-find-your-fit" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-Americas-find-your-fit.aspx" class="sbtxt" title="Find Your Fit" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Find Your Fit</a></div>
				</li>
				<li class="tertiary"<% if tpage = "americas-campus-events" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../CampusEvents.aspx?region=1" class="sbtxt" title="Campus Events" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus Events</a></div>
				</li>
				<li class="tertiary"<% if tpage = "americas-how-to-apply" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-Americas-how-to-apply.aspx" class="sbtxt" title="How to Apply" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">How to Apply</a></div>
				</li>
<%	End If %>
				<li<% if spage = "campus-emea" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-EMEA.aspx" class="sbtxt" title="Europe, Middle East and Africa" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Europe, Middle East and Africa</a></div>
				</li>
<%	If ( mpage = "camp" And spage = "campus-emea" ) Or HiProgram("EMEA") Then %>
				<li class="tertiary"<% if ( tpage = "emea-opportunities" And fpage = "" ) Or HiProgram("EMEA") then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-EMEA-opportunities.aspx" class="sbtxt" title="Opportunities" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Opportunities</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea-our-culture" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-EMEA-our-culture.aspx" class="sbtxt" title="Our Culture" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Our Culture</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea-graduate-profiles" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-EMEA-graduate-profiles.aspx" class="sbtxt" title="Graduate Profiles" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Graduate Profiles</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea-find-your-fit" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-EMEA-find-your-fit.aspx" class="sbtxt" title="Find Your Fit" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Find Your Fit</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea-campus-events" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../CampusEvents.aspx?region=2" class="sbtxt" title="Campus Events" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus Events</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea-how-to-apply" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-EMEA-how-to-apply.aspx" class="sbtxt" title="How to Apply" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">How to Apply</a></div>
				</li>
<%	End If %>
				<li<% if spage = "campus-asia" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-AsiaPac.aspx" class="sbtxt" title="Asia Pacific" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Asia Pacific</a></div>
				</li>
<%	If ( mpage = "camp" And spage = "campus-asia" ) Or HiProgram("Asia Pacific") Then %>
				<li class="tertiary"<% if ( tpage = "asia-explore-careers" And fpage = "" ) Or HiProgram("Asia Pacific") then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-AsiaPac-explore-careers.aspx" class="sbtxt" title="Explore Careers" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Explore Careers</a></div>
				</li>
				<li class="tertiary"<% if tpage = "asia-our-culture" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-AsiaPac-our-culture.aspx" class="sbtxt" title="Our Culture" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Our Culture</a></div>
				</li>
				<li class="tertiary"<% if tpage = "asia-meet-our-people" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-AsiaPac-meet-our-people.aspx" class="sbtxt" title="Meet Our People" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Meet Our People</a></div>
				</li>
				<li class="tertiary"<% if tpage = "asia-find-your-fit" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-AsiaPac-find-your-fit.aspx" class="sbtxt" title="Find Your Fit" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Find Your Fit</a></div>
				</li>
				<li class="tertiary"<% if tpage = "asia-campus-events" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../CampusEvents.aspx?region=3" class="sbtxt" title="Campus Events" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus Events</a></div>
				</li>
				<li class="tertiary"<% if tpage = "asia-how-to-apply" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-AsiaPac-how-to-apply.aspx" class="sbtxt" title="How to Apply" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">How to Apply</a></div>
				</li>
<%	End If %>
				<li<% if spage = "career_fit_tool" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campusrecruiting/career_fit_tool.asp" class="sbtxt" title="Career Finder" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Career Finder</a></div>
				</li>
				<li<% if spage = "campus_events" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../CampusEvents.aspx" class="sbtxt" title="Campus Events" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Campus Events</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function LocationsNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "asia_overview" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="/asia_pacific.aspx" class="sbtxt" title="Asia Pacific" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Asia Pacific</a></div>
				</li>
				<li<% if spage = "canada" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="/canada.aspx" class="sbtxt" title="Canada" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Canada</a></div>
				</li>
				<li<% if spage = "costa_rica" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../locations/costa_rica.asp" class="sbtxt" title="Costa Rica" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Costa Rica</a></div>
				</li>
				<li<% if spage = "emea" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="/emea.aspx" class="sbtxt" title="Europe, Middle East and Africa" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Europe, Middle East<br>and Africa</a></div>
				</li>
				<li<% if spage = "united_states" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../learnmore/learnmore.asp" class="sbtxt" title="United States" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">United States</a></div>
				</li>
			</ul>
<%
	End Function
%>