<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../learnmore/" %>
<a href="http://bankofamericacareers.com/college/" target="_blank" title="Campus Calendar. Find an event."><img src="../images/boa_calendar.jpg" width="205" height="80" border="0" style="margin: <% If lob_top = "" Then %>12<% Else Response.write lob_top End If %>px 0px 0px 0px;" alt="Campus Calendar. Find an event."></a>
<a href="<%Response.write href_pre%>corpinfo.asp" title="Corporate Information. Read more."><img src="../images/boa_business.jpg" width="205" height="80" border="0" style="margin: 12px 0px 0px 0px;" alt="Corporate Information. Read more."></a>
<a href="http://bankofamerica.com/environment" target="_blank" title="Our Commitment to the Environment. Learn more."><img src="../images/boa_environment.jpg" width="205" height="80" border="0" style="margin: 12px 0px 0px 0px;" alt="Our Commitment to the Environment. Learn more."></a>
<% If tpage <> "information_for_parents" Then %>
<a href="<%Response.write href_pre%>information_for_parents.asp" title="Information for Parents. Read more."><img src="../images/boa_parents.jpg" width="205" height="80" border="0" style="margin: 12px 0px 0px 0px;" alt="Information for Parents. Read more."></a>
<% End If %>
<!--<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../learnmore/" %>
<a href="http://bankofamericacareers.com/college/" target="_blank" title="Campus Calendar. Find an event."><img src="../images/boa_calendar.jpg" width="205" height="80" alt="Campus Calendar. Find an event." border="0"></a>
<a href="<%Response.write href_pre%>corpinfo.asp" title="Corporate Information. Read more."><img src="../images/boa_business.jpg" width="205" height="80" alt="Corporate Information. Read more." border="0" style="margin: 12px 0px 12px 0px;"></a>
-->