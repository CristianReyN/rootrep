<!-- #include file="../../career_fit_tool_pr.asp" -->
<%
	session.Timeout = 30
	If isArray(session.Contents("pages")) Then 
'********** GET STORED PAGES ***********'
		pages = session.Contents("pages")
	ElseIf Not from_request Then
'******** REDIRECT TO START PAGE *******'
		Response.Redirect("career_fit_tool.asp")
	End If
	
	Dim page
	min_programs_per_page = 6
'******** CALCULATE FINAL PAGE *********'
	If page_number = 10 Then call createPage(page,10,"Choose. Connect. Grow.","Based on your answers, you may find one of the following areas to be the best fit for you:")
	
	If from_request Then
		Redim Preserve selected_programs(6)
		Redim Preserve selected_program_points(6)
		For fprg=0 To UBound(fit_programs) Step 1
			selected_programs(fprg+1) = fit_programs(fprg)
			'remember points'If Not IsEmpty(fit_program_points) Then
			'remember points'	selected_program_points(fprg+1) = fit_program_points(fprg)
			'remember points'Else
				selected_program_points(fprg+1) = 1000
			'remember points'End If
		Next
	ElseIf page_number > 0 And page_number <= 9 Then
'************** GET PAGE ***************'
		Set page = pages(page_number)
	ElseIf page_number = 10 Then
'****** CALCULATE PROGRAM POINTS *******'
		For p=1 To UBound(pages) Step 1
			Set result_page = pages(p)
			If isObject(result_page) And UBound(result_page.Item("questions")) > 0 Then
				result_questions =  result_page.Item("questions")
				For g=1 To UBound(result_questions) Step 1
					Set result_question =  result_questions(g)
					result_answers =  result_question.Item("answers")
					If UBound(result_answers) > 0 Then
						For q=1 To UBound(result_answers) Step 1
							program_numbers = result_answers(q).Item("programs")
							If result_answers(q).Item("answered") And isArray(program_numbers) And UBound(program_numbers) > 0 Then
								For pr_number=0 To UBound(program_numbers) Step 1
									program_number = program_numbers(pr_number)
If programs(program_number).Item("is_active") Then programs(program_number).Item("points") = programs(program_number).Item("points") + getAnswerProgramPoints(result_answers(q).Item("answer_number"), program_number)
								Next
							End If
						Next
					End If
				Next
			End If
		Next
'************ SORT PROGRAMS ************'
		Dim min_programs_per_page
		'select all (150) programs
		Redim Preserve selected_programs(150)
		Redim Preserve selected_program_points(150)
		For sprg=1 To UBound(selected_programs) Step 1
			selected_programs(sprg) = 0
			selected_program_points(sprg) = 0
		Next
		
		For prg=1 To UBound(programs) Step 1
			Set program = programs(prg)
			program_not_set = True
			For sprg=1 To UBound(selected_programs) Step 1
				If program_not_set And program.Item("points") > selected_program_points(sprg) Then
					For sprgn=UBound(selected_programs) To sprg+1 Step -1
						selected_programs(sprgn) = selected_programs(sprgn-1)
						selected_program_points(sprgn) = selected_program_points(sprgn-1)
					Next
					selected_programs(sprg) = prg
					selected_program_points(sprg) = program.Item("points")
					program_not_set = False
				End If
			Next
			If program_not_set And program.Item("points") < 1 Then
				For sprg=1 To UBound(selected_programs) Step 1
					If selected_programs(sprg) = 0 Then
						selected_programs(sprg) = prg
						selected_program_points(sprg) = program.Item("points")
						Exit For
					End If
				Next
			End If
		Next
		
'		For sprg=1 To UBound(selected_programs) Step 1
'Response.write sprg & ": " & selected_programs(sprg) & " - " & selected_program_points(sprg) & "<br>"
'		Next
	End If
	'call printPage(page)
	
	er_ror = session.Contents("err")
	session.Contents.Remove("err")
%>