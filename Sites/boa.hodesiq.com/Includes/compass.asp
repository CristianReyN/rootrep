<!-- #include file="compass_programs.asp" -->
<%
Function createPages(pages)
	
	call createPage(page,1,"Discover Your Direction","Our quick and easy College Career Compass can guide you to opportunities that are best suited to your skills and interests.<br><br>For best results, please answer all questions as accurately as possible.")
	
	
	call createQuestionGroup(group,1,"I am a(n):","radio",1)
	call createQuestion(q,1,"Undergraduate student.")
	call addQuestion(group,q)
	call createQuestion(q,2,"Graduate Student with 0-2 years work experience.")
	call addQuestion(group,q)
	call createQuestion(q,3,"Graduate student with 3-5 years work experience.")
	call addQuestion(group,q)
	call createQuestion(q,4,"Graduate student with over 5 years work experience.")
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,2,"I am more interested in:","radio",1)
	call createQuestion(q,5,"Direct-Hire (define)")
	call addQuestion(group,q)
	call createQuestion(q,6,"Rotational (define)")
	call addQuestion(group,q)
	call createQuestion(q,7,"Either")
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,3,"My preferred work environment is:","radio",1)
	call createQuestion(q,8,"Working with internal teams to optimize organizational performance.")
	call addQuestion(group,q)
	call createQuestion(q,9,"Building and developing relationships with external customers (audiences).")
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	
	Set pages(1) = page
	
	
	call createPage(page,2,"Discover Your Direction","")
	
	
	call createQuestionGroup(group,4,"I am interested in:","radio",1)
	call createQuestion(q,10,"Full-time opportunities")
	call addQuestion(group,q)
	call createQuestion(q,11,"Internship opportunities")
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,5,"I will/have earned) a degree in (my area of concentration is) (select up to 3):","checkbox",3)
	call createQuestion(q,12,"Accounting")
	call addQuestion(group,q)
	call createQuestion(q,13,"Business Administration")
	call addQuestion(group,q)
	call createQuestion(q,14,"Communications")
	call addQuestion(group,q)
	call createQuestion(q,15,"Computer Science")
	call addQuestion(group,q)
	call createQuestion(q,16,"Criminal Justice")
	call addQuestion(group,q)
	call createQuestion(q,17,"Economics")
	call addQuestion(group,q)
	call createQuestion(q,18,"Engineering")
	call addQuestion(group,q)
	call createQuestion(q,19,"Finance")
	call addQuestion(group,q)
	call createQuestion(q,20,"Human Resources")
	call addQuestion(group,q)
	call createQuestion(q,21,"Information Systems")
	call addQuestion(group,q)
	call createQuestion(q,22,"International Business")
	call addQuestion(group,q)
	call createQuestion(q,23,"Liberal Arts")
	call addQuestion(group,q)
	call createQuestion(q,24,"Management")
	call addQuestion(group,q)
	call createQuestion(q,25,"Marketing")
	call addQuestion(group,q)
	call createQuestion(q,26,"Mathematics")
	call addQuestion(group,q)
	call createQuestion(q,27,"Operations")
	call addQuestion(group,q)
	call createQuestion(q,28,"Real Estate")
	call addQuestion(group,q)
	call createQuestion(q,29,"Statistics")
	call addQuestion(group,q)
	call createQuestion(q,30,"Supply Chain Management")
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	
	Set pages(2) = page
	
	
	call createPage(page,3,"Discover Your Direction","")
	
	
	call createQuestionGroup(group,6,"I prefer to work in the following area:","radio",1)
	call createQuestion(q,31,"Southeast U.S.")
	call addQuestion(group,q)
	call createQuestion(q,32,"Northeast U.S.")
	call addQuestion(group,q)
	call createQuestion(q,33,"West Coast U.S.")
	call addQuestion(group,q)
	call createQuestion(q,34,"Midwest U.S.")
	call addQuestion(group,q)
	call createQuestion(q,35,"Southwest U.S.")
	call addQuestion(group,q)
	call createQuestion(q,36,"Central U.S.")
	call addQuestion(group,q)
	call createQuestion(q,37,"No Preference")
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,7,"My primary area of interest is: (choose all that apply)","checkbox",-1)
	call createQuestion(q,38,"Human Resources")
	call addQuestion(group,q)
	call createQuestion(q,39,"Management")
	call addQuestion(group,q)
	call createQuestion(q,40,"Operations")
	call addQuestion(group,q)
	call createQuestion(q,41,"Technology")
	call addQuestion(group,q)
	call createQuestion(q,42,"Risk Assessment")
	call addQuestion(group,q)
	call createQuestion(q,43,"Financial Planning")
	call addQuestion(group,q)
	call createQuestion(q,44,"Sales")
	call addQuestion(group,q)
	call createQuestion(q,45,"Investing")
	call addQuestion(group,q)
	call createQuestion(q,46,"Real Estate")
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	
	Set pages(3) = page
	
	
	call createPage(page,4,"Discover Your Direction","")
	
	
	call createQuestionGroup(group,8,"I would describe myself as:  (select up to 2)","checkbox",2)
	call createQuestion(q,47,"Interested in analytics (drawn to numbers, statistics, and data)")
	call addQuestion(group,q)
	call createQuestion(q,48,"Interested in strategy & planning")
	call addQuestion(group,q)
	call createQuestion(q,49,"Interested in developing new technologies and business tools")
	call addQuestion(group,q)
	call createQuestion(q,50,"Interested in building relationships")
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,9,"I would like a job where I am responsible for:  (select up to 2)","checkbox",2)
	call createQuestion(q,51,"Forecasting trends, analyzing financial data")
	call addQuestion(group,q)
	call createQuestion(q,52,"Devising modeling and measuring techniques")
	call addQuestion(group,q)
	call createQuestion(q,53,"Serving clients")
	call addQuestion(group,q)
	call createQuestion(q,54,"Problem-solving")
	call addQuestion(group,q)
	call createQuestion(q,55,"Researching, writing, presenting data")
	call addQuestion(group,q)
	call createQuestion(q,56,"Programming and/or working with computers")
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,10,"I am also interested (or have completed coursework) in:","radio",1)
	call createQuestion(q,57,"Six Sigma methodology")
	call addQuestion(group,q)
	call createQuestion(q,58,"Accounting/Financial certifications")
	call addQuestion(group,q)
	call createQuestion(q,59,"Computer programming languages")
	call addQuestion(group,q)
	call createQuestion(q,60,"Real Estate/Securities trading")
	call addQuestion(group,q)
	call createQuestion(q,61,"Law")
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	
	Set pages(4) = page
	
End Function
	
	
Function addQuestion(question_group,question)
	questions = question_group.Item("questions")
	size_ = UBound(questions)
	Redim Preserve questions(size_+1)
	Set questions(size_+1) = question
	question_group.Item("questions") = questions
End Function

Function createQuestion(question,question_number,text)
	Set question = Server.CreateObject("Scripting.Dictionary")
	question.add "question_number", question_number
	question.add "question", text
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
'Response.write "group_number: " &  question_group.Item("group_number") & "<br>"
'Response.write "group_type: " &  question_group.Item("group_type") & "<br>"
	question_group.add "questions", questions
'Response.write "size_: " &  UBound(question_group.Keys) & "<br>"
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