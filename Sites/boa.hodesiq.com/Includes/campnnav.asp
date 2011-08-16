
			<div style="margin-top: 12px;"><a href="../campus-video-library.aspx" title="Explore Our Video Library"><img src="../images/buttons/explore_vl.gif" alt="Explore Our Video Library" width="180" height="22" border="0"></a></div>
			
			<div class="relnw"><div class="relnt"><div class="relnb"><div class="inner">
				<h2>Related Links:</h2>
				<div class="awrap"><% relLink(program) %></div>
				<% If program.Item("region") = AMERICAS And program.Item("sub_region") = U_S_A Then %><div class="awrap"><a href="<%	if page_section <> "ADA" then %>../overview/<%else %>../ada/<%end if %>eeoc.asp" title="Equal Employment Opportunity.and Affirmative Action Statement "><b>Equal employment opportunity and affirmative action statement »</b></a></div><% End If%>
			</div></div></div></div>
			
			<div style="margin-top: 12px;"><a href="http://twitter.com/BofA_Careers" title="Stay connected to Careers on twitter @ BofA_Careers, link opens a new window" target="_blank"><img src="../images/buttons/twitter.gif" alt="Stay connected to Careers on twitter @ BofA_Careers, link opens a new window" width="180" height="64" border="0"></a></div>
<%
	linkedin_title = title
	linkedin_summary = title
	
	facebook_title = title
	twitter_title = title
	twitter_status_description = title
	
	If isObject(program) Then
		linkedin_title = "Bank of America Campus Recruiting: " & program.Item("title")
		linkedin_summary = "Bank of America Campus Recruiting: " & program.Item("title")
		
		facebook_title = "Bank of America Campus Recruiting: " & program.Item("title")
		
		twitter_title = "#Job opportunity at Bank of America: " & program.Item("title")
		twitter_status_description = "#Job opportunity at Bank of America: " & program.Item("title")
	End If
%>
			<script type="text/javascript" src="http://utility.bankofamerica.com/uet/social_share2.js"></script>
			<div class="rnw"><div class="rnt"><div class="rnb"><div class="inner" id="showHTML">
				<h2>Share this page:</h2>
				<div class="iwrap ss"> <script language="javascript" type="text/javascript">document.write(displayIcon("3","<%=linkedin_title %>","","","","","","","","<%=linkedin_summary %>","","<%=linkedin_title %>","1",""));</script></div>
				<div class="iwrap ss"><script language="javascript" type="text/javascript">document.write(displayIcon("1","<%=facebook_title %>","","","","","","","","","","<%=facebook_title %>","1",""));</script></div>
				<div class="iwrap ss"><script language="javascript" type="text/javascript">document.write(displayIcon("2","<%=twitter_title %>","","","","","","<%=twitter_status_description %>","","","","<%=twitter_title %>","1",""));</script></div>
			</div></div></div></div>