<!-- #include file="career_fit_tool_programs.asp" -->
<%
Function createPages(pages)
	
	call createPage(page,1,"","")
	call createQuestionGroup(group,1,"To me, opportunity is all about:","radio",1)
'				q,question number,question title,question weight
	call createQuestion(q,1,"Helping individuals","To me, opportunity is: Helping individuals",1)
	call addQuestion(group,q)
	call createQuestion(q,2,"Helping small businesses/companies","To me, opportunity is: Helping small businesses/companies",1)
	call addQuestion(group,q)
	call createQuestion(q,3,"Working with new technology","To me, opportunity is: Working with new technology",1)
	call addQuestion(group,q)
	call createQuestion(q,4,"Shaping the future of banking","To me, opportunity is: Shaping the future of banking",1)
	call addQuestion(group,q)
	call createQuestion(q,5,"Implementing strategies and procedures","To me, opportunity is: Implementing strategies and procedures",1)
	call addQuestion(group,q)
	call addQuestionGroup(page,group)
	Set pages(1) = page
	
	call createPage(page,2,"","")
	call createQuestionGroup(group,2,"I am a(n):","radio",1)
	call createQuestion(q,6,"Undergraduate student","I am a(n): Undergraduate student",100)
	call addQuestion(group,q)
	call createQuestion(q,7,"Graduate student with 0-5 years work experience","I am a(n): Graduate student with 0-5 years work experience",100)
	call addQuestion(group,q)
	call createQuestion(q,8,"Graduate student with over 5 years work experience","I am a(n): Graduate student with over 5 years work experience",100)
	call addQuestion(group,q)
	call addQuestionGroup(page,group)
	Set pages(2) = page
	
	call createPage(page,3,"","")
	call createQuestionGroup(group,3,"I am interested in:","radio",1)
	call createQuestion(q,9,"Full-time opportunities","I am interested in: Full-time opportunities",25)
	call addQuestion(group,q)
	call createQuestion(q,10,"Rotational opportunities (A structured program moving you through different positions within a group)","I am interested in: Rotational opportunities (A structured program moving you through different positions within a group)",25)
	call addQuestion(group,q)
	call createQuestion(q,11,"Internship opportunities","I am interested in: Internship opportunities",25)
	call addQuestion(group,q)
	call addQuestionGroup(page,group)
	Set pages(3) = page
	
	
	call createPage(page,4,"","")
	call createQuestionGroup(group,4,"My preferred work environment is:","radio",1)
	call createQuestion(q,12,"Working with internal teams to optimize organizational performance","My preferred work environment is: Working with internal teams to optimize organizational performance",1)
	call addQuestion(group,q)
	call createQuestion(q,13,"Building and developing relationships with external customers (audiences)","My preferred work environment is: Building and developing relationships with e1ternal customers (audiences)",1)
	call addQuestion(group,q)
	call addQuestionGroup(page,group)
	Set pages(4) = page
	
	call createPage(page,5,"","")
	call createQuestionGroup(group,5,"I will/have earned a degree in (my area of concentration is):<br>(select up to 3)","checkbox",3)
	call createQuestion(q,14,"Finance","I will/have earned a degree in (my area of concentration is): Finance",1)
	call addQuestion(group,q)
	call createQuestion(q,15,"Accounting","I will/have earned a degree in (my area of concentration is): Accounting",1)
	call addQuestion(group,q)
	call createQuestion(q,16,"Management","I will/have earned a degree in (my area of concentration is): Management",1)
	call addQuestion(group,q)
	call createQuestion(q,17,"Statistics","I will/have earned a degree in (my area of concentration is): Statistics",1)
	call addQuestion(group,q)
	call createQuestion(q,18,"Information Systems","I will/have earned a degree in (my area of concentration is): Information Systems",1)
	call addQuestion(group,q)
	call createQuestion(q,19,"Business Administration","I will/have earned a degree in (my area of concentration is): Business Administration",1)
	call addQuestion(group,q)
	call createQuestion(q,20,"Economics","I will/have earned a degree in (my area of concentration is): Economics",1)
	call addQuestion(group,q)
	call createQuestion(q,21,"Supply Chain Management","I will/have earned a degree in (my area of concentration is): Supply Chain Management",1)
	call addQuestion(group,q)
	call createQuestion(q,22,"Operations","I will/have earned a degree in (my area of concentration is): Operations",1)
	call addQuestion(group,q)
	call createQuestion(q,23,"Liberal Arts","I will/have earned a degree in (my area of concentration is): Liberal Arts",1)
	call addQuestion(group,q)
	call createQuestion(q,24,"Mathematics","I will/have earned a degree in (my area of concentration is): Mathematics",1)
	call addQuestion(group,q)
	call createQuestion(q,25,"Criminal Justice","I will/have earned a degree in (my area of concentration is): Criminal Justice",1)
	call addQuestion(group,q)
	call createQuestion(q,26,"International Business","I will/have earned a degree in (my area of concentration is): International Business",1)
	call addQuestion(group,q)
	call createQuestion(q,27,"Computer Science","I will/have earned a degree in (my area of concentration is): Computer Science",1)
	call addQuestion(group,q)
	call createQuestion(q,28,"Engineering","I will/have earned a degree in (my area of concentration is): Engineering",1)
	call addQuestion(group,q)
	call createQuestion(q,29,"Marketing","I will/have earned a degree in (my area of concentration is): Marketing",1)
	call addQuestion(group,q)
	call createQuestion(q,30,"Communications","I will/have earned a degree in (my area of concentration is): Communications",1)
	call addQuestion(group,q)
	call createQuestion(q,31,"Human Resources","I will/have earned a degree in (my area of concentration is): Human Resources",1)
	call addQuestion(group,q)
	call createQuestion(q,32,"Real Estate","I will/have earned a degree in (my area of concentration is): Real Estate",1)
	call addQuestion(group,q)
	call addQuestionGroup(page,group)
	Set pages(5) = page
	
	call createPage(page,6,"","")
	call createQuestionGroup(group,6,"I prefer to work in the following area:","radio",1)
	call createQuestion(q,33,"Southeast U.S.","I prefer to work in Southeast U.S.",50)
	call addQuestion(group,q)
	call createQuestion(q,34,"Northeast U.S.","I prefer to work in Northeast U.S.",50)
	call addQuestion(group,q)
	call createQuestion(q,35,"West Coast U.S.","I prefer to work in West Coast U.S.",50)
	call addQuestion(group,q)
	call createQuestion(q,36,"Midwest U.S.","I prefer to work in Midwest U.S.",50)
	call addQuestion(group,q)
	call createQuestion(q,37,"Southwest U.S.","I prefer to work in Southwest U.S.",50)
	call addQuestion(group,q)
	call createQuestion(q,38,"Central U.S.","I prefer to work in Central U.S.",50)
	call addQuestion(group,q)
	call createQuestion(q,39,"Europe, Middle East, Africa","I prefer to work in Europe, Middle East, Africa",50)
	call addQuestion(group,q)
	call createQuestion(q,40,"Asia Pacific","I prefer to work in Asia Pacific",50)
	call addQuestion(group,q)
	call createQuestion(q,41,"Geographically flexible","Geographically flexible of working area",50)
	call addQuestion(group,q)
	call addQuestionGroup(page,group)
	Set pages(6) = page
	
	call createPage(page,7,"","")
	call createQuestionGroup(group,7,"My primary area of interest is: (choose all that apply)","checkbox",-1)
	call createQuestion(q,42,"Risk and Audit","My primary area of interest is Risk and Audit",1)
	call addQuestion(group,q)
	call createQuestion(q,43,"Finance","My primary area of interest is Finance",1)
	call addQuestion(group,q)
	call createQuestion(q,44,"Human Resources","My primary area of interest is Human Resources",1)
	call addQuestion(group,q)
	call createQuestion(q,45,"Operations","My primary area of interest is Operations",1)
	call addQuestion(group,q)
	call createQuestion(q,46,"Technology","My primary area of interest is Technology",1)
	call addQuestion(group,q)
	call createQuestion(q,47,"Consumer Banking","My primary area of interest is Consumer Banking",1)
	call addQuestion(group,q)
	call createQuestion(q,48,"Customer Service","My primary area of interest is Customer Service",1)
	call addQuestion(group,q)
	call createQuestion(q,49,"Asset Management","My primary area of interest is Asset Management",1)
	call addQuestion(group,q)
	call createQuestion(q,50,"Investment Banking, Capital Markets, Sales and Trading ","My primary area of interest is Investment Banking, Capital Markets, Sales and Trading",1)
	call addQuestion(group,q)
	call createQuestion(q,51,"Research ","My primary area of interest is Research",1)
	call addQuestion(group,q)
	call createQuestion(q,52,"Commerical Banking","My primary area of interest is Commerical Banking",1)
	call addQuestion(group,q)
	call addQuestionGroup(page,group)
	Set pages(7) = page
	
	
	call createPage(page,8,"","")
	call createQuestionGroup(group,8,"I would like a job where I am responsible for: (select up to 2)","checkbox",2)
	call createQuestion(q,53,"Analyzing data, forecasting trends","I would like a job where I am responsible for analyzing data, forecasting trends",1)
	call addQuestion(group,q)
	call createQuestion(q,54,"Devising modeling and measuring techniques","I would like a job where I am responsible for devising modeling and measuring techniques",1)
	call addQuestion(group,q)
	call createQuestion(q,55,"Serving clients","I would like a job where I am responsible for serving clients",1)
	call addQuestion(group,q)
	call createQuestion(q,56,"Problem-solving","I would like a job where I am responsible for problem-solving",1)
	call addQuestion(group,q)
	call createQuestion(q,57,"Researching, writing, presenting data","I would like a job where I am responsible for researching, writing, presenting data",1)
	call addQuestion(group,q)
	call createQuestion(q,58,"Developing new technologies and business tools","I would like a job where I am responsible for developing new technologies and business tools",1)
	call addQuestion(group,q)
	call addQuestionGroup(page,group)
	Set pages(8) = page
	
	call createPage(page,9,"","")
	call createQuestionGroup(group,9,"I am also interested (or have completed coursework) in:","radio",1)
	call createQuestion(q,59,"Six Sigma methodology","I am also interested (or have completed coursework) in Six Sigma methodology",1)
	call addQuestion(group,q)
	call createQuestion(q,60,"Accounting/Financial certifications/Securities trading","I am also interested (or have completed coursework) in Accounting/Financial certifications/Securities trading",1)
	call addQuestion(group,q)
	call createQuestion(q,61,"Computer programming languages","I am also interested (or have completed coursework) in Computer programming languages",1)
	call addQuestion(group,q)
	call createQuestion(q,62,"Real Estate","I am also interested (or have completed coursework) in Real Estate",1)
	call addQuestion(group,q)
	call createQuestion(q,63,"Law","I am also interested (or have completed coursework) in Law",1)
	call addQuestion(group,q)
	call createQuestion(q,64,"None of the above","I am interested in none of the above",1)
	call addQuestion(group,q)
	call addQuestionGroup(page,group)
	Set pages(9) = page
	
End Function
	
	
Function addQuestion(question_group,question)
	questions = question_group.Item("questions")
	size_ = UBound(questions)
	Redim Preserve questions(size_+1)
	Set questions(size_+1) = question
	question_group.Item("questions") = questions
End Function

Function createQuestion(question,question_number,text,label,points)
	Set question = Server.CreateObject("Scripting.Dictionary")
	question.add "question_number", question_number
	question.add "question", text
	question.add "label", label
	question.add "points", points
	question.add "answer", False
	question.add "programs", getPrograms(question_number)
End Function

Function createQuestionGroup(question_group,group_number,title,group_type,max_answers)
	Set question_group = Server.CreateObject("Scripting.Dictionary")
	question_group.add "group_number", "" & group_number
	question_group.add "title", title
	question_group.add "group_type", group_type
	question_group.add "max_answers", max_answers
	Dim questions()
	Redim Preserve questions(0)
	question_group.add "questions", questions
End Function

Function addQuestionGroup(page,question_group)
	question_groups = page.Item("question_groups")
	size_ = UBound(question_groups)
	Redim Preserve question_groups(size_+1)
	Set question_groups(size_+1) = question_group
	page.Item("question_groups") = question_groups
End Function

Function createPage(page,page_number,title,copy)
	Set page = Server.CreateObject("Scripting.Dictionary")
	page.add "title", title
	page.add "page_number", page_number
	page.add "copy", copy
	Dim question_groups()
	Redim Preserve question_groups(0)
	page.add "question_groups", question_groups
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
	ElseIf pKey = "question_groups" Then
		question_groups =  page.Item(pKey)
Response.write "question_groups: " &  UBound(question_groups) & "<br>"
		For g=1 To UBound(question_groups) Step 1
			Set question_group =  question_groups(g)
			For Each gKey in question_group.Keys
				If gKey = "group_number" Then
Response.write "--- group_number: " &  question_group.Item(gKey) & " - " & question_group.Item("title") & "<br>"
				ElseIf gKey = "group_type" Then
Response.write "--- group_type: " &  question_group.Item(gKey) & "<br>"
				ElseIf gKey = "questions" Then
					questions =  question_group.Item(gKey)
Response.write "--- questions: " &  UBound(questions) & "<br>"
					For q=1 To UBound(questions) Step 1
Response.write "------ question: " &  q & "<br>"
						For Each qKey in questions(q).Keys
							If qKey = "programs" Then
Response.write "--------- " &  qKey & ": " & Ubound(questions(q)(qKey)) & "<br>"
								question_programs = questions(q)(qKey)
								For pr=0 To UBound(question_programs) Step 1
Response.write "------------ program: " & programs(question_programs(pr)).Item("title") & "<br>"
								Next
							Else
Response.write "--------- " &  qKey & ": " & questions(q)(qKey) & "<br>"
							End If
						Next
					Next
				End If
			Next
		Next
	End If
Next

End Function
%>