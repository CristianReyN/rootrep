<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../campusrecruiting/" %>
<%	if r1 Or r2 Or r3 Or r4 Or r5 then %>
<div style="margin: 0px 0px 12px 0px; padding: 0px 0px 6px 0px;">
<%		if r1 then %>
	<a href="<%=href_pre%>career_fit_tool.asp" title="Career Finder. Come as you are. We've got a career to fit. "><img src="../images/camp/bac_career_finder.jpg" width="179" height="66" alt="Career Finder. Come as you are. We've got a career to fit. " border="0"></a>
	<img src="../images/clear.gif" width="179" height="5" alt="" border="0"><br clear="all">
<%		End if %>
<%		if r2 then %>
	<a href="<%=CampusEventsLink (program)%>" title="Campus Events. Let's meet soon. "><img src="../images/camp/bac_campus_events.jpg" width="179" height="66" alt="Campus Events. Let's meet soon. " border="0"></a>
	<img src="../images/clear.gif" width="179" height="5" alt="" border="0"><br clear="all">
<%		End if %>
<%		if r3 then %>
	<a href="<%=ApplyLink (program)%>" title="Apply Now. Click here to set your opportunity in motion "><img src="../images/camp/bac_apply_now.jpg" width="179" height="66" alt="Apply Now. Click here to set your opportunity in motion " border="0"></a>
	<img src="../images/clear.gif" width="179" height="5" alt="" border="0"><br clear="all">
<%		End if %>
<%		if r4 then %>
	<img src="../images/clear.gif" width="179" height="11" alt="" border="0">
	<a href="<%	if page_section <> "ADA" then %>../overview/<%else %>../ada/<%end if %>eeoc.asp" title="Equal Employment Opportunity.and Affirmative Action Statement "><img src="../images/camp/eeoc_new.gif" width="179" height="38" alt="Equal Employment Opportunity.and Affirmative Action Statement " border="0"></a>
	<img src="../images/clear.gif" width="179" height="5" alt="" border="0"><br clear="all">
<%		End if %>
<%		if r5 then %>
<%		End if %>
</div>
<%	End if %>
