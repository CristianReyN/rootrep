		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top">
<img src="../images/camprecruiting.jpg" width="389" height="166" alt="Campus Recruiting" title="Campus Recruiting" border="0"><img src="../images/career_compasst.jpg" width="189" height="166" alt="I am continually provided with opportunities to be innovative and creative." title="I am continually provided with opportunities to be innovative and creative." border="0">
<div class="hidden">Campus Recruiting. I am continually provided with opportunities to be innovative and creative.</div>
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="3" alt="" border="0"></td></tr>
		</table>
		<a name="skipmaincontent"></a><br>
<form name="questionnaire" action="career_compass.asp" method="get">
		<table width="578" border="0" cellpadding="0" cellspacing="0" summary="">
			<tr>
				<td>
					<img src="../images/cc_lt.gif" width="16" height="15" alt="" /></td>
				<td style="background: url(../images/cc_t.gif);">
					<img src="../images/clear.gif" width="542" height="15" align="top" alt="" /></td>
				<td>
					<img src="../images/cc_rt.gif" width="20" height="15" alt="" /></td>
			</tr>
			<tr>
				<td style="background: url(../images/cc_l.gif);">
					<img src="../images/clear.gif" width="16" height="10" alt="" /></td>
				<td height="100%" valign="top" style="padding: 0px 0px 0px 0px;">
<H1 class="cc" style="margin: -8px 0px 4px -1px; padding-bottom: 5px;"><% If isObject(page) Then Response.write page.Item("title") %></H1>
<div style=" background: #999999; margin: 0px 0px 7px 0px;"><img src="../images/clear.gif" width="100%" height="1" align="top" alt="" /></div>
<%	If er_ror <> "" Then %>
<a name="error"></a><p style="margin: 0px 0px 9px -1px; color: Red;"><% Response.write er_ror %></p>
<%	End If %>
<input type="hidden" name="page_number" value="<% Response.write next_page_number %>">
<%	If isObject(page) And trim(page.Item("copy")) <> "" Then %>
<p style="margin: 0px 0px 9px -1px;"><% Response.write page.Item("copy") %></p>
<%	End If %>
					<table width="100%" cellpadding="0" cellspacing="0" border="0" style="margin: 0px 0px 0px 0px;" summary="">
<%	If isObject(page) And UBound(page.Item("question_groups")) > 0 Then 
		question_groups =  page.Item("question_groups")
		colspan = 2
		colspan2 = 1
		If page_number = 2 Then
			colspan = 5
			colspan2 = 4
		End If
		For g=1 To UBound(question_groups) Step 1
			Set question_group =  question_groups(g)
			questions =  question_group.Item("questions")
			two_bank = False
			If question_group.Item("group_number") = "5" Then two_bank = True
			If UBound(questions) > 0 Then %>
						<tr>
							<td align="right" nowrap style="padding: 0px;"><b><% Response.write question_group.Item("group_number") %>.&nbsp;</b></td>
							<td nowrap colspan="<% Response.write colspan %>" style="padding: 0px;"><b style="margin: 0px;"><% Response.write question_group.Item("title") %></b></td>
						</tr>
<%
				For q=1 To UBound(questions) Step 1
%>
<%					If Not two_bank Or q < 11 Then %>
						<tr>
							<td nowrap style="padding: 0px;">&nbsp;</td>
							<td nowrap style="padding: 0px;"><% If question_group.Item("group_type") = "checkbox" Then %><span class="ada-label"><label class="ada-label" for="q-<% Response.write questions(q).Item("question_number") %>"><% Response.write questions(q).Item("label") %></label></span><input name="q-<% Response.write questions(q).Item("question_number") %>" id="q-<% Response.write questions(q).Item("question_number") %>" type="checkbox" value="<% Response.write questions(q).Item("question_number") %>"<% If questions(q).Item("answer") Then %> checked<% End If %>><% ElseIf question_group.Item("group_type") = "radio" Then %><span class="ada-label"><label class="ada-label" for="q-<% Response.write questions(q).Item("question_number") %>"><% Response.write questions(q).Item("label") %></label></span><input type="radio" name="g-<% Response.write question_group.Item("group_number") %>" id="q-<% Response.write questions(q).Item("question_number") %>" value="<% Response.write questions(q).Item("question_number") %>"<% If questions(q).Item("answer") Then %> checked<% End If %>><% End If %></td>
							<td<% If Not two_bank Then %> colspan="<%Response.write colspan2 %>"<% End If %><% If Not two_bank Then %> width="100%"<% Else %> width="50%"<% End If %> nowrap style="padding: 0px 0px 0px 9px;"><div style="margin: 0px;"><% Response.write questions(q).Item("question") %></div></td>
<%					End If %>
<%					If two_bank And q < 11 Then %>
							<td nowrap style="padding: 0px;">&nbsp;</td>
<%						If q <  10 Then %>
							<td nowrap style="padding: 0px;"><% If question_group.Item("group_type") = "checkbox" Then %><span class="ada-label"><label class="ada-label" for="q-<% Response.write questions(q+10).Item("question_number") %>"><% Response.write questions(q+10).Item("label") %></label></span><input name="q-<% Response.write questions(q+10).Item("question_number") %>" id="q-<% Response.write questions(q+10).Item("question_number") %>" type="checkbox" value="<% Response.write questions(q+10).Item("question_number") %>"<% If questions(q+10).Item("answer") Then %> checked<% End If %>><% ElseIf question_group.Item("group_type") = "radio" Then %><span class="ada-label"><label class="ada-label" for="q-<% Response.write questions(q+10).Item("question_number") %>"><% Response.write questions(q+10).Item("label") %></label></span><input type="radio" name="g-<% Response.write question_group.Item("group_number") %>" id="q-<% Response.write questions(q+10).Item("question_number") %>" value="<% Response.write questions(q+10).Item("question_number") %>"<% If questions(q+10).Item("answer") Then %> checked<% End If %>><% End If %></td>
							<td width="50%" nowrap style="padding: 0px 0px 0px 9px;"><div style="margin: 0px;"><% Response.write questions(q+10).Item("question") %></div></td>
<%						Else %>
							<td nowrap style="padding: 0px;">&nbsp;</td>
							<td nowrap style="padding: 0px;">&nbsp;</td>
<%						End If %>
<%					End If %>
<%					If Not two_bank Or q < 11 Then %>
						</tr>
<%					End If %>
<%				Next %>
<%			End If
		Next %>
<%	ElseIf page_number = 5 Then %>
						<tr>
							<td>
<%		stop_points = 0
		num_listed = 0
		'Response.write "gd_ugd: " & gd_ugd & "<br>"
		'Response.write "U_G_D: " & U_G_D & "<br>"
		'Response.write "G_D: " & G_D & "<br>"
		'Response.write "B_O_T_H: " & B_O_T_H & "<br>"
		For sprg=1 To UBound(selected_programs) Step 1
			'If sprg = min_programs_per_page Then stop_points = selected_program_points(sprg)
			'If selected_program_points(sprg) > 0 And (sprg <= min_programs_per_page Or selected_program_points(sprg) >= stop_points) Then
			program_index = selected_programs(sprg)
			Dim list_program
			If programs(program_index).Item("gd_ugd") = gd_ugd Then
				list_program = true
			ElseIf programs(program_index).Item("gd_ugd") = B_O_T_H Then
				list_program = true
			Else
				list_program = false
			End If
			'list_program = true
			If selected_program_points(sprg) > 0 And programs(program_index).Item("is_active") And num_listed < min_programs_per_page And list_program Then
				programs(program_index).Item("listed") = TRUE
				num_listed = num_listed + 1
%>
<p style="margin: 0px 0px 12px 0px;"><a class="left2" href="<% Response.write programs(program_index).Item("url") %>"><% Response.write programs(program_index).Item("title") &" ("&programs(program_index).Item("points")&")" &" ["&programs(program_index).Item("gd_ugd")&"]" %></a></p>
<%			End If
		Next %>

<br><br><br>Not included programs
<%		For sprg=1 To UBound(selected_programs) Step 1
			program_index = selected_programs(sprg)
			If programs(program_index).Item("is_active") And (Not programs(program_index).Item("listed")) Then
%>
<p style="margin: 0px 0px 12px 0px;"><a class="left2" href="<% Response.write programs(program_index).Item("url") %>"><% Response.write programs(program_index).Item("title") &" ("&programs(program_index).Item("points")&")" &" ["&programs(program_index).Item("gd_ugd")&"]" %></a></p>
<%			End If
		Next %>
							</td>
						</tr>
<%	End If %>
					</table><br>
				</td>
				<td style="background: url(../images/cc_r.gif);">
					<img src="../images/clear.gif" width="20" height="10" alt="" /></td>
			</tr>
			<tr>
				<td style="background: url(../images/cc_l.gif);">
					<img src="../images/clear.gif" width="16" height="31" alt="" /></td>
				<td height="100%" valign="bottom" style="padding: 0px;">
<div style=" background: #999999; margin: 0px 0px 8px 0px;"><img src="../images/clear.gif" width="100%" height="1" align="top" alt="" /></div>
					<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
						<tr>
							<td width="100%">
<a class="left" style="text-decoration: none;" href="<% Response.write href_pre %>collrecruiting.asp">Return to Campus Recruiting</a>
							</td>
							<td width="70" nowrap align="right">
<%
		If previous_page_number > 3 Then
%>&nbsp;
<%		ElseIf previous_page_number > 0 Then %>
<input type="image" id="previous" name="previous" src="../images/cc_prev.gif" value="Previous" alt="Previous" title="Previous" style="cursor: pointer;" onMouseOver="MM_swapImage('previous','','../images/cc_prev_over.gif',1);" onMouseOut="MM_swapImgRestore();" onMouseDown="MM_swapImage('previous','','../images/cc_prev_down.gif',1);" onMouseUp="MM_swapImgRestore();">
<%		Else %>
<img src="../images/cc_prev_dis.gif" border="0" alt="" />
<%		End If %>
							</td>
							<td align="center" nowrap style="padding: 0px 9px 0px 8px;"><b><% Response.write page_number %> of 5</b></td>
							<td nowrap>
<%
		If page_number < 4 Then
%>
<input type="image" id="next" name="next" src="../images/cc_next.gif" value="Next" alt="Next" title="Next" style="cursor: pointer;" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('next','','../images/cc_next_over.gif',1)"  onMouseUp="MM_swapImgRestore()" onMouseDown="MM_swapImage('next','','../images/cc_next_down.gif',1)">
<%
		ElseIf page_number < 5 Then
%>
<input type="image" id="finish" name="finish" src="../images/cc_finish.gif" value="Finish" alt="Finish" title="Finish" style="cursor: pointer;" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('finish','','../images/cc_finish_over.gif',1)"  onMouseUp="MM_swapImgRestore()" onMouseDown="MM_swapImage('finish','','../images/cc_finish_down.gif',1)">
<%		Else %>
<input type="image" id="restart" name="restart" src="../images/cc_restart.gif" value="Restart" alt="Restart" title="Restart" style="cursor: pointer;" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('restart','','../images/cc_restart_over.gif',1)"  onMouseUp="MM_swapImgRestore()" onMouseDown="MM_swapImage('restart','','../images/cc_restart_down.gif',1)">
<%		End If %>
							</td>
						</tr>
					</table>
				</td>
				<td style="background: url(../images/cc_r.gif);">
					<img src="../images/clear.gif" width="20" height="31" alt="" /></td>
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