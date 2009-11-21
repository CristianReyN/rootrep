			<tr valign="top"><td valign="middle" style="background: <% if mpage = "overview" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"><a href="../overview/overview.asp" title="Overview">Overview</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td id="tdnavr" valign="middle" style="background: <% if mpage = "learnmore" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"<%if mpage <> "learnmore" then%> onmouseover="popnavr(true);" onmouseout="popnavr(false);"<%end if%>><a href="../learnmore/learnmore.asp" title="Related Information">Related Information</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td id="tdnav" valign="middle" style="background: <% if mpage = "areasoftalent" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"<%if mpage <> "areasoftalent" then%> onmouseover="popnav(true);" onmouseout="popnav(false);"<%end if%>><a href="../areasoftalent/areasoftalent.asp" title="Areas of Talent">Areas of Talent</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
<%
	if mpage = "areasoftalent" then
		call AreasOfTalentNav("#ffffff")
%>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
<%
	end if
%>
			<tr valign="top"><td style="background: <% if mpage = "jobsearch" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"><a href="../jobsearch/jobsearch.asp" title="Job Search">Job Search</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td style="background: <% if mpage = "staffingevents" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"><a href="../staffingevents/staffingevents.asp" title="Staffing Events">Staffing Events</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>

<%
	Function AreasOfTalentNav(color)
%>
			<tr valign="top"><td valign="middle" style="background: <% if spage = "administration" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../areasoftalent/administration.asp" class="sbtxt" title="Administration">Administration</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "customercare" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../areasoftalent/customercare.asp" class="sbtxt" title="Customer Care">Customer Care</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "communications" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../areasoftalent/communications.asp" class="sbtxt" title="Communications">Communications</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "finance" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../areasoftalent/finance.asp" class="sbtxt" title="Finance">Finance</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;"><td style="background: <% if spage = "humanresources" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../areasoftalent/humanresources.asp" class="sbtxt" title="Human Resources">Human Resources</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "operations" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../areasoftalent/operations.asp" class="sbtxt" title="Operations">Operations</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "riskevaluation" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../areasoftalent/riskevaluation.asp" class="sbtxt" title="Risk Evaluation">Risk Evaluation</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "sales" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../areasoftalent/sales.asp" class="sbtxt" title="Sales">Sales</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "technology" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../areasoftalent/technology.asp" class="sbtxt" title="Technology">Technology</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "consumerbanking" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../areasoftalent/consumerbanking.asp" class="sbtxt" title="Consumer Banking">Consumer Banking</a></td></tr>
<%
	End Function
	
	Function RelInfoNav(color)
%>
			<tr valign="top"><td valign="middle" style="background: <% if spage = "benefitsadv" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../learnmore/benefitsadv.asp" class="sbtxt" title="Benefits and Advantages">Benefits and Advantages</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;"><td style="background: <% if spage = "diversity" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../learnmore/diversity.asp" class="sbtxt" title="Diversity">Diversity</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "corpinfo" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../learnmore/corpinfo.asp" class="sbtxt" title="Corporate Information">Corporate Information</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "collrecruiting" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../learnmore/collrecruiting.asp" class="sbtxt" title="College Recruiting">College Recruiting</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "globalloc" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../learnmore/globalloc.asp" class="sbtxt" title="Global Locations">Global Locations</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="http://corp.bankofamerica.com/public/career/aboutus.jsp" class="sbtxt" title="Investment Banking Careers">Investment Banking Careers</a></td></tr>
<%
	End Function
%>
%>