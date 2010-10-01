<%
Dim answer_programs
Set answer_programs = Server.CreateObject("Scripting.Dictionary")
'					(answer number),(program array)
answer_programs.add 1,Split("4,5,48,29,74,31,76,309,337,38,82,311,339,24,68,43,87,511,527,315,346",",")
answer_programs.add 2,Split("4,29,74,8,51,303,325,502,517,512,320,528,352,33,201,207,204,304,503,518,327,504,519,514,530,513,529,14,57,37,13,56,24,68,43,87,511,527,315,346,28,73,316,348",",")
answer_programs.add 3,Split("2,3,46,47,5,48,29,74,31,76,203,209,23,510,67,526,313,342,509,525,314,345,42,86,18,62,312,340,508,524,22,66,17,61",",")
answer_programs.add 4,Split("2,3,46,47,501,4,5,48,29,74,31,76,8,51,303,325,502,517,512,320,528,352,33,201,207,204,304,503,518,327,504,519,514,530,322,354,513,529,12,55,206,306,332,505,520,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,56,203,209,23,510,67,526,313,342,42,86,18,62,508,524,22,66,17,61,26,71,317,349,28,73,316,348",",")
answer_programs.add 5,Split("1,45,2,3,46,47,501,5,48,29,74,31,76,8,51,303,325,502,512,320,33,77,201,207,204,210,322,354,12,55,206,306,332,505,520,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,56,38,82,311,339,509,525,63,19,314,345,42,86,18,62,508,524,22,66,17,61,24,68,43,87,511,527,315,346,26,71,317,349,27,72,28,73,316,348",",")
answer_programs.add 6,Split("1,45,2,3,46,47,501,4,5,48,8,51,303,325,502,517,201,207,309,337,304,503,518,327,504,519,12,55,206,306,332,505,520,202,208,11,54,305,329,14,57,13,56,311,339,203,209,23,510,67,526,313,342,509,525,63,19,314,345,18,62,312,340,508,524,22,66,17,61,24,68,511,527,315,346,26,71,317,349,27,72,28,73,316,348",",")
answer_programs.add 7,Split("29,74,31,76,512,320,528,352,33,77,204,210,514,530,322,354,513,529,515,531,323,355,36,80,212,79,205,211,321,353,37,38,82",",")
answer_programs.add 8,Split("29,74,31,76,320,352,322,354,515,531,323,355,36,80,212,79,205,211,321,353,38,82,42,86,43,87",",")
answer_programs.add 9,Split("1,2,3,501,4,5,29,31,8,303,502,512,320,33,201,204,309,304,503,504,514,322,513,12,306,505,515,323,36,202,11,305,205,321,14,37,13,38,311,203,23,510,313,509,314,42,18,312,508,22,17,24,43,511,315,26,317,27,28,316",",")
answer_programs.add 10,Split("45,3,46,47,4,48,29,74,76,51,325,517,528,352,77,207,210,337,518,327,519,530,354,529,55,206,332,520,531,355,80,212,208,54,329,79,211,353,14,57,37,56,38,82,311,339,209,67,526,342,525,63,19,86,18,62,340,508,524,22,66,68,87,527,315,346,26,71,349,73,348",",")
answer_programs.add 11,Split("45,46,47,48,74,76,51,325,517,528,352,77,207,210,337,518,327,519,530,354,529,55,206,332,520,531,355,80,212,208,54,329,79,211,353,57,56,82,339,209,67,526,342,525,63,345,86,62,340,524,66,61,68,87,527,346,71,349,72,73,348",",")
answer_programs.add 12,Split("2,3,46,47,501,5,48,29,74,31,76,8,51,303,325,502,517,512,320,352,33,77,201,207,204,210,304,503,518,327,322,354,513,529,12,55,206,306,332,505,520,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,56,38,82,311,339,203,209,23,510,67,526,313,342,509,525,63,19,314,345,42,86,18,62,312,340,508,524,22,66,17,61,24,68,43,87,511,527,315,346,26,71,317,349,27,72,28,73,316,348",",")
answer_programs.add 13,Split("1,45,4,29,74,8,51,303,325,502,517,512,320,528,33,201,207,204,309,337,304,503,518,327,504,519,514,530,322,513,529,12,306,505,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,509,525,314,345,17,61,24,68,43,87,511,527,315,346",",")
answer_programs.add 14,Split("1,45,2,3,46,47,501,8,51,303,325,502,517,512,320,528,352,33,77,201,207,204,210,309,337,304,503,518,327,322,354,513,529,12,55,206,306,332,505,520,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,56,311,339,509,525,63,19,314,345,17,61,24,68,43,87,511,527,315,346,26,71,317,349,28,73,316,348",",")
answer_programs.add 15,Split("1,45,2,3,46,47,501,8,51,303,325,502,517,512,320,352,33,201,207,204,304,503,518,327,322,354,513,529,12,55,206,306,332,505,520,515,531,323,355,36,80,212,79,205,211,321,14,57,37,13,56,311,339,509,525,314,345,17,61,26,71,317,349,28,73,316,348",",")
answer_programs.add 16,Split("5,48,29,74,31,76,8,51,303,325,502,517,512,320,352,33,201,207,204,518,327,12,55,206,306,332,505,520,515,531,323,355,36,80,212,79,205,321,353,14,57,37,13,56,38,82,311,339,63,19,26,317,28,73,316,348",",")
answer_programs.add 17,Split("8,51,303,325,502,517,512,320,352,33,201,207,204,518,327,322,354,515,531,323,355,36,80,212,79,205,321,353,14,57,37,13,56,311,339,26,71,317,349,27,72,28,73,316,348",",")
answer_programs.add 18,Split("311,339,203,209,23,510,67,526,313,342,18,62,312,340,508,524,317,27,72",",")
answer_programs.add 19,Split("1,45,4,5,48,29,74,31,76,8,51,303,325,502,517,512,320,528,352,33,77,201,207,204,210,304,503,518,327,513,529,12,55,206,306,332,505,520,515,531,323,355,36,80,212,79,205,321,353,14,57,37,13,56,311,339,63,19,42,86,18,62,508,524,24,68,43,87,511,527,315,346,26,71,317,349,28,73,316,348",",")
answer_programs.add 20,Split("2,46,8,51,303,325,502,517,512,320,352,33,77,201,207,204,210,304,503,518,327,504,519,514,530,322,354,513,529,12,55,206,306,332,505,520,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,56,311,339,24,68,43,87,511,527,315,346,26,71,317,349,28,73,316,348",",")
answer_programs.add 21,Split("311,339,22,66",",")
answer_programs.add 22,Split("5,48,31,76,311,339,509,525,314,345",",")
answer_programs.add 23,Split("4,12,55,206,306,332,505,520,14,57,37,311,339,24,68,511,527,315,346,26,71,317,349",",")
answer_programs.add 24,Split("8,51,303,325,502,517,512,320,352,33,201,207,204,304,503,518,327,504,519,514,530,322,354,12,55,206,306,332,505,520,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,56,311,339,26,71,317,349,27,72,28,73,316,348",",")
answer_programs.add 25,Split("311,339,26,71,317,349",",")
answer_programs.add 26,Split("8,51,303,325,502,517,512,320,352,33,201,207,204,309,337,304,503,518,327,12,55,206,306,332,505,520,515,531,323,355,36,80,212,14,57,37,311,339,28,73,316,348",",")
answer_programs.add 27,Split("1,45,322,354,311,339,203,209,23,510,67,526,313,342,42,86,18,62,312,340,508,524,27,72",",")
answer_programs.add 28,Split("5,48,31,76,304,503,504,519,514,530,322,354,12,55,206,306,332,505,520,515,531,323,355,36,80,212,311,339,203,209,23,510,67,526,313,342,42,86,18,62,312,340,508,524,17,61,27,72",",")
answer_programs.add 29,Split("29,74,311,339",",")
answer_programs.add 30,Split("4,14,57,37,311,339",",")
answer_programs.add 31,Split("38,82,311,339",",")
answer_programs.add 32,Split("8,51,303,325,502,517,201,207,13,56,311,339,17,61",",")
answer_programs.add 33,Split("1,45,2,3,46,47,4,5,48,29,74,31,76,8,51,33,77,11,54,14,57,37,13,56,38,82,23,67,63,19,42,86,18,62,22,66,17,61,24,68,43,87,26,71,27,72,28,73",",")
answer_programs.add 34,Split("1,45,3,47,4,5,48,29,31,76,8,51,33,77,12,55,36,80,212,11,54,79,14,57,37,13,56,38,82,23,67,63,19,18,62,24,68,43,87,26,71,27,72,28,73",",")
answer_programs.add 35,Split("4,5,48,29,31,76,8,51,33,77,14,57,37,13,56,38,82,24,68,43,87,28,73",",")
answer_programs.add 36,Split("5,48,29,31,76,8,51,33,77,14,57,37,13,56,38,82,23,67,63,19,24,68,43,87,28,73",",")
answer_programs.add 37,Split("4,5,48,29,31,76,8,51,33,77,14,57,37,13,56,38,82,24,68,43,87,28,73",",")
answer_programs.add 38,Split("4,5,48,29,31,76,8,51,33,77,14,57,37,13,56,38,82,18,62,24,68,43,87,28,73",",")
answer_programs.add 39,Split("201,207,204,210,206,212,202,208,205,211,203,209",",")
answer_programs.add 40,Split("303,325,320,352,309,337,304,327,322,354,306,332,323,355,305,329,321,353,311,339,313,342,314,345,312,340,315,346,317,349,316,348",",")
answer_programs.add 41,Split("501,502,517,512,528,503,518,504,519,514,530,513,529,505,520,515,531,510,526,509,525,63,19,508,524,511,527",",")
answer_programs.add 42,Split("1,45,3,47,5,48,31,76,8,51,33,77,201,207,204,210,12,36,14,57,37,13,56,42,86,18,62,508,524,26,71,27,72,28,73",",")
answer_programs.add 43,Split("1,45,501,26,71,317,349,27,72,28,73,316,348",",")
answer_programs.add 44,Split("2,3,46,47,501,8,51,303,325,502,517,512,320,352,33,77,201,207,204,210,309,337,304,503,518,327,322,354,513,529,12,55,206,306,332,505,520,515,531,323,355,36,80,212,79,205,211,321,353,63,19,17,61,24,68,43,87,511,527,315,346,26,71,317,349,28,73,316,348",",")
answer_programs.add 45,Split("38,82,311,339,22,66",",")
answer_programs.add 46,Split("5,48,29,74,31,76,509,525,63,19,314,345,17,61",",")
answer_programs.add 47,Split("203,209,23,510,67,526,313,342,42,86,18,62,312,340,508,524",",")
answer_programs.add 48,Split("4,29,74,309,337",",")
answer_programs.add 49,Split("4,24,68,43,87,511,527,315,346",",")
answer_programs.add 50,Split("24,68,43,87,511,527,315,346",",")
answer_programs.add 51,Split("8,51,303,325,502,517,512,320,528,352,33,77,201,207,204,210,304,503,518,327,504,519,514,530,322,354,513,529,202,208,11,54,305,329,79,205,211,321,353,28,73,316,348",",")
answer_programs.add 52,Split("12,55,206,306,332,505,520,515,531,323,355,36,80,212,28,73,316,348",",")
answer_programs.add 53,Split("14,57,37,13,56",",")
answer_programs.add 54,Split("2,3,46,47,501,29,74,8,51,303,325,502,517,512,320,352,33,77,201,207,204,210,304,503,518,327,504,519,514,530,322,354,513,529,12,55,206,306,332,505,520,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,56,38,82,311,339,509,525,314,345,42,86,22,66,17,61,24,68,43,87,511,527,315,346,26,71,317,349,27,72,28,73,316,348",",")
answer_programs.add 55,Split("29,74,8,51,303,325,502,517,201,207,304,503,327,504,519,514,530,322,354,513,12,55,206,306,332,505,520,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,38,82,311,339,24,68,43,87,511,527,315,346,26,71,317,349,27,72",",")
answer_programs.add 56,Split("1,45,2,3,46,47,501,4,5,48,29,74,31,76,8,51,303,325,502,517,512,320,528,352,33,77,201,207,204,210,309,337,304,503,518,327,322,354,513,529,12,306,505,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,56,38,82,311,339,42,86,18,62,508,524,22,66,17,61,24,68,43,87,511,527,315,346",",")
answer_programs.add 57,Split("1,45,3,47,501,4,5,48,29,74,31,76,8,51,303,325,502,517,528,352,201,207,518,327,322,354,529,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,56,38,82,311,339,509,525,63,19,314,345,42,86,18,62,312,340,508,524,22,66,17,61,24,68,43,87,511,527,315,346,26,71,317,349,28,73,316,348",",")
answer_programs.add 58,Split("5,48,29,74,31,76,352,304,503,518,327,504,519,514,530,322,354,12,55,206,306,332,505,520,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,56,38,82,311,339,42,86,17,61,24,68,43,87,511,527,315,346,28,73,316,348",",")
answer_programs.add 59,Split("29,74,322,354,515,323,36,202,208,11,54,305,329,79,205,211,321,353,203,209,23,510,67,526,313,342,42,86,18,62,312,340,508,524,17,61,24,68,43,87,511,527,315,346",",")
answer_programs.add 60,Split("1,45,5,48,31,76,14,57,37,13,56,63,19,42,86",",")
answer_programs.add 61,Split("1,45,3,47,8,51,303,325,502,517,512,320,352,33,77,201,207,204,210,304,503,518,504,519,514,530,513,529,12,55,206,306,332,505,520,515,531,323,355,36,80,212,202,208,11,54,305,329,79,205,211,321,353,14,57,37,13,56,63,19,24,68,43,87,511,527,315,346,28,73,316,348",",")
answer_programs.add 62,Split("1,45,504,519,514,530,322,354,203,209,23,510,67,526,313,342,42,86,18,62,312,340,508,524,27,72",",")
answer_programs.add 63,Split("8,51,303,325,502,517,201,207,13,56,17,61",",")
answer_programs.add 64,Split("",",")
answer_programs.add 65,Split("4,29",",")


Function getAnswerPrograms(answer_number)
	If answer_programs.Exists(answer_number) Then
		getAnswerPrograms = answer_programs.Item(answer_number)
	Else
		Dim no_answer_programs(0)
		getAnswerPrograms = no_answer_programs
	End If
End Function

Function getAnswerProgramPoints(answer_number, program_number)
	answer_program_points = 0
	select case CInt(answer_number)
		case 1
			answer_program_points = 1
		case 2
			answer_program_points = 1
		case 3
			answer_program_points = 1
		case 4
			answer_program_points = 1
		case 5
			answer_program_points = 1
		case 6
			answer_program_points = 200
		case 7
			answer_program_points = 200
		case 8
			answer_program_points = 200
		case 9
			answer_program_points = 75
		case 10
			answer_program_points = 75
programs_470=Split("45,46,47,48,74,76,51,325,517,528,352,77,207,210,337,518,327,519,530,354,529,55,206,332,520,531,355,80,212,208,54,329,79,211,353,56,82,339,209,67,526,342,525,63,86,62,340,66,68,87,527,346,71,349,73,348",",")
			For pr=0 To UBound(programs_470) Step 1
				If CInt(programs_470(pr)) = CInt(program_number) Then
					answer_program_points = -470
				End If
			Next
		case 11
			answer_program_points = 75
		case 12
			answer_program_points = 1
		case 13
			answer_program_points = 1
		case 14
			answer_program_points = 5
		case 15
			answer_program_points = 5
		case 16
			answer_program_points = 5
		case 17
			answer_program_points = 5
		case 18
			answer_program_points = 5
		case 19
			answer_program_points = 5
		case 20
			answer_program_points = 5
		case 21
			answer_program_points = 5
		case 22
			answer_program_points = 5
		case 23
			answer_program_points = 5
		case 24
			answer_program_points = 5
			programs_1=Split("208,54",",")
			For pr=0 To UBound(programs_1) Step 1
				If CInt(programs_1(pr)) = CInt(program_number) Then
					answer_program_points = 1
				End If
			Next
		case 25
			answer_program_points = 5
		case 26
			answer_program_points = 5
		case 27
			answer_program_points = 5
		case 28
			answer_program_points = 5
		case 29
			answer_program_points = 5
		case 30
			answer_program_points = 5
		case 31
			answer_program_points = 5
		case 32
			answer_program_points = 5
		case 33
			answer_program_points = 100
		case 34
			answer_program_points = 100
		case 35
			answer_program_points = 100
		case 36
			answer_program_points = 100
		case 37
			answer_program_points = 100
		case 38
			answer_program_points = 100
		case 39
			answer_program_points = 100
		case 40
			answer_program_points = 100
		case 41
			answer_program_points = 100
		case 42
			answer_program_points = 100
		case 43
			answer_program_points = 5
		case 44
			answer_program_points = 5
		case 45
			answer_program_points = 5
		case 46
			answer_program_points = 5
		case 47
			answer_program_points = 5
		case 48
			answer_program_points = 5
		case 49
			answer_program_points = 5
		case 50
			answer_program_points = 5
		case 51
			answer_program_points = 5
		case 52
			answer_program_points = 5
		case 53
			answer_program_points = 5
		case 54
			answer_program_points = 1
		case 55
			answer_program_points = 1
		case 56
			answer_program_points = 1
		case 57
			answer_program_points = 1
		case 58
			answer_program_points = 1
		case 59
			answer_program_points = 1
		case 60
			answer_program_points = 1
		case 61
			answer_program_points = 1
		case 62
			answer_program_points = 1
		case 63
			answer_program_points = 1
		case 64
			answer_program_points = 1
		case 65
			answer_program_points = 1
		case else
			answer_program_points = 0
	end select
	
	getAnswerProgramPoints = answer_program_points
End Function
%>