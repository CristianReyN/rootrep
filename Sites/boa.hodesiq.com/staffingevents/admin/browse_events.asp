<%Response.Buffer=true%>
<!--#include file="include/security.asp"-->
<!--#include file="../../Includes/conn.asp"-->
<!--#include file="include/events_func.asp"-->
<%
	SetLocale(1033)
	pageid="search_event"
	Dim from_date_msg, to_date_msg
	from_date_msg = "Starting Date: (mm/dd/yyyy)"
	to_date_msg = "Ending Date: (mm/dd/yyyy)"
	colr1="#ffffff"
	colr2="#A59D9D"
	colr3="#000000"
	
	Dim active_event, state_id, job_type_id, event_type_id, from_date, to_date, order_by, order_by_only, per_page, page_num, number_of_pages, paging_plus
	per_page = 20
	paging_plus = 5
	active_event=Request("not_active_event")
		If active_event = "" Then
			active_event = 1
		Else
			active_event = 0
		End If
	state_id=Request("state_id")
		If state_id = "" Then state_id = 0
	job_type_id=Request("job_type_id")
		If job_type_id = "" Then job_type_id = 0
	event_type_id=Request("event_type_id")
		If event_type_id = "" Then event_type_id = 0
	from_date=Request("from_date")
		If from_date = "" Then from_date = Date
	to_date=Request("to_date")
		If to_date = "" Then to_date = ""
	order_by=Request("order_by")
	order_by_only=Request("order_by")
	page_num=Request("page_num")
		If page_num = "" Then page_num = 1
'----------------------------------------------------------------
'Response.write "state_id: " & state_id & "<br>"
'Response.write "job_type_id: " & job_type_id & "<br>"
'Response.write "event_type_id: " & event_type_id & "<br>"
'Response.write "from_date: " & from_date & "<br>"
'Response.write "to_date: " & to_date & "<br>"
'Response.write "page_num: " & page_num & "<br>"
'order_by = "event_title DESC"
'Response.write "event_title: " & InStr(order_by, "event_title") & "<br>"
'Response.write "DESC: " & InStr(order_by, "DESC") & "<br>"
'----------------------------------------------------------------
	If order_by <> "" Then
		If InStr(order_by, "EVENTS.event_date") Then
			order_by = order_by & ", EVENTS.event_title, STATE.LONGSTATE, EventTypes.EVENT_TYPE, Positionofinterest.POSITION"
		ElseIf InStr(order_by, "EVENTS.event_title") Then
			order_by = order_by & ", EVENTS.event_date DESC, STATE.LONGSTATE, EventTypes.EVENT_TYPE, Positionofinterest.POSITION"
		ElseIf InStr(order_by, "STATE.LONGSTATE") Then
			order_by = order_by & ", EVENTS.event_date DESC, EVENTS.event_title, EventTypes.EVENT_TYPE, Positionofinterest.POSITION"
		ElseIf InStr(order_by, "EventTypes.EVENT_TYPE") Then
			order_by = order_by & ", EVENTS.event_date DESC, EVENTS.event_title, STATE.LONGSTATE, Positionofinterest.POSITION"
		ElseIf InStr(order_by, "Positionofinterest.POSITION") Then
			order_by = order_by & ", EVENTS.event_date DESC, EVENTS.event_title, STATE.LONGSTATE, EventTypes.EVENT_TYPE"
		End If
	Else
		order_by = "EVENTS.event_date DESC, EVENTS.event_title, STATE.LONGSTATE, EventTypes.EVENT_TYPE, Positionofinterest.POSITION"
	End If
'----------------------------------------------------------------
'Response.write "order_by: " & order_by & "<br>"
'----------------------------------------------------------------
	Dim number_of_events
	number_of_events = 0
	number_of_pages = 1
	Set cnnEv = OpenConnectionEx(strEventsConnection)
	Set events = getEvents(active_event, state_id, job_type_id, event_type_id, from_date, to_date, order_by, per_page, page_num, number_of_events, number_of_pages)
	If isObject(events)  Then
		If events.BOF Or  events.EOF Then
			from_record = 0
			to_record = 0
		Else
			events.MoveFirst
			from_record = events("RowNumber")
			events.MoveLast
			to_record = events("RowNumber")
		End If
	Else
		from_record = 0
		to_record = 0
	End If
'----------------------------------------------------------------
'Response.write "from_record: " & from_record & "<br>"
'Response.write "to_record: " & to_record & "<br>"
'Response.write "number_of_events: " & number_of_events & "<br>"
'Response.write "number_of_pages: " & number_of_pages & "<br>"
'Response.write "events: " & isObject(events) & "<br>"
'	If (events.BOF and events.EOF) Then
'	Else
'		events.MoveNext 
'		while not events.EOF
'Response.write "event_title: " & events("event_title") & " -  " & events("event_date") & "<br>"
'			events.MoveNext 
'		wend 
'		events.Close
'		set events=nothing
'	End If
'----------------------------------------------------------------
%> 
<html>
<head>
	<title>Bank of America : Events</title>
	<link rel="stylesheet" href="include/styles.css" type="text/css">
	<meta name="keywords" content="">
<script src="js/date.rev.js" type=text/javascript></script>
<script language="Javascript">
<!--
function checkDates()
{
	if ( document.formEvent.from_date.value == '<%=from_date_msg%>' ) document.formEvent.from_date.value = '';
	if ( document.formEvent.to_date.value == '<%=to_date_msg%>' ) document.formEvent.to_date.value = '';
}
function orderMe(order_by)
{
	document.formEvent.order_by.value=order_by;
//alert(document.formEvent.order_by.value);
	checkDates();
	document.formEvent.submit();
}
function pageNumber(page_num)
{
	document.formEvent.page_num.value=page_num;
//alert(page_num);
	checkDates();
	document.formEvent.submit();
}
function confirmDelete(id)
{
	var flg; 
	flg=confirm('WARNING!!!\nYou are about to delete an event.\n\nPlease confirm again');
	if (flg){window.location='process_event.asp?todo=Delete&id='+id;}
}

function downloadCustom(){document.customDn.submit();}

function resetMe()
{
	var f=document.formEvent;
	f.reset();
	f.myflag.value="2";
	f.submit();
}
//-->
</script>
</HEAD>
<head bgcolor="#f6f6f6" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" rightmargin="0" bottommargin="0">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
	<td align="left" valign="top" width="22"><img src="images/spacer.gif" width="22" height="1" border="0"></td>
	<td align="left" valign="top" width="100%">
		<table width="705" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
		<tr>
			<td width="10"><img src="images/spacer.gif" width="10" height="1" border="0"></td>
			<td width="685">
				<!-- content table begins -->
				<table width="685" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
				<tr><td colspan="3"><!-- #include file=include/top_nav.inc --></td></tr>
				<tr><td colspan="3"><img src="images/spacer.gif" width="20" height="15" border="0"></td></tr>
				<tr>
					<td width="20" valign="top" rowspan="2"><img src="images/spacer.gif" width="20" height="1" border="0"></td>
					<td width="485" valign="top"><img src="images/spacer.gif" width="485" height="1" border="0"></td>
					<td width="180" valign="top" rowspan="2"><img src="images/spacer.gif" width="180" height="8" border="0"><br></td>
				</tr>
				<tr>
					<td colspan="3" valign="top">
						<!--#include file="include/nav.asp"-->
						<br><br>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td valign="top" align="center" width="10"><img src="images/spacer.gif" width="10" height="1"></td>
							<td valign="top" align="left">
<form name="customDn" method="post" action="download_events.asp">
<input type="Hidden" name="state" value="<%=state_id%>">
<input type="Hidden" name="job_type" value="<%=job_type_id%>">
<input type="Hidden" name="event_type" value="<%=event_type_id%>">
<input type="Hidden" name="from_date" value="<%=from_date%>">
<input type="Hidden" name="to_date" value="<%=to_date%>">
<input type="Hidden" name="active" value="<%=active_event%>">
<input type="Hidden" name="flag" value="4F20">
</form>
								<form action="browse_events.asp" method="post" name="formEvent" onsubmit="checkDates();">
								<input type="hidden" name="active_event" value="<%=active_event%>">
								<input type="hidden" name="page_num" value="<%=page_num%>">
								<input type="hidden" name="order_by" value="<%=order_by_only%>">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td valign="top" align="left">
										<table class="selectTbl" border="0" cellspacing="0" cellpadding="0" bordercolor="#FFFF00">
										<tr>
											<td valign="top" align="left">
												<select name="state_id" class="evtxt">
													<option value="">All States</option>
													<%statesOptions(state_id)%>
												</select>
											</td>
											<td valign="top" align="left">
												<select name="job_type_id" class="evtxt">
													<option value="">All Job Types</option>
													<%jobTypeOptions(job_type_id)%>
												</select>
											</td>
											<td valign="top" align="left">
												<select name="event_type_id" class="evtxt">
													<option value="">All Event Types</option>
													<%eventTypesOptions(event_type_id)%>
												</select>
											</td>
											<td valign="top" align="left">
												<input type="checkbox" name="not_active_event" id="not_active_event" value="1"<% If active_event = 0 Then %> checked<% End If%>>Not Active
											</td>
										</tr>
										</table>
										<table class="selectTbl" border="0" cellspacing="0" cellpadding="0" width="100%">
										<tr>	
											<td valign="top" nowrap><input type="text" name="from_date" maxlength="100" size="25" class="evtxt" value="<% If from_date = "" Then %><%=from_date_msg%><% Else %><%=from_date%><%End If %>" onFocus="javascript: if(document.formEvent.from_date.value == '<%=from_date_msg%>') document.formEvent.from_date.value='';" onBlur="javascript: if(document.formEvent.from_date.value == '') document.formEvent.from_date.value='<%=from_date_msg%>';">&nbsp; <a href="javascript:show_calendar('formEvent.from_date');" onmouseover="window.status='Starting Date'; return true;" onmouseout="window.status=''; return true;"><img src="images/calendar.gif" border="0" alt="Click &amp; select a date" align="top" ></a></td>
											<td valign="top" nowrap><input type="text" name="to_date" maxlength="100" size="25" class="evtxt" value="<% If to_date = "" Then %><%=to_date_msg%><% Else %><%=to_date%><%End If %>" onFocus="javascript: if(document.formEvent.to_date.value == '<%=to_date_msg%>') document.formEvent.to_date.value='';" onBlur="javascript: if(document.formEvent.to_date.value == '') document.formEvent.to_date.value='<%=to_date_msg%>';"> &nbsp; <a href="javascript:show_calendar('formEvent.to_date');" onmouseover="window.status='Ending Date'; return true;" onmouseout="window.status=''; return true;"><img src="images/calendar.gif" border="0" alt="Click &amp; select a date" align="top" ></a></td>
											<td align="right" nowrap width="100%">
												<input type="submit" value="        Search        "   class="evtxt" id="submit1" name="submit1">
												&nbsp;&nbsp;
												<input type="button" value="        Clear        " onclick="javascript: resetMe();"  class="evtxt" id=button1 name=button1>
											</td>	
										</tr>
										</table>
										<table class="selectTbl event" border="0" cellspacing="0" cellpadding="0" width="100%">
										<tr>
											<td align="left" width="100%">
												<table class="eventTbl eventList" border="0" cellpadding="0" cellspacing="2" bordercolor="#FFFF00" width="100%">
												<tr>
													<td colspan="7" bgcolor ="<%=colr2%>" valign="middle" align="right"><font class=survtxt><B><a href="Javascript: downloadCustom();">Download All</a></B></font></td> 
												</tr>
												<tr>
													<td colspan="7" bgcolor ="<%=colr2%>" valign="middle" align="center"><font class=survtxt><B>Showing events <%=from_record%> - <%=to_record%> (from <%=number_of_events%>)</B></font></td> 
												</tr>
												<tr>
													<td colspan="7" bgcolor ="<%=colr2%>" valign="middle" align="right">
														<table class="event" border="0" cellspacing="0" cellpadding="0" width="100%">
														<tr>
														<% If number_of_pages < 2 Then %>
															<td nowrap width="100%"><hr size=1></td>
														<% Else %>
															<% If CInt(page_num) > 1 Then %><td nowrap>
																<div class="left-num" onclick="pageNumber(1);"><<</div>
															</td><% End If %>
															<td nowrap width="50%"><hr size=1></td>
															<td nowrap align="center">
																<% paging_start = page_num - paging_plus
																	If paging_start < 1 Or number_of_pages < 2*paging_plus Then paging_start = 1
																	paging_end = paging_start + 2*paging_plus
																	If paging_end > CInt(number_of_pages) Then paging_end = CInt(number_of_pages) %>
																<% If paging_start > 1 Then %><div class="left-num" onclick="pageNumber(<%=(CInt(page_num)-paging_plus)%>);">...</div><% End If %>
																<% If CInt(page_num) > 1 Then %><div class="left-num" onclick="pageNumber(<%=(page_num-1)%>);"><</div><% End If %>
																<% For p=paging_start To paging_end Step 1 %>
																<div class="<% If CInt(page_num) <> p Then %>left-num<% Else %>left-num-home<% End If %>"<% If CInt(page_num) <> p Then %> onclick="pageNumber(<%=p%>);"<% End If %>><%=(p)%></div>
																<% Next %>
																<% If CInt(page_num) < CInt(number_of_pages) Then %><div class="left-num" onclick="pageNumber(<%=(page_num+1)%>);">></div><% End If %>
																<% If paging_end < number_of_pages Then %><div class="left-num" onclick="pageNumber(<%=(page_num+paging_plus)%>);">...</div><% End If %>
															</td>
															<td nowrap width="50%"><hr size=1></td>
															<% If CInt(page_num) < CInt(number_of_pages) Then %><td nowrap>
																<div class="right-num" onclick="pageNumber(<%=number_of_pages%>);">>></div>
															</td><% End If %>
														<% End If %>
														</tr>
														</table>
													</td>
												</tr>
												<tr><%
													this_up_down = "&#x21D1;"
													this_order_by = "EVENTS.event_title"
													this_asc_desc = "DESC"
													If order_by <> "" Then
														If InStr(order_by, this_order_by& " DESC") Then
															this_up_down = "&#x21D3;"
															this_asc_desc = "ASC"
														End If
													End If
													%><th width="40%">Event Title<a href="Javascript: orderMe('<%=this_order_by&" "&this_asc_desc%>');" title="Sort <%=this_asc_desc%>"><span class="order"><%=this_up_down%></span></a></th><%
													this_up_down = "&#x21D1;"
													this_order_by = "Positionofinterest.POSITION"
													this_asc_desc = "DESC"
													If order_by <> "" Then
														If InStr(order_by, this_order_by& " DESC") Then
															this_up_down = "&#x21D3;"
															this_asc_desc = "ASC"
														End If
													End If
													%><th nowrap width="10%">Job Type<a href="Javascript: orderMe('<%=this_order_by&" "&this_asc_desc%>');" title="Sort <%=this_asc_desc%>"><span class="order"><%=this_up_down%></span></a></th><%
													this_up_down = "&#x21D1;"
													this_order_by = "STATE.LONGSTATE"
													this_asc_desc = "DESC"
													If order_by <> "" Then
														If InStr(order_by, this_order_by& " DESC") Then
															this_up_down = "&#x21D3;"
															this_asc_desc = "ASC"
														End If
													End If
													%><th nowrap width="10%">State<a href="Javascript: orderMe('<%=this_order_by&" "&this_asc_desc%>');" title="Sort <%=this_asc_desc%>"><span class="order"><%=this_up_down%></span></a></th><%
													this_up_down = "&#x21D1;"
													this_order_by = "EventTypes.EVENT_TYPE"
													this_asc_desc = "DESC"
													If order_by <> "" Then
														If InStr(order_by, this_order_by& " DESC") Then
															this_up_down = "&#x21D3;"
															this_asc_desc = "ASC"
														End If
													End If
													%><th nowrap width="10%">Event Type<a href="Javascript: orderMe('<%=this_order_by&" "&this_asc_desc%>');" title="Sort <%=this_asc_desc%>"><span class="order"><%=this_up_down%></span></a></th><%
													this_up_down = "&#x21D1;"
													this_order_by = "EVENTS.event_date"
													this_asc_desc = "DESC"
													If order_by <> "" Then
														If InStr(order_by, this_order_by& " DESC") Then
															this_up_down = "&#x21D3;"
															this_asc_desc = "ASC"
														End If
													End If
													%><th nowrap width="10%">Date<a href="Javascript: orderMe('<%=this_order_by&" "&this_asc_desc%>');" title="Sort <%=this_asc_desc%>"><span class="order"><%=this_up_down%></span></a></th>
													<th nowrap width="10%">&nbsp;</th>
													<th nowrap width="10%">&nbsp;</th>
												</tr>
												<% If isObject(events) Then
														If events.BOF Or  events.EOF Then %>
												<tr>
													<td colspan="7" valign="middle" align="center"><font class=survtxt><B><I>Sorry, currently we do not have any event that match your choices</I></B></font></td> 
												</tr>
												<%	Else
														events.MoveFirst
														v=1
														mycolor=colr2
														while not events.EOF %>
													<tr>
														<td bgcolor =<%=mycolor%>><%=events("event_title")%></td>
														<td bgcolor =<%=mycolor%>><%=events("POSITION")%></td>
														<td bgcolor =<%=mycolor%>><%=events("LONGSTATE")%></td>
														<td bgcolor =<%=mycolor%>><% If Not isNull(events("EVENT_TYPE")) Then %><%=events("EVENT_TYPE")%><% End If %></td>
														<td bgcolor =<%=mycolor%>><%=FormatDateTime(events("event_date"),2)%></td>
														<td bgcolor =<%=mycolor%>>
															<a href="event.asp?case=edit&id=<%= events("pevent")%>">Edit</a><br>
															<a href="Javascript: confirmDelete(<%= events("pevent")%>);">Delete</a><br>
															<a href="preview_event.asp?vvid=<%= events("pevent")%>" target="_blank">Preview</a>
														</td>
														<td bgcolor =<%=mycolor%>>
														<% If events("schedule") Then %>
															<a href="notify.asp?vvid=<%= events("pevent")%>">Notify</a>
															<a href="download.asp?p=<%= events("pevent")%>">Download</a>
														<% End If %>
														</td>
												</tr>
												<%		events.MoveNext 
															v=v+1
															if (v mod 2) then
																mycolor=colr2
															else 
																mycolor=colr1
															end if 
														wend 
														events.Close
														set events=nothing
														End If
													End If %>
												<tr>
													<td colspan="7" bgcolor ="<%=colr2%>" valign="middle" align="center"><font class=survtxt><B>Showing events <%=from_record%> - <%=to_record%> (from <%=number_of_events%>)</B></font></td> 
												</tr>
												<tr>
													<td colspan="7" bgcolor ="<%=colr2%>" valign="middle" align="right">
														<table class="event" border="0" cellspacing="0" cellpadding="0" width="100%">
														<tr>
														<% If number_of_pages < 2 Then %>
															<td nowrap width="100%"><hr size=1></td>
														<% Else %>
															<% If CInt(page_num) > 1 Then %><td nowrap>
																<div class="left-num" onclick="pageNumber(1);"><<</div>
															</td><% End If %>
															<td nowrap width="50%"><hr size=1></td>
															<td nowrap align="center">
																<% paging_start = page_num - paging_plus
																	If paging_start < 1 Or number_of_pages < 2*paging_plus Then paging_start = 1
																	paging_end = paging_start + 2*paging_plus
																	If paging_end > CInt(number_of_pages) Then paging_end = CInt(number_of_pages) %>
																<% If paging_start > 1 Then %><div class="left-num" onclick="pageNumber(<%=(CInt(page_num)-paging_plus)%>);">...</div><% End If %>
																<% If CInt(page_num) > 1 Then %><div class="left-num" onclick="pageNumber(<%=(page_num-1)%>);"><</div><% End If %>
																<% For p=paging_start To paging_end Step 1 %>
																<div class="<% If CInt(page_num) <> p Then %>left-num<% Else %>left-num-home<% End If %>"<% If CInt(page_num) <> p Then %> onclick="pageNumber(<%=p%>);"<% End If %>><%=(p)%></div>
																<% Next %>
																<% If CInt(page_num) < CInt(number_of_pages) Then %><div class="left-num" onclick="pageNumber(<%=(page_num+1)%>);">></div><% End If %>
																<% If paging_end < number_of_pages Then %><div class="left-num" onclick="pageNumber(<%=(page_num+paging_plus)%>);">...</div><% End If %>
															</td>
															<td nowrap width="50%"><hr size=1></td>
															<% If CInt(page_num) < CInt(number_of_pages) Then %><td nowrap>
																<div class="right-num" onclick="pageNumber(<%=number_of_pages%>);">>></div>
															</td><% End If %>
														<% End If %>
														</tr>
														</table>
													</td>
												</tr>
												</table>
											</td>
										</tr>
										</table>
									</td>
								</tr>
								</table>
								</form>
							</td>
							<td valign="top" align=center width=10><img src="images/spacer.gif" width="10" height="1"></td>
						</tr>
						</table>	
					</td>
				</tr>
				<tr><td colspan="3"><!-- #include file=include/footer.inc --></td></tr>
				</table>
<!-- content table ends -->
			</td> 
			<td width="10"><img src="images/spacer.gif" width="10" height="1" border="0"></td>
		</tr>
		</table>
	</td>
</tr>
</table>
</BODY>
</HTML>
<%Call CloseConnectionEx(cnnEv)%>