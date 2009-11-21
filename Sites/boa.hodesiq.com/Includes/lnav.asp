<tr valign="top"><td>
<div id="lnav">
	<ul>
		<li<% if mpage = "overview" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../overview/overview.asp" title="Overview" onfocus="this.className='g-over';" onblur="this.className='g';">Overview</a></div>
		</li>
		<li<% if mpage = "jobsearch" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../jobsearch.aspx" title="Job Search" onfocus="this.className='g-over';" onblur="this.className='g';">Job Search</a></div>
		</li>
		<li id="areasoftalentli"<% if mpage = "areasoftalent" then Response.Write " class=""home""" end if %>>
<div><a class="g" href="../areasoftalent/areasoftalent.asp" id="areasoftalent" title="Job Areas" onfocus="this.className='g-over';" onblur="this.className='g';">Job Areas</a>
<%
	If mpage = "areasoftalent" Then
		call JobAreasNav(""," class=""home""")
	Else
		call JobAreasNav(" id=""jobareas""","")
	End If
%>
</div>
		</li>
		<li id="learnmoreli"<% if mpage = "learnmore" then Response.Write " class=""home""" end if %>>
<div><a class="g" href="../learnmore/learnmore.asp" id="learnmore" title="Related Information" onfocus="this.className='g-over';" onblur="this.className='g';">Related Information</a>
<%
	If mpage = "learnmore" Then
		call RelInfoNav(""," class=""home""")
	ElseIf mpage = "areasoftalent" Then
		call RelInfoNav(" id=""relinfo2""","")
	Else
		call RelInfoNav(" id=""relinfo""","")
	End If
%>
</div>
		</li>
		<li<% if mpage = "staffingevents" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../staffingevents/staffingevents.asp" title="Staffing Events" onfocus="this.className='g-over';" onblur="this.className='g';">Staffing Events</a></div>
		</li>
		<li<% if mpage = "fags" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a class="g" href="../faq/faq.asp" title="Frequently Asked Questions" onfocus="this.className='g-over';" onblur="this.className='g';">Frequently Asked Questions</a></div>
		</li>
	</ul>
</div>
</td></tr>



<%
	Function JobAreasNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "administration" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../administration/" class="sbtxt" title="Administration" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Administration</a></div>
				</li>
				<li<% if spage = "customercare" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../customercare/" class="sbtxt" title="Customer Care" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Customer Care</a></div>
				</li>
				<li<% if spage = "communications" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../communications/" class="sbtxt" title="Communications" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Communications</a></div>
				</li>
				<li<% if spage = "finance" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../finance/" class="sbtxt" title="Finance" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Finance</a></div>
				</li>
				<li<% if spage = "humanresources" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../humanresources/" class="sbtxt" title="Human Resources" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Human Resources</a></div>
				</li>
				<li<% if spage = "operations" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../operations/" class="sbtxt" title="Operations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Operations</a></div>
				</li>
				<li<% if spage = "riskevaluation" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../riskevaluation/" class="sbtxt" title="Risk Evaluation" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Risk Evaluation</a></div>
				</li>
				<li<% if spage = "sales" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../sales/" class="sbtxt" title="Sales" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Sales</a></div>
				</li>
				<li<% if spage = "technology" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../technology/" class="sbtxt" title="Technology" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Technology</a></div>
				</li>
				<li<% if spage = "consumerbanking" then Response.Write " style=""background: #eaf1f7;""" end if %>>
<div><a href="../consumerbanking/" class="sbtxt" title="Consumer Banking" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Consumer Banking</a></div>
				</li>
			</ul>
<%
	End Function
%>



<%
	Function RelInfoNav(id,ul)
%>			<ul<% Response.Write id %><% Response.Write ul %>>
				<li<% if spage = "benefitsadv" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/benefitsadv.asp" class="sbtxt" title="Benefits and Advantages" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Benefits and advantages</a></div>
				</li>
				<li<% if spage = "diversity" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/diversity.asp" class="sbtxt" title="Diversity" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Diversity and inclusion</a></div>
				</li>
				<li<% if spage = "corpinfo" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/corpinfo.asp" class="sbtxt" title="Corporate Information" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Corporate information</a></div>
				</li>
				<li<% if spage = "staffingprocess" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../staffingevents/staffingprocess.asp" class="sbtxt" title="Our Staffing Process" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Our staffing process</a></div>
				</li>
				<li<% If spage = "collrecruiting" And tpage <> "career_compass" And tpage <> "undergraduate_programs" And tpage <> "graduate_programs" And tpage <> "internships_program" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/collrecruiting.asp" class="sbtxt" title="College Recruiting" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">College recruiting</a></div>
<%	If mpage = "learnmore" And spage = "collrecruiting" Then %>
				<li class="tertiary"<% if tpage = "career_compass" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/career_compass.asp" class="sbtxt" title="Career Compass" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">College Career Compass</a></div>
				</li>
				<li class="tertiary"<% if tpage = "undergraduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/undergraduate_programs.asp" class="sbtxt" title="Undergraduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Undergraduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "graduate_programs" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/graduate_programs.asp" class="sbtxt" title="Graduate Programs" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Graduate Programs</a></div>
				</li>
				<li class="tertiary"<% if tpage = "internships_program" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/internships_program.asp" class="sbtxt" title="Internships" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Internships</a></div>
				</li>
<%	End If %>
				</li>
				<li<% if spage = "globalloc" then Response.Write " style=""background: #eaf1f7;""" end if %>><div><a href="../learnmore/globalloc.asp" class="sbtxt" title="Global Locations" onfocus="this.className='sbtxt-over';" onblur="this.className='sbtxt';">Global locations</a></div>
				</li>
			</ul>
<%
	End Function
%>