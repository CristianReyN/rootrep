<%
Dim U_G_D, G_D, I_N_T, U_R_L
U_G_D = "undergraduate"
G_D = "graduate"
I_N_T = "intern"
U_R_L = "../learnmore/"
If page_section = "ADA" Then U_R_L = "../ada/"

Dim programs(31)
'		program number			program title,program group,program page
Set programs(1) = createProgram("Corporate Audit","",U_R_L&"up_ca.asp",FALSE)
Set programs(2) = createProgram("Corporate Security","",U_R_L&"up_cs.asp",FALSE)
Set programs(3) = createProgram("Debt Products Analyst","",U_R_L&"up_dpa.asp",FALSE)
Set programs(4) = createProgram("Debt Products Senior Analyst","",U_R_L&"gp_dpsa.asp",FALSE)
Set programs(5) = createProgram("Global Wealth and Investment Management Compliance Risk","",U_R_L&"up_gwimcr.asp",FALSE)
Set programs(6) = createProgram("Markets Risk Associate Program","",U_R_L&"up_mrap.asp",FALSE)
Set programs(7) = createProgram("Quantitative Management Associate Program","",U_R_L&"up_qmap.asp",FALSE)
Set programs(8) = createProgram("Global Risk Management Associate Program","",U_R_L&"up_grmap.asp",FALSE)
Set programs(9) = createProgram("Corporate Treasury Associate Program","",U_R_L&"up_ctap.asp",FALSE)
Set programs(10) = createProgram("Finance Management Associate Program","",U_R_L&"up_fmap.asp",FALSE)
Set programs(11) = createProgram("Supply Chain Management Associate Program","",U_R_L&"up_scmap.asp",FALSE)
	Dim cig_subprograms(1)
	Set cig_subprograms(1) = createProgram("Corporate Investments Intern","",U_R_L&"ip_ci.asp",FALSE)
Set programs(12) = createProgram("Corporate Investments Group",I_N_T,U_R_L&"ip_ci.asp",cig_subprograms)'program group???
	Dim hm_subprograms(6)
	Set hm_subprograms(1) = createProgram("Leadership Development Consultant","","U_R_L&gp_ldc.asp",FALSE)
	Set hm_subprograms(2) = createProgram("Learning Consultant","",U_R_L&"gp_lc.asp",FALSE)
	Set hm_subprograms(3) = createProgram("Instructional Designer","",U_R_L&"gp_iditd.asp",FALSE)
	Set hm_subprograms(4) = createProgram("Compensation Consultant","",U_R_L&"gp_cc.asp",FALSE)
	Set hm_subprograms(5) = createProgram("Staffing Operations - Selection and Assessment Analyst","",U_R_L&"gp_sosaa.asp",FALSE)
	Set hm_subprograms(6) = createProgram("Staffing Operations - Workforce Planning Analyst","",U_R_L&"gp_wpa.asp",FALSE)
	Dim H_R_U_R_L
	H_R_U_R_L = "../humanresources/default.asp"
	If page_section = "ADA" Then H_R_U_R_L = "../ada/humanresources.asp"
Set programs(13) = createProgram("Global Human Resources","",H_R_U_R_L,hm_subprograms)'???
Set programs(14) = createProgram("Technology MBA Program","",U_R_L&"gp_tmbap.asp",FALSE)
Set programs(15) = createProgram("Service and Fulfillment Leadership Rotational Program","",U_R_L&"gp_sflrp.asp",FALSE)
Set programs(16) = createProgram("Quality and Productivity Consultant","",U_R_L&"gp_qpc.asp",FALSE)
Set programs(17) = createProgram("Quality and Productivity Change Analyst",I_N_T,U_R_L&"ip_qpcas.asp",FALSE)
Set programs(18) = createProgram("Corporate Workplace Analyst","",U_R_L&"up_cwa.asp",FALSE)
Set programs(19) = createProgram("Corporate Workplace Senior Analyst","",U_R_L&"gp_cwsa.asp",FALSE)
Set programs(20) = createProgram("Global Markets Technology","",U_R_L&"up_gmt.asp",FALSE)
Set programs(21) = createProgram("Global Markets Group Operations Rotational Program","",U_R_L&"up_gmgorp.asp",FALSE)
Set programs(22) = createProgram("Global Middle Office Rotational Program","",U_R_L&"up_gmorp.asp",FALSE)
Set programs(23) = createProgram("Network Computing Group Leadership Development Rotational Program","",U_R_L&"up_ncgldrp.asp",FALSE)
Set programs(24) = createProgram("Network Computing Group Mainframe Build Program","",U_R_L&"up_ncgmbp.asp",FALSE)
Set programs(25) = createProgram("Operations Management Associate Program Intern",I_N_T,U_R_L&"ip_omap.asp",FALSE)
Set programs(26) = createProgram("Information Security Business Continuity","",U_R_L&"up_isbc.asp",FALSE)
Set programs(27) = createProgram("North American Treasury Operations Rotational Program","",U_R_L&"up_natorp.asp",FALSE)
Set programs(28) = createProgram("Global Wealth and Investment Management Undergraduate","",U_R_L&"up_gwimcr.asp",FALSE)
Set programs(29) = createProgram("Global Wealth and Investment Management Graduate","",U_R_L&"gp_g.asp",FALSE)
Set programs(30) = createProgram("Banking Center Channel Market Manager Leader Development Program","",U_R_L&"gp_bccmmldp.asp",FALSE)
Set programs(31) = createProgram("Global Consumer and Small Business Banking Product Leader Development Program","",U_R_L&"gp_gcsbbd.asp",FALSE)

Function createProgram(title,program_group,url,sub_programs)
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
	program.add "points", 0
	Set createProgram = program
End Function

Dim question_programs
Set question_programs = Server.CreateObject("Scripting.Dictionary")
'				question number	(program numbers list)
question_programs.add 1,Split("1,2,3,5,6,7,8,9,10,11,12,17,18,20,21,22,23,24,25,26,27,28",",")
question_programs.add 2,Split("1,4,6,7,10,12,14,15,16,19,20,29",",")
question_programs.add 3,Split("1,4,13,14,15,16,19,29,30,31",",")
question_programs.add 4,Split("4,13,14,29,30,31",",")
question_programs.add 5,Split("1,2,3,4,5,6,7,8,13,16,17,18,19,20,24,26,28,29",",")
question_programs.add 6,Split("1,9,10,11,12,14,15,21,22,23,25,27,30,31",",")
question_programs.add 7,Split("9,10,11,12,13",",")
question_programs.add 8,Split("1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,30,31",",")
question_programs.add 9,Split("11,12,18,19,28,29,30",",")
question_programs.add 10,Split("1,2,3,4,5,6,7,8,9,10,11,13,14,15,16,18,19,20,21,22,23,24,26,27,28,29,30,31",",")
question_programs.add 11,Split("1,2,3,6,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31",",")
question_programs.add 12,Split("1,3,4,5,8,9,10,12,15,18,19,21,22,27,28,29",",")
question_programs.add 13,Split("1,2,5,6,8,9,10,12,13,14,18,19,22,23,24,25,26,27,28,29,30,31",",")
question_programs.add 14,Split("",",")
question_programs.add 15,Split("1,7,8,14,16,20,22,23,24",",")
question_programs.add 16,Split("2,15,18,19",",")
question_programs.add 17,Split("5,6,7,8,12,15,16,17,25,28,29",",")
question_programs.add 18,Split("7,8,14,20,22,23,24,26",",")
question_programs.add 19,Split("1,2,3,4,5,6,7,8,9,10,12,15,16,18,19,20,21,22,27,28,29",",")
question_programs.add 20,Split("13,18,19,30,31",",")
question_programs.add 21,Split("7,14,16,17,18,19,20,22,23,24,26",",")
question_programs.add 22,Split("2,9,10,12,25,28,29,30,31",",")
question_programs.add 23,Split("8,12,30",",")
question_programs.add 24,Split("5,8,9,10,11,13,16,17,21,22,23,25,26,27,30,31",",")
question_programs.add 25,Split("30,31",",")
question_programs.add 26,Split("6,7,21,22",",")
question_programs.add 27,Split("11,21,25,27,30",",")
question_programs.add 28,Split("30",",")
question_programs.add 29,Split("7,21,22,27",",")
question_programs.add 30,Split("11,15,16,17,21,25,27,30",",")
question_programs.add 31,Split("1,2,3,4,5,6,7,8,9,10,11,12,13,14,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31",",")
question_programs.add 32,Split("1,2,3,4,5,6,7,8,10,13,14,16,17,20,21,22,23,25,27,28,29,30",",")
question_programs.add 33,Split("2,3,4,7,21,22,24,25,27,28,29,30",",")
question_programs.add 34,Split("3,4,7,20,21,22,27,30",",")
question_programs.add 35,Split("30",",")
question_programs.add 36,Split("1,3,4,15,24,30",",")
question_programs.add 37,Split("9,10,11,12,25",",")
question_programs.add 38,Split("13,15,19,31",",")
question_programs.add 39,Split("5,8,9,10,11,15,18,19,22,23,25,26,30,31",",")
question_programs.add 40,Split("11,21,22,25,27,30",",")
question_programs.add 41,Split("8,14,20,21,22,23,24,26,27",",")
question_programs.add 42,Split("1,2,3,4,5,6,7,8,18,19,26",",")
question_programs.add 43,Split("1,2,3,4,5,6,7,8,9,10,12,20,21,22,28,29",",")
question_programs.add 44,Split("25,28,29,30,31",",")
question_programs.add 45,Split("12,15,16,17,18,19,28,29",",")
question_programs.add 46,Split("18,19",",")
question_programs.add 47,Split("1,2,3,4,5,6,7,8,9,10,12,14,15,16,17,18,19,20,21,22,27,28,29",",")
question_programs.add 48,Split("3,4,5,6,8,9,10,11,13,16,17,18,19,21,25,26,28,29,30,31",",")
question_programs.add 49,Split("8,14,15,20,22,23,24,25,26,27",",")
question_programs.add 50,Split("2,6,11,13,15,18,19,23,25,26,28,29,30,31",",")
question_programs.add 51,Split("1,5,6,8,9,10,15,16,17,18,19,20,21,22,25,27,28,29,30,31",",")
question_programs.add 52,Split("7,15,16,17,19,20,25,27",",")
question_programs.add 53,Split("9,13,20,26,28,29,30",",")
question_programs.add 54,Split("11,15,16,17,18,19,20,21,22,25,27,30,31",",")
question_programs.add 55,Split("2,3,4,12,13,15,16,17,18,19,20,28,29",",")
question_programs.add 56,Split("14,20,23,24",",")
question_programs.add 57,Split("15,16,17,19,26,30,31",",")
question_programs.add 58,Split("1,8,9,10,21,22,25,27,28,29",",")
question_programs.add 59,Split("14,20,23,24",",")
question_programs.add 60,Split("12,18,19",",")
question_programs.add 61,Split("1,2",",")

Function getPrograms(question_number)
'Response.write "getPrograms question_number: " &  question_programs.Exists(question_number) & "<br>"
	If question_programs.Exists(question_number) Then
		getPrograms = question_programs.Item(question_number)
	Else
		Dim no_question_programs(0)
		getPrograms = no_question_programs
	End If
End Function
%>