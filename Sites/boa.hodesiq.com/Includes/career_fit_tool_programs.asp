<%
Dim AMERICAS, U_S_A, CANADA, EMEA, ASIA
AMERICAS = "Americas"
U_S_A = "US"
CANADA = "Canada"
EMEA = "EMEA"
ASIA = "Asia Pacific"
Dim ANALYST, ASSOCIATE, B_O_T_H
ANALYST = "Analyst"
ASSOCIATE = "Associate &amp; PhD"
B_O_T_H = "Analyst, Associate &amp; PhD"
Dim FULLTIME, INTERN
FULLTIME = "fulltime"
INTERN = "Internships"
Dim U_R_L
U_R_L = "../learnmore/"
If page_section = "ADA" Then U_R_L = "../ada/"

Dim cao_program_group, cs_program_group, cfo_program_group, csbb_program_group, gbgwim_program_group, gcps_program_group, gm_program_group, gr_program_group
call createProgramGroup (cao_program_group,"Chief Administrative Office", TRUE)
call createProgramGroup (cs_program_group,"Card Services", TRUE)
call createProgramGroup (cfo_program_group,"Chief Financial Office", TRUE)
call createProgramGroup (csbb_program_group,"Global Consumer and Small Business Banking", TRUE)
call createProgramGroup (gbgwim_program_group," Global Banking and Global Wealth Investment Management", TRUE)
call createProgramGroup (gcps_program_group,"Global Corporate Planning and Strategy", TRUE)
call createProgramGroup (gm_program_group,"Global Markets", TRUE)
call createProgramGroup (gr_program_group,"Global Risk", TRUE)
call createProgramGroup (mheis_program_group,"Mortgage, Home Equity &amp; Insurance Services", TRUE)

Dim program_groups(9)
Set program_groups(1) = cao_program_group
Set program_groups(2) = cs_program_group
Set program_groups(3) = cfo_program_group
Set program_groups(4) = csbb_program_group
Set program_groups(5) = gbgwim_program_group
Set program_groups(6) = gcps_program_group
Set program_groups(7) = gm_program_group
Set program_groups(8) = gr_program_group
Set program_groups(9) = mheis_program_group

Dim programs(164)
'		program number			program title, program group, program page, program degree, program fulltime or intern, program sub_programs,is_active

'US FULLTIME ANALYST PROGRAMS

Set programs(1) = createProgram("Corporate Workplace Analyst", cao_program_group, "usfn-corporate-workplace-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)

Set programs(2) = createProgram("Corporate Audit Management Program", cfo_program_group, "usfn-corporate-audit-management.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(3) = createProgram("Corporate Treasury Analyst Program", cfo_program_group, "usfn-corporate-treasury-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(4) = createProgram("Finance Management Associate Program", cfo_program_group, "usfn-finance-management-associate.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(5) = createProgram("Supply Chain Management Associate Program", cfo_program_group, "usfn-supply-chain-management-associate.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)

Set programs(6) = createProgram("Consumer &amp; Small Business Banking Assistant Manager", csbb_program_group, "usfn-consumer-small-business-banking-assistant-manager.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(7) = createProgram("Enterprise Technology &amp; Delivery Leadership Development Rotational Program", csbb_program_group, "usfn-enterprise-technology-delivery-leadership-development-rotational.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(8) = createProgram("Infrastructure Design &amp; Build Program", csbb_program_group, "usfn-infrastructure-design-build.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(9) = createProgram("Operations Management Analyst Program", csbb_program_group, "usfn-operations-management-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)

Set programs(10) = createProgram("Commercial Real Estate Bank Development Program", gbgwim_program_group, "usfn-commercial-real-estate-bank-development.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(161) = createProgram("Corporate Banking Analyst Program", gbgwim_program_group, "usfn-corporate-banking-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(11) = createProgram("Corporate &amp; Financial Institutions Debt Products Program ",gbgwim_program_group,"usfn-corporate-financial-institutions-debt-products.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(12) = createProgram("Corporate &amp; Investment Banking Analyst Program", gbgwim_program_group, "usfn-corporate-investment-banking-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(71) = createProgram("Corporate &amp; Investment Banking Analyst Program", gbgwim_program_group, "cafn-corporate-investment-banking-analyst.asp", AMERICAS, CANADA, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(159) = createProgram("Global Commercial Banking Analyst Program", gbgwim_program_group, "usfn-global-commercial-banking-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(13) = createProgram("Global Commercial Banking and Global Product Solutions Analyst Program", gbgwim_program_group, "usfn-global-commercial-banking-global-product-solutions-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, FALSE)'program removed
Set programs(160) = createProgram("Global Corporate &amp; Financial Institutions Treasury Analyst Program", gbgwim_program_group, "usfn-global-corporate-financial-institutions-treasury-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(14) = createProgram("Global Markets Operations/Middle Office Rotational Program", gbgwim_program_group,"usfn-global-markets-operations-middle-office-rotational.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(15) = createProgram("Global Wealth and Investment Management Analyst Program", gbgwim_program_group, "usfn-global-wealth-investment-management-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(16) = createProgram("Technology Analyst Program", gbgwim_program_group, "usfn-technology-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(72) = createProgram("Technology Analyst Program", gbgwim_program_group, "cafn-technology-analyst.asp", AMERICAS, CANADA, ANALYST, FULLTIME, FALSE, TRUE)

Set programs(17) = createProgram("LaSalle Global Trust Services<span style=""font-size: 0.6em; position: relative; top: -0.6em;"">TM</span> Analyst Program", gcps_program_group, "usfn-lasalle-global-trust-services-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(18) = createProgram("Global Transition, Quality &amp; Change Delivery Analyst", gcps_program_group, "usfn-quality-productivity-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)

Set programs(19) = createProgram("Global Capital Markets Analyst Program", gm_program_group, "usfn-global-capital-markets-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(73) = createProgram("Capital Markets Analyst Program", gm_program_group, "cafn-capital-markets-analyst.asp", AMERICAS, CANADA, ANALYST, FULLTIME, FALSE, FALSE)'program and file removed
Set programs(20) = createProgram("Global Research Analyst Program", gm_program_group, "usfn-global-research-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(74) = createProgram("Research Analyst Program", gm_program_group, "cafn-research-analyst.asp", AMERICAS, CANADA, ANALYST, FULLTIME, FALSE, FALSE)'program and file removed
Set programs(21) = createProgram("Global Sales &amp; Trading Analyst Program", gm_program_group,"usfn-global-sales-trading-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(75) = createProgram("Sales &amp; Trading Analyst Program", gm_program_group,"cafn-sales-trading-analyst.asp", AMERICAS, CANADA, ANALYST, FULLTIME, FALSE, TRUE)

Set programs(22) = createProgram("Global Risk Management  Program", gr_program_group, "usfn-global-risk-management.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(23) = createProgram("Quantitative Management Program", gr_program_group, "usfn-quantitative-management.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)

Set programs(151) = createProgram("Actuarial Analyst I Program", mheis_program_group, "usfn-actuarial-analyst-I.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(152) = createProgram("Actuarial Analyst II Program", mheis_program_group, "usfn-actuarial-analyst-II.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(153) = createProgram("Institutional Mortgage Services Development Program", mheis_program_group, "usfn-institutional-mortgage-services.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)
Set programs(154) = createProgram("Underwriter Quality Assurance Analyst Program", mheis_program_group, "usfn-underwriter-quality-assurance-analyst.asp", AMERICAS, U_S_A, ANALYST, FULLTIME, FALSE, TRUE)

'US FULLTIME ASSOCIATE PROGRAMS

Set programs(24) = createProgram("Corporate Workplace Associate", cao_program_group, "usfs-corporate-workplace-associate.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(25) = createProgram("Global Human Resources Leadership and Development Program", cao_program_group, "usfs-global-human-resources-leadership-development.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)

Set programs(26) = createProgram("Consumer &amp; Small Business Banking MBA Program ", csbb_program_group, "usfs-consumer-small-business-banking-mba.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(27) = createProgram("eChannels &amp; Customer Solutions MBA Program", csbb_program_group, "usfs-echannels-customer-solutions-mba.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(28) = createProgram("Operations MBA Program", csbb_program_group, "usfs-operations-mba.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(29) = createProgram("Technology MBA Program", csbb_program_group, "usfs-technology-mba.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)

Set programs(162) = createProgram("Corporate Banking Associate Program", gbgwim_program_group, "usfs-corporate-banking-associate.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(30) = createProgram("Corporate &amp; Investment Banking Associate Program", gbgwim_program_group, "usfs-corporate-investment-banking-associate.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(76) = createProgram("Corporate &amp; Investment Banking Associate Program", gbgwim_program_group,"cafs-corporate-investment-banking-associate.asp", AMERICAS, CANADA, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(31) = createProgram("Global Commercial Banking and Global Product Solutions MBA Leadership Program", gbgwim_program_group, "usfs-global-commercial-banking-global-product-solutions-mba-leadership.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, FALSE)'program removed
Set programs(163) = createProgram("Global Commercial Banking MBA Leadership Program", gbgwim_program_group, "usfs-global-commercial-banking-mba-leadership.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(32) = createProgram("Global Wealth and Investment Management Associate Program", gbgwim_program_group, "usfs-global-wealth-investment-management-associate.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)

Set programs(33) = createProgram("Global Transition, Quality &amp; Change Delivery Associate", gcps_program_group, "usfs-quality-productivity-associate.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)

Set programs(34) = createProgram("Global Capital Markets Associate Program", gm_program_group, "usfs-global-capital-markets-associate.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(77) = createProgram("Capital Markets Associate Program", gm_program_group,"cafs-capital-markets-associate.asp", AMERICAS, CANADA, ASSOCIATE, FULLTIME, FALSE, FALSE)'program and file removed
Set programs(35) = createProgram("Global Research Associate Program", gm_program_group, "usfs-global-research-associate.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(78) = createProgram("Research Associate Program", gm_program_group,"cafs-research-associate.asp", AMERICAS, CANADA, ASSOCIATE, FULLTIME, FALSE, FALSE)'program and file removed
Set programs(36) = createProgram("Global Sales &amp; Trading Associate Program", gm_program_group, "usfs-global-sales-trading-associate.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(79) = createProgram("Sales &amp; Trading Associate Program", gm_program_group,"cafs-sales-trading-associate.asp", AMERICAS, CANADA, ASSOCIATE, FULLTIME, FALSE, TRUE)

Set programs(155) = createProgram("Home Loans &amp; Insurance MBA Management Program", mheis_program_group, "usfs-home-loans-insurance-services.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(156) = createProgram("Home Loans &amp; Insurance Quantitative Financial Associate - Pricing Team Program", mheis_program_group, "usfs-home-loans-insurance-quantitative-financial-associate.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(157) = createProgram("Quantitative Financial Associate - Trading Team Program", mheis_program_group, "usfs-quantitative-financial-associate-trading-team.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(158) = createProgram("Senior Operational Risk Specialist Program", mheis_program_group, "usfs-senior-operational-risk-specialist.asp", AMERICAS, U_S_A, ASSOCIATE, FULLTIME, FALSE, TRUE)

'US INTERN ANALYST PROGRAMS

Set programs(37) = createProgram("Corporate Workplace Analyst Internship", cao_program_group, "usin-corporate-workplace-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)

Set programs(38) = createProgram("Corporate Audit Management Intern Program", cfo_program_group, "usin-corporate-audit-management-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(39) = createProgram("Corporate Treasury Analyst Intern Program", cfo_program_group, "usin-corporate-treasury-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(40) = createProgram("Finance Management Associate Intern Program", cfo_program_group, "usin-finance-management-associate-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(41) = createProgram("Supply Chain Management Associate Intern Program", cfo_program_group, "usin-supply-chain-management-associate-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)

Set programs(42) = createProgram("Enterprise Technology &amp; Delivery Intern Program", csbb_program_group, "usin-enterprise-technology-delivery-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(43) = createProgram("Infrastructure Design &amp; Build Intern Program", csbb_program_group, "usin-infrastructure-design-build-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(44) = createProgram("Operations Management Analyst Intern Program", csbb_program_group, "usin-operations-management-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)

Set programs(45) = createProgram("Commercial Real Estate Bank Development Intern Program", gbgwim_program_group, "usin-commercial-real-estate-bank-development-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(46) = createProgram("Corporate &amp; Financial Institutions Debt Products Intern Program", gbgwim_program_group, "usin-corporate-financial-institutions-debt-products-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(47) = createProgram("Corporate and Investment Banking Analyst Intern Program", gbgwim_program_group, "usin-corporate-investment-banking-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(80) = createProgram("Corporate and Investment Banking Analyst Intern Program", gbgwim_program_group,"cain-corporate-investment-banking-analyst-internship.asp", AMERICAS, CANADA, ANALYST, INTERN, FALSE, TRUE)
Set programs(48) = createProgram("Global Commercial Banking and Global Product Solutions Analyst Intern Program", gbgwim_program_group, "usin-global-commercial-banking-global-product-solutions-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(49) = createProgram("Global Markets Operations/Middle Office Intern Program", gbgwim_program_group, "usin-global-markets-operations-middle-office-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(50) = createProgram("Global Wealth and Investment Management Analyst Intern Program", gbgwim_program_group, "usin-global-wealth-investment-management-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(51) = createProgram("Technology Analyst Intern Program", gbgwim_program_group, "usin-technology-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(81) = createProgram("Technology Analyst Intern Program", gbgwim_program_group,"cain-technology-analyst-internship.asp", AMERICAS, CANADA, ANALYST, INTERN, FALSE, TRUE)

Set programs(52) = createProgram("LaSalle Global Trust Services<span style=""font-size: 0.6em; position: relative; top: -0.6em;"">TM</span> Analyst Intern Program", gcps_program_group, "usin-lasalle-global-trust-services-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(53) = createProgram("Global Transition, Quality &amp; Change Delivery Analyst Internship", gcps_program_group, "usin-quality-productivity-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)

Set programs(54) = createProgram("Global Capital Markets Analyst Intern Program", gm_program_group, "usin-global-capital-markets-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(82) = createProgram("Capital Markets Analyst Intern Program", gm_program_group,"cain-capital-markets-analyst-internship.asp", AMERICAS, CANADA, ANALYST, INTERN, FALSE, TRUE)
Set programs(55) = createProgram("Global Research Analyst Intern Program", gm_program_group, "usin-global-research-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(83) = createProgram("Research Analyst Intern Program", gm_program_group,"cain-research-analyst-internship.asp", AMERICAS, CANADA, ANALYST, INTERN, FALSE, TRUE)
Set programs(56) = createProgram("Sales and Trading Analyst Intern Program", gm_program_group, "usin-sales-trading-analyst-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)
Set programs(84) = createProgram("Sales and Trading Analyst Intern Program", gm_program_group,"cain-sales-trading-analyst-internship.asp", AMERICAS, CANADA, ANALYST, INTERN, FALSE, TRUE)

Set programs(57) = createProgram("Global Risk Management Intern Program", gr_program_group, "usin-global-risk-management-internship.asp", AMERICAS, U_S_A, ANALYST, INTERN, FALSE, TRUE)

'US INTERN ASSOCIATE PROGRAMS

Set programs(58) = createProgram("Corporate Workplace Associate Internship", cao_program_group, "usis-corporate-workplace-associate-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(59) = createProgram("Global Human Resources Leadership and Development Intern Program", cao_program_group, "usis-global-human-resources-leadership-development-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)

Set programs(60) = createProgram("Consumer &amp; Small Business Banking MBA Intern Program", csbb_program_group, "usis-consumer-small-business-banking-mba-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(61) = createProgram("eChannels &amp; Customer Solutions MBA Intern Program", csbb_program_group, "usis-echannels-customer-solutions-mba-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(62) = createProgram("Operations MBA Intern Program", csbb_program_group, "usis-operations-mba-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(63) = createProgram("Technology MBA Intern Program", csbb_program_group, "usis-technology-mba-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)

Set programs(64) = createProgram("Corporate and Investment Banking Associate Intern Program", gbgwim_program_group, "usis-corporate-investment-banking-associate-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(85) = createProgram("Corporate and Investment Banking Associate Intern Program", gbgwim_program_group,"cais-corporate-investment-banking-associate-internship.asp", AMERICAS, CANADA, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(65) = createProgram("Global Commercial Banking and Global Product Solutions MBA Leadership Intern Program", gbgwim_program_group, "usis-global-commercial-banking-global-product-solutions-mba-leadership-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(66) = createProgram("Global Wealth and Investment Management Associate Intern Program", gbgwim_program_group, "usis-global-wealth-investment-management-associate-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)

Set programs(67) = createProgram("Global Transition, Quality &amp; Change Delivery Associate Internship", gcps_program_group, "usis-quality-productivity-associate-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)

Set programs(68) = createProgram("Global Capital Markets Associate Intern Program", gm_program_group, "usis-global-capital-markets-associate-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(86) = createProgram("Capital Markets Associate Intern Program", gm_program_group,"cais-capital-markets-associate-internship.asp", AMERICAS, CANADA, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(69) = createProgram("Global Research Associate Intern Program", gm_program_group, "usis-global-research-associate-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(87) = createProgram("Research Associate Intern Program", gm_program_group,"cais-research-associate-internship.asp", AMERICAS, CANADA, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(70) = createProgram("Sales and Trading Associate Intern Program", gm_program_group, "usis-sales-trading-associate-internship.asp", AMERICAS, U_S_A, ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(88) = createProgram("Sales and Trading Associate Intern Program", gm_program_group,"cais-sales-trading-associate-internship.asp", AMERICAS, CANADA, ASSOCIATE, INTERN, FALSE, TRUE)





'CANADA FULLTIME ANALYST PROGRAMS
'(71)
'(72)
'(73)
'(74)
'(75)
'CANADA FULLTIME ASSOCIATE PROGRAMS
'(76)
'(77)
'(78)
'(79)
'CANADA INTERN ANALYST PROGRAMS
'(80)
'(81)
'(82)
'(83)
'(84)
'CANADA INTERN ASSOCIATE PROGRAMS
'(85)
'(86)
'(87)
'(88)





'EMEA FULLTIME ANALYST PROGRAMS

Set programs(89) = createProgram("Global Human Resources Analyst", cao_program_group, "emeafn-global-human-resources-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(90) = createProgram("Card Services Analyst", cs_program_group, "emeafn-card-services-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(91) = createProgram("Corporate &amp; Financial Institutions Debt Products Analyst", gbgwim_program_group, "emeafn-corporate-financial-institutions-debt-products-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(92) = createProgram("Corporate and Investment Banking Analyst", gbgwim_program_group, "emeafn-corporate-investment-banking-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(164) = createProgram("Global Market Operations &amp; Middle Office Analyst Programme", gbgwim_program_group, "emeafn-global-market-operations-middle-office-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(93) = createProgram("Global Wealth and Investment Management Analyst", gbgwim_program_group, "emeafn-global-wealth-investment-management-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(94) = createProgram("Technology Analyst", gbgwim_program_group, "emeafn-technology-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(95) = createProgram("Treasury Management Analyst", gbgwim_program_group, "emeafn-treasury-management-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(96) = createProgram("Enterprise Technology &amp; Delivery Analyst", csbb_program_group, "emeafn-enterprise-technology-delivery-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(97) = createProgram("Capital Markets Analyst", gm_program_group, "emeafn-capital-markets-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(98) = createProgram("Research Analyst", gm_program_group, "emeafn-research-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(105) = createProgram("Research Quant Analyst", gm_program_group, "emeafs-research-quant-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(99) = createProgram("Sales and Trading Analyst", gm_program_group, "emeafn-sales-trading-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(100) = createProgram("Global Risk Management Analyst", gr_program_group, "emeafn-global-markets-risk-management-analyst.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(150) = createProgram("LaSalle Global Trust Services<span style=""font-size: 0.6em; position: relative; top: -0.6em;"">TM</span>", gcps_program_group, "emeafn-lasalle-global-trust-services.asp", EMEA, "", ANALYST, FULLTIME, FALSE, TRUE)

'EMEA FULLTIME ASSOCIATE PROGRAMS

Set programs(101) = createProgram("Corporate and Investment Banking Associate", gbgwim_program_group, "emeafs-corporate-investment-banking-associate.asp", EMEA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(102) = createProgram("Global Markets PhD Associate", gm_program_group, "emeafs-global-markets-phd-associate.asp", EMEA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(103) = createProgram("Research Associate", gm_program_group, "emeafs-research-associate.asp", EMEA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(104) = createProgram("Research PhD Associate", gm_program_group, "emeafs-research-phd-associate.asp", EMEA, "", ASSOCIATE, FULLTIME, FALSE, FALSE)'program removed
Set programs(106) = createProgram("Sales and Trading Associate", gm_program_group, "emeafs-sales-trading-associate.asp", EMEA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)

'EMEA INTERN ANALYST PROGRAMS

Set programs(107) = createProgram("Global Human Resources Analyst Internship", cao_program_group, "emeain-global-human-resources-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(108) = createProgram("Card Services Analyst Internship", cs_program_group, "emeain-card-services-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, FALSE)'program removed
Set programs(109) = createProgram("Enterprise Technology &amp; Delivery Analyst Internship", csbb_program_group, "emeain-enterprise-technology-delivery-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(110) = createProgram("Corporate &amp; Financial Institutions Debt Products Analyst Internship", gbgwim_program_group, "emeain-corporate-financial-institutions-debt-products-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(111) = createProgram("Corporate and Investment Banking Analyst Internship", gbgwim_program_group, "emeain-corporate-investment-banking-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(112) = createProgram("Global Wealth and Investment Management Analyst Internship", gbgwim_program_group, "emeain-global-wealth-investment-management-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(113) = createProgram("Technology Analyst Internship", gbgwim_program_group, "emeain-technology-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(114) = createProgram("Treasury Management Analyst Internship", gbgwim_program_group, "emeain-treasury-management-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(115) = createProgram("Capital Markets Analyst Internship", gm_program_group, "emeain-capital-markets-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(116) = createProgram("Research Analyst Internship", gm_program_group, "emeain-research-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(122) = createProgram("Research Quant Analyst Internship", gm_program_group, "emeais-research-quant-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(117) = createProgram("Sales and Trading Analyst Internship", gm_program_group, "emeain-sales-trading-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(118) = createProgram("Global Markets Risk Management Analyst Internship", gr_program_group, "emeain-global-markets-risk-management-analyst-internship.asp", EMEA, "", ANALYST, INTERN, FALSE, TRUE)

'EMEA INTERN ASSOCIATE PROGRAMS

Set programs(119) = createProgram("Corporate and Investment Banking Associate Internship", gbgwim_program_group, "emeais-corporate-investment-banking-associate-internship.asp", EMEA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(120) = createProgram("Global Markets PhD Associate Internship", gm_program_group, "emeais-global-markets-phd-associate-internship.asp", EMEA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(121) = createProgram("Research Associate Internship", gm_program_group, "emeais-research-associate-internship.asp", EMEA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(123) = createProgram("Sales and Trading Associate Internship", gm_program_group, "emeais-sales-trading-associate-internship.asp", EMEA, "", ASSOCIATE, INTERN, FALSE, TRUE)




'ASIA FULLTIME ANALYST PROGRAMS

Set programs(124) = createProgram("Chief Financial Office Analyst", cfo_program_group, "asiafn-chief-financial-office-analyst.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(125) = createProgram("Commercial Banking &amp; Product Solutions Analyst", gbgwim_program_group, "asiafn-commercial-banking-product-solutions-analyst.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(126) = createProgram("Corporate and Investment Banking Analyst", gbgwim_program_group, "asiafn-corporate-investment-banking-analyst.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(127) = createProgram("Global Wealth Management Analyst", gbgwim_program_group, "asiafn-global-wealth-management-analyst.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(128) = createProgram("Operations Analyst", gbgwim_program_group, "asiafn-operations-analyst.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(129) = createProgram("Technology Analyst", gbgwim_program_group, "asiafn-technology-analyst.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(130) = createProgram("Capital Markets Analyst", gm_program_group, "asiafn-capital-markets-analyst.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(131) = createProgram("Global Markets Analyst", gm_program_group, "asiafn-global-markets-analyst.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)
Set programs(132) = createProgram("Research Analyst", gm_program_group, "asiafn-research-analyst.asp", ASIA, "", ANALYST, FULLTIME, FALSE, TRUE)

'ASIA FULLTIME ASSOCIATE PROGRAMS

Set programs(133) = createProgram("Corporate and Investment Banking Associate", gbgwim_program_group, "asiafs-corporate-investment-banking-associate.asp", ASIA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(134) = createProgram("Capital Markets Associate", gm_program_group, "asiafs-capital-markets-associate.asp", ASIA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(135) = createProgram("Global Markets Associate", gm_program_group, "asiafs-global-markets-associate.asp", ASIA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)
Set programs(136) = createProgram("Research Associate", gm_program_group, "asiafs-research-associate.asp", ASIA, "", ASSOCIATE, FULLTIME, FALSE, TRUE)

'ASIA INTERN ANALYST PROGRAMS

Set programs(137) = createProgram("Chief Financial Office Analyst Internship", cfo_program_group, "asiain-chief-financial-office-analyst-internship.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(138) = createProgram("Commercial Banking &amp; Product Solutions Analyst Internship", gbgwim_program_group, "asiain-commercial-banking-product-solutions-analyst-internship.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(139) = createProgram("Corporate and Investment Banking Analyst Internship", gbgwim_program_group, "asiain-corporate-investment-banking-analyst-internship.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(140) = createProgram("Global Wealth Management Analyst Internship", gbgwim_program_group, "asiain-global-wealth-management-analyst-internship.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(141) = createProgram("Operations Analyst Internship", gbgwim_program_group, "asiain-operations-analyst-internship.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(142) = createProgram("Technology Analyst Internship", gbgwim_program_group, "asiain-technology-analyst-internship.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(143) = createProgram("Capital Markets Analyst Internship", gm_program_group, "asiain-capital-markets-analyst-internship.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(144) = createProgram("Global Markets Analyst Internship", gm_program_group, "asiain-global-markets-analyst-internship.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)
Set programs(145) = createProgram("Research Analyst Internship", gm_program_group, "asiain-research-analyst-internship.asp", ASIA, "", ANALYST, INTERN, FALSE, TRUE)

'ASIA INTERN ASSOCIATE PROGRAMS

Set programs(146) = createProgram("Corporate and Investment Banking Associate Internship", gbgwim_program_group, "asiais-corporate-investment-banking-associate-internship.asp", ASIA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(147) = createProgram("Capital Markets Associate Internship", gm_program_group, "asiais-capital-markets-associate-internship.asp", ASIA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(148) = createProgram("Global Markets Associate Internship", gm_program_group, "asiais-global-markets-associate-internship.asp", ASIA, "", ASSOCIATE, INTERN, FALSE, TRUE)
Set programs(149) = createProgram("Research Associate Internship", gm_program_group, "asiais-research-associate-internship.asp", ASIA, "", ASSOCIATE, INTERN, FALSE, TRUE)


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
	
	If Not program_group.Item("programs").Exists(region&degree&ft_int) Then
		Set region_degree_ft_int = Server.CreateObject("Scripting.Dictionary")
		program_group.Item("programs").add region&degree&ft_int, region_degree_ft_int
	End If
	program_group.Item("programs").Item(region&degree&ft_int).add url, program
	
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
				back_page = "analyst_programs.asp"
			case INTERN
				back_page = "analyst_internships.asp"
			case else
				back_page = ""
			end select
		case ASSOCIATE
			select case program.Item("fulltime_intern")
			case FULLTIME
				back_page = "associate_phd_programs.asp"
			case INTERN
				back_page = "associate_phd_internships.asp"
			case else
				back_page = ""
			end select
		case else
			back_page = ""
	end select
	
	If back_page <> "" Then
		select case program.Item("region")
		case AMERICAS
			If page_section <> "ADA" Then
				params = "?t=1"
			Else
				params = "#t1"
			End If
		case EMEA
			If page_section <> "ADA" Then
				params = "?t=2"
			Else
				params = "#t2"
			End If
		case ASIA
			If page_section <> "ADA" Then
				params = "?t=3"
			Else
				params = "#t3"
			End If
		case else
			params = ""
		end select
%>
<a href="<%=back_page %><%=params%>" class="bacb" title="Back to&nbsp;<%=program.Item("region")%>&nbsp;<%=program.Item("full_degree")%>">Back to&nbsp;<%=program.Item("region")%>&nbsp;<%=program.Item("full_degree")%>  &raquo;</a>
<%
	End If
End Function

Function howToApply (program)
	select case program.Item("region")
		case AMERICAS
			select case program.Item("sub_region")
				case U_S_A
%>
In order to be considered a candidate for this opportunity, you must apply via this web site. To <a href="<% If page_section <> "ADA" Then  %>../learnmore/<% Else  %>../ada/<% End If %>sendresume.asp" target="<%=HOWTOAPPLY_TARGET%>" title="Apply<% If HOWTOAPPLY_TARGET = "_blank" Then %>. Link opens a new window.<% End If%>" class="bac">Apply</a>, first sign in as a new or returning user. If you don't have an existing account, you'll need to register as a new user. Then, complete your Candidate Profile and designate your program(s) of interest. Please note that in order for your application to be considered complete, you must reach the final "Thank You" page. In addition, please follow any procedures set forth through the Career Services office on your campus.
<%
				case CANADA
%>
In order to be considered a candidate for this opportunity, you must apply via this web site. To <a href="https://apply.ml.com/Students/Login.aspx" target="_blank" title="Apply. Link opens a new window." class="bac">Apply</a>, first sign in as a new or returning user. If you don't have an existing account, you'll need to register as a new user. Then, complete your Candidate Profile and designate your program(s) of interest. Please note that in order for your application to be considered complete, you must reach the final "Thank You" page.
<%
				case else
			end select
		case EMEA
%>
All applications must be made through this website. Follow this link to the <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>how_to_apply.asp<% If page_section <> "ADA" Then  %>?t=2<% Else  %>#t2<% End If %>" class="bac" title="How to Apply">&quot;How to Apply&quot;</a> page. 
<%
		case ASIA
			If fpage = "asiafn-research-analyst" OR fpage = "asiafs-research-associate" OR fpage = "asiain-research-analyst-internship" OR fpage = "asiais-research-associate-internship" Then
%>
In order to be considered a candidate for this opportunity, you must apply via <a href="<% If page_section <> "ADA" Then  %>../campusrecruiting/<% Else  %>../ada_camp/<% End If %>" class="bac">www.bankofamerica.com/campusrecruiting</a>. Please note application dates/deadlines vary depending on location of the program, ensure you check and apply in a timely manner as late submissions will not be entertained.  To <a href="https://static.wcn.co.uk/company/ml/apply_now.html" target="_blank" title="Apply. Link opens a new window." class="bac">apply</a> now, first sign in as a new or returning user. If you don't have an existing account, you'll need to register as a new user. Then, complete your Candidate Profile and designate your program(s) of interest. Please note that in order for your application to be considered complete, you must reach the final "Thank You" page. Shortly after your application has been completed, you should receive an invitation to conduct an online test, please ensure you follow instructions and complete the test within 72 hours.  For Asia opportunities you are not required to apply through your Career Services or through an on-campus resume drop.
<%
			Else
%>
In order to be considered a candidate for this opportunity, you must apply via this web site. To <a href="https://static.wcn.co.uk/company/ml/apply_now.html" target="_blank" title="Apply. Link opens a new window." class="bac">Apply</a>, first sign in as a new or returning user. If you don't have an existing account, you'll need to register as a new user. Then, complete your Candidate Profile and designate your program(s) of interest. Please note that in order for your application to be considered complete, you must reach the final "Thank You" page. In addition, please follow any procedures set forth through the Career Services office on your campus.
<%
			End If
		case else
	end select
End Function
%>