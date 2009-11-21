<!-- #include file="compass_programs.asp" -->
<%
Function createPages(pages)
	
	call createPage(page,1,"Discover Your Direction","Our quick and easy College Career Compass can guide you to specialized programs that are best suited to your skills and interests.<br><br>For best results, please answer all questions as accurately as possible.")
	
	
	call createQuestionGroup(group,1,"I am a(n):","radio",1)
'				q,question number,question title,question weight
	call createQuestion(q,1,"Undergraduate student.","I am an Undergraduate student.",3)
	call addQuestion(group,q)
	call createQuestion(q,2,"Graduate student with 0-2 years work experience.","I am a Graduate student with 0-2 years work experience.",3)
	call addQuestion(group,q)
	call createQuestion(q,3,"Graduate student with 3-5 years work experience.","I am a Graduate student with 3-5 years work experience.",3)
	call addQuestion(group,q)
	call createQuestion(q,4,"Graduate student with over 5 years work experience.","I am a Graduate student with over 5 years work experience.",3)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,2,"I am more interested in:","radio",1)
	call createQuestion(q,5,"Direct-hire (Not part of a formal program)","I am more interested in direct-hire (Not part of a formal program)",1)
	call addQuestion(group,q)
	call createQuestion(q,6,"Rotational (A structured program moving you through different positions within a group)","I am more interested in rotational (a structured program moving you through different positions within a group)",1)
	call addQuestion(group,q)
	call createQuestion(q,7,"Either","I am more interested in either direct-hire (not part of a formal program) or rotational (a structured program moving you through different positions within a group)",1)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,3,"My preferred work environment is:","radio",1)
	call createQuestion(q,8,"Working with internal teams to optimize organizational performance.","My preferred work environment is working with internal teams to optimize organizational performance.",1)
	call addQuestion(group,q)
	call createQuestion(q,9,"Building and developing relationships with external customers (audiences).","My preferred work environment is building and developing relationships with external customers (audiences).",1)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	
	Set pages(1) = page
	
	
	call createPage(page,2,"Discover Your Direction","")
	
	
	call createQuestionGroup(group,4,"I am interested in:","radio",1)
	call createQuestion(q,10,"Full-time opportunities","I am interested in full-time opportunities",1)
	call addQuestion(group,q)
	call createQuestion(q,11,"Internship opportunities","I am interested in internship opportunities",5)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,5,"I will/have earned a degree in (my area of concentration is) (select up to 3):","checkbox",3)
	call createQuestion(q,12,"Accounting","I will/have earned a degree in Accounting",1)
	call addQuestion(group,q)
	call createQuestion(q,13,"Business administration","I will/have earned a degree in Business administration",1)
	call addQuestion(group,q)
	call createQuestion(q,14,"Communications","I will/have earned a degree in Communications",1)
	call addQuestion(group,q)
	call createQuestion(q,15,"Computer Science","I will/have earned a degree in Computer Science",1)
	call addQuestion(group,q)
	call createQuestion(q,16,"Criminal justice","I will/have earned a degree in criminal justice",1)
	call addQuestion(group,q)
	call createQuestion(q,17,"Economics","I will/have earned a degree in economics",1)
	call addQuestion(group,q)
	call createQuestion(q,18,"Engineering","I will/have earned a degree in engineering",1)
	call addQuestion(group,q)
	call createQuestion(q,19,"Finance","I will/have earned a degree in finance",1)
	call addQuestion(group,q)
	call createQuestion(q,20,"Human resources","I will/have earned a degree in Human resources",5)
	call addQuestion(group,q)
	call createQuestion(q,21,"Information systems","I will/have earned a degree in information systems",1)
	call addQuestion(group,q)
	call createQuestion(q,22,"International business","I will/have earned a degree in international business",1)
	call addQuestion(group,q)
	call createQuestion(q,23,"Liberal arts","I will/have earned a degree in liberal arts",1)
	call addQuestion(group,q)
	call createQuestion(q,24,"Management","I will/have earned a degree in management",1)
	call addQuestion(group,q)
	call createQuestion(q,25,"Marketing","I will/have earned a degree in marketing",1)
	call addQuestion(group,q)
	call createQuestion(q,26,"Mathematics","I will/have earned a degree in mathematics",1)
	call addQuestion(group,q)
	call createQuestion(q,27,"Operations","I will/have earned a degree in operations",1)
	call addQuestion(group,q)
	call createQuestion(q,28,"Real Estate","I will/have earned a degree in real Estate",1)
	call addQuestion(group,q)
	call createQuestion(q,29,"Statistics","I will/have earned a degree in statistics",1)
	call addQuestion(group,q)
	call createQuestion(q,30,"Supply chain management","I will/have earned a degree in Supply chain management",1)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	
	Set pages(2) = page
	
	
	call createPage(page,3,"Discover Your Direction","")
	
	
	call createQuestionGroup(group,6,"I prefer to work in the following area:","radio",1)
	call createQuestion(q,31,"Southeast U.S.","I prefer to work in southeast U.S.",1)
	call addQuestion(group,q)
	call createQuestion(q,32,"Northeast U.S.","I prefer to work in northeast U.S.",1)
	call addQuestion(group,q)
	call createQuestion(q,33,"West coast U.S.","I prefer to work in west coast U.S.",1)
	call addQuestion(group,q)
	call createQuestion(q,34,"Midwest U.S.","I prefer to work in midwest U.S.",1)
	call addQuestion(group,q)
	call createQuestion(q,35,"Southwest U.S.","I prefer to work in southwest U.S.",1)
	call addQuestion(group,q)
	call createQuestion(q,36,"Central U.S.","I prefer to work in central U.S.",1)
	call addQuestion(group,q)
	call createQuestion(q,37,"No preference","No preference of working area",1)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,7,"My primary area of interest is: (choose all that apply)","checkbox",-1)
	call createQuestion(q,38,"Human resources","My primary area of interest is human resources",5)
	call addQuestion(group,q)
	call createQuestion(q,39,"Management","My primary area of interest is management",1)
	call addQuestion(group,q)
	call createQuestion(q,40,"Operations","My primary area of interest is operations",1)
	call addQuestion(group,q)
	call createQuestion(q,41,"Technology","My primary area of interest is technology",1)
	call addQuestion(group,q)
	call createQuestion(q,42,"Risk assessment","My primary area of interest is risk assessment",1)
	call addQuestion(group,q)
	call createQuestion(q,43,"Financial planning","My primary area of interest is financial planning",1)
	call addQuestion(group,q)
	call createQuestion(q,44,"Sales","My primary area of interest is Sales",1)
	call addQuestion(group,q)
	call createQuestion(q,45,"Investing","My primary area of interest is investing",1)
	call addQuestion(group,q)
	call createQuestion(q,46,"Real estate","My primary area of interest is real estate",1)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	
	Set pages(3) = page
	
	
	call createPage(page,4,"Discover Your Direction","")
	
	
	call createQuestionGroup(group,8,"I would describe myself as:  (select up to 2)","checkbox",2)
	call createQuestion(q,47,"Interested in analytics (drawn to numbers, statistics, and data)","I would describe myself as interested in analytics (drawn to numbers, statistics, and data)",1)
	call addQuestion(group,q)
	call createQuestion(q,48,"Interested in strategy &amp; planning","I would describe myself as interested in strategy &amp; planning",1)
	call addQuestion(group,q)
	call createQuestion(q,49,"Interested in developing new technologies and business tools","I would describe myself as interested in developing new technologies and business tools",1)
	call addQuestion(group,q)
	call createQuestion(q,50,"Interested in building relationships","I would describe myself as interested in building relationships",1)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,9,"I would like a job where I am responsible for: (select up to 2)","checkbox",2)
	call createQuestion(q,51,"Forecasting trends, analyzing financial data","I would like a job where I am responsible for forecasting trends, analyzing financial data",1)
	call addQuestion(group,q)
	call createQuestion(q,52,"Devising modeling and measuring techniques","I would like a job where I am responsible for devising modeling and measuring techniques",1)
	call addQuestion(group,q)
	call createQuestion(q,53,"Serving clients","I would like a job where I am responsible for serving clients",1)
	call addQuestion(group,q)
	call createQuestion(q,54,"Problem-solving","I would like a job where I am responsible for problem-solving",1)
	call addQuestion(group,q)
	call createQuestion(q,55,"Researching, writing, presenting data","I would like a job where I am responsible for researching, writing, presenting data",1)
	call addQuestion(group,q)
	call createQuestion(q,56,"Programming and/or working with computers","I would like a job where I am responsible for programming and/or working with computers",1)
	call addQuestion(group,q)
	
	call addQuestionGroup(page,group)
	
	call createQuestionGroup(group,10,"I am also interested (or have completed coursework) in:","radio",1)
	call createQuestion(q,57,"Six Sigma methodology","I am also interested (or have completed coursework) in Six Sigma methodology",1)
	call addQuestion(group,q)
	call createQuestion(q,58,"Accounting/financial certifications","I am also interested (or have completed coursework) in accounting/financial certifications",1)
	call addQuestion(group,q)
	call createQuestion(q,59,"Computer programming languages","I am also interested (or have completed coursework) in computer programming languages",1)
	call addQuestion(group,q)
	call createQuestion(q,60,"Real estate/securities trading","I am also interested (or have completed coursework) in real estate/securities trading",1)
	call addQuestion(group,q)
	call createQuestion(q,61,"Law","I am also interested (or have completed coursework) in law",1)
	call addQuestion(group,q)
	call createQuestion(q,62,"None of the above","I am interested in none of the above",1)
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