			<tr valign="top"><td valign="middle" style="background: <% if mpage = "overview" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"><a href="overview.asp" title="Overview" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Overview</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td valign="middle" style="background: <% if mpage = "learnmore" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"><a href="learnmore.asp" title="Related Information" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Related Information</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
<%
	if mpage = "learnmore" then
		call RelInfoNav("#ffffff")
%>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
<%
	end if
%>
			<tr valign="top"><td id="tdnav" valign="middle" style="background: <% if mpage = "areasoftalent" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"><a href="areasoftalent.asp" title="Job Areas" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Job Areas</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
<%
	if mpage = "areasoftalent" then
		call AreasOfTalentNav("#ffffff")
%>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
<%
	end if
%>
			<tr valign="top"><td style="background: <% if mpage = "jobsearch" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"><a href="../jobsearch.aspx" title="Job Search" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Job Search</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td style="background: <% if mpage = "staffingevents" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"><a href="staffingevents.asp" title="Staffing Events" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Staffing Events</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>

<%
	Function AreasOfTalentNav(color)
%>
			<tr valign="top"><td valign="middle" style="background: <% if spage = "administration" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="administration.asp" class="sbtxt" title="Administration" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Administration</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "customercare" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="customercare.asp" class="sbtxt" title="Customer Care" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Customer Care</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "communications" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="communications.asp" class="sbtxt" title="Communications" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Communications</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;"><td style="background: <% if spage = "finance" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="finance.asp" class="sbtxt" title="Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Finance</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "humanresources" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="humanresources.asp" class="sbtxt" title="Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Human Resources</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "operations" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="operations.asp" class="sbtxt" title="Operations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Operations</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "riskevaluation" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="riskevaluation.asp" class="sbtxt" title="Risk Evaluation" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Evaluation</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "sales" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="sales.asp" class="sbtxt" title="Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Sales</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "technology" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="technology.asp" class="sbtxt" title="Technology" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Technology</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "consumerbanking" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="consumerbanking.asp" class="sbtxt" title="Consumer Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Consumer Banking</a></td></tr>
<%
	End Function
	
	Function RelInfoNav(color)
%>
			<tr valign="top"><td valign="middle" style="background: <% if spage = "benefitsadv" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="benefitsadv.asp" class="sbtxt" title="Benefits and Advantages" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits and Advantages</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;"><td style="background: <% if spage = "diversity" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="diversity.asp" class="sbtxt" title="Diversity" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Diversity</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "corpinfo" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="corpinfo.asp" class="sbtxt" title="Corporate Information" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Information</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "collrecruiting" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="collrecruiting.asp" class="sbtxt" title="College Recruiting" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">College Recruiting</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "globalloc" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="globalloc.asp" class="sbtxt" title="Global Locations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Locations</a></td></tr>
			<tr valign="top" style="background: <% Response.Write color %>;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="http://corp.bankofamerica.com/public/career/home.jsp" class="sbtxt" title="Investment Banking Careers" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Investment Banking Careers</a></td></tr>
<%
	End Function
%>