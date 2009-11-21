<!-- #include file="../lb_compass.asp" -->
<%
	session.Timeout = 30
	If isArray(session.Contents("lbpages")) Then 
'********** GET STORED PAGES ***********'
		pages = session.Contents("lbpages")
	Else
'******** REDIRECT TO START PAGE *******'
		Response.Redirect("lb_career_compass.asp")
	End If
	
	Dim page
	Dim gd_ugd
		gd_ugd = B_O_T_H'G_D
	If page_number < 4 Then
'************** GET PAGE ***************'
		Set page = pages(page_number)
	Else
'******** CALCULATE FINAL PAGE *********'
		call createPage(page,4,"Opportunity Awaits","We encourage you to explore and learn more about all of Bank of America's Lines of Business. However, based on your answers - you may find it beneficial to start with the following areas:")
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
							'If CInt(result_question_group.Item("group_number")) = 1 And CInt(result_questions(q).Item("question_number")) = 1 And result_questions(q).Item("answer") Then gd_ugd = U_G_D
							program_numbers = result_questions(q).Item("programs")
							If result_questions(q).Item("answer") And UBound(program_numbers) > 0 Then
								For pr=0 To UBound(program_numbers) Step 1
									If programs(program_numbers(pr)).Item("is_active") Then programs(program_numbers(pr)).Item("points") = programs(program_numbers(pr)).Item("points") + result_questions(q).Item("points") '+ 1
								Next
							End If
						Next
					End If
				Next
			End If
		Next
		'Response.write "gd_ugd: " & gd_ugd & "<br>"
'************ SORT PROGRAMS ************'
		Dim min_programs_per_page
		'select all (5) programs
		min_programs_per_page = 4
		Dim selected_programs(5)
		Dim selected_program_points(5)
		For sprg=1 To UBound(selected_programs) Step 1
			selected_programs(sprg) = 0
			selected_program_points(sprg) = 0
		Next
		
		For prg=1 To UBound(programs) Step 1
			Set program = programs(prg)
			program_not_set = True
			For sprg=1 To UBound(selected_programs) Step 1
				If program_not_set And program.Item("points") >= selected_program_points(sprg) Then
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