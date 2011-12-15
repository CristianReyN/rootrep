<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../campus.aspx"
%><!-- #include file="../Includes/career_fit_tool_pr.asp" -->
<% Response.Buffer=True 
	Dim request_page_number, store_page_number
	
'*** WHICH PAGE TO SHOW AND WHICH PAGE TO STORE ***'
	request_page_number = 0
	If ExistsInRequest("page_number") Then
		request_page_number = CInt(trim(Request("page_number")))
	End If
	
	store_page_number = 0
	If ExistsInRequest("restart.x") Or request_page_number = 0 Then
		session.Contents.Remove("pages")
		session.Contents.Remove("fit_programs")
		request_page_number = 0
	ElseIf ExistsInRequest("previous.x") Then
		request_page_number = request_page_number - 2
	Else
		store_page_number = request_page_number - 1
	End If
	
	If isArray(session.Contents("pages")) Then 
'******** GET STORED PAGES ********'
		pages = session.Contents("pages")
	Else
'******** CREATE NEW PAGES ********'
		Dim pages(9)
		call createPages(pages)
		session.Contents("pages") = pages
	End If
'*** WHICH PAGE TO SHOW AND WHICH PAGE TO STORE ***'
	
'************** STORE PAGE ANSWERS ****************'
	If store_page_number > 0 And store_page_number < 10 Then
		If isArray(session.Contents("pages")) Then
			store_pages = session.Contents("pages")
			Set store_page = store_pages(store_page_number)
			If isObject(store_page) And UBound(store_page.Item("questions")) > 0 Then
				store_questions =  store_page.Item("questions")
				For g=1 To UBound(store_questions) Step 1
					Set store_question =  store_questions(g)
					store_answers =  store_question.Item("answers")
					If UBound(store_answers) > 0 Then
						number_answered = 0
						For q=1 To UBound(store_answers) Step 1
							If store_question.Item("question_type") = "radio" And ExistsInRequest("g-" & store_question.Item("question_number")) Then
								If CInt(Request("g-" & store_question.Item("question_number"))) = CInt(store_answers(q)("answer_number")) Then
									store_answers(q).Item("answered") = True
									number_answered = 1
								Else
									store_answers(q).Item("answered") = False
								End If
							ElseIf ExistsInRequest("q-" & store_answers(q).Item("answer_number")) Then
								number_answered = number_answered + 1
								store_answers(q).Item("answered") = True
							Else
								store_answers(q).Item("answered") = False
							End If
						Next'For q=1 To UBound(store_answers) Step 1
						If number_answered = 0 Then
							If session.Contents("err") <> "" Then session.Contents("err") = session.Contents("err") & "<br>"
							session.Contents("err") = session.Contents("err") & "Please select an answer for question " & store_question.Item("question_number") & "."
						ElseIf number_answered > store_question.Item("max_answers") And store_question.Item("max_answers") <> -1 Then
							If session.Contents("err") <> "" Then session.Contents("err") = session.Contents("err") & "<br>"
							session.Contents("err") = session.Contents("err") & "Please select up to " & store_question.Item("max_answers") & " answers for question " & store_question.Item("question_number")
						End If
					End If'If UBound(store_answers) > 0 Then
				Next'For g=1 To UBound(store_questions) Step 1
				
				If session.Contents("err") <> "" Then
					request_page_number = store_page_number
				End If
			End If'If isObject(store_page) And UBound(store_page.Item("questions")) > 0 Then
			session.Contents("pages") = store_pages
		End If'If isArray(session.Contents("pages")) Then
	End If
'************ STORE PAGE ANSWERS END **************'

'********** REDIRECT TO APPROPRIATE PAGE **********'
	select case request_page_number
		case 0
			Response.Redirect("career_fit_tool.asp")
		case 1
			Response.Redirect("career_fit_tool_1.asp")
		case 2
			Response.Redirect("career_fit_tool_2.asp")
		case 3
			Response.Redirect("career_fit_tool_3.asp")
		case 4
			Response.Redirect("career_fit_tool_4.asp")
		case 5
			Response.Redirect("career_fit_tool_5.asp")
		case 6
			Response.Redirect("career_fit_tool_6.asp")
		case 7
			Response.Redirect("career_fit_tool_7.asp")
		case 8
			Response.Redirect("career_fit_tool_8.asp")
		case 9
			Response.Redirect("career_fit_tool_9.asp")
		case 10
			Response.Redirect("career_fit_tool_10.asp")
		case else
			Response.Redirect("career_fit_tool.asp")
	end select
'******** REDIRECT TO APPROPRIATE PAGE END ********'
%>
