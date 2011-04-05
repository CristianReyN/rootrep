<%	href_pre = ""
	If page_section <> "ADA" Then href_pre = "../learnmore/" %>
<%	If fpage <> "factsheets" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>factsheets.asp" class="bacb">Our Approach and History</a>
</p>
<%	End If %>
<%	If fpage <> "workforce" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>workforce.asp" class="bacb">Workforce data</a>
</p>
<%	End If %>
<%	If fpage <> "recruitingevents" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>recruitingevents.asp" class="bacb">Recruiting events</a>
</p>
<%	End If %>
<%	If fpage <> "awards" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>awards.asp" class="bacb">Awards and recognition</a>
</p>
<%	End If %>