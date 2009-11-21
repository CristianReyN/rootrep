	<%	href_pre = ""
		if page_section <> "ADA" then href_pre = "../learnmore/" %>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%Response.write href_pre%>benefitsadv.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Benefits and advantages">Benefits and advantages</a>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%Response.write href_pre%>diversity.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Diversity and inclusion">Diversity and inclusion</a>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%Response.write href_pre%>corpinfo.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Corporate information">Corporate information</a>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%if page_section <> "ADA" then%>../staffingevents/<%End If%>staffingprocess.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Our staffing process">Our staffing process</a>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%Response.write href_pre%>collrecruiting.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Campus Recruiting">Campus Recruiting</a>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%=GLOBAL_URL%><% if page_section = "ADA" then %>ada/<% End If %>" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Global locations">Global locations</a>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%Response.write href_pre%>resume_interview_tips.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Resume &amp; interview tips">Resume &amp; interview tips</a>
<img class="dotdiv" style="margin: 9px 0px 5px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<a href="<%If page_section <> "ADA" Then%>../military/<%Else%>military_veteran_recruiting.asp<%End If%>" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Military &amp; veteran recruiting">Military &amp; veteran recruiting</a>
<img src="../images/clear.gif" width="100%" height="5" alt="" border="0">