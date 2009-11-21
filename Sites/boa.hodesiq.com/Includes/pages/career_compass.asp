		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
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
	
	If ExistsInRequest("restart") Or (request_page_number = 0 And session_page_number = 0) Then
		session.Contents.RemoveAll()
		request_page_number = 1
		store_page_number = 0
	ElseIf ExistsInRequest("previous") Then
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
								If answered_questions > store_question_group.Item("max_answers") And store_question_group.Item("max_answers") <> -1 Then
									session.Contents("err") = "Please enter a selection of up to " & store_question_group.Item("max_answers") & " on question " & store_question_group.Item("group_number")
									session.Contents("page_number") = store_page_number
									Set store_pages(store_page_number) = store_page
									session.Contents("pages") = store_pages
									Response.Redirect("career_compass.asp")
								End If
								store_questions(q).Item("answer") = True
							Else
								store_questions(q).Item("answer") = False
							End If
						Next
						If answered_questions = 0 Then
							session.Contents("err") = "Please enter a selection on question " & store_question_group.Item("group_number")
							session.Contents("page_number") = store_page_number
							Set store_pages(store_page_number) = store_page
							session.Contents("pages") = store_pages
							Response.Redirect("career_compass.asp")
						End If
					End If
				Next
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
		session.Contents.RemoveAll()
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
									programs(program_numbers(pr)).Item("points") = programs(program_numbers(pr)).Item("points") + 1
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
			<tr valign="top">
				<td width="100%" colspan="2" valign="top">
<img src="../images/career_compass.jpg" width="389" height="166" alt="Bank of America has proven itself as a leader." title="Bank of America has proven itself as a leader." border="0"><img src="../images/career_compasst.jpg" width="189" height="166" alt="I am continually provided with
opportunities to be innovative and creative." title="I am continually provided with
opportunities to be innovative and creative." border="0">
<div class="hidden">I wanted to work for a growing and reputable corporation... Bank of America has proven itself as a leader.</div>
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<a name="skipmaincontent"></a><br>
<form name="questionnaire" action="career_compass.asp" method="get">
		<table width="578" height="519" border="0" cellpadding="0" cellspacing="0" summary="">
			<tr>
				<td>
					<img src="../images/cc_lt.gif" width="16" height="15" alt="" /></td>
				<td style="background: url(../images/cc_t.gif);">
					<img src="../images/clear.gif" width="542" height="15" alt="" /></td>
				<td>
					<img src="../images/cc_rt.gif" width="20" height="15" alt="" /></td>
			</tr>
			<tr>
				<td style="background: url(../images/cc_l.gif);">
					<img src="../images/clear.gif" width="16" height="428" alt="" /></td>
				<td height="100%" valign="top" style="padding: 0px 27px 0px 26px;">
<H1 style="margin: 0px 0px 0px 0px;"><% If isObject(page) Then Response.write page.Item("title") %></H1>
<hr size="1" color="#BDBCC1" style="margin: 12px 0px 24px 0px;">
<input type="hidden" name="page_number" value="<% Response.write next_page_number %>">
<%	If isObject(page) And trim(page.Item("copy")) <> "" Then %>
<p style="margin: 0px 0px 12px 0px;"><% Response.write page.Item("copy") %></p>
<%	End If %>
<%	If er_ror <> "" Then %>
<p style="margin: 0px 0px 12px 0px; color: Red;"><% Response.write er_ror %></p>
<%	End If %>
					<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
<%	If isObject(page) And UBound(page.Item("question_groups")) > 0 Then 
		question_groups =  page.Item("question_groups")
		For g=1 To UBound(question_groups) Step 1
			Set question_group =  question_groups(g)
			questions =  question_group.Item("questions")
			two_bank = False
			If question_group.Item("group_number") = "5" Then two_bank = True
			If UBound(questions) > 0 Then %>
						<tr>
							<td nowrap style="padding: 2px;"><b><% Response.write question_group.Item("group_number") %>.</b></td>
							<td nowrap colspan="<% If two_bank Then Response.write "5" Else Response.write "2" End If %>" style="padding: 2px;"><h2 style="margin: 0px;"><% Response.write question_group.Item("title") %></h2></td>
						</tr>
<%
				For q=1 To UBound(questions) Step 1
%>
						<tr>
<%					If Not two_bank Or q < 11 Then %>
							<td nowrap style="padding: 2px;">&nbsp;</td>
							<td nowrap style="padding: 2px;"><% If question_group.Item("group_type") = "checkbox" Then %><input name="q-<% Response.write questions(q).Item("question_number") %>" type="checkbox" value="<% Response.write questions(q).Item("question_number") %>"<% If questions(q).Item("answer") Then %> checked<% End If %>><% ElseIf question_group.Item("group_type") = "radio" Then %><input type="radio" name="g-<% Response.write question_group.Item("group_number") %>" value="<% Response.write questions(q).Item("question_number") %>"<% If questions(q).Item("answer") Then %> checked<% End If %>><% End If %></td>
							<td nowrap style="padding: 2px;"><p style="margin: 0px;"><% Response.write questions(q).Item("question") %></p></td>
<%					End If %>
<%					If two_bank And q < 11 Then %>
							<td nowrap style="padding: 2px;">&nbsp;</td>
<%						If q <  10 Then %>
							<td nowrap style="padding: 2px;"><% If question_group.Item("group_type") = "checkbox" Then %><input name="q-<% Response.write questions(q+10).Item("question_number") %>" type="checkbox" value="<% Response.write questions(q+10).Item("question_number") %>"<% If questions(q+10).Item("answer") Then %> checked<% End If %>><% ElseIf question_group.Item("group_type") = "radio" Then %><input type="radio" name="g-<% Response.write question_group.Item("group_number") %>" value="<% Response.write questions(q+10).Item("question_number") %>"<% If questions(q+10).Item("answer") Then %> checked<% End If %>><% End If %></td>
							<td nowrap style="padding: 2px;"><p style="margin: 0px;"><% Response.write questions(q+10).Item("question") %></p></td>
<%						Else %>
							<td nowrap style="padding: 2px;">&nbsp;</td>
							<td nowrap style="padding: 2px;">&nbsp;</td>
<%						End If %>
<%					End If %>
						</tr>
<%				Next %>
<%			End If
		Next %>
<%	ElseIf page_number = 5 Then %>
						<tr>
							<td>
<%		stop_points = 0
		For sprg=1 To UBound(selected_programs) Step 1
			'If sprg = min_programs_per_page Then stop_points = selected_program_points(sprg)
			'If selected_program_points(sprg) > 0 And (sprg <= min_programs_per_page Or selected_program_points(sprg) >= stop_points) Then
			If selected_program_points(sprg) > 0 And sprg <= min_programs_per_page Then
%>
<p style="margin: 0px 0px 12px 0px;"><a class="left2" href="<% Response.write programs(selected_programs(sprg)).Item("url") %>"><% Response.write programs(selected_programs(sprg)).Item("title") %></a></p>
<%			End If
		Next %>
							</td>
						</tr>
<%	End If %>
					</table><br>
				</td>
				<td style="background: url(../images/cc_r.gif);">
					<img src="../images/clear.gif" width="20" height="428" alt="" /></td>
			</tr>
			<tr>
				<td style="background: url(../images/cc_l.gif);">
					<img src="../images/clear.gif" width="16" height="55" alt="" /></td>
				<td height="100%" valign="top" style="padding: 0px 27px 0px 26px;"><hr size="1" color="#BDBCC1" style="margin: 12px 0px 12px 0px;">
					<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
						<tr>
							<td width="100%">
<a class="left2" style="text-decoration: none;" href="<% Response.write href_pre %>collrecruiting.asp">Return to College Recruiting</a>
							</td>
							<td width="70" nowrap align="right">
<%
		If previous_page_number > 3 Then
%>&nbsp;
<%		ElseIf previous_page_number > 0 Then %>
<input type="image" name="previous" src="../images/cc_prev.gif" value="Previous" alt="Previous" title="Previous" style="cursor: pointer;" onclick=""document.questionnaire.submit();"">
<%		Else %>
<img src="../images/cc_prev_dis.gif" border="0" alt="" />
<%		End If %>
							</td>
							<td width="60" align="center" nowrap><b>&nbsp;&nbsp;<% Response.write page_number %> of 5&nbsp;&nbsp;</b></td>
							<td nowrap>
<%
		If page_number < 5 Then
%>
<input type="image" name="next" src="../images/cc_next.gif" value="Next" alt="Next" title="Next" style="cursor: pointer;" onclick=""document.questionnaire.submit();"">
<%		Else %>
<input type="image" name="restart" src="../images/cc_restart.gif" value="Restart" alt="Restart" title="Restart" style="cursor: pointer;" onclick=""document.questionnaire.submit();"">
<%		End If %>
							</td>
						</tr>
					</table>
				</td>
				<td style="background: url(../images/cc_r.gif);">
					<img src="../images/clear.gif" width="20" height="55" alt="" /></td>
			</tr>
			<tr>
				<td>
					<img src="../images/cc_lb.gif" width="16" height="21" alt="" /></td>
				<td style="background: url(../images/cc_b.gif);">
					<img src="../images/clear.gif" width="542" height="21" alt="" /></td>
				<td>
					<img src="../images/cc_rb.gif" width="20" height="21" alt="" /></td>
			</tr>
		</table>
</form>