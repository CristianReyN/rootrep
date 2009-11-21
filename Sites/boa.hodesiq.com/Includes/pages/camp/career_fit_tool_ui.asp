<% padding_right = 0 %>
		<a name="skipmaincontent"></a>
<form name="questionnaire" action="career_fit_tool_all.asp" method="get" style="margin: 0px;">
		<table width="577" height="580" border="0" cellpadding="0" cellspacing="0" summary="" style="margin-top: 9px;">
			<tr>
				<td colspan="3">
					<img src="../images/camp/cft_top.jpg" width="577" height="52" alt="Career Fit Tool" /></td>
			</tr>
			<tr>
				<td style="background: url(../images/camp/cft_left_bg.jpg);" valign="bottom">
					<img src="../images/camp/cft_left.jpg" width="28" height="471" alt="" /></td>
				<td width="521" valign="top" style="padding: 30px <%=padding_right %>px 0px 0px;">
<input type="hidden" name="page_number" value="<%=next_page_number %>">
<%
	If isObject(page) And UBound(page.Item("question_groups")) > 0 Then 
		If isObject(page) And page.Item("title") <> "" Then %>
<H1 class="cc" style="margin: -8px 0px 4px -1px; padding-bottom: 5px;"><%=page.Item("title") %></H1>
<%
		End If %>
<%
		If isObject(page) And trim(page.Item("copy")) <> "" Then %>
<p style="margin: 0px 0px 9px 0px;"><%=page.Item("copy") %></p>
<%
		End If
		
		question_groups =  page.Item("question_groups")
		For g=1 To UBound(question_groups) Step 1
			Set question_group =  question_groups(g)
			questions =  question_group.Item("questions")
			
			two_bank = False
			colspan = 2
			lo_op = UBound(questions)
			
			If UBound(questions) > 0 Then
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
							<td colspan="<%=colspan %>" style="padding: 10px 0px 18px 0px;"><b style="margin: 0px;"><%=question_group.Item("title") %></b></td>
						</tr>
<%
				For q=1 To lo_op Step 1
%>
						<tr>
							<td style="height: 30px; padding: 2px 0px 2px 18px;" valign="top"><% If question_group.Item("group_type") = "checkbox" Then %><input name="q-<%=questions(q).Item("question_number") %>" id="q-<%=questions(q).Item("question_number") %>" type="checkbox" value="<%=questions(q).Item("question_number") %>"<% If questions(q).Item("answer") Then %> checked<% End If %>><span class="ada-hide"><label class="ada-hide" for="q-<%=questions(q).Item("question_number") %>"><%=questions(q).Item("label") %></label></span><% ElseIf question_group.Item("group_type") = "radio" Then %><input type="radio" name="g-<%=question_group.Item("group_number") %>" id="q-<%=questions(q).Item("question_number") %>" value="<%=questions(q).Item("question_number") %>"<% If questions(q).Item("answer") Then %> checked<% End If %>><span class="ada-hide"><label class="ada-hide" for="q-<%=questions(q).Item("question_number") %>"><%=questions(q).Item("label") %></label></span><% End If %></td>
							<td <% If Not two_bank Then %>width="100%"<% Else %>width="50%"<% End If %> style="height: 30px; padding: 8px 0px 2px 9px;" valign="top"><div style="margin: 0px;"><%=questions(q).Item("question") %></div></td>
<%
					If two_bank Then
						If (q+lo_op) <= UBound(questions) Then %>
							<td style="height: 30px; padding: 2px 0px 2px 18px;" valign="top"><% If question_group.Item("group_type") = "checkbox" Then %><input name="q-<%=questions(q+lo_op).Item("question_number") %>" id="q-<%=questions(q+lo_op).Item("question_number") %>" type="checkbox" value="<%=questions(q+lo_op).Item("question_number") %>"<% If questions(q+lo_op).Item("answer") Then %> checked<% End If %>><span class="ada-hide"><label class="ada-hide" for="q-<%=questions(q+lo_op).Item("question_number") %>"><%=questions(q+lo_op).Item("label") %></label></span><% ElseIf question_group.Item("group_type") = "radio" Then %><input type="radio" name="g-<%=question_group.Item("group_number") %>" id="q-<%=questions(q+lo_op).Item("question_number") %>" value="<%=questions(q+lo_op).Item("question_number") %>"<% If questions(q+lo_op).Item("answer") Then %> checked<% End If %>><span class="ada-hide"><label class="ada-hide" for="q-<%=questions(q+lo_op).Item("question_number") %>"><%=questions(q+lo_op).Item("label") %></label></span><% End If %></td>
							<td width="50%" style="height: 30px; padding: 8px 0px 2px 9px;" valign="top"><div style="margin: 0px;"><%=questions(q+lo_op).Item("question") %></div></td>
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
<H1 class="cft" style="margin: -8px 0px 4px -1px; padding-bottom: 5px;"><%=page.Item("title") %></H1>
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
<H1 class="cft" style="margin: -8px 0px 4px -1px; padding-bottom: 5px;"><%=page.Item("title") %></H1>
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
		For sprg=1 To UBound(selected_programs) Step 1
			'If sprg = min_programs_per_page Then stop_points = selected_program_points(sprg)
			'If selected_program_points(sprg) > 0 And (sprg <= min_programs_per_page Or selected_program_points(sprg) >= stop_points) Then
			program_index = selected_programs(sprg)
			If selected_program_points(sprg) > 0 And programs(program_index).Item("is_active") And num_listed < min_programs_per_page Then
				programs(program_index).Item("listed") = TRUE
				num_listed = num_listed + 1
				If session_programs <> "" Then session_programs = session_programs & ":"
				session_programs = session_programs & program_index
%>
<h2 class="cft" style="margin: 0px 0px 0px 0px;"><%=programs(program_index).Item("program_group").Item("group_name") %></h2>
<p style="margin: 0px 0px 6px 0px;"><a class="cft" href="<%=programs(program_index).Item("url") %>"><%=programs(program_index).Item("title") %></a><% 'response.write (" - "&programs(program_index).Item("points")) %></p>
<%			End If
		Next
		If session_programs <> "" Then session.Contents("fit_programs") = session_programs
		If Not from_request Then Response.Redirect("career_fit_tool_10.asp?p="&session_programs)
%>
							</td>
						</tr>
					</table>
<%	End If %>
					<table width="<%=(521-padding_right) %>" cellpadding="0" cellspacing="0" border="0" style="margin: 0px 0px 0px 0px;" summary="">
						<tr>
							<td height="36" style="padding: 2px 0px 2px 18px;">
<%	If er_ror <> "" Then %>
<a name="error"></a><p class="cft" style="margin: 6px 0px 0px 0px; color: #e20019; font-weight: bold;"><%=er_ror %></p>
<%	Else %>
&nbsp;
<%	End If %>
							</td>
						</tr>
						<tr>
							<td style="padding: 2px 0px 2px <% If page_number > 0 And page_number <10 Then %>18<% Else %>0<% End If %>px;">
								<table cellpadding="0" cellspacing="0" border="0" summary="">
									<tr>
										<!--<td nowrap style="padding: 0px 9px 0px 0px;">
<%
		If previous_page_number > 3 Then
%>&nbsp;
<%		ElseIf previous_page_number > 0 Then %>
<input type="image" id="previous" name="previous" src="../images/cc_prev.gif" value="Previous" alt="Previous" title="Previous" style="cursor: pointer;">
<%		Else %>
<img src="../images/cc_prev_dis.gif" border="0" alt="" />
<%		End If %>
										</td>-->
										<td>
<%
		If page_number = 0 Then
%>
<input type="image" id="next" name="next" src="../images/camp/find_your_match.gif" value="Find Your Match" alt="Find Your Match" title="Find Your Match" style="cursor: pointer;">
<%
		ElseIf page_number < 9 Then
%>
<input type="submit" id="next" name="next" value="Next Question &gt;&gt;" alt="Next Question" title="Next Question" class="button_cft">
<%
		ElseIf page_number = 9 Then
%>
<input type="submit" id="finish" name="finish" value="Finish &gt;&gt;" alt="Finish &gt;&gt;" title="Finish &gt;&gt;" class="button_cft">
<%
		Else %>
<p class="cft" style="margin: 0px 0px 9px 0px;">Feel free to change your answers and <a href="career_fit_tool_all.asp" class="cft" title="Career Fit Tool">try the Career Fit Tool again</a>. You can also <!--<a href="career_fit_tool_10.asp?p=<%=session_programs %>" class="cft" title="Click here to manually bookmark your results">--><span class="cft">bookmark</span><!--</a>--> your results after each attempt for later reference.</p>
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
		</table>
</form>