<%	href_pre = ""
	If page_section <> "ADA" Then href_pre = "../learnmore/" %>
<%	If tpage <> "lobghr" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>lobghr.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Global Human Resources">Global Human Resources</a>
</p>
<%	End If %>
<%	If tpage <> "lobcf" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>lobcf.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Corporate Finance">Corporate Finance</a>
</p>
<%	End If %>
<%	If tpage <> "lobgmca" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>lobgmca.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Global Marketing &amp; Corporate Affairs">Global Marketing &amp; Corporate Affairs</a>
</p>
<%	End If %>
<%	If tpage <> "lobgr" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>lobgr.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Global Risk">Global Risk</a>
</p>
<%	End If %>