<%
Dim U_G_D, G_D, I_N_T, U_R_L
U_G_D = "undergraduate"
G_D = "graduate"
B_O_T_H = "both"
I_N_T = "intern"
U_R_L = "../learnmore/"
If page_section = "ADA" Then U_R_L = "../ada/"

Dim programs(56)
'		program number			program title,program group,program page
Dim csas_program_group, gcaib_program_group, gwaim_program_group, gcasbb_program_group
call createProgramGroup (csas_program_group,"Corporate Staff and Support")
Set programs(1) = createProgram("Corporate Audit Management Associate Program (CAMAP)",csas_program_group,"up_us_carp.asp",FALSE,TRUE)
Set programs(2) = createProgram("GWIM Credit Risk Management Program",csas_program_group,"up_us_gwim_crmp.asp",FALSE,TRUE)
Set programs(3) = createProgram("Corporate Treasury Associate Program",csas_program_group,"up_us_ctap.asp",FALSE,TRUE)
Set programs(4) = createProgram("Finance Management Associate Program",csas_program_group,"up_us_fmap.asp",FALSE,TRUE)
Set programs(5) = createProgram("LaSalle Global Trust Services Associate  Program",csas_program_group,"up_us_lsgtsap.asp",FALSE,TRUE)
Set programs(6) = createProgram("Global Risk Management Associate Program",csas_program_group,"up_us_grmap.asp",FALSE,TRUE)
Set programs(7) = createProgram("Global Human Resources Leadership and Development Program",csas_program_group,"gp_us_ghrldp.asp",FALSE,TRUE)
Set programs(8) = createProgram("Quantitative Management Associate Program",csas_program_group,"up_us_qmap.asp",FALSE,TRUE)
Set programs(9) = createProgram("Supply Chain Management - Management Associate Program",csas_program_group,"up_us_scmap.asp",FALSE,TRUE)
Set programs(10) = createProgram("Global Marketing &amp; Corporate Affairs",csas_program_group,"/ada/lobgmca.asp",FALSE,TRUE)
Set programs(11) = createProgram("Corporate Workplace Analyst",csas_program_group,"up_us_cwap.asp",FALSE,TRUE)
Set programs(12) = createProgram("Corporate Workplace MBA Senior Analyst",csas_program_group,"gp_us_cw_mba_sa.asp",FALSE,TRUE)
Set programs(13) = createProgram("Quality and Productivity Analyst",csas_program_group,"up_us_qpap.asp",FALSE,TRUE)
Set programs(14) = createProgram("Quality and Productivity MBA Consultant",csas_program_group,"gp_us_qp_mbac.asp",FALSE,TRUE)
Set programs(15) = createProgram("Global Information Protection Business Continuity",csas_program_group,"up_us_gipbc.asp",FALSE,TRUE)
Set programs(16) = createProgram("Network Computing Group - Leader Development Rotational Program",csas_program_group,"up_us_ncgl_drp.asp",FALSE,TRUE)
Set programs(17) = createProgram("Network Computing Group - Mainframe Technologies Program",csas_program_group,"up_us_ncg_mtp.asp",FALSE,TRUE)
Set programs(18) = createProgram("Technology MBA Leadership Rotational Program",csas_program_group,"gp_us_tmba_lrp.asp",FALSE,TRUE)
call createProgramGroup (gcaib_program_group,"Global Corporate and Investment Banking")
Set programs(19) = createProgram("Global Commercial Banking and Global Product Solutions MBA Leadership Program",gcaib_program_group,"gp_us_gcb_gps_mba_lp.asp",FALSE,TRUE)
Set programs(20) = createProgram("Corporate Debt Products Analyst",gcaib_program_group,"up_us_cdpa.asp",FALSE,TRUE)
Set programs(21) = createProgram("Corporate Debt Products Senior Analyst",gcaib_program_group,"gp_us_cdpsa.asp",FALSE,TRUE)
Set programs(22) = createProgram("Commercial Real Estate Banking Analyst Development Program",gcaib_program_group,"up_us_crebadp.asp",FALSE,TRUE)
Set programs(23) = createProgram("Global Commerical Banking and Global Product Solutions Analyst Program",gcaib_program_group,"up_us_gcbgpsap.asp",FALSE,TRUE)
Set programs(24) = createProgram("Capital Markets Analyst",gcaib_program_group,"up_us_cma.asp",FALSE,TRUE)
Set programs(25) = createProgram("Capital Markets Associate",gcaib_program_group,"gp_us_cma.asp",FALSE,TRUE)
Set programs(26) = createProgram("Global Investment Banking Analyst",gcaib_program_group,"up_us_giba.asp",FALSE,TRUE)
Set programs(27) = createProgram("Global Investment Banking Associate",gcaib_program_group,"gp_us_giba.asp",FALSE,TRUE)
Set programs(28) = createProgram("Public Finance Analyst",gcaib_program_group,"up_us_pfa.asp",FALSE,TRUE)
Set programs(29) = createProgram("Public Finance Associate",gcaib_program_group,"gp_us_pfa.asp",FALSE,TRUE)
Set programs(30) = createProgram("Research Analyst",gcaib_program_group,"up_us_ra.asp",FALSE,TRUE)
Set programs(31) = createProgram("Research Associate",gcaib_program_group,"gp_us_ra.asp",FALSE,TRUE)
Set programs(32) = createProgram("Sales and Trading Analyst",gcaib_program_group,"up_us_sta.asp",FALSE,TRUE)
Set programs(33) = createProgram("Sales and Trading Associate",gcaib_program_group,"gp_us_sta.asp",FALSE,TRUE)
Set programs(34) = createProgram("Global Markets Group Operations Rotational Program",gcaib_program_group,"up_us_gmgorp.asp",FALSE,TRUE)
Set programs(35) = createProgram("Global Markets Technology Associate",gcaib_program_group,"up_us_gmta.asp",FALSE,TRUE)
Set programs(36) = createProgram("Global Middle Office Rotational Program",gcaib_program_group,"up_us_gmorp.asp",FALSE,TRUE)
Set programs(37) = createProgram("Global Treasury Operations Rotational Program",gcaib_program_group,"up_us_gtorp.asp",FALSE,TRUE)
Set programs(38) = createProgram("Global Markets",gcaib_program_group,"up_emea_gm.asp",FALSE,TRUE)
Set programs(39) = createProgram("Global Investment Banking",gcaib_program_group,"gp_emea_gib.asp",FALSE,TRUE)
Set programs(40) = createProgram("Capital Markets",gcaib_program_group,"gp_emea_cm.asp",FALSE,TRUE)
Set programs(41) = createProgram("Global Products Solutions",gcaib_program_group,"ui_emea_gps.asp",FALSE,TRUE)
Set programs(42) = createProgram("Global Risk Management",gcaib_program_group,"ui_emea_grm.asp",FALSE,TRUE)
Set programs(43) = createProgram("Technology",gcaib_program_group,"ui_emea_tech.asp",FALSE,TRUE)
Set programs(44) = createProgram("Global Technology and Operations",gcaib_program_group,"gp_asia_gto.asp",FALSE,TRUE)
Set programs(45) = createProgram("Global Markets",gcaib_program_group,"ui_emea_gm.asp",FALSE,TRUE)
Set programs(46) = createProgram("Global Product Solutions - Corporate Debt Products",gcaib_program_group,"gp_asia_gpscdp.asp",FALSE,TRUE)
Set programs(47) = createProgram("Corporate Investment Banking",gcaib_program_group,"up_asia_cib.asp",FALSE,TRUE)
call createProgramGroup (gwaim_program_group,"Global Wealth and Investment Management")
Set programs(48) = createProgram("Global Wealth and Investment Management Associate Training Program",gwaim_program_group,"up_us_gwim_atp.asp",FALSE,TRUE)
call createProgramGroup (gcasbb_program_group,"Global Consumer and Small Business Banking")
Set programs(49) = createProgram("Banking Center Channel Market Manager MBA Leader Development Program",gcasbb_program_group,"gp_us_bccmm_mba_ldp.asp",FALSE,TRUE)
Set programs(50) = createProgram("Global Consumer and Small Business Banking MBA Product Leadership Development Program",gcasbb_program_group,"gp_us_gc_sbbp_ldp.asp",FALSE,TRUE)
Set programs(51) = createProgram("Operations Management Associate Program",gcasbb_program_group,"up_us_omap.asp",FALSE,TRUE)
Set programs(52) = createProgram("Operations MBA",gcasbb_program_group,"gp_us_omba.asp",FALSE,TRUE)
Set programs(53) = createProgram("Card Services - Customer Service Associate",gcasbb_program_group,"up_us_cs_csa.asp",FALSE,TRUE)
Set programs(54) = createProgram("Card Services - Fraud Analyst",gcasbb_program_group,"up_us_cs_fa.asp",FALSE,TRUE)
Set programs(55) = createProgram("Card Services - Customer Assistance Account Manager",gcasbb_program_group,"up_us_cs_caam.asp",FALSE,TRUE)
Set programs(56) = createProgram("Card Services",gcasbb_program_group,"up_emea_cs.asp",FALSE,TRUE)

Function createProgram(title,program_group,url,sub_programs,is_active)
	Set program = Server.CreateObject("Scripting.Dictionary")
	program.add "title", title
	program.add "program_group", program_group
	program.add "url", url
	If isArray(sub_programs) Then
		program.add "sub_programs", sub_programs
	Else
		Dim subprograms(0)
		program.add "sub_programs", subprograms
	End If
	program.add "is_active", is_active
	program.add "points", 0
	program.add "listed", FALSE
	Set createProgram = program
End Function

Dim question_programs
Set question_programs = Server.CreateObject("Scripting.Dictionary")
'				question number	(program numbers list)
question_programs.add 1,Split("7,13,14,34,36,37,48,49,50,52,53,54,55,56",",")
question_programs.add 2,Split("10,19,22,23,50,56",",")
question_programs.add 3,Split("3,4,5,9,11,12,13,14,15,16,17,18,20,21,34,35,36,37,43,48,49,50,51,52,56",",")
question_programs.add 4,Split("3,4,5,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,35,38,39,40,41,42,44,45,46,47,48,49,50,51,52,53,54,55,56",",")
question_programs.add 5,Split("1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,42,43,44,48,49,50,51,52,56",",")
question_programs.add 6,Split("1,2,3,4,5,6,8,9,11,13,15,16,17,20,22,23,24,26,28,30,32,34,35,36,37,38,39,40,41,42,43,45,47,48,51,53,54,55,56",",")
question_programs.add 7,Split("1,2,6,7,8,10,12,14,19,21,25,27,29,31,33,38,39,40,44,45,46,49,50,52",",")
question_programs.add 8,Split("12,14,18,19,21,25,27,29,31,33,38,39,40,49,50,52",",")
question_programs.add 9,Split("1,2,6,7,8,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,51,52,53,54,55,56",",")
question_programs.add 10,Split("1,3,4,5,6,7,8,9,16,18,19,22,23,34,36,37,49,50,51,52",",")
question_programs.add 11,Split("1,3,4,5,6,7,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,48,49,50,51,52,56",",")
question_programs.add 12,Split("3,4,5,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,48,49,50,51,52,53,54,55,56",",")
question_programs.add 13,Split("1,2,6,10,11,12,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,45,46,47,48,50,53,54,55,56",",")
question_programs.add 14,Split("1,2,3,4,5,6,11,12,13,14,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,53,54,55,56",",")
question_programs.add 15,Split("1,2,3,4,5,6,11,12,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,36,37,44,45,46,47,48,49,53,54,55,56",",")
question_programs.add 16,Split("6,13,14,15,18,19,22,23,24,25,26,27,28,29,30,31,32,33,34,36,37,44,45,46,47,49,50,53,54,55,56",",")
question_programs.add 17,Split("8,19,24,25,26,27,28,29,30,31,32,33,38,39,40,41,42,43,53,54,55,56",",")
question_programs.add 18,Split("8,13,14,15,16,17,18,35,43,53,54,55,56",",")
question_programs.add 19,Split("1,2,6,10,13,14,16,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,53,54,55,56",",")
question_programs.add 20,Split("2,3,5,6,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,36,37,38,39,40,41,42,44,45,46,47,48,49,53,54,55,56",",")
question_programs.add 21,Split("9,51,52,53,54,55",",")
question_programs.add 22,Split("13,14,18,34,36,37,50,51,52,53,54,55",",")
question_programs.add 23,Split("6,23,50,53,54,55,56",",")
question_programs.add 24,Split("5,6,8,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,38,39,40,41,42,43,44,45,46,53,54,55,56",",")
question_programs.add 25,Split("6,53,54,55",",")
question_programs.add 26,Split("19,22,23,38,39,40,41,42,49,50,53,54,55,56",",")
question_programs.add 27,Split("1,8,15,16,17,18,24,25,26,27,28,29,30,31,32,33,35,43,53,54,55,56",",")
question_programs.add 28,Split("5,8,13,14,15,16,18,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,51,52,53,54,55,56",",")
question_programs.add 29,Split("10,49,50,53,54,55,56",",")
question_programs.add 30,Split("10,23,53,54,55,56",",")
question_programs.add 31,Split("7,53,54,55",",")
question_programs.add 32,Split("11,12,19,22,39,50,53,54,55",",")
question_programs.add 33,Split("1,2,3,4,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,32,33,34,35,36,37,49,50,51,52,53,54,55",",")
question_programs.add 34,Split("1,2,4,6,7,8,10,13,14,16,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,48,49,51,52,53,54,55",",")
question_programs.add 35,Split("7,17,18,19,22,23,24,25,26,27,28,29,37,49,51,52,53,54,55",",")
question_programs.add 36,Split("5,7,19,20,21,22,23,24,25,26,27,34,35,36,49,51,52,53,54,55",",")
question_programs.add 37,Split("7,19,20,21,22,23,49,51,52,53,54,55",",")
question_programs.add 38,Split("2,7,15,16,18,19,20,21,22,23,26,27,49,51,52,53,54,55",",")
question_programs.add 39,Split("35,38,39,40,41,42,43,56",",")
question_programs.add 40,Split("44,45,46,47",",")
question_programs.add 41,Split("1,6,7,8,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,36,37,38,39,40,41,42,43,50,53,54,55",",")
question_programs.add 42,Split("1,2,6,8,20,21,42",",")
question_programs.add 43,Split("3,4,5,11,12,24,25,26,27,28,29,30,31,32,33,34,36,37,41,49,56",",")
question_programs.add 44,Split("7,10",",")
question_programs.add 45,Split("9,13,14,34,36,37,44,51,52,56",",")
question_programs.add 46,Split("13,14,15,16,17,18,35,43,56",",")
question_programs.add 47,Split("49,50,53,54,55,56",",")
question_programs.add 48,Split("49,53,54,55,56",",")
question_programs.add 49,Split("48",",")
question_programs.add 50,Split("24,25,26,27,28,29,30,31,32,33,35,36,38,39,40,45,46,47",",")
question_programs.add 51,Split("38",",")
question_programs.add 52,Split("19,20,21,22,23,41",",")
question_programs.add 53,Split("2,3,4,5,6,7,9,11,12,13,14,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,56",",")
question_programs.add 54,Split("5,7,8,20,21,24,25,26,27,28,29,30,31,34,35,36,37,38,39,40,41,43,44,45,46,47,50,51,52",",")
question_programs.add 55,Split("1,3,4,5,7,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,35,38,39,40,41,47,48,49,50,53,54,55,56",",")
question_programs.add 56,Split("1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,49,50,51,52,56",",")
question_programs.add 57,Split("5,7,10,11,12,13,14,19,20,21,22,23,24,25,26,27,28,29,30,31,35,38,39,40,42,44,45,46,47,48,50,56",",")
question_programs.add 58,Split("11,12,13,14,15,16,17,18,34,35,36,37,43,44,50,51,52,56",",")
question_programs.add 59,Split("1,13,14,19,20,21,22,23,34,37,44,45,46,47,50",",")
question_programs.add 60,Split("1,2,5,6,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,37,44,45,48,49",",")
question_programs.add 61,Split("1,8,16,17,18,35,43",",")
question_programs.add 62,Split("11,12,19,22,39",",")
question_programs.add 63,Split("",",")
question_programs.add 64,Split("",",")

Function getPrograms(question_number)
	If question_programs.Exists(question_number) Then
		getPrograms = question_programs.Item(question_number)
	Else
		Dim no_question_programs(0)
		getPrograms = no_question_programs
	End If
End Function

Function createProgramGroup (program_group,group_name)
	Set program_group = Server.CreateObject("Scripting.Dictionary")
	program_group.add "group_name", group_name
End Function
%>