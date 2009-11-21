<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../learnmore/" %>
<a href="http://bankofamericacareers.com/college/" target="_blank" title="Campus Calendar"><img src="../images/boa_calendar.jpg" width="205" height="80"" border="0" style="margin: 12px 0px 0px 0px;" alt="Campus Calendar></a>

<a href="<%Response.write href_pre%>corpinfo.asp" title="Lines of Business"><img src="../images/boa_business.jpg" width="205" height="80" border="0" style="margin: 12px 0px 0px 0px;" alt="Lines of Business"></a>
<% If tpage <> "information_for_parents" Then %>
<a href="<%Response.write href_pre%>information_for_parents.asp" title="Information for Parents"><img src="../images/boa_parents.jpg" width="205" height="80" border="0" style="margin: 12px 0px 0px 0px;" alt="Information for Parents"></a>
<% End If %>

<a href="<%Response.write href_pre%>comm_to_environment.asp" title="Our Commitment to the Environment"><img src="../images/boa_environment.jpg" width="205" height="80" border="0" style="margin: 12px 0px 0px 0px;" alt="Our Commitment to the Environment"></a>