<!-- #include file="video_profiles.asp" -->
<%
Function profile (program)
	
	If InArray(program.Item("url"), Array( _
			"usfn-global-banking-markets-credit-risk-analyst-program.asp", _
			"usin-global-banking-markets-credit-risk-summer-analyst-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Alissa.aspx" class="proimg" title="View Alissa&#39;s profile."><img src="../images/profile_images/cpi_Alissa.jpg" width="180" height="130" alt="Alissa Royal" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfs-human-resources-development-program.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/anton_vt_180.jpg" alt="Anton Doss" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Anton") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfn-finance-management-associate-program.asp", _
			"usin-finance-intern-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Ashley.aspx" class="proimg" title="View Ashley&#39;s profile."><img src="../images/profile_images/cpi_Ashley.jpg" width="180" height="130" alt="Ashley Clarke" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-global-research-analyst-programme.asp", _
			"emeain-global-research-summer-analyst-programme.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Aurelie.aspx" class="proimg" title="View Aurelie&#39;s profile."><img src="../images/profile_images/cpi_Aurelie.jpg" width="180" height="130" alt="Aurelie Caspar" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"cafn-technology-analyst-program.asp", _
			"usfn-technology-developer-analyst-program.asp", _
			"usin-technology-developer-analyst-intern-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Bhavin.aspx" class="proimg" title="View Bhavin&#39;s profile."><img src="../images/profile_images/cpi_Bhavin.jpg" width="180" height="130" alt="Bhavin Gondha" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfs-global-research-associate-program.asp", _
			"usis-global-research-summer-associate-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Bryan.aspx" class="proimg" title="View Bryan&#39;s profile."><img src="../images/profile_images/cpi_Bryan.jpg" width="180" height="130" alt="Bryan Cook" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-global-capital-markets-analyst-programme.asp", _
			"emeain-global-capital-markets-summer-analyst-programme.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Christoph.aspx" class="proimg" title="View Christoph&#39;s profile."><img src="../images/profile_images/cpi_Christoph.jpg" width="180" height="130" alt="Christoph Hadrys" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfn-operations-management-analyst-program.asp", _
			"usin-operations-management-analyst-intern-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Dave.aspx" class="proimg" title="View Dave&#39;s profile."><img src="../images/profile_images/cpi_Dave.jpg" width="180" height="130" alt="Dave Ghosh" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"asiafs-global-investment-banking-associate-program.asp", _
			"asiais-global-investment-banking-summer-associate-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Dong.aspx" class="proimg" title="View Dong&#39;s profile."><img src="../images/profile_images/cpi_Dong.jpg" width="180" height="130" alt="Dong Li" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-market-risk-analyst-programme.asp", _
			"emeain-market-risk-summer-analyst-programme.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Fujia.aspx" class="proimg" title="View Fujia&#39;s profile."><img src="../images/profile_images/cpi_Fujia.jpg" width="180" height="130" alt="Fujia Liu" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-technology-infrastructure-analyst-programme.asp", _
			"emeain-technology-infrastructure-summer-analyst-programme.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Gemma.aspx" class="proimg" title="View Gemma&#39;s profile."><img src="../images/profile_images/cpi_Fujia.jpg" width="180" height="130" alt="Gemma Johnson" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usin-quantitative-management-intern-program.asp" _
		)) Then
%>
Guan VIDEO
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfs-operations-mba-program.asp", _
			"usis-operations-mba-intern-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Hamdija.aspx" class="proimg" title="View Hamdija&#39;s profile."><img src="../images/profile_images/cpi_Hamdija.jpg" width="180" height="130" alt="Hamdija Custovic" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-global-banking-markets-credit-risk-management-analyst-programme.asp", _
			"emeain-global-banking-markets-credit-risk-management-summer-analyst-programme.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Hira.aspx" class="proimg" title="View Hira&#39;s profile."><img src="../images/profile_images/cpi_Hira.jpg" width="180" height="130" alt="Hira Diwan" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"cafs-global-markets-sales-trading-associate-program.asp", _
			"cais-global-markets-sales-trading-summer-associate-program.asp", _
			"usfs-global-markets-sales-trading-associate-program.asp", _
			"usis-global-markets-sales-trading-summer-associate-program.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/howard_vt_180.jpg" alt="Howard Levine" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Howard") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafs-global-markets-quantitative-analytics-associate-programme.asp", _
			"emeais-global-markets-quantitative-analytics-associate-fixed-term-placement-5-months.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Irina.aspx" class="proimg" title="View Irina&#39;s profile."><img src="../images/profile_images/cpi_Irina.jpg" width="180" height="130" alt="Irina Dolgova" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usin-applied-technology-program.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/jarrod_vt_180.jpg" alt="Jarrod Schulze" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Jarrod") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfn-global-wealth-investment-management-analyst-program.asp", _
			"usin-global-wealth-investment-management-summer-analyst-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Jennifer.aspx" class="proimg" title="View Jennifer&#39;s profile."><img src="../images/profile_images/cpi_Jennifer.jpg" width="180" height="130" alt="Jennifer Auerbach-Rodriguez" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-merrill-lynch-wealth-management-analyst-programme.asp", _
			"emeain-merrill-lynch-wealth-management-summer-analyst-programme.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-John-William.aspx" class="proimg" title="View John-William&#39;s profile."><img src="../images/profile_images/cpi_John-William.jpg" width="180" height="130" alt="John-William Chaldecott" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfn-global-risk-management-program.asp", _
			"usin-global-risk-management-intern-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Jordan.aspx" class="proimg" title="View Jordan&#39;s profile."><img src="../images/profile_images/cpi_Jordan.jpg" width="180" height="130" alt="Jordan Darrenkamp" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"cafn-global-markets-sales-trading-analyst-program.asp", _
			"cain-global-markets-sales-trading-summer-analyst-program.asp", _
			"usfn-global-markets-sales-trading-analyst-program.asp", _
			"usin-global-markets-sales-trading-summer-analyst-program.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/kaitlyn_vt_180.jpg" alt="Kaitlyn Busler" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Kaitlyn") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-global-markets-analyst-programme.asp", _
			"emeain-global-markets-sales-trading-summer-analyst-programme.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Ken.aspx" class="proimg" title="View Ken&#39;s profile."><img src="../images/profile_images/cpi_Ken.jpg" width="180" height="130" alt="Ken Chung" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfs-consumer-mba-program-banking-center-channel-track.asp", _
			"usis-consumer-small-business-banking-mba-intern-program.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/kevin_vt_180.jpg" alt="Kevin Perry" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Kevin") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfn-corporate-audit-management-program.asp", _
			"usin-corporate-audit-intern-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Laura.aspx" class="proimg" title="View Laura&#39;s profile."><img src="../images/profile_images/cpi_Laura.jpg" width="180" height="130" alt="Laura Duke" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"asiafn-global-treasury-services-analyst-program.asp", _
			"asiain-global-treasury-services-summer-analyst-program.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/leonard_vt_180.jpg" alt="Leonard Lam" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Leonard") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	ElseIf InArray(program.Item("url"), Array( _
			"asiain-global-markets-sales-trading-summer-analyst-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Lip-Jin.aspx" class="proimg" title="View Lip Jin&#39;s profile."><img src="../images/profile_images/cpi_LipJin.jpg" width="180" height="130" alt="Lip Jin Lee" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"asiafn-technology-infrastructure-leadership-development-rotation-program.asp", _
			"asiain-technology-infrastructure-summer-analyst-program.asp", _
			"usfn-assistant-manager-leadership-development-program.asp", _
			"usfn-corporate-security-analyst.asp", _
			"usfn-corporate-treasury-analyst-program.asp", _
			"usfn-corporate-workplace-analyst.asp", _
			"usfn-enterprise-change-technology-operations-leader-development-rotational-program.asp", _
			"usfn-global-markets-operations-middle-office-rotational-program.asp", _
			"usfn-mainframe-analyst-development-program.asp", _
			"usfn-markets-risk-analyst-progam.asp", _
			"usfn-quantitative-management-program.asp", _
			"usfs-corporate-workplace-senior-analyst.asp", _
			"usin-corporate-security-analyst-internship.asp", _
			"usin-corporate-treasury-internship-program.asp", _
			"usin-corporate-workplace-analyst-internship.asp", _
			"usin-enterprise-change-technology-operations-intern-program.asp", _
			"usin-global-markets-operations-middle-office-intern-program.asp", _
			"usin-mainframe-analyst-development-intern-program.asp", _
			"usis-corporate-workplace-senior-analyst-internship.asp" _
		)) Then
%>
<img src="../images/logos/cpi_LOGO_BAC.jpg" width="180" height="130" alt="Bank of America" border="0" style="margin: 0px 0px 12px 0px;">
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfn-institutional-mortgage-services-development-program.asp", _
			"usfs-home-Loans-insurance-mba-program.asp", _
			"usin-institutional-mortgage-services-analyst-intern-program.asp", _
			"usis-home-Loans-insurance-mba-intern-program.asp" _
		)) Then
%>
<img src="../images/logos/cpi_LOGO_BAC_HL.jpg" width="180" height="130" alt="Bank of America Home Loans" border="0" style="margin: 0px 0px 12px 0px;">
<%
	ElseIf InArray(program.Item("url"), Array( _
			"asiafn-global-capital-markets-analyst-program.asp", _
			"asiafn-global-corporate-banking-analyst-program.asp", _
			"asiafn-global-markets-sales-trading-analyst-program.asp", _
			"asiafn-global-research-analyst-program.asp", _
			"asiafn-operations-analyst-program.asp", _
			"asiafn-technology-developer-analyst-program.asp", _
			"asiafs-global-capital-markets-associate-program.asp", _
			"asiafs-global-research-associate-program.asp", _
			"asiain-global-capital-markets-summer-analyst-program.asp", _
			"asiain-global-corporate-banking-summer-analyst-program.asp", _
			"asiain-global-research-summer-analyst-program.asp", _
			"asiain-operations-summer-analyst-program.asp", _
			"asiain-technology-developer-analyst-internship-program.asp", _
			"asiais-global-capital-markets-summer-associate-program.asp", _
			"asiais-global-research-summer-associate-program.asp", _
			"cafn-global-investment-banking-capital-markets-analyst-program.asp", _
			"cain-global-investment-banking-capital-markets-summer-analyst-program.asp", _
			"emeafn-card-services-analyst-programme.asp", _
			"emeafn-compliance-analyst-programme.asp", _
			"emeafn-global-commercial-corporate-investment-banking-technology-operations-analyst-programme.asp", _
			"emeafn-global-corporate-banking-analyst-programme.asp", _
			"emeafn-global-markets-operations-middle-office-analyst-programme.asp", _
			"emeafn-global-treasury-solutions-analyst-programme.asp", _
			"emeafn-quantitative-management-analyst-programme.asp", _
			"emeafs-global-markets-associate-programme.asp", _
			"emeain-compliance-summer-analyst-programme.asp", _
			"emeain-global-capital-markets-analyst-fixed-term-placement-3-6-months.asp", _
			"emeain-global-commercial-corporate-investment-banking-technology-operations-summer-analyst-programme.asp", _
			"emeain-global-corporate-banking-analyst-fixed-term-placement-3-6-months.asp", _
			"emeain-global-corporate-banking-summer-analyst-programme.asp", _
			"emeain-global-investment-banking-analyst-fixed-term-placement-3-6-months.asp", _
			"emeain-global-markets-analyst-fixed-term-placement-3-6-months.asp", _
			"emeain-global-markets-operations-middle-office-summer-analyst-programme.asp", _
			"emeain-global-quantitative-research-summer-analyst-programme.asp", _
			"emeain-global-research-analyst-fixed-term-placement-3-6-months.asp", _
			"emeain-global-treasury-solutions-fixed-term-placement-3-6-months.asp", _
			"emeain-global-treasury-solutions-summer-analyst-programme.asp", _
			"emeain-quantitative-management-summer-analyst-programme.asp", _
			"emeain-technology-developer-analyst-fixed-term-placement-12-months.asp", _
			"emeain-technology-developer-analyst-fixed-term-placement-6-months.asp", _
			"emeain-technology-infrastructure-fixed-term-placement-12-months.asp", _
			"emeais-global-markets-sales-trading-summer-associate-programme.asp", _
			"usfn-global-commodities-analyst-program.asp", _
			"usfn-global-investment-banking-capital-markets-analyst-program.asp", _
			"usfn-global-markets-public-finance-analyst-program.asp", _
			"usfn-global-treasury-solutions-analyst-program.asp", _
			"usfs-global-commodities-associate-program.asp", _
			"usin-global-commodities-summer-analyst-program.asp", _
			"usin-global-investment-banking-capital-markets-summer-analyst-program.asp", _
			"usin-global-markets-public-finance-summer-analyst-program.asp", _
			"usis-global-commodities-summer-associate-program.asp", _
			"usis-global-markets-quantitative-summer-associate-program.asp" _
		)) Then
%>
<img src="../images/logos/cpi_LOGO_BofAML.jpg" width="180" height="130" alt="Bank of America Merrill Lynch" border="0" style="margin: 0px 0px 12px 0px;">
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfn-global-commercial-banking-analyst-program.asp", _
			"usfs-global-commercial-banking-associate-program.asp", _
			"usin-global-commercial-banking-summer-analyst-program.asp" _
		)) Then
%>
<img src="../images/logos/cpi_LOGO_BofAML_RedBlue.jpg" width="180" height="130" alt="Bank of America Merrill Lynch" border="0" style="margin: 0px 0px 12px 0px;">
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeain-south-african-graduate-analyst-fixed-term-placement-12-months.asp" _
		)) Then
%>
<img src="../images/logos/cpi_LOGO_ML_Flagscape.jpg" width="180" height="130" alt="Bank of America Merrill Lynch" border="0" style="margin: 0px 0px 12px 0px;">
<%
	ElseIf InArray(program.Item("url"), Array( _
			"asiafn-global-wealth-investment-management-analyst-program.asp", _
			"asiain-global-wealth-investment-management-summer-analyst-program.asp" _
		)) Then
%>
<img src="../Includes/pages/camp/profile/logo-MLWM.jpg" width="180" height="134" alt="Merrill Lynch Wealth Management" border="0" style="margin: 0px 0px 12px 0px;">
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usin-wealth-management-branch-office-internship.asp" _
		)) Then
%>
<img src="../images/logos/cpi_LOGO_MLWM_Blue.jpg" width="180" height="130" alt="Merrill Lynch Wealth Management" border="0" style="margin: 0px 0px 12px 0px;">
<%
	ElseIf InArray(program.Item("url"), Array( _
			"asiafn-chief-financial-office-analyst-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Louise.aspx" class="proimg" title="View Louise&#39;s profile."><img src="../images/profile_images/cpi_Louise.jpg" width="180" height="130" alt="Louise Jiang" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"cain-research-analyst-summer-program.asp", _
			"usfn-global-research-analyst-program.asp", _
			"usin-global-research-summer-analyst-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Mariya.aspx" class="proimg" title="View Mariya&#39;s profile."><img src="../images/profile_images/cpi_Mariya.jpg" width="180" height="130" alt="Mariya Golub" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfs-technology-mba-program.asp", _
			"usis-technology-mba-intern-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Matt.aspx" class="proimg" title="View Matt&#39;s profile."><img src="../images/profile_images/cpi_Matt.jpg" width="180" height="130" alt="Matt	Hinman" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-global-investment-banking-analyst-programme.asp", _
			"emeain-global-investment-banking-summer-analyst-programme.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Melissa.aspx" class="proimg" title="View Melissa&#39;s profile."><img src="../images/profile_images/cpi_Melissa.jpg" width="180" height="130" alt="Melissa Clarke" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"asiafs-global-markets-sales-trading-associate-program.asp", _
			"asiais-global-markets-sales-trading-summer-associate-program.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/narinder_vt_180.jpg" alt="Narinder Puri" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Narinder") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-international-corporate-treasury-analyst-programme.asp", _
			"emeain-international-corporate-treasury-summer-analyst-programme.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/nichole_vt_180.jpg" alt="Nichola Edwards" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Nichole") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfs-global-wealth-investment-management-associate-program.asp", _
			"usis-global-wealth-investment-management-summer-associate-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Nisheet.aspx" class="proimg" title="View Nisheet&#39;s profile."><img src="../images/profile_images/cpi_Nisheet.jpg" width="180" height="130" alt="Nisheet Patel" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"asiafn-global-investment-banking-analyst-program.asp", _
			"asiain-global-investment-banking-summer-analyst-program.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/patricia_vt_180.jpg" alt="Patricia Woo" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Patricia") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	ElseIf InArray(program.Item("url"), Array( _
			"cafs-global-investment-banking-capital-markets-associate-program.asp", _
			"cais-global-investment-banking-capital-markets-summer-associate-program.asp", _
			"usfs-global-investment-banking-capital-markets-associate-program.asp", _
			"usis-global-investment-banking-capital-markets-summer-associate-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Pepe.aspx" class="proimg" title="View Pepe&#39;s profile."><img src="../images/profile_images/cpi_Pepe.jpg" width="180" height="130" alt="Pepe Lopez-Gallo" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfn-supply-chain-management-associate-program.asp", _
			"usfs-supply-chain-management-mba-program.asp", _
			"usin-supply-chain-management-intern-program.asp", _
			"usis-supply-chain-management-mba-internship-program.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Rachel.aspx" class="proimg" title="View Rachel&#39;s profile."><img src="../images/profile_images/cpi_Rachel.jpg" width="180" height="130" alt="Rachel Wise" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-global-quantitative-research-analyst-programme.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Rachna.aspx" class="proimg" title="View Rachna&#39;s profile."><img src="../images/profile_images/cpi_Rachna.jpg" width="180" height="130" alt="Rachna Ramacahndran" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafs-global-corporate-investment-banking-associate-programme.asp", _
			"emeais-global-corporate-investment-banking-summer-associate-programme.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Richard.aspx" class="proimg" title="View Richard&#39;s profile."><img src="../images/profile_images/cpi_Richard.jpg" width="180" height="130" alt="Richard Lindsay-Jones" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafs-global-research-associate-programme.asp", _
			"emeais-global-research-summer-associate-programme.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/saumya_vt_180.jpg" alt="Saumya Senapati" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Saumya") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-human-resources-analyst-programme.asp", _
			"emeain-human-resources-summer-analyst-programme.asp" _
		)) Then
%>
<a href="../campus-meet-our-people-profile-Shireen.aspx" class="proimg" title="View Shireen&#39;s profile."><img src="../images/profile_images/cpi_Shireen.jpg" width="180" height="130" alt="Shireen Juma" border="0" class="proimg"></a>
<%
	ElseIf InArray(program.Item("url"), Array( _
			"emeafn-technology-analyst-programme.asp", _
			"emeain-technology-developer-analyst-summer-intern-programme.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/tanvi_vt_180.jpg" alt="Tanvi Srivastava" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Tanvi") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	ElseIf InArray(program.Item("url"), Array( _
			"usfn-commercial-real-estate-banking-analyst-program.asp", _
			"usin-commercial-real-estate-banking-summer-analyst-program.asp" _
		)) Then
%>
<a href="" class="md-video"><img src="../campusrecruiting/video/thumb/zach_vt_180.jpg" alt="Zach Rudolph" width="180" height="120" border="0"></a>
<% Set video_profile = video_profiles.Item("Zach") %>
<div class="vwrap"><a href="<%=video_profile.Item("popup")%>" class="md-trans" title="<%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%>">View transcript</a></div>
<!-- #include file="modal_dialog.asp" -->
<%
	Else
	
	End If
End Function
%>