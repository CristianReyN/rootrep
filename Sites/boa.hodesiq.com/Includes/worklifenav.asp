	<%	href_pre = ""
		If page_section <> "ADA" Then href_pre = "../learnmore/" %>
<%	If fpage = "flexibleworkarrangements" Or fpage = "timeoff" Or fpage = "mywork" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>lifemanagement.asp" class="bacb" title="Life Management Benefits">Life Management Benefits</a>
</p>
<%	End If %>
<%	If fpage = "timeoff" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>mywork.asp" class="bacb" title="My Work &reg;">My Work<span style="font-size: 0.8em; position: relative; top: -0.6em;">&reg;</span></a>
</p>
<%	End If %>
<%	If fpage = "timeoff" Or fpage = "mywork" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>flexible_wa.asp" class="bacb" title="Flexible Work Arrangements">Flexible Work Arrangements</a>
</p>
<%	End If %>
<%	If fpage = "" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>lifeworks.asp" class="bacb" title="LifeWorks &reg;">LifeWorks<span style="font-size: 0.8em; position: relative; top: -0.6em;">&reg;</span></a>
</p>
<%	End If %>
<%	If fpage = "flexibleworkarrangements" Or fpage = "mywork"  Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>timeoff.asp" class="bacb" title="Time Away">Time Away</a>
</p>
<%	End If %>