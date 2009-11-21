<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../campusrecruiting/" %>
<%	if r1 Or r2 Or r3 then %>
<div style="margin: 0px 0px 12px 0px; padding: 0px 0px 6px 0px;">
<%		if r1 then %>
	<a href="<%=href_pre%>career_fit_tool.asp" title="Career Fit Tool. Find Your Match » "><img src="../images/camp/b_cft.jpg" width="185" height="51" alt="Career Fit Tool. Find Your Match » " border="0" style="margin: 0px 0px 5px 0px;" align="top"></a><br clear="all">
<%		End if %>
<%		if r2 then %>
	<a href="<%=href_pre%>CampusEvents.aspx" title="Campus Events. Meet Our Recruiters » "><img src="../images/camp/b_evc.jpg" width="185" height="51" alt="Campus Events. Meet Our Recruiters » " border="0" style="margin: 0px 0px 5px 0px;" align="top"></a><br clear="all">
<%		End if %>
<%		if r3 then %>
	<a href="<%=href_pre%>how_to_apply.asp" title="Submit Your Profile. Get Started » "><img src="../images/camp/b_syp.jpg" width="185" height="51" alt="Submit Your Profile. Get Started » " border="0" style="margin: 0px 0px 5px 0px;" align="top"></a><br clear="all">
<%		End if %>
<%		if r4 then %>
	<a href="<%	if page_section <> "ADA" then Response.write "../overview/" %>eeoc.asp" title="Equal Employment Opportunity.and Affirmative Action Statement » "><img src="../images/camp/eeoc.gif" width="185" height="38" alt="Equal Employment Opportunity.and Affirmative Action Statement » " border="0" style="margin: 11px 0px 5px 0px;" align="top"></a><br clear="all">
<%		End if %>
</div>
<%	End if %>
