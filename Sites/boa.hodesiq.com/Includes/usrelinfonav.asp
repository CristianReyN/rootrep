<%	href_pre = ""
	If page_section <> "ADA" Then href_pre = "../learnmore/"%>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%Response.write href_pre%>benefits.asp" class="left2" title="Benefits and advantages">Benefits and advantages</a>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%if page_section <> "ADA" then%>../staffingevents/<%End If%>staffingprocess.asp" class="left2" title="Our staffing process">Our staffing process</a>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%Response.write href_pre%>resume_interview_tips.asp" class="left2" title="Resume &amp; interview tips">Resume &amp; interview tips</a>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%If page_section <> "ADA" Then%>../military/<%Else%>military_veteran_recruiting.asp<%End If%>" class="left2" title="Military &amp; veteran recruiting">Military &amp; veteran recruiting</a>
<img src="../images/clear.gif" width="100%" height="5" alt="" border="0">