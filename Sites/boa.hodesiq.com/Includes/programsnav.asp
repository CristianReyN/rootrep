<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../learnmore/" %>
<%	If fpage <> "undergraduate_programs" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>undergraduate_programs.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Undergraduate/Analyst Programs">Undergraduate programs</a>
</p>
<%	End If %>
<%	If fpage <> "graduate_programs" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>graduate_programs.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Graduate/Associate Programs">Graduate programs</a>
</p>
<%	End If %>
<%	If fpage <> "internships_program" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>internships_program.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Internships">Internships</a>
</p>
<%	End If %>