<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../campusrecruiting/" %>
<%	if r1 Or r2 Or r3 Or r4 Or r5 then %>
<div style="margin: 0px 0px 12px 0px; padding: 0px 0px 6px 0px;">
<%		if r1 then %>
	<a href="<%=href_pre%>career_fit_tool.asp" title="Career Fit Tool. Find Your Match &raquo; "><img src="../images/camp/b_cft.jpg" width="185" height="51" alt="Career Fit Tool. Find Your Match &raquo; " border="0"></a>
	<img src="../images/clear.gif" width="185" height="5" alt="" border="0"><br clear="all">
<%		End if %>
<%		if r2 then %>
	<a href="../CampusEvents.aspx" title="Campus Events. Meet Our Recruiters &raquo; "><img src="../images/camp/b_evc.jpg" width="185" height="51" alt="Campus Events. Meet Our Recruiters &raquo; " border="0"></a>
	<img src="../images/clear.gif" width="185" height="5" alt="" border="0"><br clear="all">
<%		End if %>
<%		if r3 then %>
	<a href="<%=href_pre%>how_to_apply.asp" title="Submit Your Profile. Get Started &raquo; "><img src="../images/camp/b_syp.jpg" width="185" height="51" alt="Submit Your Profile. Get Started &raquo; " border="0"></a>
	<img src="../images/clear.gif" width="185" height="5" alt="" border="0"><br clear="all">
<%		End if %>
<%		if r4 then %>
	<img src="../images/clear.gif" width="185" height="11" alt="" border="0">
	<a href="<%	if page_section <> "ADA" then Response.write "../overview/" %>eeoc.asp" title="Equal Employment Opportunity.and Affirmative Action Statement  &raquo; "><img src="../images/camp/eeoc.gif" width="185" height="38" alt="Equal Employment Opportunity.and Affirmative Action Statement  &raquo; " border="0"></a>
	<img src="../images/clear.gif" width="185" height="5" alt="" border="0"><br clear="all">
<%		End if %>
<%		if r5 then %>
<img class="dotdiv" style="margin: 10px 0px 6px 0px;" src="../images/clear.gif" width="185" height="1" alt="" border="0">
	<a href="http://www.bankofamerica.com/merrill" title="Bank of America and Merrill Lynch are joining forces. Learn more &raquo; " target="_blank" class="left2" style="text-decoration: none;"><div><span style="font : bold 1.2em Times New Roman, Times, serif; color: #333333;">Bank of America and Merrill Lynch are joining forces.</span><br>Learn more &raquo;</div></a>
<img class="dotdiv" style="margin: 6px 0px 0px 0px;" src="../images/clear.gif" width="185" height="1" alt="" border="0"><br clear="all">
<%		End if %>
</div>
<%	End if %>
