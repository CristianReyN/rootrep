	<%	href_pre = ""
		If page_section <> "ADA" Then href_pre = "../learnmore/" %>
<%	If tpage = "timeoff" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>mywork.asp" class="bacb" title="My Work &reg;">My Work<span style="font-size: 0.8em; position: relative; top: -0.6em;">&reg;</span></a>
</p>
<%	End If %>
<%	If tpage = "timeoff" Or tpage = "mywork" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>flexible_wa.asp" class="bacb" title="Flexible Work Arrangements">Flexible Work Arrangements</a>
</p>
<%	End If %>
<%	If tpage = "" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>lifeworks.asp" class="bacb" title="LifeWorks &reg;">LifeWorks<span style="font-size: 0.8em; position: relative; top: -0.6em;">&reg;</span></a>
</p>
<%	End If %>
<%	If tpage = "flexibleworkarrangements" Or tpage = "mywork"  Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>timeoff.asp" class="bacb" title="Time Away">Time Away</a>
</p>
<%	End If %>