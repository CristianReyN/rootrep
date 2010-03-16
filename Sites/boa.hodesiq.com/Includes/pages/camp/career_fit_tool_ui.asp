<% padding_right = 0 %>
		<a name="skipmaincontent"></a>
<form name="questionnaire" action="career_fit_tool_all.asp" method="get" style="margin: 0px;" tabindex="1">
		<table width="577" height="580" border="0" cellpadding="0" cellspacing="0" summary="" style="margin-top: 9px;">
			<tr>
				<td colspan="3"><H1 class="hidden">Career Fit Tool</H1>
					<img src="../images/camp/cft_top.jpg" width="577" height="52" alt="Career Fit Tool" /></td>
			</tr>
			<tr>
				<td style="background: url(../images/camp/cft_left_bg.jpg);" valign="bottom">
					<img src="../images/camp/cft_left.jpg" width="28" height="471" alt="" /></td>
				<td width="521" valign="top" style="padding: <%If page_number = 0 Or page_number = 10 Then %>32<% Else %>24<% End If %>px <%=padding_right %>px 0px 0px;">
<input type="hidden" name="page_number" value="<%=next_page_number %>">
<%	If er_ror <> "" Then %>
<a name="error"></a><p class="cft" style="margin: 0px 0px 6px 0px; color: #e20019; font-weight: bold;"><%=er_ror %></p>
<%	End If %>
<%
	tabindex = 1
	If isObject(page) And UBound(page.Item("questions")) > 0 Then 
		If isObject(page) And page.Item("title") <> "" Then %>
<H2 class="cft" style="margin: -8px 0px 4px -1px; padding-bottom: 5px;"><%=page.Item("title") %></H2>
<%
		End If %>
<%
		If isObject(page) And trim(page.Item("copy")) <> "" Then %>
<p style="margin: 0px 0px 9px 0px;"><%=page.Item("copy") %></p>
<%
		End If
		
		questions =  page.Item("questions")
		For g=1 To UBound(questions) Step 1
			Set question =  questions(g)
			answers =  question.Item("answers")
			
			two_bank = False
			colspan = 2
			lo_op = UBound(answers)
			
			If UBound(answers) > 0 Then
				If page_number = 5 Then
					two_bank = True
					colspan = 4
					lo_op = 10
				ElseIf page_number = 7 Then
					two_bank = True
					colspan = 4
					lo_op = 6
				End If
%>
					<table width="<%=(521-padding_right) %>" cellpadding="0" cellspacing="0" border="0" style="margin: 0px 0px 0px 0px;" summary="">
						<tr>
							<td colspan="<%=colspan %>" style="padding: 0px 0px 18px 0px;"><H2 class="cfth" style="margin: 0px; padding: 0px;"><%=question.Item("title") %></H2></td>
						</tr>
<%
				For q=1 To lo_op Step 1
					tabindex = tabindex + 1
%>
						<tr>
							<td style="height: 30px; padding: 2px 0px 2px 18px;" valign="top"><% If question.Item("question_type") = "checkbox" Then %><div><input type="checkbox" name="q-<%=answers(q).Item("answer_number") %>" id="q-<%=answers(q).Item("answer_number") %>" value="<%=answers(q).Item("answer_number") %>"<% If answers(q).Item("answered") Then %> checked<% End If %> tabindex="<%=tabindex %>"></div><% ElseIf question.Item("question_type") = "radio" Then %><input type="radio" name="g-<%=question.Item("question_number") %>" id="q-<%=answers(q).Item("answer_number") %>" value="<%=answers(q).Item("answer_number") %>"<% If answers(q).Item("answered") Then %> checked<% End If %> tabindex="<%=tabindex %>"><% End If %></td>
							<td <% If Not two_bank Then %>width="100%"<% Else %>width="50%"<% End If %> style="height: 30px; padding: 8px 0px 2px 9px;" valign="top"><div style="margin: 0px;"><label class="bac" for="q-<%=answers(q).Item("answer_number") %>"><span class="ada-hide"><%=answers(q).Item("label") %></span><%=answers(q).Item("answer") %></label></div></td>
<%
					If two_bank Then
						If (q+lo_op) <= UBound(answers) Then
							tabindex_loop = tabindex + lo_op %>
							<td style="height: 30px; padding: 2px 0px 2px 18px;" valign="top"><% If question.Item("question_type") = "checkbox" Then %><input type="checkbox" name="q-<%=answers(q+lo_op).Item("answer_number") %>" id="q-<%=answers(q+lo_op).Item("answer_number") %>" value="<%=answers(q+lo_op).Item("answer_number") %>"<% If answers(q+lo_op).Item("answered") Then %> checked<% End If %> tabindex="<%=tabindex_loop %>"><% ElseIf question.Item("question_type") = "radio" Then %><input type="radio" name="g-<%=question.Item("question_number") %>" id="q-<%=answers(q+lo_op).Item("answer_number") %>" value="<%=answers(q+lo_op).Item("answer_number") %>"<% If answers(q+lo_op).Item("answered") Then %> checked<% End If %> tabindex="<%=tabindex_loop %>"><% End If %></td>
							<td width="50%" style="height: 30px; padding: 8px 0px 2px 9px;" valign="top"><div style="margin: 0px;"><label class="bac" for="q-<%=answers(q+lo_op).Item("answer_number") %>"><span class="ada-hide"><%=answers(q+lo_op).Item("label") %></span><%=answers(q+lo_op).Item("answer") %></label></div></td>
<%
						Else %>
							<td nowrap style="height: 30px; padding: 0px;">&nbsp;</td>
							<td nowrap style="height: 30px; padding: 0px;">&nbsp;</td>
<%
						End If %>
<%
					End If %>
						</tr>
<%				Next %>
					</table>
<%			End If
		Next %>
<%
	ElseIf page_number = 0 Then %>
					<table width="<%=(521-padding_right) %>" cellpadding="0" cellspacing="0" border="0" style="margin: 0px 0px 0px 0px;" summary="">
						<tr>
							<td>
<%
		If isObject(page) And page.Item("title") <> "" Then %>
<H2 class="cfth" style="margin: -8px 0px 4px -1px; padding-bottom: 5px;"><%=page.Item("title") %></H2>
<%
		End If %>
<%
		If isObject(page) And trim(page.Item("copy")) <> "" Then %>
<p class="cft" style="margin: 0px 0px 9px 0px;"><%=page.Item("copy") %></p>
<%
		End If %>
							</td>
						</tr>
					</table>
<%
	ElseIf page_number = 10 Then %>
					<table width="<%=(521-padding_right) %>" cellpadding="0" cellspacing="0" border="0" style="margin: 0px 0px 0px 0px;" summary="">
						<tr>
							<td>
<%
		If isObject(page) And page.Item("title") <> "" Then %>
<H2 class="cfth" style="margin: -8px 0px 4px -1px; padding-bottom: 5px;"><%=page.Item("title") %></H2>
<%
		End If %>
<%
		If isObject(page) And trim(page.Item("copy")) <> "" Then %>
<p class="cft" style="margin: 0px 0px 9px 0px;"><%=page.Item("copy") %></p>
<%
		End If
		stop_points = 0
		num_listed = 0
		session_programs = ""
		'remember points'session_program_points = ""
		For sprg=1 To UBound(selected_programs) Step 1
			'If sprg = min_programs_per_page Then stop_points = selected_program_points(sprg)
			'If selected_program_points(sprg) > 0 And (sprg <= min_programs_per_page Or selected_program_points(sprg) >= stop_points) Then
			program_index = selected_programs(sprg)
			If selected_program_points(sprg) > 0 And programs(program_index).Item("is_active") And num_listed < min_programs_per_page Then
				programs(program_index).Item("listed") = TRUE
				num_listed = num_listed + 1
				If session_programs <> "" Then session_programs = session_programs & ":"
				session_programs = session_programs & program_index
				'remember points'If session_program_points <> "" Then session_program_points = session_program_points & ":"
				'remember points'session_program_points = session_program_points & programs(program_index).Item("points")
%>
<H2 class="cft" style="margin: 12px 0px 0px 15px;"><%=programs(program_index).Item("program_group").Item("group_name") %></H2>
<p style="margin: 0px 0px <%If num_listed = min_programs_per_page Then %>0<% Else %>18<% End If %>px 15px;"><a class="cft" href="<%=programs(program_index).Item("url") %>"><%=programs(program_index).Item("title") %> - <% If programs(program_index).Item("region") = AMERICAS Then %><% If programs(program_index).Item("sub_region") = CANADA Then %><%=CANADA%><% Else%><%=U_S_A%><% End If %><% Else%><%=programs(program_index).Item("region")%><% End If %></a><% 'response.write ( " - " & selected_program_points(sprg) ) %></p>
<%			End If
		Next
		If session_programs <> "" Then session.Contents("fit_programs") = session_programs
		'remember points'If Not from_request And session_program_points <> "" Then session.Contents("fit_program_points") = session_program_points
		If Not from_request Then Response.Redirect("career_fit_tool_10.asp?p="&session_programs)
%>
							</td>
						</tr>
					</table>
<%	End If %>
					<table width="<%=(521-padding_right) %>" cellpadding="0" cellspacing="0" border="0" style="margin: 0px 0px 0px 0px;" summary="">

						<tr>
							<td style="padding: 28px 0px 2px <% If page_number > 0 And page_number <10 Then %>18<% Else %>0<% End If %>px;">
								<table cellpadding="0" cellspacing="0" border="0" summary="">
									<tr>
										<td valign="top">
<%
		If tabindex > 0 Then
			tabindex = tabindex + 1
			If two_bank Then tabindex = tabindex + lo_op
			tabindex_str = " tabindex="""&tabindex&""""
		Else
			tabindex_str = ""
		End If
		
		If page_number = 0 Then
%>
<input type="image" id="next" name="next" src="../images/camp/get_started_now.gif" value="Find Your Match" alt="Find Your Match" title="Get Started Now" style="cursor: pointer;"<%=tabindex_str %>>
<%
		ElseIf page_number < 9 Then
%>
<input type="submit" id="next" name="next" value="Next Question &raquo;" alt="Next Question &raquo;" title="Next Question &raquo;" class="button_cft"<%=tabindex_str %>>
<%
		ElseIf page_number = 9 Then
%>
<input type="submit" id="finish" name="finish" value="Finish &raquo;" alt="Finish &raquo;" title="Finish &raquo;" class="button_cft"<%=tabindex_str %>>
<%
		Else %>
<p class="cft" style="margin: 0px 0px 9px 0px;">Feel free to change your answers and <a href="career_fit_tool_all.asp" class="cft" title="Career Fit Tool">try the Career Fit Tool again</a>. You can also <span class="cft">bookmark</span> your results after each attempt for later reference.</p>
<%
		End If %>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table><br>
				</td>
				<td style="background: url(../images/camp/cft_righ_bgt.jpg);" valign="bottom">
					<img src="../images/camp/cft_right.jpg" width="28" height="471" alt="" /></td>
			</tr>
			<tr>
				<td width="577" align="right" height="57" colspan="3" style="background: url(../images/camp/cft_bottom.jpg) no-repeat; padding-right: 48px;">
					<% If page_number > 0 And page_number < 10 Then %><b><%=page_number %> of 9</b><% Else %>&nbsp;<%End If %></td>
			</tr>
			<tr>
				<td align="right" colspan="3" style="padding-top: 6px;">
<a href="<%= standart_href%>" title="Return to standard page with video" class="bac" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with flash</a>
			</tr>
		</table>
</form>