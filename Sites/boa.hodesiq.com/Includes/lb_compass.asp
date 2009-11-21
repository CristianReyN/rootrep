<!-- #include file="lb_compass_programs.asp" -->
<%
Function createPages(pages)
	
	call createPage(page,1,"Discover Your Direction","Bank of America's size allows our company to offer a wealth and variety of career opportunities.<br><br>In an effort to help you navigate where your skills and interests would best be applied, we've developed the following assessment.  The results presented at the end of the assessment will provide you with a starting point - and will familiarize you with our Lines of Business.<br><br>For best results, please answer all questions as accurately as possible.")
	
	call createQuestionGroup(group,1," I am interested and/or have experience in the following areas (select up to 3):","checkbox",3)
'				q,question number,question title,question weight
	call createQuestion(q,1,"Human Resources","I am interested in Human Resources",1)
	call addQuestion(group,q)
	call createQuestion(q,2,"Management","I am interested in Management",1)
	call addQuestion(group,q)
	call createQuestion(q,3,"Project Management","I am interested in Project Management",1)
	call addQuestion(group,q)
	call createQuestion(q,4,"Change Management","I am interested in Change Management",1)
	call addQuestion(group,q)
	call createQuestion(q,5,"Six Sigma Methodology","I am interested in Six Sigma Methodology",1)
	call addQuestion(group,q)
	call createQuestion(q,6,"Technology","I am interested in Technology",1)
	call addQuestion(group,q)
	call createQuestion(q,7,"Risk Assessment","I am interested in Risk Assessment",1)
	call addQuestion(group,q)
	call createQuestion(q,8,"Financial/Retirement Planning","I am interested in Financial/Retirement Planning",1)
	call addQuestion(group,q)
	call createQuestion(q,9,"Sales","I am interested in Sales",1)
	call addQuestion(group,q)
	call createQuestion(q,10,"Accounting/Finance","I am interested in Accounting/Finance",1)
	call addQuestion(group,q)
	call createQuestion(q,11,"Customer Service","I am interested in Customer Service",1)
	call addQuestion(group,q)
	call createQuestion(q,12,"Marketing","I am interested in Marketing",1)
	call addQuestion(group,q)
	call createQuestion(q,13,"Supply Chain Management","I am interested in Supply Chain Management",1)
	call addQuestion(group,q)
	call createQuestion(q,14,"Operations","I am interested in Operations",1)
	call addQuestion(group,q)
	call createQuestion(q,15,"Administration","I am interested in Administration",1)
	call addQuestion(group,q)
	call createQuestion(q,16,"Communications","I am interested in Communications",1)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	Set pages(1) = page
	
	
	call createPage(page,2,"Discover Your Direction","")
	
	call createQuestionGroup(group,2,"I would like a career where I am responsible for (select up to 2):","checkbox",2)
	call createQuestion(q,17,"Forecasting trends, analyzing financial data","I would like a career where I am responsible for forecasting trends, analyzing financial data",1)
	call addQuestion(group,q)
	call createQuestion(q,18,"Reporting &amp; measurement","I would like a career where I am responsible for reporting &amp; measurement",1)
	call addQuestion(group,q)
	call createQuestion(q,19,"Serving clients","I would like a career where I am responsible for serving clients",1)
	call addQuestion(group,q)
	call createQuestion(q,20,"Problem-solving","I would like a career where I am responsible for problem-solving",1)
	call addQuestion(group,q)
	call createQuestion(q,21,"Researching, writing, presenting data","I would like a career where I am responsible for researching, writing, presenting data",1)
	call addQuestion(group,q)
	call createQuestion(q,22,"Programming and/or working with computers","I would like a career where I am responsible for programming and/or working with computers",1)
	call addQuestion(group,q)
	call createQuestion(q,23,"Developing strategic talent initiatives for the organization","I would like a career where I am responsible for developing strategic talent initiatives for the organization",1)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,3," I tend to think of myself as (choose all that apply):","checkbox",-1)
	call createQuestion(q,24,"A self-starter/self-motivator","I tend to think of myself as a self-starter/self-motivator",2)
	call addQuestion(group,q)
	call createQuestion(q,25,"A good communicatior","I tend to think of myself as a good communicatior",2)
	call addQuestion(group,q)
	call createQuestion(q,26,"Detail-oriented","I tend to think of myself as detail-oriented",2)
	call addQuestion(group,q)
	call createQuestion(q,27,"Entrepreneurial","I tend to think of myself as entrepreneurial",2)
	call addQuestion(group,q)
	call createQuestion(q,28,"Flexible","I tend to think of myself as flexible",2)
	call addQuestion(group,q)
	call createQuestion(q,29,"A leader","I tend to think of myself as a leader",2)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,4,"I work most effectively in the following atmosphere:","radio",1)
	call createQuestion(q,30,"One with clearly defined with specific goals and structured schedules","I work most effectively in the atmosphere with clearly defined with specific goals and structured schedules",3)
	call addQuestion(group,q)
	call createQuestion(q,31,"An environment which encourages an opportunity to be entrepreneurial and/or innovative","I work most effectively in the environment which encourages an opportunity to be entrepreneurial and/or innovative",3)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	Set pages(2) = page
	
	
	call createPage(page,3,"Discover Your Direction","")
	
	call createQuestionGroup(group,5,"To me, opportunity is all about:","radio",1)
	call createQuestion(q,32,"Helping individuals","To me, opportunity is all about helping individuals",1)
	call addQuestion(group,q)
	call createQuestion(q,33,"Helping small businesses/companies","To me, opportunity is all about helping small businesses/companies",1)
	call addQuestion(group,q)
	call createQuestion(q,34,"Working with new technology","To me, opportunity is all about working with new technology",1)
	call addQuestion(group,q)
	call createQuestion(q,35,"Shaping the future of banking","To me, opportunity is all about shaping the future of banking",1)
	call addQuestion(group,q)
	call createQuestion(q,36,"Implementing strategies and procedures","To me, opportunity is all about implementing strategies and procedures",1)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,6,"I prefer to work in the following area:","radio",1)
	call createQuestion(q,37,"Southeast U.S.","I prefer to work in Southeast U.S.",1)
	call addQuestion(group,q)
	call createQuestion(q,38,"Northeast U.S.","I prefer to work in Northeast U.S. area",1)
	call addQuestion(group,q)
	call createQuestion(q,39,"West Coast U.S.","I prefer to work in West Coast U.S. area",1)
	call addQuestion(group,q)
	call createQuestion(q,40,"Midwest U.S.","I prefer to work in Midwest U.S. area",1)
	call addQuestion(group,q)
	call createQuestion(q,41,"Southwest U.S.","I prefer to work in Southwest U.S. area",1)
	call addQuestion(group,q)
	call createQuestion(q,42,"Central U.S.","I prefer to work in Central U.S. area",1)
	call addQuestion(group,q)
	call createQuestion(q,43,"No Preference","No work area preference",1)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	Set pages(3) = page
	
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