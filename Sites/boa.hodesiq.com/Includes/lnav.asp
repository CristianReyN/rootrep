<tr valign="top"><td>
<div id="lnav">
	<ul>
		<li<%If mpage = "overview" Then %><%If spage = "" Then %> class="home" style="padding-bottom: 5px;"<%Else%><%End if %><%End if %>>
<div><a class="g" href="../overview/overview.asp" title="Home" name="Home_leftnav"><span class="hidden">Careers </span>Home</a></div>
		</li>
		<li id="aboutusli"<%If mpage = "about_us" Then %><%If spage = "" Then %> class="home"<%Else%> style="padding-bottom:0px;"<%End if %><%End if %>>
<div<%If mpage = "about_us" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../overview/about_us.asp" title="About Us" name="About_Us_leftnav"><span class="hidden">Careers </span>About Us</a>
<%
	If mpage = "about_us" Then
		call AboutUsNav(""," class=""home""","")
	Else
		call AboutUsNav(" id=""aboutus""",""," class=""aboutuslili""")
	End If
%>
</div>
		</li>
		<li id="jsearchli"<%If mpage = "jobsearch" Then %><%If spage = "" Then %> class="home" style="margin-right: -6px;"<%Else%> style="padding-bottom:5px;"<%End if %><%End if %>>
<div<%If mpage = "jobsearch" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../jobsearch.aspx" title="Job Search" name="Job_Search_leftnav"><span class="hidden">Careers </span>Job Search</a>
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
<div<%If mpage = "areasoftalent" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../areasoftalent/areasoftalent.asp" id="areasoftalent" title="Job Areas" name="Job_Areas_leftnav"><span class="hidden">Careers </span>Job Areas</a>
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
<div<%If mpage = "lob" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../learnmore/lob.asp" id="loblia" title="Lines of Business" name="Lines_of_Business_leftnav"><span class="hidden">Careers </span>Lines of Business</a>
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
<div<%If mpage = "camp" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../campus.aspx" id="camplia" title="Campus Recruiting" name="Campus_Recruiting_leftnav"><span class="hidden">Careers </span>Campus Recruiting</a>
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
<div><a class="g" href="../learnmore/bams.asp" title="Banc of America Merchant Services, LLC Job Search" name="Banc_of_America_Merchant_Services_LLC_Job_Search_leftnav"><span class="hidden">Careers </span>Banc&nbsp;of&nbsp;America Merchant&nbsp;Services,&nbsp;LLC Job&nbsp;Search</a></div>
		</li>
		<li id="locli"<%If mpage = "locations" Then %><%If spage = "" Then %> class="home"<%Else%> style="padding-bottom:0px;"<%End if %><%End if %>>
<div<%If mpage = "locations" Then%> style="padding-right: 0px;"<%End If%>><a class="g" href="../locations/" id="loclia" title="Locations" name="Regions_leftnav"><span class="hidden">Careers </span>Locations</a>
<%
	If mpage = "locations" Then
		call LocationsNav(""," class=""home""")
	Else
		call LocationsNav(" id=""loc""","")
	End If
%>
</div>
		</li>
		<li<%If mpage = "staffingevents" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../staffingevents/staffingevents.asp" title="Career Events" name="Career_Events_leftnav"><span class="hidden">Careers </span>Career Events</a></div>
		</li>
		<li<%If mpage = "fags" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../faq/faq.asp" title="Frequently Asked Questions" name="Frequently_Asked_Questions_leftnav"><span class="hidden">Careers </span>Frequently Asked Questions</a></div>
		</li>
		<li<%If mpage = "feedback" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../feedback/feedback.asp" title="Give Us Your Feedback" name="Give_Us_Your_Feedback_leftnav"><span class="hidden">Careers </span>Give Us Your Feedback</a></div>
		</li>
	</ul>
</div>
</td></tr>
<tr valign="top"><td>

</td></tr>



<%
	Function AboutUsNav(id,ul,li)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "diversity" Or spage = "diversity_video" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../learnmore/diversity.asp" class="sbtxt" title="Diversity and Inclusion" name="Diversity_and_Inclusion_leftnav"><span class="hidden">Careers </span>Diversity and Inclusion</a></div>
				<li<% if spage = "values" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../learnmore/values.asp" class="sbtxt" title="Values" name="Values_leftnav"><span class="hidden">Careers </span>Values</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function JSearchNav(id,ul,li)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "appl_with_disabilities" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../appl_with_disabilities.aspx" class="sbtxt" title="Applicants with Disabilities" name="Applicants_with_Disabilities_leftnav"><span class="hidden">Careers </span>Applicants with<br>Disabilities</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function JobAreasNav(id,ul,li)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "finance" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../finance/" class="sbtxt" title="CFO Group/Finance" name="Job_Areas_CFO_Group_Finance_leftnav"><span class="hidden">Careers </span>CFO Group/Finance</a></div>
				</li>
				<li<% if spage = "consumerbanking" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../consumerbank/" class="sbtxt" title="Consumer Banking" name="Consumer_Banking_leftnav"><span class="hidden">Careers </span>Consumer Banking</a></div>
				</li>
				<li<% if spage = "customercare" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../customercare/" class="sbtxt" title="Customer Care" name="Customer_Care_leftnav"><span class="hidden">Careers </span>Customer Care</a></div>
				</li>
				<li<% if spage = "humanresources" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../hr/" class="sbtxt" title="Human Resources" name="Human_Resources_leftnav"><span class="hidden">Careers </span>Human Resources</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "mortgagecareers" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../mortgagecareers/" class="sbtxt" title="Mortgage" name="Job_Areas_Mortgage_leftnav"><span class="hidden">Careers </span>Mortgage</a></div>
				</li>
<%	If mpage = "areasoftalent" And spage = "mortgagecareers" Then %>
				<li class="tertiary"<% if tpage = "aot_fulfilment" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgagecareers/fulfilment.asp" class="sbtxt" title="Home Loans" name="Job_Areas_Home_Loans_leftnav"><span class="hidden">Careers </span>Home Loans</a></div>
				</li>
				<li class="tertiary"<% if tpage = "aot_servicing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgagecareers/servicing.asp" class="sbtxt" title="Legacy Asset Servicing" name="Job_Areas_Legacy_Asset_Servicing_leftnav"><span class="hidden">Careers </span>Legacy Asset Servicing</a></div>
				</li>
<%	End If %>
				<li<% if spage = "operations" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../operations/" class="sbtxt" title="Operations" name="Operations_leftnav"><span class="hidden">Careers </span>Operations</a></div>
				</li>
				<li<% if spage = "riskevaluation" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../riskevaluation/" class="sbtxt" title="Risk Management" name="Risk_Management_leftnav"><span class="hidden">Careers </span>Risk Management</a></div>
				</li>
				<li<% if spage = "sales" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../sales/" class="sbtxt" title="Sales" name="Sales_leftnav"><span class="hidden">Careers </span>Sales</a></div>
				</li>
				<li<% if spage = "technology" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../tech/" class="sbtxt" title="Technology" name="Technology_leftnav"><span class="hidden">Careers </span>Technology</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function LobNav(id,ul,li)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% Response.Write li %><% if spage = "lobgcsbb" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/lobgcsbb.asp" class="sbtxt" title="Global Consumer &amp; Small Business Banking" name="Global_Consumer_Small_Business_Banking_leftnav"><span class="hidden">Careers </span>Global Consumer &amp; Small Business Banking</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobgcsbb" Then %>
				<li class="tertiary"<% if tpage = "lobnbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../consumerproductsandoperations/" class="sbtxt" title="Non-Banking Center Channel" name="Non-Banking_Center_Channel_leftnav"><span class="hidden">Careers </span>Non-Banking Center Channel</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobbcc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../consumerbanking/" class="sbtxt" title="Banking Center Channel" name="Banking_Center_Channel_leftnav"><span class="hidden">Careers </span>Banking Center Channel</a></div>
				</li>
<%	End If %>
				<li<% Response.Write li %><% if spage = "lobgcib" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../gcib/" class="sbtxt" title="Global Banking &amp; Markets" name="Global_Banking_Markets_leftnav"><span class="hidden">Careers </span>Global Banking &amp; Markets</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "lobgcb" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../globalcommercialbanking/" class="sbtxt" title="Global Commercial Banking" name="Global_Commercial_Banking_leftnav"><span class="hidden">Careers </span>Global Commercial Banking</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "lobgwim" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../wealthmanagement/" class="sbtxt" title="Global Wealth &amp; Investment Management" name="Global_Wealth_Investment_Management_leftnav"><span class="hidden">Careers </span>Global Wealth &amp; Investment Management</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "lobfa" And  tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../financialadvisor/" class="sbtxt" title="Financial Advisor" name="Financial_Advisor_leftnav"><span class="hidden">Careers </span>Financial Advisor</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobfa" Then %>
				<li class="tertiary"<% if tpage = "lobfaamericas" Or tpage = "lobfaamericasrole" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../financialadvisor/lobfaamericas.asp" class="sbtxt" title="Americas" name="Financial_Advisor_Americas_leftnav"><span class="hidden">Careers </span>Americas</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobfaemea" Or tpage = "lobfaemearole" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../financialadvisor/lobfaemea.asp" class="sbtxt" title="Europe, Middle East and Africa" name="Financial_Advisor_Europe_Middle_East_and_Africa_leftnav"><span class="hidden">Careers </span>Europe, Middle East and Africa</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobfaasia" Or tpage = "lobfaasiarole" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../financialadvisor/lobfaasia.asp" class="sbtxt" title="Asia Pacific" name="Financial_Advisor_Asia_Pacific_leftnav"><span class="hidden">Careers </span>Asia Pacific</a></div>
				</li>
<%	End If %>
				<li<% Response.Write li %><% if spage = "lobgto" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../technology/" class="sbtxt" title="Global Technology &amp; Operations" name="Global_Technology_Operations_leftnav"><span class="hidden">Careers </span>Global Technology &amp; Operations</a></div>
				</li>
				<li<% Response.Write li %><% if spage = "lobcss" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/lobcss.asp" class="sbtxt" title="Corporate Staff &amp; Support" name="Corporate_Staff_Support_leftnav"><span class="hidden">Careers </span>Corporate Staff &amp; Support</a></div>
				</li>
<%	If mpage = "lob" And spage = "lobcss" Then %>
				<li class="tertiary"<% if tpage = "lobghr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../humanresources/" class="sbtxt" title="Global Human Resources" name="Global_Human_Resources_leftnav"><span class="hidden">Careers </span>Global Human Resources</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobcf" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../CFOgroup/" class="sbtxt" title="CFO Group/Finance" name="Lines_of_Business_CFO_Group_Finance_leftnav"><span class="hidden">Careers </span>CFO Group/Finance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgmca" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../marketing/" class="sbtxt" title="Global Marketing &amp; Corporate Affairs" name="Global_Marketing_Corporate_Affairs_leftnav"><span class="hidden">Careers </span>Global Marketing &amp; Corporate Affairs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lobgr" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../risk/" class="sbtxt" title="Global Risk Management" name="Global_Risk_Management_leftnav"><span class="hidden">Careers </span>Global Risk Management</a></div>
				</li>
				<li class="tertiary"<% if tpage = "globalcompliance" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../globalcompliance/" class="sbtxt" title="Global Compliance" name="Global_Compliance_leftnav"><span class="hidden">Careers </span>Global Compliance</a></div>
				</li>
				<li class="tertiary"<% if tpage = "corporateaudit" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../corporateaudit/" class="sbtxt" title="Corporate Audit" name="Corporate_Audit_leftnav"><span class="hidden">Careers </span>Corporate Audit</a></div>
				</li>
				<li class="tertiary"<% if tpage = "legal" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../legal/" class="sbtxt" title="Legal" name="Legal_leftnav"><span class="hidden">Careers </span>Legal</a></div>
				</li>
<%	End If %>
				
				<li<% Response.Write li %><% if spage = "lob_mortgagecareers" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../mortgage/" class="sbtxt" title="Mortgage" name="Lines_of_Business_Mortgage_leftnav"><span class="hidden">Careers </span>Mortgage</a></div>
				</li>
<%	If mpage = "lob" And spage = "lob_mortgagecareers" Then %>
				<li class="tertiary"<% if tpage = "lob_fulfilment" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgage/fulfilment.asp" class="sbtxt" title="Home Loans" name="Lines_of_Business_Home_Loans_leftnav"><span class="hidden">Careers </span>Home Loans</a></div>
				</li>
				<li class="tertiary"<% if tpage = "lob_servicing" then Response.Write " style=""background: #eaf1f7;""" end if %>><div style="padding: 0px 6px 0px 18px;"><a href="../mortgage/servicing.asp" class="sbtxt" title="Legacy Asset Servicing" name="Lines_of_Business_Legacy_Asset_Servicing_leftnav"><span class="hidden">Careers </span>Legacy Asset Servicing</a></div>
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
				<!--<li<% if spage = "campus-americas" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="ttp://campus.bankofamerica.com/americas.aspx" class="sbtxt" title="Americas" name="Campus_Recruiting_Americas_leftnav"><span class="hidden">Careers </span>Americas</a></div>
				</li>
<%	If ( mpage = "camp" And spage = "campus-americas" ) Or HiProgram("Americas") Then %>
				<li class="tertiary"<% if ( tpage = "americas-explore-careers" And fpage = "" ) Or HiProgram("Americas") then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-Americas-explore-careers.aspx" class="sbtxt" title="Explore Careers" name="Americas_Explore_Careers_leftnav"><span class="hidden">Careers </span>Explore Careers</a></div>
				</li>
				<li class="tertiary"<% if tpage = "americas-our-culture" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-Americas-our-culture.aspx" class="sbtxt" title="Our Culture" name="Americas_Our_Culture_leftnav"><span class="hidden">Careers </span>Our Culture</a></div>
				</li>
				<li class="tertiary"<% if tpage = "americas-meet-our-people" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-Americas-meet-our-people.aspx" class="sbtxt" title="Meet Our People" name="Americas_Meet_Our_People_leftnav"><span class="hidden">Careers </span>Meet Our People</a></div>
				</li>
				<li class="tertiary"<% if tpage = "americas-find-your-fit" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-Americas-find-your-fit.aspx" class="sbtxt" title="Find Your Fit" name="Americas_Find_Your_Fit_leftnav"><span class="hidden">Careers </span>Find_Your_Fit</a></div>
				</li>
				<li class="tertiary"<% if tpage = "americas-campus-events" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../CampusEvents.aspx?region=1" class="sbtxt" title="Campus Events" name="Americas_Campus_Events_leftnav"><span class="hidden">Careers </span>Campus Events</a></div>
				</li>
				<li class="tertiary"<% if tpage = "americas-how-to-apply" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-Americas-how-to-apply.aspx" class="sbtxt" title="How to Apply" name="Americas_How_to_Apply_leftnav"><span class="hidden">Careers </span>How to Apply</a></div>
				</li>
                -->
<%	End If %>
<!--				<li<% if spage = "campus-emea" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="http://campus.bankofamerica.com/emea.aspx" class="sbtxt" title="Europe, Middle East and Africa" name="Campus_Recruiting_Europe_Middle_East_and_Africa_leftnav"><span class="hidden">Campus </span>Europe, Middle East and Africa</a></div>
				</li>
<%	If ( mpage = "camp" And spage = "campus-emea" ) Or HiProgram("EMEA") Then %>
				<li class="tertiary"<% if ( tpage = "emea-opportunities" And fpage = "" ) Or HiProgram("EMEA") then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-EMEA-opportunities.aspx" class="sbtxt" title="Explore Opportunities" name="Europe_Middle_East_and_Africa_Explore_Opportunities_leftnav"><span class="hidden">Careers </span>Explore Opportunities</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea-our-culture" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-EMEA-our-culture.aspx" class="sbtxt" title="Our Culture" name="Europe_Middle_East_and_Africa_Our_Culture_leftnav"><span class="hidden">Careers </span>Our Culture</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea-graduate-profiles" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-EMEA-graduate-profiles.aspx" class="sbtxt" title="Graduate Profiles" name="Graduate_Profiles_leftnav"><span class="hidden">Careers </span>Graduate Profiles</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea-find-your-fit" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-EMEA-find-your-fit.aspx" class="sbtxt" title="Find Your Fit" name="Europe_Middle_East_and_Africa_Find_Your_Fit_leftnav"><span class="hidden">Careers </span>Find Your Fit</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea-campus-events" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../CampusEvents.aspx?region=2" class="sbtxt" title="Campus Events" name="Europe_Middle_East_and_Africa_Campus_Events_leftnav"><span class="hidden">Careers </span>Campus Events</a></div>
				</li>
				<li class="tertiary"<% if tpage = "emea-how-to-apply" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-EMEA-how-to-apply.aspx" class="sbtxt" title="How to Apply" name="Europe_Middle_East_and_Africa_How_to_Apply_leftnav"><span class="hidden">Careers </span>How to Apply</a></div>
				</li>
<%	End If %>
				<li<% if spage = "campus-asia" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="http://campus.bankofamerica.com/asia-pacific.aspx" class="sbtxt" title="Asia Pacific" name="Campus_Recruiting_Asia_Pacific_leftnav"><span class="hidden">Campus </span>Asia Pacific</a></div>
				</li>
<%	If ( mpage = "camp" And spage = "campus-asia" ) Or HiProgram("Asia Pacific") Then %>
				<li class="tertiary"<% if ( tpage = "asia-explore-careers" And fpage = "" ) Or HiProgram("Asia Pacific") then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-AsiaPac-explore-careers.aspx" class="sbtxt" title="Explore Careers" name="Asia_Pacific_Explore_Careers_leftnav"><span class="hidden">Careers </span>Explore Careers</a></div>
				</li>
				<li class="tertiary"<% if tpage = "asia-our-culture" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-AsiaPac-our-culture.aspx" class="sbtxt" title="Our Culture" name="Asia_Pacific_Our_Culture_leftnav"><span class="hidden">Careers </span>Our Culture</a></div>
				</li>
				<li class="tertiary"<% if tpage = "asia-meet-our-people" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-AsiaPac-meet-our-people.aspx" class="sbtxt" title="Meet Our People" name="Asia_Pacific_Meet_Our_People_leftnav"><span class="hidden">Careers </span>Meet Our People</a></div>
				</li>
				<li class="tertiary"<% if tpage = "asia-find-your-fit" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-AsiaPac-find-your-fit.aspx" class="sbtxt" title="Find Your Fit" name="Asia_Pacific_Find_Your_Fit_leftnav"><span class="hidden">Careers </span>Find Your Fit</a></div>
				</li>
				<li class="tertiary"<% if tpage = "asia-campus-events" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../CampusEvents.aspx?region=3" class="sbtxt" title="Campus Events" name="Asia_Pacific_Campus_Events_leftnav"><span class="hidden">Careers </span>Campus Events</a></div>
				</li>
				<li class="tertiary"<% if tpage = "asia-how-to-apply" And fpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-AsiaPac-how-to-apply.aspx" class="sbtxt" title="How to Apply" name="Asia_Pacific_How_to_Apply_leftnav"><span class="hidden">Careers </span>How to Apply</a></div>
				</li>
<%	End If %>
				<li<% if spage = "career_fit_tool" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-find-your-fit.aspx" class="sbtxt" title="Find Your Fit" name="Campus_Recruiting_Find_Your_Fit_leftnav"><span class="hidden">Careers </span>Find Your Fit</a></div>
				</li>
				<li<% if spage = "campus_events" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../CampusEvents.aspx" class="sbtxt" title="Campus Events" name="Campus_Recruiting_Campus_Events_leftnav"><span class="hidden">Careers </span>Campus Events</a></div>
				</li>
				<li<% if spage = "video_library" And tpage = "" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../campus-video-library.aspx" class="sbtxt" title="Video Library" name="Video_Library_leftnav"><span class="hidden">Careers </span>Video Library</a></div>
				</li>
			</ul>-->
<%
	End Function
%>



<%
	Function LocationsNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "asia_overview" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="/asia_pacific.aspx" class="sbtxt" title="Asia Pacific" name="Regions_Asia_Pacific_leftnav"><span class="hidden">Careers </span>Asia Pacific</a></div>
				</li>
				<li<% if spage = "canada" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="/canada.aspx" class="sbtxt" title="Canada" name="Regions_Canada_leftnav"><span class="hidden">Careers </span>Canada</a></div>
				</li>
				<li<% if spage = "costa_rica" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="/latin_america.aspx" class="sbtxt" title="Latin America" name="Regions_Latin_America_leftnav"><span class="hidden">Careers </span>Latin America</a></div>
				</li>
				<li<% if spage = "emea" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="/emea.aspx" class="sbtxt" title="Europe, Middle East and Africa" name="Regions_Europe_Middle_East_and_Africa_leftnav"><span class="hidden">Careers </span>Europe, Middle East<br>and Africa</a></div>
				</li>
				<li<% if spage = "united_states" And tpage <> "diversity_video" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../learnmore/learnmore.asp" class="sbtxt" title="United States" name="Regions_United_States_leftnav"><span class="hidden">Careers </span>United States</a></div>
				</li>
			</ul>
<%
	End Function
%>