<%
Dim B_O_T_H, U_R_L
B_O_T_H = "both"
G_D = "graduate"
B_O_T_H = "both"
I_N_T = "intern"
U_R_L = "../learnmore/"
If page_section = "ADA" Then U_R_L = "../ada/"

Dim programs(5)
'		program number			program title,program group,program page
Set programs(1) = createProgram("Global Consumer &amp; Small Business Banking",B_O_T_H,U_R_L&"lobgcsbb.asp",FALSE,TRUE)
Set programs(2) = createProgram("Global Corporate Investment Bank",B_O_T_H,U_R_L&"lobgcib.asp",FALSE,TRUE)
Set programs(3) = createProgram("Global Wealth &amp; Investment Management",B_O_T_H,U_R_L&"lobgwim.asp",FALSE,TRUE)
Set programs(4) = createProgram("Global Technology &amp; Operations",B_O_T_H,U_R_L&"lobgto.asp",FALSE,TRUE)
Set programs(5) = createProgram("Corporate Staff &amp; Support",B_O_T_H,U_R_L&"lobcss.asp",FALSE,TRUE)


Function createProgram(title,gd_ugd,url,sub_programs,is_active)
	Set program = Server.CreateObject("Scripting.Dictionary")
	program.add "title", title
	program.add "gd_ugd", gd_ugd
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
question_programs.add 1,Split("5",",")
question_programs.add 2,Split("1,2,3,4",",")
question_programs.add 3,Split("1,2,4,5",",")
question_programs.add 4,Split("1,4,5",",")
question_programs.add 5,Split("1,3,4,5",",")
question_programs.add 6,Split("1,4",",")
question_programs.add 7,Split("2,5",",")
question_programs.add 8,Split("2,3",",")
question_programs.add 9,Split("1,2",",")
question_programs.add 10,Split("5",",")
question_programs.add 11,Split("1,4",",")
question_programs.add 12,Split("1,2",",")
question_programs.add 13,Split("5",",")
question_programs.add 14,Split("1,4,5",",")
question_programs.add 15,Split("1,5",",")
question_programs.add 16,Split("1,5",",")
question_programs.add 17,Split("2,3,5",",")
question_programs.add 18,Split("1,2,4",",")
question_programs.add 19,Split("1,2,3",",")
question_programs.add 20,Split("1,2,4,5",",")
question_programs.add 21,Split("1,2,5",",")
question_programs.add 22,Split("1,4",",")
question_programs.add 23,Split("5",",")
question_programs.add 24,Split("2,5",",")
question_programs.add 25,Split("1,2,3,5",",")
question_programs.add 26,Split("1,3,4,5",",")
question_programs.add 27,Split("2,3",",")
question_programs.add 28,Split("1,4",",")
question_programs.add 29,Split("2,3,5",",")
question_programs.add 30,Split("1,4,5",",")
question_programs.add 31,Split("2,3",",")
question_programs.add 32,Split("1,2,3,5",",")
question_programs.add 33,Split("1,2,3",",")
question_programs.add 34,Split("4",",")
question_programs.add 35,Split("1,2,4,5",",")
question_programs.add 36,Split("1,2,3,4,5",",")
question_programs.add 37,Split("1,2,3,4,5",",")
question_programs.add 38,Split("1,2,3,4,5",",")
question_programs.add 39,Split("1,2,3,4,5",",")
question_programs.add 40,Split("1,2,3,4,5",",")
question_programs.add 41,Split("1,2,3,4,5",",")
question_programs.add 42,Split("1,2,3,4,5",",")
question_programs.add 43,Split("1,2,3,4,5",",")



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