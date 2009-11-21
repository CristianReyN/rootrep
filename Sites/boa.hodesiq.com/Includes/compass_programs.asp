<%
Dim programs(31)
Set programs(1) = createProgram("Corporate Audit","","up_ca.asp")
Set programs(2) = createProgram("Corporate Security","","up_cs.asp")
Set programs(3) = createProgram("Debt Products Analyst","","up_dpa.asp")
Set programs(4) = createProgram("Debt Products Senior Analyst","","gp_dpsa.asp")
Set programs(5) = createProgram("Global Wealth and Investment Management Compliance Risk","","up_gwimcr.asp")
Set programs(6) = createProgram("Markets Risk Associate Program","","up_mrap.asp")
Set programs(7) = createProgram("Quantitative Management Associate Program","","up_qmap.asp")
Set programs(8) = createProgram("Global Risk Management Associate Program","","up_grmap.asp")
Set programs(9) = createProgram("Corporate Treasury Associate Program","","up_ctap.asp")
Set programs(10) = createProgram("Finance Management Associate Program","","up_fmap.asp")
Set programs(11) = createProgram("Supply Chain Management Associate Program","","up_scmap.asp")
Set programs(12) = createProgram("Corporate Investments Group","*Intern ONLY*","")'???
Set programs(13) = createProgram("Global Human Resources","","")'???
Set programs(14) = createProgram("Technology MBA Program","","gp_tmbap.asp")
Set programs(15) = createProgram("Service and Fulfillment Leadership Rotational Program","","gp_sflrp.asp")
Set programs(16) = createProgram("Quality and Productivity Consultant","","gp_qpc.asp")
Set programs(17) = createProgram("Quality and Productivity Change Analyst","*Intern ONLY*","")'???
Set programs(18) = createProgram("Corporate Workplace Analyst","","up_cwa.asp")
Set programs(19) = createProgram("Corporate Workplace Senior Analyst","","gp_cwsa.asp")
Set programs(20) = createProgram("Global Markets Technology","","up_gmt.asp")
Set programs(21) = createProgram("Global Markets Group Operations Rotational Program","","up_gmgorp.asp")
Set programs(22) = createProgram("Global Middle Office Rotational Program","","up_gmorp.asp")
Set programs(23) = createProgram("Network Computing Group Leadership Development Rotational Program","","up_ncgldrp.asp")
Set programs(24) = createProgram("Network Computing Group Mainframe Build Program","","up_ncgmbp.asp")
Set programs(25) = createProgram("Operations Management Associate Program Intern","*Intern ONLY*","")'???
Set programs(26) = createProgram("Information Security Business Continuity","","up_isbc.asp")
Set programs(27) = createProgram("North American Treasury Operations Rotational Program","","up_natorp.asp")
Set programs(28) = createProgram("Global Wealth and Investment Management Undergraduate","","up_gwimcr.asp")
Set programs(29) = createProgram("Global Wealth and Investment Management Graduate","","gp_g.asp")
Set programs(30) = createProgram("Banking Center Channel Market Manager Leader Development Program","","gp_bccmmldp.asp")
Set programs(31) = createProgram("Global Consumer and Small Business Banking Product Leader Development Program","","gp_gcsbbd.asp")

Function createProgram(title,intern_only,url)
	Set program = Server.CreateObject("Scripting.Dictionary")
	program.add "title", title
	program.add "intern_only", intern_only
	program.add "url", url
	program.add "points", 0
	Set createProgram = program
End Function

Dim question_programs
Set question_programs = Server.CreateObject("Scripting.Dictionary")
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