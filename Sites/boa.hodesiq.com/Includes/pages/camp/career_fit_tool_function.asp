<!-- #include file="../../career_fit_tool_pr.asp" -->
<%
	session.Timeout = 30
	If isArray(session.Contents("pages")) Then 
'********** GET STORED PAGES ***********'
		pages = session.Contents("pages")
	Else
'******** REDIRECT TO START PAGE *******'
		Response.Redirect("career_fit_tool.asp")
	End If
	
	Dim page
	If page_number > 0 And page_number <= 9 Then
'************** GET PAGE ***************'
		Set page = pages(page_number)
	ElseIf page_number = 10 Then
'******** CALCULATE FINAL PAGE *********'
		call createPage(page,10,"Choose. Connect. Grow.","Based on your answers, you may find the following areas to be the fit to you:")
'****** CALCULATE PROGRAM POINTS *******'
		For p=1 To UBound(pages) Step 1
			Set result_page = pages(p)
			If isObject(result_page) And UBound(result_page.Item("question_groups")) > 0 Then
				result_question_groups =  result_page.Item("question_groups")
				For g=1 To UBound(result_question_groups) Step 1
					Set result_question_group =  result_question_groups(g)
					result_questions =  result_question_group.Item("questions")
					If UBound(result_questions) > 0 Then
						For q=1 To UBound(result_questions) Step 1
							program_numbers = result_questions(q).Item("programs")
							If result_questions(q).Item("answer") And isArray(program_numbers) And UBound(program_numbers) > 0 Then
								For pr=0 To UBound(program_numbers) Step 1
									If programs(program_numbers(pr)).Item("is_active") Then programs(program_numbers(pr)).Item("points") = programs(program_numbers(pr)).Item("points") + result_questions(q).Item("points") '+ 1
								Next
							End If
						Next
					End If
				Next
			End If
		Next
'************ SORT PROGRAMS ************'
		Dim min_programs_per_page
		'select all (56) programs
		min_programs_per_page = 4
		Dim selected_programs(56)
		Dim selected_program_points(56)
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
		Next
		
'		For sprg=1 To UBound(selected_programs) Step 1
'Response.write sprg & ": " & selected_programs(sprg) & " - " & selected_program_points(sprg) & "<br>"
'		Next
	End If
	'call printPage(page)
	
	er_ror = session.Contents("err")
	session.Contents.Remove("err")
	
	href_pre = ""
	if page_section <> "ADA" then href_pre = "../learnmore/" %>