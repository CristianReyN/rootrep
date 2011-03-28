<%
Dim AMERICAS, U_S_A, CANADA, EMEA, ASIA
AMERICAS = "Americas"
U_S_A = "US"
CANADA = "Canada"
EMEA = "EMEA"
ASIA = "Asia Pacific"
Dim ANALYST, ASSOCIATE, B_O_T_H
ANALYST = "Analyst"
ASSOCIATE = "Associate & PhD"
B_O_T_H = "Analyst, Associate & PhD"
Dim FULLTIME, INTERN
FULLTIME = "fulltime"
INTERN = "Internships"
Dim U_R_L
U_R_L = "../learnmore/"
If page_section = "ADA" Then U_R_L = "../ada/"

Dim audit_program_group, cfo_program_group, csbb_program_group, gbam_program_group, gcb_program_group, ghr_program_group
Dim gmca_program_group, gto_program_group, gwim_program_group, hli_program_group, gr_program_group

call createProgramGroup (audit_program_group,"Audit", TRUE)
call createProgramGroup (cfo_program_group,"Chief Financial Office", TRUE)
call createProgramGroup (csbb_program_group,"Global Consumer and Small Business Banking", TRUE)
call createProgramGroup (gbam_program_group,"Global Banking and Markets", TRUE)
call createProgramGroup (gcb_program_group,"Global Commercial Banking", TRUE)
call createProgramGroup (ghr_program_group,"Global Human Resources", TRUE)
call createProgramGroup (gmca_program_group,"Global Marketing and Corporate Affairs", TRUE)
call createProgramGroup (gto_program_group,"Global Technology and Operations", TRUE)
call createProgramGroup (gwim_program_group,"Global Wealth and Investment Management", TRUE)
call createProgramGroup (hli_program_group,"Home Loans & Insurance", TRUE)
call createProgramGroup (gr_program_group,"Global Risk", TRUE)

Dim program_groups(11)
Set program_groups(1) = audit_program_group
Set program_groups(2) = cfo_program_group
Set program_groups(3) = csbb_program_group
Set program_groups(4) = gbam_program_group
Set program_groups(5) = gcb_program_group
Set program_groups(6) = ghr_program_group
Set program_groups(7) = gmca_program_group
Set program_groups(8) = gto_program_group
Set program_groups(9) = gwim_program_group
Set program_groups(10) = hli_program_group
Set program_groups(11) = gr_program_group

Dim programs(600)
'		program number			program title, program group, program page, program degree, program fulltime or intern, program sub_programs,is_active

'US -> 1-200
'US AND CANADA FULLTIME ANALYST PROGRAMS
'last - 90


Set programs(1) = createProgram("Corporate Audit Management Program", audit_program_group, "usfn-corporate-audit-management-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(2) = createProgram("Corporate Treasury Analyst Program", cfo_program_group, "usfn-corporate-treasury-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(3) = createProgram("Finance Management Associate Program", cfo_program_group, "usfn-finance-management-associate-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(4) = createProgram("Banking Center Channel - Assistant Manager Associate", csbb_program_group, "usfn-banking-center-channel-assistant-manager-associate.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(5) = createProgram("Operations Management Analyst Program", csbb_program_group, "usfn-operations-management-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(6) = createProgram("Global Corporate and Financial Institutions Treasury Analyst Program", gbam_program_group, "usfn-global-corporate-financial-institutions-treasury-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(7) = createProgram("Global Corporate Banking Analyst Program", gbam_program_group, "usfn-global-corporate-banking-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(8) = createProgram("Global Investment Banking/Capital Markets Analyst Program", gbam_program_group, "usfn-global-investment-banking-capital-markets-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(201) = createProgram("Global Investment Banking/Capital Markets Analyst Program (Canada)", gbam_program_group, "cafn-global-investment-banking-capital-markets-analyst-program.asp", AMERICAS, CANADA, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(9) = createProgram("Global Commodities Analyst Program", gbam_program_group, "usfn-global-commodities-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(10) = createProgram("Global Markets Public Finance Analyst Program", gbam_program_group, "usfn-global-markets-public-finance-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(11) = createProgram("Global Markets Sales and Trading Analyst Program", gbam_program_group, "usfn-global-markets-sales-trading-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(202) = createProgram("Global Markets Sales and Trading Analyst Program (Canada)", gbam_program_group, "cafn-global-markets-sales-trading-analyst-program.asp", AMERICAS, CANADA, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(12) = createProgram("Global Research Analyst Program", gbam_program_group, "usfn-global-research-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(13) = createProgram("Commercial Real Estate Banking Analyst Program", gcb_program_group, "usfn-commercial-real-estate-banking-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(14) = createProgram("Global Commercial Banking Analyst Program", gcb_program_group, "usfn-global-commercial-banking-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(15) = createProgram("Global Marketing and Corporate Affairs Analyst Program", gmca_program_group, "usfn-global-marketing-corporate-affairs-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, FALSE)
Set programs(16) = createProgram("Corporate Security Analyst", gto_program_group, "usfn-corporate-security-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(17) = createProgram("Corporate Workplace Analyst", gto_program_group, "usfn-corporate-workplace-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(18) = createProgram("Enterprise Technology and Delivery Leadership Development Rotational Program", gto_program_group, "usfn-enterprise-technology-delivery-Leadership-development-rotational-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(19) = createProgram("Global Markets Operations/Middle Office Rotational Program", gto_program_group, "usfn-global-markets-operations-middle-office-rotational-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(20) = createProgram("Mainframe Analyst Development Program", gto_program_group, "usfn-mainframe-analyst-development-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(21) = createProgram("Quality & Change Delivery Analyst", gto_program_group, "usfn-quality-change-delivery-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(22) = createProgram("Supply Chain Management Associate Program", gto_program_group, "usfn-supply-chain-management-associate-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(23) = createProgram("Technology Analyst Program", gto_program_group, "usfn-technology-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(203) = createProgram("Technology Analyst Program (Canada)", gto_program_group, "cafn-technology-analyst-program.asp", AMERICAS, CANADA, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(24) = createProgram("Global Wealth and Investment Management Analyst Program", gwim_program_group, "usfn-global-wealth-investment-management-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(25) = createProgram("Institutional Mortgage Services Analyst Program", hli_program_group, "usfn-institutional-mortgage-services-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(26) = createProgram("Global Risk Management Program", gr_program_group, "usfn-global-risk-management-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(27) = createProgram("Quantitative Management Program", gr_program_group, "usfn-quantitative-management-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(28) = createProgram("Global Corporate & Financial Institutions Debt Products Analyst Program", gr_program_group, "usfn-global-corporate-financial-institutions-debt-products-analyst-program.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(89) = createProgram("Markets Risk Analyst Program", gr_program_group, "usfn-markets-risk-analyst-progam.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)

'US AND CANADA FULLTIME ASSOCIATE PROGRAMS
Set programs(29) = createProgram("Consumer MBA Program – Banking Center Channel Track", csbb_program_group, "usfs-consumer-mba-program-banking-center-channel-track.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(30) = createProgram("Consumer MBA Program – Product Track", csbb_program_group, "usfs-consumer-mba-program-product-track.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(31) = createProgram("Operations MBA Program", csbb_program_group, "usfs-operations-mba-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(32) = createProgram("Global Corporate Banking Associate Program", gbam_program_group, "usfs-global-corporate-banking-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(33) = createProgram("Global Investment Banking/Capital Markets Associate Program", gbam_program_group, "usfs-global-investment-banking-capital-markets-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(204) = createProgram("Global Investment Banking/Capital Markets Associate Program (Canada)", gbam_program_group, "cafs-global-investment-banking-capital-markets-associate-program.asp", AMERICAS, CANADA, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(34) = createProgram("Global Commodities Associate Program", gbam_program_group, "usfs-global-commodities-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(35) = createProgram("Global Markets Sales and Trading Associate Program", gbam_program_group, "usfs-global-markets-sales-trading-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(205) = createProgram("Global Markets Sales and Trading Associate Program (Canada)", gbam_program_group, "cafs-global-markets-sales-trading-associate-program.asp", AMERICAS, CANADA, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(36) = createProgram("Global Research Associate Program", gbam_program_group, "usfs-global-research-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(37) = createProgram("Global Commercial Banking Associate Program", gcb_program_group, "usfs-global-commercial-banking-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(38) = createProgram("Human Resources Development Program", ghr_program_group, "usfs-human-resources-development-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(39) = createProgram("Corporate Workplace Senior Analyst", gto_program_group, "usfs-corporate-workplace-senior-analyst.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(40) = createProgram("Quality & Change Delivery Consultant", gto_program_group, "usfs-quality-change-delivery-consultant.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(41) = createProgram("Supply Chain Management MBA Program", gto_program_group, "usfs-supply-chain-management-mba-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(42) = createProgram("Technology MBA Program", gto_program_group, "usfs-technology-mba-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(43) = createProgram("Global Wealth and Investment Management Associate Program", gwim_program_group, "usfs-global-wealth-investment-management-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(44) = createProgram("Home Loans and Insurance MBA Program", hli_program_group, "usfs-home-Loans-insurance-mba-program.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)

'US AND CANADA INTERN ANALYST PROGRAMS
Set programs(45) = createProgram("Corporate Audit Intern Program", audit_program_group, "usin-corporate-audit-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(46) = createProgram("Corporate Treasury Internship Program", cfo_program_group, "usin-corporate-treasury-internship-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(47) = createProgram("Finance Intern Program", cfo_program_group, "usin-finance-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(48) = createProgram("Operations Management Analyst Intern Program", csbb_program_group, "usin-operations-management-analyst-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(49) = createProgram("Global Corporate and Financial Institutions Treasury Summer Analyst Program", gbam_program_group, "usin-global-corporate-financial-institutions-treasury-summer-analyst-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(50) = createProgram("Global Corporate Banking Summer Analyst Program", gbam_program_group, "usin-global-corporate-banking-summer-analyst-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, FALSE)
Set programs(51) = createProgram("Global Investment Banking/Capital Markets Summer Analyst Program", gbam_program_group, "usin-global-investment-banking-capital-markets-summer-analyst-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(207) = createProgram("Global Investment Banking/Capital Markets Summer Analyst Program (Canada)", gbam_program_group, "cain-global-investment-banking-capital-markets-summer-analyst-program.asp", AMERICAS, CANADA, ANALYST, INTERN, FALSE, TRUE)
Set programs(52) = createProgram("Global Commodities Summer Analyst Program", gbam_program_group, "usin-global-commodities-summer-analyst-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(53) = createProgram("Global Markets Public Finance Summer Analyst Program", gbam_program_group, "usin-global-markets-public-finance-summer-analyst-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(54) = createProgram("Global Markets Sales and Trading Summer Analyst Program", gbam_program_group, "usin-global-markets-sales-trading-summer-analyst-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(208) = createProgram("Global Markets Sales and Trading Summer Analyst Program (Canada)", gbam_program_group, "cain-global-markets-sales-trading-summer-analyst-program.asp", AMERICAS, CANADA, ANALYST, INTERN, FALSE, TRUE)
Set programs(55) = createProgram("Global Research Summer Analyst Program", gbam_program_group, "usin-global-research-summer-analyst-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(206) = createProgram("Research Analyst Summer Program (Canada)", gbam_program_group, "cain-research-analyst-summer-program.asp", AMERICAS, CANADA, ANALYST, INTERN, FALSE, TRUE)
Set programs(56) = createProgram("Commercial Real Estate Banking Summer Analyst Program", gcb_program_group, "usin-commercial-real-estate-banking-summer-analyst-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(57) = createProgram("Global Commercial Banking Summer Analyst Program", gcb_program_group, "usin-global-commercial-banking-summer-analyst-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(58) = createProgram("Global Marketing and Corporate Affairs Intern Program", gmca_program_group, "usin-global-marketing-corporate-affairs-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, FALSE)
Set programs(59) = createProgram("Applied Technology Program", gto_program_group, "usin-applied-technology-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(60) = createProgram("Corporate Security Analyst Internship", gto_program_group, "usin-corporate-security-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(61) = createProgram("Corporate Workplace Analyst Internship", gto_program_group, "usin-corporate-workplace-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(62) = createProgram("Enterprise Technology and Delivery Intern Program", gto_program_group, "usin-enterprise-technology-delivery-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(63) = createProgram("Global Markets Operations/Middle Office Intern Program", gto_program_group, "usin-global-markets-operations-middle-office-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(64) = createProgram("Mainframe Analyst Development Intern Program", gto_program_group, "usin-mainframe-analyst-development-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(65) = createProgram("Quality & Change Delivery Analyst Internship ", gto_program_group, "usin-quality-change-delivery-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(66) = createProgram("Supply Chain Management Associate Intern Program", gto_program_group, "usin-supply-chain-management-associate-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(67) = createProgram("Technology Analyst Intern Program", gto_program_group, "usin-technology-analyst-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(209) = createProgram("Technology Analyst Intern Program (Canada)", gto_program_group, "cain-technology-analyst-intern-program.asp", AMERICAS, CANADA, ANALYST, INTERN, FALSE, TRUE)
Set programs(68) = createProgram("Global Wealth and Investment Management Summer Analyst Program", gwim_program_group, "usin-global-wealth-investment-management-summer-analyst-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(69) = createProgram("Merrill Lynch Wealth Management Branch Office Internship", gwim_program_group, "usin-wealth-management-branch-office-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(70) = createProgram("Institutional Mortgage Services Analyst Intern Program", hli_program_group, "usin-institutional-mortgage-services-analyst-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(73) = createProgram("Global Corporate & Financial Institutions Debt Products Summer Analyst Program", gr_program_group, "usin-global-corporate-financial-institutions-debt-products-summer-analyst-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(71) = createProgram("Global Risk Management Intern Program", gr_program_group, "usin-global-risk-management-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(90) = createProgram("Markets Risk Intern Program", gr_program_group, "usin-markets-risk-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(72) = createProgram("Quantitative Management Intern Program", gr_program_group, "usin-quantitative-management-intern-program.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)

'US AND CANADA INTERN ASSOCIATE PROGRAMS
Set programs(74) = createProgram("Consumer MBA Intern Program – Banking Center Channel Track", csbb_program_group, "usis-consumer-mba-intern-program-banking-center-channel-track.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(75) = createProgram("Consumer MBA Intern Program – Product Track", csbb_program_group, "usis-consumer-mba-intern-program-product-track.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(76) = createProgram("Operations MBA Intern Program", csbb_program_group, "usis-operations-mba-intern-program.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(77) = createProgram("Global Investment Banking/Capital Markets Summer Associate Program", gbam_program_group, "usis-global-investment-banking-capital-markets-summer-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(210) = createProgram("Global Investment Banking/Capital Markets Summer Associate Program (Canada)", gbam_program_group, "cais-global-investment-banking-capital-markets-summer-associate-program.asp", AMERICAS, CANADA, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(78) = createProgram("Global Commodities Summer Associate Program", gbam_program_group, "usis-global-commodities-summer-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(79) = createProgram("Global Markets Sales and Trading Summer Associate Program", gbam_program_group, "usis-global-markets-sales-trading-summer-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(211) = createProgram("Global Markets Sales and Trading Summer Associate Program (Canada)", gbam_program_group, "cais-global-markets-sales-trading-summer-associate-program.asp", AMERICAS, CANADA, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(80) = createProgram("Global Research Summer Associate Program", gbam_program_group, "usis-global-research-summer-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(212) = createProgram("Global Research Summer Associate Program (Canada)", gbam_program_group, "cais-global-research-summer-associate-program.asp", AMERICAS, CANADA, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(81) = createProgram("Global Commercial Banking Summer Associate Program", gcb_program_group, "usis-global-commercial-banking-summer-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, FALSE)
Set programs(82) = createProgram("Human Resources Development Intern Program", ghr_program_group, "usis-human-resources-development-intern-program.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(83) = createProgram("Corporate Workplace Senior Analyst Internship", gto_program_group, "usis-corporate-workplace-senior-analyst-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(84) = createProgram("Quality & Change Delivery Consultant Internship", gto_program_group, "usis-quality-change-delivery-consultant-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(85) = createProgram("Supply Chain Management MBA Internship Program", gto_program_group, "usis-supply-chain-management-mba-internship-program.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(86) = createProgram("Technology MBA Intern Program", gto_program_group, "usis-technology-mba-intern-program.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(87) = createProgram("Global Wealth and Investment Management Summer Associate Program", gwim_program_group, "usis-global-wealth-investment-management-summer-associate-program.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(88) = createProgram("Home Loans and Insurance MBA Intern Program", hli_program_group, "usis-home-Loans-insurance-mba-intern-program.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)




'CANADA -> 201-300
'last - 212
'CANADA FULLTIME ANALYST PROGRAMS
'201
'202
'203
'CANADA FULLTIME ASSOCIATE PROGRAMS
'204
'205
'CANADA INTERN ANALYST PROGRAMS
'206
'207
'208
'209
'CANADA INTERN ASSOCIATE PROGRAMS
'210
'211
'212



'EMEA -> 301-500
'last - 355

'EMEA FULLTIME ANALYST PROGRAMS
Set programs(301) = createProgram("International Corporate Treasury Analyst Programme", cfo_program_group, "emeafn-international-corporate-treasury-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(302) = createProgram("Card Services Analyst Programme", csbb_program_group, "emeafn-card-services-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(303) = createProgram("Global Investment Banking Analyst Programme", gbam_program_group, "emeafn-global-investment-banking-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(304) = createProgram("Global Capital Markets Analyst Programme", gbam_program_group, "emeafn-global-capital-markets-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(305) = createProgram("Global Markets Sales and Trading Analyst Programme", gbam_program_group, "emeafn-global-markets-sales-trading-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(306) = createProgram("Global Research Analyst Programme", gbam_program_group, "emeafn-global-research-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(307) = createProgram("Global Quantitative Research Analyst Programme", gbam_program_group, "emeafn-global-quantitative-research-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(308) = createProgram("Global Corporate Banking Analyst Programme", gbam_program_group, "emeafn-global-corporate-banking-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(309) = createProgram("Global Treasury Solutions Analyst Programme", gbam_program_group, "emeafn-global-treasury-solutions-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(310) = createProgram("South African Graduate Analyst Programme", gbam_program_group, "emeafn-south-african-graduate-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(311) = createProgram("Human Resources Analyst Programme", ghr_program_group, "emeafn-human-resources-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(312) = createProgram("Enterprise Technology and Delivery Analyst Programme", gto_program_group, "emeafn-enterprise-technology-delivery-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(313) = createProgram("Technology Analyst Programme", gto_program_group, "emeafn-technology-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(314) = createProgram("Global Markets Operations/Middle Office Analyst Programme ", gto_program_group, "emeafn-global-markets-operations-middle-office-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(315) = createProgram("Merrill Lynch Wealth Management Analyst Programme", gwim_program_group, "emeafn-merrill-lynch-wealth-management-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(316) = createProgram("Corporate and Financial Institutions Debt Products Analyst Programme", gr_program_group, "emeafn-corporate-financial-institutions-debt-products-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(317) = createProgram("Market Risk Analyst Programme", gr_program_group, "emeafn-market-risk-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(318) = createProgram("Compliance Analyst Programme", gr_program_group, "emeafn-compliance-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(319) = createProgram("Global Capital Markets Credit Risk Analyst Programme", gr_program_group, "emeafn-global-capital-markets-credit-risk-analyst-programme.asp", EMEA, "", ANALYST, FULLTIME, FALSE, FALSE)

'EMEA FULLTIME ASSOCIATE PROGRAMS
Set programs(320) = createProgram("Global Investment Banking Associate Programme", gbam_program_group, "emeafs-global-investment-banking-associate-programme.asp", EMEA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(321) = createProgram("Global Markets Sales and Trading Associate Programme", gbam_program_group, "emeafs-global-markets-sales-trading-associate-programme.asp", EMEA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(322) = createProgram("Global Markets Quantitative Analytics Associate Programme", gbam_program_group, "emeafs-global-markets-quantitative-analytics-associate-programme.asp", EMEA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(323) = createProgram("Global Research Associate Programme", gbam_program_group, "emeafs-global-research-associate-programme.asp", EMEA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)

'EMEA INTERN ANALYST PROGRAMS
Set programs(324) = createProgram("International Corporate Treasury Summer Analyst Programme", cfo_program_group, "emeain-international-corporate-treasury-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(325) = createProgram("Global Investment Banking Summer Analyst Programme", gbam_program_group, "emeain-global-investment-banking-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(326) = createProgram("Global Investment Banking Analyst Fixed Term Placement (3-6 months)", gbam_program_group, "emeain-global-investment-banking-analyst-fixed-term-placement-3-6-months.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(327) = createProgram("Global Capital Markets Summer Analyst Programme", gbam_program_group, "emeain-global-capital-markets-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(328) = createProgram("Global Capital Markets Analyst Fixed Term Placement (3-6 months)", gbam_program_group, "emeain-global-capital-markets-analyst-fixed-term-placement-3-6-months.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(329) = createProgram("Global Markets Sales and Trading Summer Analyst Programme", gbam_program_group, "emeain-global-markets-sales-trading-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(330) = createProgram("Global Markets Sales and Trading Analyst Fixed Term Placement (3-6 months)", gbam_program_group, "emeain-global-markets-sales-trading-analyst-fixed-term-placement-3-6-months.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(331) = createProgram("Global Markets - Equity Derivatives Analyst Fixed Term Placement (6-12 months)", gbam_program_group, "emeain-global-markets-equity-derivatives-analyst-fixed-term-placement-6-12-months.asp", EMEA, "", ANALYST, INTERN, FALSE, FALSE)
Set programs(332) = createProgram("Global Research Summer Analyst Programme", gbam_program_group, "emeain-global-research-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(333) = createProgram("Global Research Analyst Fixed Term Placement (3-6 months)", gbam_program_group, "emeain-global-research-analyst-fixed-term-placement-3-6-months.asp", EMEA, "", ANALYST, INTERN, FALSE, FALSE)
Set programs(334) = createProgram("Global Quantitative Research Summer Analyst Programme", gbam_program_group, "emeain-global-quantitative-research-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(335) = createProgram("Global Corporate Banking Summer Analyst Programme", gbam_program_group, "emeain-global-corporate-banking-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(336) = createProgram("Global Corporate Banking Analyst Fixed Term Placement (3-6 months)", gbam_program_group, "emeain-global-corporate-banking-analyst-fixed-term-placement-3-6-months.asp", EMEA, "", ANALYST, INTERN, FALSE, FALSE)
Set programs(337) = createProgram("Global Treasury Solutions Summer Analyst Programme", gbam_program_group, "emeain-global-treasury-solutions-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(338) = createProgram("South African Graduate Analyst Fixed Term Placement (12 months)", gbam_program_group, "emeain-south-african-graduate-analyst-fixed-term-placement-12-months.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(339) = createProgram("Human Resources Summer Analyst Programme", ghr_program_group, "emeain-human-resources-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(340) = createProgram("Enterprise Technology and Delivery Summer Analyst Programme", gto_program_group, "emeain-enterprise-technology-delivery-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(341) = createProgram("Enterprise Technology and Delivery Analyst Fixed Term Placement (12 months)", gto_program_group, "emeain-enterprise-technology-delivery-analyst-fixed-term-placement-12-months.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(342) = createProgram("Technology Summer Analyst Programme", gto_program_group, "emeain-technology-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(343) = createProgram("Technology Analyst Fixed Term Placement (6 months)", gto_program_group, "emeain-technology-analyst-fixed-term-placement-6-months.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(344) = createProgram("Technology Analyst Fixed Term Placement (12 months)", gto_program_group, "emeain-technology-analyst-fixed-term-placement-12-months.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(345) = createProgram("Global Markets Operations/Middle Office Summer Analyst Programme", gto_program_group, "emeain-global-markets-operations-middle-office-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(346) = createProgram("Merrill Lynch Wealth Management Summer Analyst Programme", gwim_program_group, "emeain-merrill-lynch-wealth-management-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(347) = createProgram("Merrill Lynch Wealth Management Analyst Fixed Term Placement (3-6 months)", gwim_program_group, "emeain-merrill-lynch-wealth-management-analyst-fixed-term-placement-3-6-months.asp", EMEA, "", ANALYST, INTERN, FALSE, FALSE)
Set programs(348) = createProgram("Corporate and Financial Institutions Debt Products Summer Analyst Programme", gr_program_group, "emeain-corporate-financial-institutions-debt-products-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(349) = createProgram("Market Risk Summer Analyst Programme", gr_program_group, "emeain-market-risk-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(350) = createProgram("Compliance Summer Analyst Programme", gr_program_group, "emeain-compliance-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(351) = createProgram("Global Capital Markets Credit Risk Summer Analyst Programme", gr_program_group, "emeain-global-capital-markets-credit-risk-summer-analyst-programme.asp", EMEA, "", ANALYST, INTERN, FALSE, FALSE)

'EMEA INTERN ASSOCIATE PROGRAMS
Set programs(352) = createProgram("Global Investment Banking Summer Associate Programme", gbam_program_group, "emeais-global-investment-banking-summer-associate-programme.asp", EMEA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(353) = createProgram("Global Markets Sales and Trading Summer Associate Programme", gbam_program_group, "emeais-global-markets-sales-trading-summer-associate-programme.asp", EMEA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(354) = createProgram("Global Markets Quantitative Analytics Associate Fixed Term Placement (5 months)", gbam_program_group, "emeais-global-markets-quantitative-analytics-associate-fixed-term-placement-5-months.asp", EMEA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(355) = createProgram("Global Research Summer Associate Programme", gbam_program_group, "emeais-global-research-summer-associate-programme.asp", EMEA, "", ASSOCIATE, INTERN, FALSE, TRUE)




'ASIA -> 501-600
'last - 531

'ASIA FULLTIME ANALYST PROGRAMS
Set programs(501) = createProgram("Chief Financial Office Analyst Program", cfo_program_group, "asiafn-chief-financial-office-analyst-program.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(502) = createProgram("Global Investment Banking Analyst Program", gbam_program_group, "asiafn-global-investment-banking-analyst-program.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(503) = createProgram("Global Capital Markets Analyst Program", gbam_program_group, "asiafn-global-capital-markets-analyst-program.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(504) = createProgram("Global Markets Sales and Trading Analyst Program", gbam_program_group, "asiafn-global-markets-sales-trading-analyst-program.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(505) = createProgram("Global Research Analyst Program", gbam_program_group, "asiafn-global-research-analyst-program.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(506) = createProgram("Global Corporate Banking Analyst Program", gbam_program_group, "asiafn-global-corporate-banking-analyst-program.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(507) = createProgram("Global Corporate and Financial Institutions Treasury Analyst Program", gcb_program_group, "asiafn-global-corporate-financial-institutions-treasury-analyst-program.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(508) = createProgram("Enterprise Technology and Delivery Leadership Development Analyst Program", gto_program_group, "asiafn-enterprise-technology-delivery-leadership-development-analyst-program.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(509) = createProgram("Global Markets Operations/Middle Office Analyst Program", gto_program_group, "asiafn-global-markets-operations-middle-office-analyst-program.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(510) = createProgram("Technology Analyst Program", gto_program_group, "asiafn-technology-analyst-program.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(511) = createProgram("Merrill Lynch Wealth Management Analyst Program", gwim_program_group, "asiafn-global-wealth-investment-management-analyst-program.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)

'ASIA FULLTIME ASSOCIATE PROGRAMS
Set programs(512) = createProgram("Global Investment Banking Associate Program", gbam_program_group, "asiafs-global-investment-banking-associate-program.asp", ASIA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(513) = createProgram("Global Capital Markets Associate Program", gbam_program_group, "asiafs-global-capital-markets-associate-program.asp", ASIA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(514) = createProgram("Global Markets Sales and Trading Associate Program", gbam_program_group, "asiafs-global-markets-sales-trading-associate-program.asp", ASIA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(515) = createProgram("Global Research Associate Program", gbam_program_group, "asiafs-global-research-associate-program.asp", ASIA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)

'ASIA INTERN ANALYST PROGRAMS
Set programs(516) = createProgram("Chief Financial Office Summer Analyst Program", cfo_program_group, "asiain-chief-financial-office-summer-analyst-program.asp", ASIA, "", ANALYST, INTERN, FALSE, FALSE)
Set programs(517) = createProgram("Global Investment Banking Summer Analyst Program", gbam_program_group, "asiain-global-investment-banking-summer-analyst-program.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(518) = createProgram("Global Capital Markets Summer Analyst Program", gbam_program_group, "asiain-global-capital-markets-summer-analyst-program.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(519) = createProgram("Global Markets Sales and Trading Summer Analyst Program", gbam_program_group, "asiain-global-markets-sales-trading-summer-analyst-program.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(520) = createProgram("Global Research Summer Analyst Program", gbam_program_group, "asiain-global-research-summer-analyst-program.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(521) = createProgram("Global Corporate Banking Summer Analyst Program", gbam_program_group, "asiain-global-corporate-banking-summer-analyst-program.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(522) = createProgram("Global Corporate and Financial Institutions Treasury Summer Analyst Program", gcb_program_group, "asiain-global-corporate-financial-institutions-treasury-summer-analyst-program.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(523) = createProgram("Technology Analyst Industrial Placement Program", gto_program_group, "asiain-technology-analyst-industrial-placement-program.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(524) = createProgram("Enterprise Technology and Delivery Summer Analyst Program", gto_program_group, "asiain-enterprise-technology-delivery-summer-analyst-program.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(525) = createProgram("Global Markets Operations/Middle Office Summer Analyst Program", gto_program_group, "asiain-global-markets-operations-middle-office-summer-analyst-program.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(526) = createProgram("Technology Summer Analyst Program", gto_program_group, "asiain-technology-summer-analyst-program.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(527) = createProgram("Merrill Lynch Wealth Management Summer Analyst Program", gwim_program_group, "asiain-global-wealth-investment-management-summer-analyst-program.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)

'ASIA INTERN ASSOCIATE PROGRAMS
Set programs(528) = createProgram("Global Investment Banking Summer Associate Program", gbam_program_group, "asiais-global-investment-banking-summer-associate-program.asp", ASIA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(529) = createProgram("Global Capital Markets Summer Associate Program", gbam_program_group, "asiais-global-capital-markets-summer-associate-program.asp", ASIA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(530) = createProgram("Global Markets Sales and Trading Summer Associate Program", gbam_program_group, "asiais-global-markets-sales-trading-summer-associate-program.asp", ASIA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(531) = createProgram("Global Research Summer Associate Program", gbam_program_group, "asiais-global-research-summer-associate-program.asp", ASIA, "", ASSOCIATE, INTERN, FALSE, TRUE)



Function createProgram(title, program_group, url, region, sub_region, degree, ft_int, sub_programs, is_active)
	Set program = Server.CreateObject("Scripting.Dictionary")
	program.add "title", title
	program.add "program_group", program_group
	program.add "url", url
	program.add "region", region
	program.add "sub_region", sub_region
	program.add "degree", degree
	program.add "fulltime_intern", ft_int
	
	If ft_int = FULLTIME Then
		program.add "full_degree", degree & " Programs"
	ElseIf ft_int = INTERN Then
		program.add "full_degree", degree & " " & INTERN
	End If
	
	If isArray(sub_programs) Then
		program.add "sub_programs", sub_programs
	Else
		Dim subprograms(0)
		program.add "sub_programs", subprograms
	End If
	program.add "is_active", is_active
	program.add "points", 0
	program.add "listed", FALSE
	
	If is_active Then 
		If Not program_group.Item("programs").Exists(region&degree&ft_int) Then
			Set region_degree_ft_int = Server.CreateObject("Scripting.Dictionary")
			program_group.Item("programs").add region&degree&ft_int, region_degree_ft_int
		End If
		program_group.Item("programs").Item(region&degree&ft_int).add url, program
	End If
	
	Set createProgram = program
End Function

Function createProgramGroup (program_group,group_name, is_active)
	Set program_group = Server.CreateObject("Scripting.Dictionary")
	program_group.add "group_name", group_name
	program_group.add "is_active", is_active
	Set program_group_programs = Server.CreateObject("Scripting.Dictionary")
	program_group.add "programs", program_group_programs
End Function
%>
<!-- #include file="career_fit_tool_program_points.asp" -->
<%
Function goBack (program)
	
	back_page = ""
	params = ""
	
	select case program.Item("degree")
		case ANALYST
			select case program.Item("fulltime_intern")
			case FULLTIME
				select case program.Item("region")
				case AMERICAS
					back_page = "../campus-Americas-analyst-programs.aspx"
				case EMEA
					back_page = "../campus-EMEA-analyst-programs.aspx"
				case ASIA
					back_page = "../campus-AsiaPac-analyst-programs.aspx"
				case else
					back_page = ""
				end select
			case INTERN
				select case program.Item("region")
				case AMERICAS
					back_page = "../campus-Americas-analyst-internships.aspx"
				case EMEA
					back_page = "../campus-EMEA-analyst-associate-internships.aspx"
				case ASIA
					back_page = "../campus-AsiaPac-analyst-associate-internships.aspx"
				case else
					back_page = ""
				end select
			case else
				back_page = ""
			end select
		case ASSOCIATE
			select case program.Item("fulltime_intern")
			case FULLTIME
				select case program.Item("region")
				case AMERICAS
					back_page = "../campus-Americas-associate-phd-programs.aspx"
				case EMEA
					back_page = "../campus-EMEA-associate-and-phd-programs.aspx"
				case ASIA
					back_page = "../campus-AsiaPac-associate-and-phd-programs.aspx"
				case else
					back_page = ""
				end select
			case INTERN
				select case program.Item("region")
				case AMERICAS
					back_page = "../campus-Americas-associate-internships.aspx"
				case EMEA
					back_page = "../campus-EMEA-analyst-associate-internships.aspx"
				case ASIA
					back_page = "../campus-AsiaPac-analyst-associate-internships.aspx"
				case else
					back_page = ""
				end select
			case else
				back_page = ""
			end select
		case else
			back_page = ""
	end select
	
	If back_page <> "" Then
%>
<a href="<%=back_page %>" class="bacb" title="Back to&nbsp;<%=program.Item("region")%>&nbsp;<%=program.Item("full_degree")%>">Back to&nbsp;<%=program.Item("region")%>&nbsp;<%=program.Item("full_degree")%>  &raquo;</a>
<%
	End If
End Function

Function howToApply (program)
	select case program.Item("region")
		case AMERICAS
			select case program.Item("sub_region")
				case U_S_A
%>
In order to be considered a candidate for this opportunity, you must apply via <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="">www.bankofamerica.com/campusrecruiting</a>. To <a href="<% If page_section <> "ADA" Then  %>../learnmore/<% Else  %>../ada/<% End If %>sendresume.asp" class="bac" title="" target="_blank">submit your profile<span class="hidden"> Link opens a new window</span></a>, first sign in as a new or returning user. If you don't have an existing account, you'll need to register as a new user. Then, complete your Candidate Profile and designate your program(s) of interest. Please note that in order for your application to be considered complete, you must reach the final &ldquo;Thank You&rdquo; page. In addition, please follow any procedures set forth through the Career Services office on your campus.
<%
				case CANADA
%>
In order to be considered a candidate for this opportunity, you must apply via this web site. To <a href="https://static.wcn.co.uk/company/ml/apply_now.html" target="_blank" title="" class="bac">apply<span class="hidden"> Link opens a new window</span></a>, first sign in as a new or returning user. If you don't have an existing account, you'll need to register as a new user. Then, complete your Candidate Profile and designate your program(s) of interest. Please note that in order for your application to be considered complete, you must reach the final &ldquo;Thank You&rdquo; page.
<%
				case else
			end select
		case EMEA
%>
You must apply via <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="www.bankofamerica.com/campusrecruiting">www.bankofamerica.com/campusrecruiting</a>. To <a href="https://static.wcn.co.uk/company/ml/apply_now.html" target="_blank" title="" class="bac">apply now<span class="hidden"> Link opens a new window</span></a> and submit your application, first sign in as a new or returning user. If you don't have an existing account, you'll need to register as a new user. Then, complete the application form. Please note that in order for your application to be considered complete, you must have submitted all three stages - basic information, numerical test and longer questions.
<%
		case ASIA
%>
In order to be considered a candidate for this opportunity, you must apply via <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac" title="www.bankofamerica.com/campusrecruiting">www.bankofamerica.com/campusrecruiting</a>. As application dates/deadlines vary depending on location of the program, please ensure you check and apply in a timely manner, as late submissions will not be considered. To <a href="https://static.wcn.co.uk/company/ml/apply_now.html" target="_blank" title="" class="bac">apply now<span class="hidden"> Link opens a new window</span></a>, first sign in as a new or returning user. If you don't have an existing account, you'll need to register as a new user. Then, complete your Candidate Profile and designate your program of interest. Please note that in order for your application to be considered complete, you must reach the final "Thank You" page. For opportunities in Asia, you are not required to apply through your Career Services or through an on-campus resume drop.
<%
		case else
	end select
End Function


Function CareerFitToolLink (program)
	if page_section = "ADA" Then
		CareerFitToolLink = "career_fit_tool.asp"
	Else
		select case program.Item("region")
			case AMERICAS
				CareerFitToolLink = "../campus/Americas/career-fit-tool.aspx"
			case EMEA
				CareerFitToolLink = "../campus/EMEA/career-fit-tool.aspx"
			case ASIA
				CareerFitToolLink = "../campus/AsiaPac/career-fit-tool.aspx"
			case else
				CareerFitToolLink = ""
		end select
	End if
End Function

Function CampusEventsLink (program)
	select case program.Item("region")
		case AMERICAS
			CampusEventsLink = "../CampusEvents.aspx?region=1"
		case EMEA
			CampusEventsLink = "../CampusEvents.aspx?region=2"
		case ASIA
			CampusEventsLink = "../CampusEvents.aspx?region=3"
		case else
			CampusEventsLink = ""
	end select
End Function

Function ApplyLink (program)
	'if page_section = "ADA" Then
	'	ApplyLink = "how_to_apply.asp"
	'Else
		select case program.Item("region")
			case AMERICAS
				ApplyLink = "../campus-Americas-how-to-apply.aspx"
			case EMEA
				ApplyLink = "../campus-EMEA-how-to-apply.aspx"
			case ASIA
				ApplyLink = "../campus-AsiaPac-how-to-apply.aspx"
			case else
				ApplyLink = ""
		end select
	'End if
End Function
%>