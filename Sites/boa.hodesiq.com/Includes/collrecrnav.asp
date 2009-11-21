<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../learnmore/" %>
<a href="http://bankofamericacareers.com/college/" target="_blank" title="Campus Calendar. Learn more."><img src="../images/boa_calendar.jpg" width="205" height="80" border="0" style="margin: 12px 0px 0px 0px;" alt="Campus Calendar. Learn more."></a>
<a href="<%Response.write href_pre%>corpinfo.asp" title="Corporate Information. Learn more."><img src="../images/boa_business.jpg" width="205" height="80" border="0" style="margin: 12px 0px 0px 0px;" alt="Corporate Information. Learn more."></a>
<a href="http://bankofamerica.com/environment" target="_blank" title="Our Commitment to the Environment. Learn more."><img src="../images/boa_environment.jpg" width="205" height="80" border="0" style="margin: 12px 0px 0px 0px;" alt="Our Commitment to the Environment. Learn more."></a>
<% If tpage <> "information_for_parents" Then %>
<a href="<%Response.write href_pre%>information_for_parents.asp" title="Information for Parents. Learn more."><img src="../images/boa_parents.jpg" width="205" height="80" border="0" style="margin: 12px 0px 0px 0px;" alt="Information for Parents. Learn more."></a>
<% End If %>