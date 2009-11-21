	<%	href_pre = ""
		If page_section <> "ADA" Then href_pre = "../learnmore/" %>
<%	If tpage <> "mywork" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>mywork.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" style="text-decoration: none;" title="My Work &reg;"><span style="text-decoration: underline;">My Work</span><span style="font-size: 0.8em; position: relative; top: -0.6em;">&reg;</span></a>
</p>
<%	End If %>
<%	If tpage <> "flexibleworkarrangements" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>flexible_wa.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Flexible work arrangements">Flexible work arrangements</a>
</p>
<%	End If %>
<%	If tpage <> "lifeworks" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>lifeworks.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" style="text-decoration: none;" title="LifeWorks &reg;"><span style="text-decoration: underline;">LifeWorks</span><span style="font-size: 0.8em; position: relative; top: -0.6em;">&reg;</span></a>
</p>
<%	End If %>
<%	If tpage <> "employeeassistance" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>emplassistance.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Employee assistance program (EAP)">Employee assistance program (EAP)</a>
</p>
<%	End If %>
<%	If tpage <> "dependentcare" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>dependentcare.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Dependent care programs">Dependent care programs</a>
</p>
<%	End If %>
<%	If tpage <> "timeoff" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>timeoff.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Time off">Time off</a>
</p>
<%	End If %>
<%	If tpage <> "educationinitiatives" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>educationinit.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Education initiatives">Education initiatives</a>
</p>
<%	End If %>