<!-- #include file="../compass.asp" -->
<%
	session.Timeout = 30
	request_page_number = 0
	session_page_number = 0
	If ExistsInRequest("page_number") Then
		request_page_number = CInt(trim(Request("page_number")))
	End If
	If trim(session.Contents("page_number")) <> "" Then
		session_page_number = CInt(trim(session.Contents("page_number")))
	End If
	
	store_page_number = 0
	
	If ExistsInRequest("restart.x") Or (request_page_number = 0 And session_page_number = 0) Then
		session.Contents.Remove("page_number")
		session.Contents.Remove("pages")
		request_page_number = 1
		store_page_number = 0
	ElseIf ExistsInRequest("previous.x") Then
		request_page_number = request_page_number - 2
		store_page_number = 0
	Else
		store_page_number = request_page_number - 1
	End If
	
'******** PROCESS REQUEST START ********'
	If store_page_number > 0 And store_page_number < 5 Then
		If isArray(session.Contents("pages")) Then 
			store_pages = session.Contents("pages")
			Set store_page = store_pages(store_page_number)
			If isObject(store_page) And UBound(store_page.Item("question_groups")) > 0 Then
				store_question_groups =  store_page.Item("question_groups")
				For g=1 To UBound(store_question_groups) Step 1
					Set store_question_group =  store_question_groups(g)
					store_questions =  store_question_group.Item("questions")
					If UBound(store_questions) > 0 Then
						answered_questions = 0
						For q=1 To UBound(store_questions) Step 1
							If store_question_group.Item("group_type") = "radio" And ExistsInRequest("g-" & store_question_group.Item("group_number")) Then
								If CInt(Request("g-" & store_question_group.Item("group_number"))) = CInt(store_questions(q)("question_number")) Then
									store_questions(q).Item("answer") = True
									answered_questions = 1
								Else
									store_questions(q).Item("answer") = False
								End If
							ElseIf ExistsInRequest("q-" & store_questions(q).Item("question_number")) Then
								answered_questions = answered_questions + 1
								store_questions(q).Item("answer") = True
							Else
								store_questions(q).Item("answer") = False
							End If
						Next
						If answered_questions = 0 Then
							If session.Contents("err") <> "" Then session.Contents("err") = session.Contents("err") & "<br>"
							session.Contents("err") = session.Contents("err") & "Please select answer for question " & store_question_group.Item("group_number")
						ElseIf answered_questions > store_question_group.Item("max_answers") And store_question_group.Item("max_answers") <> -1 Then
							If session.Contents("err") <> "" Then session.Contents("err") = session.Contents("err") & "<br>"
							session.Contents("err") = session.Contents("err") & "Please select up to " & store_question_group.Item("max_answers") & " answers for question " & store_question_group.Item("group_number")
						End If
					End If
				Next
				
				If session.Contents("err") <> "" Then
					session.Contents("page_number") = store_page_number
					Set store_pages(store_page_number) = store_page
					session.Contents("pages") = store_pages
					Response.Redirect("career_compass.asp")
				End If
			End If
			session.Contents("pages") = store_pages
		End If
	End If
'******** PROCESS REQUEST END **********'
'******** REDIRECT TO PAGE WITH NO QUERY ********'
	If request_page_number > 0 Then
		session.Contents("page_number") = request_page_number
		Response.Redirect("career_compass.asp")
	End If
	
	previous_page_number = 0
	page_number = 0
	next_page_number = 0
	
	If session_page_number = 0 Then
		session.Contents.Remove("page_number")
		session.Contents.Remove("pages")
		previous_page_number = 0
		page_number = 1
		next_page_number = 2
	Else
		page_number = session_page_number
		previous_page_number = page_number - 1
		next_page_number = page_number + 1
	End If
	'If page_number <> 5 Then session.Contents.Remove("page_number")
	
	If isArray(session.Contents("pages")) Then 
'******** GET STORED PAGES ********'
		pages = session.Contents("pages")
	Else
'******** CREATE NEW PAGES ********'
		Dim pages(4)
		call createPages(pages)
		session.Contents("pages") = pages
	End If
	
	Dim page
	If page_number < 5 Then
'******** GET NEW PAGE ********'
		Set page = pages(page_number)
	Else
'******** CALCULATE FINAL PAGE ********'
		call createPage(page,5,"Opportunity Awaits","Based on your answers, you're likely to find the following areas most suited to your skills and interests:")
'******** CALCULATE PROGRAM POINTS ********'
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
							If result_questions(q).Item("answer") And UBound(program_numbers) > 0 Then
								For pr=0 To UBound(program_numbers) Step 1
									programs(program_numbers(pr)).Item("points") = programs(program_numbers(pr)).Item("points") + result_questions(q).Item("points") '+ 1
								Next
							End If
						Next
					End If
				Next
			End If
		Next
		
'******** SORT PROGRAMS ********'
		Dim min_programs_per_page
		'select all (31) programs
		min_programs_per_page = 4
		Dim selected_programs(31)
		Dim selected_program_points(31)
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