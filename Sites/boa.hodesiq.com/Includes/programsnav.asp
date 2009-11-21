<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../learnmore/" %>
<%	If tpage <> "undergraduate_programs" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>undergraduate_programs.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Undergraduate/Analyst Programs">Undergraduate/Analyst Programs</a>
</p>
<%	End If %>
<%	If tpage <> "graduate_programs" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>graduate_programs.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Graduate/Associate Programs">Graduate/Associate Programs</a>
</p>
<%	End If %>
<%	If tpage <> "internships_program" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>internships_program.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Internships">Internships</a>
</p>
<%	End If %>