<tr valign="top"><td>
<div id="lnav">
	<ul>
		<li<% if mpage = "overview" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="overview.asp" title="Overview" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Overview</a></div>
		</li>
		<li<% if mpage = "jobsearch" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../jobsearch.aspx" title="Job Search" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Job Search</a></div>
		</li>
		<li<% if mpage = "areasoftalent" then Response.Write " class=""home""" end if %>>
<div><a href="areasoftalent.asp" title="Job Areas" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Job Areas</a>
<%
	If mpage = "areasoftalent" Then
		call JobAreasNav(""," class=""home""")
	End If
%>
</div>
		</li>
		<li<% if mpage = "learnmore" then Response.Write " class=""home""" end if %>>
<div><a href="learnmore.asp" title="Related Information" class="g" onfocus="this.className='g-over';" onblur="this.className='g';">Related Information</a>
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
				<li<% if spage = "customercare" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="customercare.asp" class="sbtxt" title="Customer Care" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Customer Care</a></div>
				</li>
				<li<% if spage = "communications" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="communications.asp" class="sbtxt" title="Communications" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Communications</a></div>
				</li>
				<li<% if spage = "finance" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="finance.asp" class="sbtxt" title="Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Finance</a></div>
				</li>
				<li<% if spage = "humanresources" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="humanresources.asp" class="sbtxt" title="Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Human Resources</a></div>
				</li>
				<li<% if spage = "operations" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="operations.asp" class="sbtxt" title="Operations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Operations</a></div>
				</li>
				<li<% if spage = "riskevaluation" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="riskevaluation.asp" class="sbtxt" title="Risk Evaluation" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Evaluation</a></div>
				</li>
				<li<% if spage = "sales" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="sales.asp" class="sbtxt" title="Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Sales</a></div>
				</li>
				<li<% if spage = "technology" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="technology.asp" class="sbtxt" title="Technology" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Technology</a></div>
				</li>
				<li<% if spage = "consumerbanking" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="consumerbanking.asp" class="sbtxt" title="Consumer Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Consumer Banking</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function RelInfoNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "benefitsadv" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="benefitsadv.asp" class="sbtxt" title="Benefits and Advantages" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits and advantages</a></div>
				</li>
				<li<% if spage = "diversity" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="diversity.asp" class="sbtxt" title="Diversity" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Diversity and inclusion</a></div>
				</li>
				<li<% if spage = "corpinfo" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="corpinfo.asp" class="sbtxt" title="Corporate Information" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate information</a></div>
				</li>
				<li<% if spage = "staffingprocess" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="staffingprocess.asp" class="sbtxt" title="Our Staffing Process" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Our staffing process</a></div>
				</li>
				<li<% If spage = "collrecruiting" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="collrecruiting.asp" class="sbtxt" title="College Recruiting" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">College recruiting</a></div>
<%	If mpage = "learnmore" And spage = "collrecruiting" Then %>
				<li class="tertiary"<% if tpage = "career_compass" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="career_compass.asp" class="sbtxt" title="Career Compass" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">College Career Compass</a></div>
				</li>
				<li class="tertiary"<% if tpage = "undergraduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="undergraduate_programs.asp" class="sbtxt" title="Undergraduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Undergraduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "graduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="graduate_programs.asp" class="sbtxt" title="Graduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Graduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "internshipsp" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="internshipsp.asp" class="sbtxt" title="Internships" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Internships</a></div>
				</li>
<%	End If %>
				</li>
				<li<% if spage = "globalloc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="globalloc.asp" class="sbtxt" title="Global Locations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global locations</a></div>
				</li>
			</ul>
<%
	End Function
%>