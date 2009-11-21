<!-- #include file="career_fit_tool_programs.asp" -->
<%
Function createPages(pages)
	
	call createPage(page,1,"","")
'				question, question number, question title, question type
	call createQuestion(question,1,"To me, opportunity is all about:","radio",1)
'				answer, answer number, answer title, answer label
	call createAnswer(a,1,"Helping individuals","To me, opportunity is: Helping individuals")
	call addAnswer(question,a)
	call createAnswer(a,2,"Helping small businesses/companies","To me, opportunity is: Helping small businesses/companies")
	call addAnswer(question,a)
	call createAnswer(a,3,"Working with new technology","To me, opportunity is: Working with new technology")
	call addAnswer(question,a)
	call createAnswer(a,4,"Shaping the future of banking","To me, opportunity is: Shaping the future of banking")
	call addAnswer(question,a)
	call createAnswer(a,5,"Implementing strategies and procedures","To me, opportunity is: Implementing strategies and procedures")
	call addAnswer(question,a)
	call addQuestion(page,question)
	Set pages(1) = page
	
	call createPage(page,2,"","")
	call createQuestion(question,2,"I am a(n):","radio",1)
	call createAnswer(a,6,"Undergraduate student","I am a(n): Undergraduate student")
	call addAnswer(question,a)
	call createAnswer(a,7,"Graduate student with 0-5 years work experience","I am a(n): Graduate student with 0-5 years work experience")
	call addAnswer(question,a)
	call createAnswer(a,8,"Graduate student with over 5 years work experience","I am a(n): Graduate student with over 5 years work experience")
	call addAnswer(question,a)
	call addQuestion(page,question)
	Set pages(2) = page
	
	call createPage(page,3,"","")
	call createQuestion(question,3,"I am interested in:","radio",1)
	call createAnswer(a,9,"Full-time opportunities","I am interested in: Full-time opportunities")
	call addAnswer(question,a)
	call createAnswer(a,10,"Rotational opportunities (A structured program moving you through different positions within a group)","I am interested in: Rotational opportunities (A structured program moving you through different positions within a group)")
	call addAnswer(question,a)
	call createAnswer(a,11,"Internship opportunities","I am interested in: Internship opportunities")
	call addAnswer(question,a)
	call addQuestion(page,question)
	Set pages(3) = page
	
	
	call createPage(page,4,"","")
	call createQuestion(question,4,"My preferred work environment is:","radio",1)
	call createAnswer(a,12,"Working with internal teams to optimize organizational performance","My preferred work environment is: Working with internal teams to optimize organizational performance")
	call addAnswer(question,a)
	call createAnswer(a,13,"Building and developing relationships with external customers (audiences)","My preferred work environment is: Building and developing relationships with e1ternal customers (audiences)")
	call addAnswer(question,a)
	call addQuestion(page,question)
	Set pages(4) = page
	
	call createPage(page,5,"","")
	call createQuestion(question,5,"I will/have earned a degree in (my area of concentration is):<br>(select up to 3)","checkbox",3)
	call createAnswer(a,14,"Finance","I will/have earned a degree in (my area of concentration is): Finance")
	call addAnswer(question,a)
	call createAnswer(a,15,"Accounting","I will/have earned a degree in (my area of concentration is): Accounting")
	call addAnswer(question,a)
	call createAnswer(a,16,"Management","I will/have earned a degree in (my area of concentration is): Management")
	call addAnswer(question,a)
	call createAnswer(a,17,"Statistics","I will/have earned a degree in (my area of concentration is): Statistics")
	call addAnswer(question,a)
	call createAnswer(a,18,"Information Systems","I will/have earned a degree in (my area of concentration is): Information Systems")
	call addAnswer(question,a)
	call createAnswer(a,19,"Business Administration","I will/have earned a degree in (my area of concentration is): Business Administration")
	call addAnswer(question,a)
	call createAnswer(a,20,"Economics","I will/have earned a degree in (my area of concentration is): Economics")
	call addAnswer(question,a)
	call createAnswer(a,21,"Supply Chain Management","I will/have earned a degree in (my area of concentration is): Supply Chain Management")
	call addAnswer(question,a)
	call createAnswer(a,22,"Operations","I will/have earned a degree in (my area of concentration is): Operations")
	call addAnswer(question,a)
	call createAnswer(a,23,"Liberal Arts","I will/have earned a degree in (my area of concentration is): Liberal Arts")
	call addAnswer(question,a)
	call createAnswer(a,24,"Mathematics","I will/have earned a degree in (my area of concentration is): Mathematics")
	call addAnswer(question,a)
	call createAnswer(a,25,"Criminal Justice","I will/have earned a degree in (my area of concentration is): Criminal Justice")
	call addAnswer(question,a)
	call createAnswer(a,26,"International Business","I will/have earned a degree in (my area of concentration is): International Business")
	call addAnswer(question,a)
	call createAnswer(a,27,"Computer Science","I will/have earned a degree in (my area of concentration is): Computer Science")
	call addAnswer(question,a)
	call createAnswer(a,28,"Engineering","I will/have earned a degree in (my area of concentration is): Engineering")
	call addAnswer(question,a)
	call createAnswer(a,29,"Marketing","I will/have earned a degree in (my area of concentration is): Marketing")
	call addAnswer(question,a)
	call createAnswer(a,30,"Communications","I will/have earned a degree in (my area of concentration is): Communications")
	call addAnswer(question,a)
	call createAnswer(a,31,"Human Resources","I will/have earned a degree in (my area of concentration is): Human Resources")
	call addAnswer(question,a)
	call createAnswer(a,32,"Real Estate","I will/have earned a degree in (my area of concentration is): Real Estate")
	call addAnswer(question,a)
	call addQuestion(page,question)
	Set pages(5) = page
	
	call createPage(page,6,"","")
	call createQuestion(question,6,"I prefer to work in the following area:","radio",1)
	call createAnswer(a,33,"Southeast U.S.","I prefer to work in Southeast U.S.")
	call addAnswer(question,a)
	call createAnswer(a,34,"Northeast U.S.","I prefer to work in Northeast U.S.")
	call addAnswer(question,a)
	call createAnswer(a,35,"West Coast U.S.","I prefer to work in West Coast U.S.")
	call addAnswer(question,a)
	call createAnswer(a,36,"Midwest U.S.","I prefer to work in Midwest U.S.")
	call addAnswer(question,a)
	call createAnswer(a,37,"Southwest U.S.","I prefer to work in Southwest U.S.")
	call addAnswer(question,a)
	call createAnswer(a,38,"Central U.S.","I prefer to work in Central U.S.")
	call addAnswer(question,a)
	call createAnswer(a,39,"Canada","I prefer to work in Canada")
	call addAnswer(question,a)
	call createAnswer(a,40,"Europe, Middle East, Africa","I prefer to work in Europe, Middle East, Africa")
	call addAnswer(question,a)
	call createAnswer(a,41,"Asia Pacific","I prefer to work in Asia Pacific")
	call addAnswer(question,a)
	call createAnswer(a,42,"Geographically flexible","Geographically flexible of working area")
	call addAnswer(question,a)
	call addQuestion(page,question)
	Set pages(6) = page
	
	call createPage(page,7,"","")
	call createQuestion(question,7,"My primary area of interest is: (choose all that apply)","checkbox",-1)
	call createAnswer(a,43,"Risk and Audit","My primary area of interest is Risk and Audit")
	call addAnswer(question,a)
	call createAnswer(a,44,"Finance","My primary area of interest is Finance")
	call addAnswer(question,a)
	call createAnswer(a,45,"Human Resources","My primary area of interest is Human Resources")
	call addAnswer(question,a)
	call createAnswer(a,46,"Operations","My primary area of interest is Operations")
	call addAnswer(question,a)
	call createAnswer(a,47,"Technology","My primary area of interest is Technology")
	call addAnswer(question,a)
	call createAnswer(a,48,"Consumer Banking","My primary area of interest is Consumer Banking")
	call addAnswer(question,a)
	call createAnswer(a,49,"Customer Service","My primary area of interest is Customer Service")
	call addAnswer(question,a)
	call createAnswer(a,50,"Asset Management","My primary area of interest is Asset Management")
	call addAnswer(question,a)
	call createAnswer(a,51,"Investment Banking, Capital Markets, Sales and Trading ","My primary area of interest is Investment Banking, Capital Markets, Sales and Trading")
	call addAnswer(question,a)
	call createAnswer(a,52,"Research ","My primary area of interest is Research")
	call addAnswer(question,a)
	call createAnswer(a,53,"Commerical Banking","My primary area of interest is Commerical Banking")
	call addAnswer(question,a)
	call addQuestion(page,question)
	Set pages(7) = page
	
	
	call createPage(page,8,"","")
	call createQuestion(question,8,"I would like a job where I am responsible for: (select up to 2)","checkbox",2)
	call createAnswer(a,54,"Analyzing data, forecasting trends","I would like a job where I am responsible for analyzing data, forecasting trends")
	call addAnswer(question,a)
	call createAnswer(a,55,"Devising modeling and measuring techniques","I would like a job where I am responsible for devising modeling and measuring techniques")
	call addAnswer(question,a)
	call createAnswer(a,56,"Serving clients","I would like a job where I am responsible for serving clients")
	call addAnswer(question,a)
	call createAnswer(a,57,"Problem-solving","I would like a job where I am responsible for problem-solving")
	call addAnswer(question,a)
	call createAnswer(a,58,"Researching, writing, presenting data","I would like a job where I am responsible for researching, writing, presenting data")
	call addAnswer(question,a)
	call createAnswer(a,59,"Developing new technologies and business tools","I would like a job where I am responsible for developing new technologies and business tools")
	call addAnswer(question,a)
	call addQuestion(page,question)
	Set pages(8) = page
	
	call createPage(page,9,"","")
	call createQuestion(question,9,"I am also interested (or have completed coursework) in:","radio",1)
	call createAnswer(a,60,"Six Sigma methodology","I am also interested (or have completed coursework) in Six Sigma methodology")
	call addAnswer(question,a)
	call createAnswer(a,61,"Accounting/Financial certifications/Securities trading","I am also interested (or have completed coursework) in Accounting/Financial certifications/Securities trading")
	call addAnswer(question,a)
	call createAnswer(a,62,"Computer programming languages","I am also interested (or have completed coursework) in Computer programming languages")
	call addAnswer(question,a)
	call createAnswer(a,63,"Real Estate","I am also interested (or have completed coursework) in Real Estate")
	call addAnswer(question,a)
	call createAnswer(a,64,"Law","I am also interested (or have completed coursework) in Law")
	call addAnswer(question,a)
	call createAnswer(a,65,"None of the above","I am interested in none of the above")
	call addAnswer(question,a)
	call addQuestion(page,question)
	Set pages(9) = page
	
End Function
	
	
Function addAnswer(question, answer)
	answers = question.Item("answers")
	size_ = UBound(answers)
	Redim Preserve answers(size_+1)
	Set answers(size_+1) = answer
	question.Item("answers") = answers
End Function

Function createAnswer(answer,answer_number,text,label)
	Set answer = Server.CreateObject("Scripting.Dictionary")
	answer.add "answer_number", answer_number
	answer.add "answer", text
	answer.add "label", label
	answer.add "answered", False
	answer.add "programs", getAnswerPrograms(answer_number)
End Function

Function createQuestion(question, question_number, title, question_type, max_answers)
	Set question = Server.CreateObject("Scripting.Dictionary")
	question.add "question_number", "" & question_number
	question.add "title", title
	question.add "question_type", question_type
	question.add "max_answers", max_answers
	Dim answers()
	Redim Preserve answers(0)
	question.add "answers", answers
End Function

Function addQuestion(page, question)
	questions = page.Item("questions")
	size_ = UBound(questions)
	Redim Preserve questions(size_+1)
	Set questions(size_+1) = question
	page.Item("questions") = questions
End Function

Function createPage(page, page_number, title, copy)
	Set page = Server.CreateObject("Scripting.Dictionary")
	page.add "title", title
	page.add "page_number", page_number
	page.add "copy", copy
	Dim questions()
	Redim Preserve questions(0)
	page.add "questions", questions
End Function

Function ExistsInRequest(requested_key)
	Dim exists, request_key
		exists = FALSE
	If isObject(Request.QueryString) And Request.QueryString <> "" Then
		For each request_key In Request.QueryString
			If request_key = requested_key Then
				exists = TRUE
				Exit For
			End If
		Next
	ElseIf isObject(Request.Form) And Request.Form <> "" Then
		For each request_key In Request.Form
			If request_key = requested_key Then
				exists = TRUE
				Exit For
			End If
		Next
	Else
	End If
	ExistsInRequest = exists
End Function


Function printPage(page)

For Each pKey in page.Keys
	If pKey = "page_number" Then
Response.write "page_number: " &  page.Item(pKey) & "<br>"
	ElseIf pKey = "questions" Then
		questions =  page.Item(pKey)
Response.write "questions: " &  UBound(questions) & "<br>"
		For g=1 To UBound(questions) Step 1
			Set question =  questions(g)
			For Each gKey in question.Keys
				If gKey = "question_number" Then
Response.write "--- question_number: " &  question.Item(gKey) & " - " & question.Item("title") & "<br>"
				ElseIf gKey = "question_type" Then
Response.write "--- question_type: " &  question.Item(gKey) & "<br>"
				ElseIf gKey = "answers" Then
					answers =  question.Item(gKey)
Response.write "--- answers: " &  UBound(answers) & "<br>"
					For q=1 To UBound(answers) Step 1
Response.write "------ answer: " &  q & "<br>"
						For Each qKey in answers(q).Keys
							If qKey = "programs" Then
Response.write "--------- " &  qKey & ": " & Ubound(answers(q).Item(qKey)) & "<br>"
								answer_programs = answers(q).Item(qKey)
								For pr=0 To UBound(answer_programs) Step 1
Response.write "------------ program title: " & answer_programs(pr) & " - " & programs(answer_programs(pr)).Item("title") & "<br>"
								Next
							Else
Response.write "--------- " &  qKey & ": " & answers(q)(qKey) & "<br>"
							End If
						Next
					Next
				End If
			Next
		Next
	End If
Next
'Response.write getAnswerProgramPoints(10, 123) & "<br>"
End Function
%>