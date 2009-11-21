
<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../learnmore/" %>
<%	If fpage <> "undergraduate" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>undergraduate.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Undergraduate/analyst programs">Undergraduate/analyst programs</a>
</p>
<%	End If %>
<%	If fpage <> "graduate" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>graduate.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Graduate/associate programs">Graduate/associate programs</a>
</p>
<%	End If %>
<p style="margin: 12px 0px 6px 0px;"><a href="http://bankofamericacareers.com/college/" target="_blank" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Campus recruiting calendar">Campus recruiting calendar</a></p>
<%	If fpage <> "internships" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>internships.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Internships">Internships</a>
</p>
<%	End If %>