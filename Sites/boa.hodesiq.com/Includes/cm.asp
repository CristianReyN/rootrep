<%
Function get2LevelCategoryName(page_name)
	Dim category_name_2
	If InArray(trim(page_name), Array( _
			"asiafn-chief-financial-office-analyst-program", _
			"asiafn-global-capital-markets-analyst-program", _
			"asiafn-global-corporate-banking-analyst-program", _
			"asiafn-global-investment-banking-analyst-program", _
			"asiafn-global-markets-sales-trading-analyst-program", _
			"asiafn-global-research-analyst-program", _
			"asiafn-global-treasury-services-analyst-program", _
			"asiafn-global-wealth-investment-management-analyst-program", _
			"asiafn-operations-analyst-program", _
			"asiafn-technology-developer-analyst-program", _
			"asiafn-technology-infrastructure-leadership-development-rotation-program", _
			"asiafs-global-capital-markets-associate-program", _
			"asiafs-global-investment-banking-associate-program", _
			"asiafs-global-markets-sales-trading-associate-program", _
			"asiafs-global-research-associate-program", _
			"asiain-global-capital-markets-summer-analyst-program", _
			"asiain-global-corporate-banking-summer-analyst-program", _
			"asiain-global-investment-banking-summer-analyst-program", _
			"asiain-global-markets-sales-trading-summer-analyst-program", _
			"asiain-global-research-summer-analyst-program", _
			"asiain-global-treasury-services-summer-analyst-program", _
			"asiain-global-wealth-investment-management-summer-analyst-program", _
			"asiain-operations-summer-analyst-program", _
			"asiain-technology-developer-analyst-internship-program", _
			"asiain-technology-infrastructure-summer-analyst-program", _
			"asiais-global-capital-markets-summer-associate-program", _
			"asiais-global-investment-banking-summer-associate-program", _
			"asiais-global-markets-sales-trading-summer-associate-program", _
			"asiais-global-research-summer-associate-program", _
			"cafn-global-investment-banking-capital-markets-analyst-program", _
			"cafn-global-markets-sales-trading-analyst-program", _
			"cafn-technology-analyst-program", _
			"cafs-global-investment-banking-capital-markets-associate-program", _
			"cafs-global-markets-sales-trading-associate-program", _
			"cain-global-investment-banking-capital-markets-summer-analyst-program", _
			"cain-global-markets-sales-trading-summer-analyst-program", _
			"cain-research-analyst-summer-program", _
			"cais-global-investment-banking-capital-markets-summer-associate-program", _
			"cais-global-markets-sales-trading-summer-associate-program", _
			"emeafn-card-services-analyst-programme", _
			"emeafn-compliance-analyst-programme", _
			"emeafn-global-banking-markets-credit-risk-management-analyst-programme", _
			"emeafn-global-capital-markets-analyst-programme", _
			"emeafn-global-commercial-corporate-investment-banking-technology-operations-analyst-programme", _
			"emeafn-global-corporate-banking-analyst-programme", _
			"emeafn-global-investment-banking-analyst-programme", _
			"emeafs-global-investment-banking-associate-programme", _
			"emeafn-global-markets-analyst-programme", _
			"emeafn-global-markets-operations-middle-office-analyst-programme", _
			"emeafn-global-quantitative-research-analyst-programme", _
			"emeafn-global-research-analyst-programme", _
			"emeafn-global-treasury-solutions-analyst-programme", _
			"emeafn-human-resources-analyst-programme", _
			"emeafn-international-corporate-treasury-analyst-programme", _
			"emeafn-market-risk-analyst-programme", _
			"emeafn-merrill-lynch-wealth-management-analyst-programme", _
			"emeafn-quantitative-management-analyst-programme", _
			"emeafn-technology-analyst-programme", _
			"emeafn-technology-infrastructure-analyst-programme", _
			"emeafs-global-corporate-investment-banking-associate-programme", _
			"emeafs-global-markets-associate-programme", _
			"emeafs-global-markets-quantitative-analytics-associate-programme", _
			"emeafs-global-research-associate-programme", _
			"emeain-compliance-summer-analyst-programme", _
			"emeain-global-banking-markets-credit-risk-management-summer-analyst-programme", _
			"emeain-global-capital-markets-analyst-fixed-term-placement-3-6-months", _
			"emeain-global-capital-markets-summer-analyst-programme", _
			"emeain-global-commercial-corporate-investment-banking-technology-operations-summer-analyst-programme", _
			"emeain-global-corporate-banking-analyst-fixed-term-placement-3-6-months", _
			"emeain-global-corporate-banking-summer-analyst-programme", _
			"emeain-global-investment-banking-analyst-fixed-term-placement-3-6-months", _
			"emeain-global-investment-banking-summer-analyst-programme", _
			"emeain-global-markets-analyst-fixed-term-placement-3-6-months", _
			"emeain-global-markets-operations-middle-office-summer-analyst-programme", _
			"emeain-global-markets-sales-trading-summer-analyst-programme", _
			"emeain-global-quantitative-research-summer-analyst-programme", _
			"emeain-global-research-analyst-fixed-term-placement-3-6-months", _
			"emeain-global-research-summer-analyst-programme", _
			"emeain-global-treasury-solutions-fixed-term-placement-3-6-months", _
			"emeain-global-treasury-solutions-summer-analyst-programme", _
			"emeain-human-resources-summer-analyst-programme", _
			"emeain-international-corporate-treasury-summer-analyst-programme", _
			"emeain-market-risk-summer-analyst-programme", _
			"emeain-merrill-lynch-wealth-management-summer-analyst-programme", _
			"emeain-quantitative-management-summer-analyst-programme", _
			"emeain-south-african-graduate-analyst-fixed-term-placement-12-months", _
			"emeain-technology-developer-analyst-fixed-term-placement-12-months", _
			"emeain-technology-developer-analyst-fixed-term-placement-6-months", _
			"emeain-technology-developer-analyst-summer-intern-programme", _
			"emeain-technology-infrastructure-fixed-term-placement-12-months", _
			"emeain-technology-infrastructure-summer-analyst-programme", _
			"emeais-global-corporate-investment-banking-summer-associate-programme", _
			"emeais-global-investment-banking-summer-associate-programme", _
			"emeais-global-markets-quantitative-analytics-associate-fixed-term-placement-5-months", _
			"emeais-global-markets-sales-trading-summer-associate-programme", _
			"emeais-global-research-summer-associate-programme", _
			"usfn-assistant-manager-leadership-development-program", _
			"usfn-commercial-real-estate-banking-analyst-program", _
			"usfn-corporate-audit-management-program", _
			"usfn-corporate-security-analyst", _
			"usfn-corporate-treasury-analyst-program", _
			"usfn-corporate-workplace-analyst", _
			"usfn-enterprise-change-technology-operations-leader-development-rotational-program", _
			"usfn-finance-management-associate-program", _
			"usfn-global-banking-markets-credit-risk-analyst-program", _
			"usfn-global-commercial-banking-analyst-program", _
			"usfn-global-commodities-analyst-program", _
			"usfn-global-investment-banking-capital-markets-analyst-program", _
			"usfn-global-markets-operations-middle-office-rotational-program", _
			"usfn-global-markets-public-finance-analyst-program", _
			"usfn-global-markets-sales-trading-analyst-program", _
			"usfn-global-research-analyst-program", _
			"usfn-global-risk-management-program", _
			"usfn-global-treasury-solutions-analyst-program", _
			"usfn-global-wealth-investment-management-analyst-program", _
			"usfn-institutional-mortgage-services-development-program", _
			"usfn-markets-risk-analyst-progam", _
			"usfn-operations-management-analyst-program", _
			"usfn-quantitative-management-program", _
			"usfn-supply-chain-management-associate-program", _
			"usfn-technology-developer-analyst-program", _
			"usfs-consumer-mba-program-banking-center-channel-track", _
			"usfs-corporate-workplace-senior-analyst", _
			"usfs-global-commercial-banking-associate-program", _
			"usfs-global-commodities-associate-program", _
			"usfs-global-investment-banking-capital-markets-associate-program", _
			"usfs-global-markets-sales-trading-associate-program", _
			"usfs-global-research-associate-program", _
			"usfs-global-wealth-investment-management-associate-program", _
			"usfs-home-Loans-insurance-mba-program", _
			"usfs-human-resources-development-program", _
			"usfs-operations-mba-program", _
			"usfs-supply-chain-management-mba-program", _
			"usfs-technology-mba-program", _
			"usin-applied-technology-program", _
			"usin-commercial-real-estate-banking-summer-analyst-program", _
			"usin-corporate-audit-intern-program", _
			"usin-corporate-security-analyst-internship", _
			"usin-corporate-treasury-internship-program", _
			"usin-corporate-workplace-analyst-internship", _
			"usin-enterprise-change-technology-operations-intern-program", _
			"usin-finance-intern-program", _
			"usin-global-commercial-banking-summer-analyst-program", _
			"usin-global-commodities-summer-analyst-program", _
			"usin-global-investment-banking-capital-markets-summer-analyst-program", _
			"usin-global-markets-operations-middle-office-intern-program", _
			"usin-global-markets-public-finance-summer-analyst-program", _
			"usin-global-markets-sales-trading-summer-analyst-program", _
			"usin-global-research-summer-analyst-program", _
			"usin-global-treasury-solutions-summer-analyst-program", _
			"usin-global-wealth-investment-management-summer-analyst-program", _
			"usin-institutional-mortgage-services-analyst-intern-program", _
			"usin-markets-risk-intern-program", _
			"usin-operations-management-analyst-intern-program", _
			"usin-supply-chain-management-intern-program", _
			"usin-technology-developer-analyst-intern-program", _
			"usin-wealth-management-branch-office-internship", _
			"usis-consumer-small-business-banking-mba-intern-program", _
			"usis-corporate-workplace-senior-analyst-internship", _
			"usis-global-commodities-summer-associate-program", _
			"usis-global-investment-banking-capital-markets-summer-associate-program", _
			"usis-global-markets-quantitative-summer-associate-program", _
			"usis-global-markets-sales-trading-summer-associate-program", _
			"usis-global-research-summer-associate-program", _
			"usis-global-wealth-investment-management-summer-associate-program", _
			"usis-home-Loans-insurance-mba-intern-program", _
			"usis-operations-mba-intern-program", _
			"usis-supply-chain-management-mba-internship-program", _
			"usis-technology-mba-intern-program" _
		)) Then
			category_name_2 = "Prod"
	ElseIf InArray(page_name, Array( _
			"campusrecruiting-default", _
			"career_fit_tool", _
			"campusrecruiting-video-Anton-transcript", _
			"campusrecruiting-video-DI-transcript", _
			"campusrecruiting-video-di-transcript", _
			"campusrecruiting-video-Howard-transcript", _
			"campusrecruiting-video-Jarrod-transcript", _
			"campusrecruiting-video-Kaitlyn-transcript", _
			"campusrecruiting-video-Kevin-transcript", _
			"campusrecruiting-video-Leonard-transcript", _
			"campusrecruiting-video-Narinder-transcript", _
			"campusrecruiting-video-Nichole-transcript", _
			"campusrecruiting-video-Patricia-transcript", _
			"campusrecruiting-video-Saumya-transcript", _
			"campusrecruiting-video-Tanvi-transcript", _
			"campusrecruiting-video-Zach-transcript", _
			"cashservices_video-default", _
			"cashservices_video", _
			"cma_video-default", _
			"cma_video", _
			"collectors_video-default", _
			"collectors_video", _
			"communications-default", _
			"communications", _
			"customersat_video-default", _
			"customersat_video", _
			"awards", _
			"bams", _
			"diversity_inclusion_video", _
			"factsheets", _
			"flexible_wa", _
			"insurance", _
			"mywork", _
			"recruitingevents", _
			"retirement", _
			"timeoff", _
			"workforce", _
			"eadpn", _
			"eeoc", _
			"manage_your_profile", _
			"retention_video-default", _
			"retention_video", _
			"rjp-default", _
			"rjp", _
			"teller_video-default", _
			"teller_video" _
		)) Then
			category_name_2 = "Content"
	ElseIf InArray(page_name, Array( _
			"about_us", _
			"areasoftalent", _
			"CFOgroup-default", _
			"lobcf", _
			"consumerbank-default", _
			"consumerbanking", _
			"consumerbanking-default", _
			"lobbcc", _
			"consumerproductsandoperations-default", _
			"lobnbcc", _
			"corporateaudit-default", _
			"corporateaudit", _
			"corporateworkplace-default", _
			"corporateworkplace", _
			"cw_teams", _
			"customercare-default", _
			"customercare", _
			"faq", _
			"feedback", _
			"finance-default", _
			"finance", _
			"financialadvisor-default", _
			"lobfa", _
			"lobfaamericas", _
			"lobfaamericasrole", _
			"lobfaasia", _
			"lobfaasiarole", _
			"lobfaemea", _
			"lobfaemearole", _
			"gbmarketswealthmanagement-default", _
			"lobgbmwm", _
			"gcib-default", _
			"lobgcib", _
			"globalcommercialbanking-default", _
			"lobgcb", _
			"globalcompliance-default", _
			"globalcompliance", _
			"hr-default", _
			"humanresources", _
			"humanresources-default", _
			"lobghr", _
			"benefits", _
			"corpinfo", _
			"diversity", _
			"lb_career_compass", _
			"lb_career_compass_1", _
			"lb_career_compass_2", _
			"lb_career_compass_3", _
			"lb_career_compass_4", _
			"lb_career_compass_", _
			"learnmore", _
			"lifemanagement", _
			"lob", _
			"lobcss", _
			"lobgcsbb", _
			"resume_interview_tips", _
			"legal-default", _
			"legal", _
			"locations-default", _
			"regions", _
			"marketing-default", _
			"lobgmca", _
			"military-default", _
			"military_veteran_recruiting", _
			"mortgage-default", _
			"lob_mortgage", _
			"mortgage-fulfilment", _
			"lob_fulfilment", _
			"mortgage-locations", _
			"lob_locations", _
			"mortgage-mortgagesales", _
			"lob_mortgagesales", _
			"mortgage-servicing", _
			"lob_servicing", _
			"mortgagecareers-default", _
			"mortgagecareers", _
			"mortgagecareers-fulfilment", _
			"fulfilment", _
			"mortgagecareers-locations", _
			"locations", _
			"mortgagecareers-mortgagesales", _
			"mortgagesales", _
			"mortgagecareers-servicing", _
			"servicing", _
			"operations-default", _
			"operations", _
			"contact_us", _
			"overview", _
			"risk-default", _
			"lobgr", _
			"riskevaluation-default", _
			"riskevaluation", _
			"sales-default", _
			"sales", _
			"staffingevents", _
			"staffingprocess", _
			"tech-default", _
			"technology", _
			"technology-default", _
			"lobgto", _
			"values", _
			"wealthmanagement-default", _
			"lobgwim" _
		)) Then
			category_name_2 = "Tool"
	Else
			category_name_2 = ""
	End If
	get2LevelCategoryName = category_name_2
End Function

Function get3LevelCategoryName(mpage)
	Dim category_name_3
	select case mpage
		case "overview"
			category_name_3 = "Home"
		case "about_us"
			category_name_3 = "About_Us"
		case "jobsearch"
			category_name_3 = "Job_Search"
		case "areasoftalent"
			category_name_3 = "Job_Areas"
		case "lob"
			category_name_3 = "Lines_of_Business"
		case "camp"
			category_name_3 = "Campus_Recruiting"
		case "bams"
			category_name_3 = "Banc_of_America_Merchant_Services"
		case "locations"
			category_name_3 = "Regions"
		case "staffingevents"
			category_name_3 = "Staffing_Events"
		case "fags"
			category_name_3 = "Frequently_Asked_Questions"
		case "feedback"
			category_name_3 = "Give_Us_Your_Feedback"
		case else
			category_name_3 = ""
	end select
	get3LevelCategoryName = category_name_3
End Function



URL_string = Replace(Request.ServerVariables("URL"), "\", "/")
parsed_url = Split(URL_string, "/")
If UBound(parsed_url) > 0 Then
	parsed_folder_name = ""
	parsed_file_name = ""
	parsed_file = trim(parsed_url(UBound(parsed_url)))
'response.write "parsed_file: " & parsed_file & "<br>"
	If UBound(parsed_url) > 1 Then parsed_folder_name = trim(parsed_url(UBound(parsed_url)-1))
	dot_position = InStrRev(parsed_file, ".")
'response.write "dot_position: " & dot_position & "<br>"
'	str_length = Len(parsed_file)
'response.write "str_length: " & str_length & "<br>"
	If Not IsNull(dot_position) Then
		If dot_position > 0 Then
			parsed_file_name = Left(parsed_file, dot_position-1)
		Else
			parsed_file_name = parsed_file
		End If
	End If
	
	
	If InStr(URL_string, "campusrecruiting/video") Then
		If LCase(parsed_file_name) = "default" Then parsed_file_name = LCase(parsed_file_name)
		parsed_file_name = "campusrecruiting-video-" & parsed_folder_name & "-" & parsed_file_name
		mpage = "camp"
	ElseIf parsed_folder_name = "mortgage" Or parsed_folder_name = "mortgagecareers" Then
		If LCase(parsed_file_name) = "default" Then parsed_file_name = LCase(parsed_file_name)
		parsed_file_name = parsed_folder_name & "-" & parsed_file_name
	ElseIf LCase(parsed_file_name) = "default" Then
		parsed_file_name = LCase(parsed_file_name)
		parsed_file_name = parsed_folder_name & "-" & parsed_file_name
	End If
End If
'response.write "parsed_folder_name: " & parsed_folder_name & "<br>"
'response.write "parsed_file_name: " & parsed_file_name & "<br>"
folder_name = CleanTheStringAlphanumeric_(parsed_folder_name)
file_name = CleanTheStringAlphanumeric_(parsed_file_name)
'response.write "folder_name: " & folder_name & "<br>"
'response.write "file_name: " & file_name & "<br>"
'response.write "mpage: " & mpage & "<br>"
category_name_level_2 = get2LevelCategoryName(parsed_file_name)
category_name_level_3 = get3LevelCategoryName(mpage)
'response.write "category_name_level_2: " & category_name_level_2 & "<br>"
'response.write "category_name_level_3: " & category_name_level_3 & "<br>"
categoryID = "career:"&category_name_level_2&":"&category_name_level_3
productviewCategoryID = "career:"&category_name_level_3
pageID = file_name
If page_section = "ADA" Then pageID = "ada-" & pageID
%>