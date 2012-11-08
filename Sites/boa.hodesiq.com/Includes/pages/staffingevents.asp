<!--#include file="../../staffingevents/admin/include/events_func.asp"-->
<%
SetLocale(1033)
'Set cnnEv = OpenConnectionEx(strEventsConnection)
'Response.write "ServerName: " & ServerName & "<br>"
'Response.write "strConnection: " & strEventsConnection & "<br>"
Dim active_event, state_id, job_type_id, event_type_id, from_date, to_date, order_by, order_by_only, per_page, page_num, number_of_pages, paging_plus, sort_flag
	per_page = 6
	paging_plus = 5
	active_event = 1
	state_id=Request("state_id")
		If state_id = "" Then state_id = 0
	job_type_id=Request("job_type_id")
		If job_type_id = "" Then job_type_id = 0
	event_type_id=Request("event_type_id")
		If event_type_id = "" Then event_type_id = 0
	from_date = Date
    from_date = "2005-11-26 00:00:00"
	to_date = ""
	order_by=Request("order_by")
	order_by_only=Request("order_by")
	page_num=Request("page_num")
		If page_num = "" Then page_num = 1
	sort_flag=Request("sort_flag")
		If sort_flag = "" Then sort_flag = "new"
		If sort_flag = "new" Then page_num = 1
'----------------------------------------------------------------
'Response.write "order_by_only: " & order_by_only & "<br>"
	If order_by <> "" Then
		If InStr(order_by, "EVENTS.event_date") Then
			order_by = order_by & ", STATE.LONGSTATE, EVENTS.event_title, EventTypes.EVENT_TYPE, Positionofinterest.POSITION"
		ElseIf InStr(order_by, "STATE.LONGSTATE") Then
			order_by = order_by & ", EVENTS.event_date, EVENTS.event_title, EventTypes.EVENT_TYPE, Positionofinterest.POSITION"
		End If
	Else
		order_by = "EVENTS.event_date, STATE.LONGSTATE, EVENTS.event_title, EventTypes.EVENT_TYPE, Positionofinterest.POSITION"
		order_by_only = "EVENTS.event_date"
	End If
'----------------------------------------------------------------
	Dim number_of_events
	number_of_events = 0
	number_of_pages = 1
	Set cnnEv = OpenConnectionEx(strEventsConnection)
	Set events = getEvents(active_event, state_id, 0, job_type_id, event_type_id, from_date, to_date, order_by, per_page, page_num, number_of_events, number_of_pages)
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
%>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top">
<img src="../images/careerevents.jpg" width="578" height="166" alt="Career Events. Explore a career with the Bank of Opportunity." title="Career Events. Explore a career with the Bank of Opportunity." border="0">
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<img src="../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<a name="skipmaincontent"></a><H1 class="hidden">Career Events</H1>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="578" height="100%" valign="top" style="padding: 0px <%=right_margin%>px 0px <%=left_margin_0%>px;">
<div id="L101" style="position: relative; z-index: 12;">
<p>
Why will you choose a career with Bank of America? Find out the answer by attending an Open House upcoming event near you. To see when we're coming to your area, choose your state and the job area of position you're looking for, and select Search. Refer to this site frequently for more information and updates.
</p>
<script language="Javascript">
<!--
function orderMe(order_by)
{
	document.formEvent.order_by.value=order_by;
	document.formEvent.sort_flag.value="new";
	document.formEvent.submit();
}
function filterMe()
{
	document.formEvent.submit();
}
function pageNumber(page_num)
{
	document.formEvent.page_num.value=page_num;
	document.formEvent.submit();
}
//-->
</script>
<div class="ev-wrap-tl"><div class="ev-wrap-tr"><div class="ev-wrap-bl"><div class="ev-wrap-br">
<form style="margin: 0px;" name="formEvent" method="post" action="staffingevents.asp">
<input type="hidden" name="active_event" value="<%=active_event%>">
<input type="hidden" name="page_num" value="<%=page_num%>">
<input type="hidden" name="order_by" value="<%=order_by_only%>">
<input type="hidden" name="sort_flag" value="existing">
<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td nowrap style="padding: 0px 18px 0px 0px;">
<label for="event_type_id" class="p" style="margin: 0px;"><b>Event Type:</b></label><br>
	</td>
	<td width="100%" style="padding: 0px 0px 0px 0px;">
<select name="event_type_id" id="event_type_id" title="Select an event type" style="width: 60%;" onchange="filterMe();">
	<option value="">All Events Types</option>
	<%=eventTypesOptions(event_type_id)%>
</select>
	</td>
</tr>
<tr>
	<td nowrap style="padding: 0px 18px 0px 0px;">
<label for="job_type_id" id="job_type_id" class="p" style="margin: 0px;"><b>Job Area:</b></label><br>
	</td>
	<td width="100%" style="padding: 0px 0px 0px 0px;">
<select name="job_type_id" id="job_type_id" title="Select a job area" style="width: 60%;" onchange="filterMe();">
	<option value="">All Job Areas</option>
	<%=jobTypeOptions(job_type_id)%>
</select>
	</td>
</tr>
</table>
</form>
<%If isObject(events) Then
	If events.BOF Or events.EOF Then %>
<p class="event">Sorry, currently we do not have any event that match your choices</p>
<%	Else %>
<table class="event" border="0" cellpadding="0" cellspacing="0" width="100%" summary=””>
<tr>
	<td valign="top" align="right" class="event-paging">
		<table class="event-paging" border="0" cellspacing="0" cellpadding="0" width="100%" summary=”">
		<tr>
			<td nowrap align="left">
				<div class="rec-num"><%=from_record%> - <%=to_record%> of <%=number_of_events%></div>
			</td>
			<% If number_of_pages > 1 Then %>
			<td nowrap align="right">
				<% If CInt(page_num) > 1 Then %><div class="left-num"><a href="Javascript: pageNumber(<%=(page_num-1)%>);" title="Previous page" class="ev-b">Previous Page</a></div><% End If %>
				<div class="page-num">Page <%=page_num%> of <%=number_of_pages%></div>
				<% If CInt(page_num) < CInt(number_of_pages) Then %><div class="left-num"><a href="Javascript: pageNumber(<%=(page_num+1)%>);" title="Next page" class="ev-b">Next Page</a></div><% End If %>
			</td>
			<% End If %>
		</tr>
		</table>
	</td>
</tr>
</table>
<script language="JavaScript">
jQuery(document).ready(function(){
	$('.event a').each(function(index) {
		var a = $(this), aa = $(this).get(0);
		if ( aa.className == "" ) a.addClass("ev-p");
	});
 });
</script>
<table class="event" border="0" cellpadding="0" cellspacing="0" width="100%" summary="This table lists events. The first column lists the date, the second column lists the location and the third column has details on the event." style="margin-top: 0px;">
<tr><%
	this_up_down_cls = ""
	arr_img_alt = ""
	arr_img_title = ""
	a_title = "Sort by date in either ascending or descending order"
	this_order_by = "EVENTS.event_date"
	this_asc_desc = "ASC"
	If InStr(order_by_only, this_order_by) Then
		If InStr(order_by_only, "DESC") Then
			this_asc_desc = "ASC"
			this_up_down_cls = " arrDn"
			arr_img_alt = "Dates sorted in descending order"
			arr_img_title = "Dates sorted in descending order"
		Else
			this_asc_desc = "DESC"
			this_up_down_cls = " arrUp"
			arr_img_alt = "Dates sorted in ascending order"
			arr_img_title = "Dates sorted in ascending order"
		End If
	End If
	this_up_down_img = "<img src=""../images/spacer.gif"" alt="""&arr_img_alt&""" title="""&arr_img_title&""" width=""7"" height=""5"" border=""0"">"
	%><th nowrap width="13%" scope=”col”><a href="Javascript: orderMe('<%=this_order_by&" "&this_asc_desc%>');" title="<%=a_title%>" class="ev-b">Date</a><div class="order<%=this_up_down_cls%>"><%=this_up_down_img%></div></th>
    
    <%
	this_up_down_cls = ""
	arr_img_alt = ""
	arr_img_title = ""
	a_title = "Sort by country in either ascending or descending order"
	this_order_by = "Country"
	this_asc_desc = "ASC"
	If InStr(order_by_only, this_order_by) Then
		If InStr(order_by_only, "DESC") Then
			this_asc_desc = "ASC"
			this_up_down_cls = " arrDn"
			arr_img_alt = "Country sorted in descending order"
			arr_img_title = "Country sorted in descending order"
		Else
			this_asc_desc = "DESC"
			this_up_down_cls = " arrUp"
			arr_img_alt = "Country sorted in ascending order"
			arr_img_title = "Country sorted in ascending order"
		End If
	End If
	this_up_down_img = "<img src=""../images/spacer.gif"" alt="""&arr_img_alt&""" title="""&arr_img_title&""" width=""7"" height=""5"" border=""0"">"
	%>
    <th nowrap width="23%" scope=”col”><a href="Javascript: orderMe('<%=this_order_by&" "&this_asc_desc%>');" title="<%=a_title%>" class="ev-b">Country</a><div class="order<%=this_up_down_cls%>"><%=this_up_down_img%></div></th>
    
    <%
	this_up_down_cls = ""
	arr_img_alt = ""
	arr_img_title = ""
	a_title = "Sort by state in either ascending or descending order"
	this_order_by = "STATE.LONGSTATE"
	this_asc_desc = "ASC"
	If InStr(order_by_only, this_order_by) Then
		If InStr(order_by_only, "DESC") Then
			this_asc_desc = "ASC"
			this_up_down_cls = " arrDn"
			arr_img_alt = "States sorted in descending order"
			arr_img_title = "States sorted in descending order"
		Else
			this_asc_desc = "DESC"
			this_up_down_cls = " arrUp"
			arr_img_alt = "States sorted in ascending order"
			arr_img_title = "States sorted in ascending order"
		End If
	End If
	this_up_down_img = "<img src=""../images/spacer.gif"" alt="""&arr_img_alt&""" title="""&arr_img_title&""" width=""7"" height=""5"" border=""0"">"
	%>
    <th nowrap width="33%" scope=”col”><a href="Javascript: orderMe('<%=this_order_by&" "&this_asc_desc%>');" title="<%=a_title%>" class="ev-b">State</a><div class="order<%=this_up_down_cls%>"><%=this_up_down_img%></div></th>
    

	<th nowrap width="33%" scope=”col”><p class="ev-b">Event</p></th>
</tr>
<%		events.MoveFirst
		r = 1
		while not events.EOF %>
<tr<% If r = events.RecordCount Then %> class="ev-last"<% End If%>>
		<td nowrap>
			<% Call printEventLeft(events("event_date"), events("event_end_date"), events("start_time"), events("end_time"), events("TimeZone")) %>
		</td>
        <td nowrap>
			<div class="ev-state"><%=events("Country")%></div>
		</td>
		<td nowrap><% Call printEventMiddle(events("LONGSTATE")) %></td>
		<td>
			<% Call printEventRight(events("event_title"), events("POSITION"), events("EVENT_TYPE"), events("preregistration"), events("EventAddInfo"), events("EventAddress"), events("location"), events("LONGSTATE"), events("JobDescriptionURL")) %>
		</td>
</tr>
<%		events.MoveNext
			r = r + 1
		wend 
		events.Close
		set events=nothing %>
</table>
<table class="event" border="0" cellpadding="0" cellspacing="0" width="100%" summary="" style="margin-top: 0px;">
<tr>
	<td valign="top" align="right" class="event-paging">
		<table class="event-paging" border="0" cellspacing="0" cellpadding="0" width="100%" summary="">
		<tr>
			<td nowrap align="left">
				<div class="rec-num"><%=from_record%> - <%=to_record%> of <%=number_of_events%></div>
			</td>
			<% If number_of_pages > 1 Then %>
			<td nowrap align="right">
				<% If CInt(page_num) > 1 Then %><div class="left-num"><a href="Javascript: pageNumber(<%=(page_num-1)%>);" title="Previous page" class="ev-b">Previous Page</a></div><% End If %>
				<div class="page-num">Page <%=page_num%> of <%=number_of_pages%></div>
				<% If CInt(page_num) < CInt(number_of_pages) Then %><div class="left-num"><a href="Javascript: pageNumber(<%=(page_num+1)%>);" title="Next page" class="ev-b">Next Page</a></div><% End If %>
			</td>
			<% End If %>
		</tr>
		</table>
	</td>
</tr>
</table>
<%	End If
End If %>
</div></div></div></div>
</div>
<br><br>
				</td>
			</tr>
		</table>
<% Call CloseConnectionEx(cnnEv)%>