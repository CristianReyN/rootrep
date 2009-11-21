			<tr valign="top"><td valign="middle" style="background: <% if mpage = "overview" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"><a class="g" href="../overview/overview.asp" id="overview" title="Overview" onfocus="this.className='g-over';" onblur="this.className='g';">Overview</a><a name="lnav1" id="overviewm"></a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td id="tdnavr" valign="middle" style="background: <% if mpage = "learnmore" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"<%if mpage <> "learnmore" then%> onmouseover="popnavr(true);" onmouseout="popnavr(false);"<%end if%>><a class="g" href="../learnmore/learnmore.asp" id="learnmore" title="Related Information"<%if mpage <> "learnmore" then %> onfocus="this.className='g-over'; popnavr(true);" onblur="this.className='g'; popnavr(false);"<% else %> onfocus="this.className='g-over';" onblur="this.className='g';"<%end if%>>Related Information</a><a name="lnav2" id="anavrm"></a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
<%
	if mpage = "learnmore" then
		call RelInfoNav("#ffffff")
%>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
<%
	end if
%>
			<tr valign="top"><td id="tdnav" valign="middle" style="background: <% if mpage = "areasoftalent" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"<%if mpage <> "areasoftalent" then%> onmouseover="popnav(true);" onmouseout="popnav(false);"<%end if%>><a name="lnav3" id="anavm"></a><a class="g" href="../areasoftalent/areasoftalent.asp" id="areasoftalent" title="Areas of Talent"<%if mpage <> "areasoftalent" then %> onfocus="this.className='g-over'; popnav(true);" onblur="this.className='g'; popnav(false);"<% else %> onfocus="this.className='g-over';" onblur="this.className='g';"<%end if%>>Areas of Talent</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
<%
	if mpage = "areasoftalent" then
		call AreasOfTalentNav("#ffffff")
%>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
<%
	end if
%>
			<tr valign="top"><td style="background: <% if mpage = "jobsearch" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"><a name="lnav4" id="jsearchd"></a><a class="g" href="../jobsearch.aspx" id="jsearch" title="Job Search" onfocus="this.className='g-over';" onblur="this.className='g';">Job Search</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td style="background: <% if mpage = "staffingevents" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 0px 6px 0px 6px;"><a class="g" href="../staffingevents/staffingevents.asp" title="Staffing Events" onfocus="this.className='g-over';" onblur="this.className='g';">Staffing Events</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>

<%
	Function AreasOfTalentNav(color)
%>
			<tr valign="top"><td valign="middle" style="background: <% if spage = "administration" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a name="lnav5" id="anavd"></a><a href="../administration/" id="administration" class="sbtxt" title="Administration" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Administration</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;"><td style="background: <% if spage = "customercare" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../customercare/" class="sbtxt" title="Customer Care" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Customer Care</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "communications" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../communications/" class="sbtxt" title="Communications" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Communications</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "finance" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../finance/" class="sbtxt" title="Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Finance</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "humanresources" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../humanresources/" class="sbtxt" title="Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Human Resources</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "operations" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../operations/" class="sbtxt" title="Operations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Operations</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "riskevaluation" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../riskevaluation/" class="sbtxt" title="Risk Evaluation" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Evaluation</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "sales" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../sales/" class="sbtxt" title="Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Sales</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "technology" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../technology/" class="sbtxt" title="Technology" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Technology</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "consumerbanking" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../consumerbanking/" id="consumerbanking" class="sbtxt" title="Consumer Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Consumer Banking</a></td></tr>
<%
	End Function
	
	Function RelInfoNav(color)
%>
			<tr valign="top"><td valign="middle" style="background: <% if spage = "benefitsadv" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a name="lnav6" id="anavrd"></a><a href="../learnmore/benefitsadv.asp" id="benefitsadv" class="sbtxt" title="Benefits and Advantages" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits and Advantages</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;"><td style="background: <% if spage = "diversity" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../learnmore/diversity.asp" id="diversity" class="sbtxt" title="Diversity" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Diversity</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "corpinfo" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../learnmore/corpinfo.asp" class="sbtxt" title="Corporate Information" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate Information</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "collrecruiting" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../learnmore/collrecruiting.asp" class="sbtxt" title="College Recruiting" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">College Recruiting</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: <% if spage = "globalloc" then Response.Write "#eaf1f7" Else Response.Write "#cadceb" end if %>; padding: 5px 6px 5px 14px;"><a href="../learnmore/globalloc.asp" class="sbtxt" title="Global Locations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global Locations</a></td></tr>
			<tr valign="top"><td style="background: <% Response.Write color %>;"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #cadceb;" ><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="http://corp.bankofamerica.com/public/career/home.jsp" id="investment" class="sbtxt" title="Investment Banking Careers" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Investment Banking Careers</a></td></tr>
<%
	End Function
%>