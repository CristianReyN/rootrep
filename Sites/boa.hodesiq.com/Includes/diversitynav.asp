<%	href_pre = ""
	If page_section <> "ADA" Then href_pre = "../learnmore/" %>
<%	If tpage <> "factsheets" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>factsheets.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Fact sheets">Fact sheets</a>
</p>
<%	End If %>
<%	If tpage <> "workforce" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>workforce.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Workforce data">Workforce data</a>
</p>
<%	End If %>
<%	If tpage <> "recruitingevents" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>recruitingevents.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Recruiting events">Recruiting events</a>
</p>
<%	End If %>
<%	If tpage <> "awards" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>awards.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Awards and recognition">Awards and recognition</a>
</p>
<%	End If %>