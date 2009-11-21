		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top">
<img src="../images/lob.jpg" width="578" height="166" alt="Explore a career with the Bank of Opportunity." title="Explore a career with the Bank of Opportunity." border="0">
<div class="hidden">Line of Business Career Campus. Explore a career with the Bank of Opportunity.</div>
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="3" alt="" border="0"></td></tr>
		</table>
		<a name="skipmaincontent"></a><br>
<form name="questionnaire" action="lb_career_compass.asp" method="get">
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
		'2 column'If page_number = 2 Then
		'2 column'	colspan = 5
		'2 column'	colspan2 = 4
		'2 column'End If
		For g=1 To UBound(question_groups) Step 1
			Set question_group =  question_groups(g)
			questions =  question_group.Item("questions")
			two_bank = False
		'2 column'	If question_group.Item("group_number") = "5" Then two_bank = True
			If UBound(questions) > 0 Then %>
						<tr>
							<td align="right" nowrap style="padding: 0px;" valign="top"><b><% Response.write question_group.Item("group_number") %>.&nbsp;</b></td>
							<td nowrap colspan="<% Response.write colspan %>" style="padding: 0px; width: 504px;"><b style="margin: 0px;"><% Response.write question_group.Item("title") %></b></td>
						</tr>
<%
				For q=1 To UBound(questions) Step 1
%>
<%					'2 column'If Not two_bank Or q < 11 Then %>
						<tr>
							<td nowrap style="padding: 0px;">&nbsp;</td>
							<td nowrap style="padding: 0px;" valign="top"><% If question_group.Item("group_type") = "checkbox" Then %><input name="q-<% Response.write questions(q).Item("question_number") %>" id="q-<% Response.write questions(q).Item("question_number") %>" type="checkbox" value="<% Response.write questions(q).Item("question_number") %>"<% If questions(q).Item("answer") Then %> checked<% End If %>><span class="ada-hide"><label class="ada-hide" for="q-<% Response.write questions(q).Item("question_number") %>"><% Response.write questions(q).Item("label") %></label></span><% ElseIf question_group.Item("group_type") = "radio" Then %><input type="radio" name="g-<% Response.write question_group.Item("group_number") %>" id="q-<% Response.write questions(q).Item("question_number") %>" value="<% Response.write questions(q).Item("question_number") %>"<% If questions(q).Item("answer") Then %> checked<% End If %>><span class="ada-hide"><label class="ada-hide" for="q-<% Response.write questions(q).Item("question_number") %>"><% Response.write questions(q).Item("label") %></label></span><% End If %></td>
							<td<% If Not two_bank Then %> colspan="<%Response.write colspan2 %>"<% End If %><% If Not two_bank Then %> width="100%"<% Else %> width="50%"<% End If %> style="padding: 0px 0px 0px 9px;"><div style="margin: 0px;"><% Response.write questions(q).Item("question") %></div></td>
<%					'2 column'End If %>
<%					'2 column'
					If two_bank And q < 11 Then %>
							<td nowrap style="padding: 0px;">&nbsp;</td>
<%						If q <  10 Then %>
							<td nowrap style="padding: 0px;"><% If question_group.Item("group_type") = "checkbox" Then %><input name="q-<% Response.write questions(q+10).Item("question_number") %>" id="q-<% Response.write questions(q+10).Item("question_number") %>" type="checkbox" value="<% Response.write questions(q+10).Item("question_number") %>"<% If questions(q+10).Item("answer") Then %> checked<% End If %>><span class="ada-hide"><label class="ada-hide" for="q-<% Response.write questions(q+10).Item("question_number") %>"><% Response.write questions(q+10).Item("label") %></label></span><% ElseIf question_group.Item("group_type") = "radio" Then %><input type="radio" name="g-<% Response.write question_group.Item("group_number") %>" id="q-<% Response.write questions(q+10).Item("question_number") %>" value="<% Response.write questions(q+10).Item("question_number") %>"<% If questions(q+10).Item("answer") Then %> checked<% End If %>><span class="ada-hide"><label class="ada-hide" for="q-<% Response.write questions(q+10).Item("question_number") %>"><% Response.write questions(q+10).Item("label") %></label></span><% End If %></td>
							<td width="50%" nowrap style="padding: 0px 0px 0px 9px;"><div style="margin: 0px;"><% Response.write questions(q+10).Item("question") %></div></td>
<%						Else %>
							<td nowrap style="padding: 0px;">&nbsp;</td>
							<td nowrap style="padding: 0px;">&nbsp;</td>
<%						End If %>
<%					End If
					'2 column' %>
<%					'2 column'If Not two_bank Or q < 11 Then %>
						</tr>
<%					'2 column'End If %>
<%				Next %>
<%			End If
		Next %>
<%	ElseIf page_number = 4 Then %>
						<tr>
							<td>
<%		stop_points = 0
		num_listed = 0
		For sprg=1 To UBound(selected_programs) Step 1
			program_index = selected_programs(sprg)
			If selected_program_points(sprg) > 0 And programs(program_index).Item("is_active") And (num_listed < min_programs_per_page Or (num_listed = min_programs_per_page And sprg > 1 And selected_program_points(sprg)=selected_program_points(sprg-1))) Then
				programs(program_index).Item("listed") = TRUE
				num_listed = num_listed + 1
%>
<p style="margin: 0px 0px 12px 0px;"><a class="left2" href="<% Response.write programs(program_index).Item("url") %>"><% Response.write programs(program_index).Item("title")' &" ("&programs(program_index).Item("points")&")" %></a></p>
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
<a class="left" style="text-decoration: none;" href="<% Response.write href_pre %>lob.asp">Return to Lines of Business</a>
							</td>
							<td width="70" nowrap align="right">
<%
		If previous_page_number > 2 Then
%>&nbsp;
<%		ElseIf previous_page_number > 0 Then %>
<input type="image" id="previous" name="previous" src="../images/cc_prev.gif" value="Previous" alt="Previous" title="Previous" style="cursor: pointer;" onMouseOver="MM_swapImage('previous','','../images/cc_prev_over.gif',1);" onMouseOut="MM_swapImgRestore();" onMouseDown="MM_swapImage('previous','','../images/cc_prev_down.gif',1);" onMouseUp="MM_swapImgRestore();">
<%		Else %>
<img src="../images/cc_prev_dis.gif" border="0" alt="" />
<%		End If %>
							</td>
							<td align="center" nowrap style="padding: 0px 9px 0px 8px;"><b><% Response.write page_number %> of 4</b></td>
							<td nowrap>
<%
		If page_number < 3 Then
%>
<input type="image" id="next" name="next" src="../images/cc_next.gif" value="Next" alt="Next" title="Next" style="cursor: pointer;" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('next','','../images/cc_next_over.gif',1)"  onMouseUp="MM_swapImgRestore()" onMouseDown="MM_swapImage('next','','../images/cc_next_down.gif',1)">
<%
		ElseIf page_number < 4 Then
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