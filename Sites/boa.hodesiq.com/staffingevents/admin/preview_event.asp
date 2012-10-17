<% Response.Buffer=true %>
<!--#include file="include/security.asp"-->
<!--#include file="../../Includes/conn.asp"-->
<!--#include file="include/events_func.asp"-->
<%
	SetLocale(1033)
	Set cnnEv = OpenConnectionEx(strEventsConnection)

    dim country

	myid=Request("vvid")
	If myid="" Then Response.Redirect("admin.asp")
	If myid="0" Then
		Call SetEventVars()
		job_type=getJobType(ppoi)

        if pstate <> 0 then
		    state=getState(pstate, true)
        else
            state = ""
        end if

        country=getCountry(Request("country"))

		If CDate(event_date) > CDate("2011-11-11") Then event_type=getEventType(etid)
	Else
		Set rsEvent = getEvent(myid, "read")
		
		event_title=trim(rsEvent("event_title"))
		event_date=FormatDateTime(trim(rsEvent("event_date")),2)
		start_time=trim(rsEvent("start_time"))
		end_time=trim(rsEvent("end_time"))
		pstate=CINT(trim(rsEvent("pstate")))

        if pstate <> 0 then
		    state=getState(trim(rsEvent("pstate")), true)
        else
            state = ""
        end if

        country=getCountry(trim(rsEvent("countryID")))
		location=trim(rsEvent("location"))
		ppoi = rsEvent("ppoi")
		 job_type=getJobTypeForPreview(ppoi)
		description=trim(rsEvent("description"))
		rEmail = trim(rsEvent("rEmail"))
		schedule=rsEvent("schedule")
		rSlot = trim(rsEvent("rSlot"))
		TimeZone = trim(rsEvent("TimeZone"))
		Budget=trim(rsEvent("budget"))
		
		If CDate(rsEvent("event_date")) > CDate("2011-11-11") Then
			event_end_date=FormatDateTime(trim(rsEvent("event_end_date")),2)
			preregistration=rsEvent("preregistration")
			EventAddInfo = trim(rsEvent("EventAddInfo"))
			etid=trim(rsEvent("etid"))
			event_type=getEventType(rsEvent("etid"))
			JobDescriptionURL=trim(rsEvent("JobDescriptionURL"))
			EventAddress=trim(rsEvent("EventAddress"))
		End If
		
		rsEvent.Close
		Set rsEvent=nothing
	End If
	Call CloseConnectionEx(cnnEv)
%>
<HTML>
<HEAD>
<link rel="stylesheet" href="include/styles.css" type="text/css">
<link rel="stylesheet" href="include/event.css" type="text/css">
<title>Bank of America</title>
<META name="keywords" content="">
</HEAD>
<BODY bgcolor="#f6f6f6" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" rightmargin="0" bottommargin="0">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
<td align="left" valign="top" width="22"><img src="images/spacer.gif" width="22" height="1" border="0"></td>
<td align="left" valign="top" width="100%">
<table width="705" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
<tr><td width="10"><img src="images/spacer.gif" width="10" height="1" border="0"></td>
<td width="685">
<!-- content table begins -->
<table width="685" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
<tr><td colspan="6"><!-- #include file=include/top_nav.inc --></td></tr>
<tr><td colspan="6"><img src="images/spacer.gif" width="20" height="15" border="0"></td></tr>
<tr><td width="20" valign="top" rowspan="2"><img src="images/spacer.gif" width="20" height="1" border="0"></td>
<td width="75" valign="top" align="left"><img src="images/spacer.gif" width="75" height="1" border="0"></td>
<td width="10" valign="top"><img src="images/spacer.gif" width="10" height="1" border="0"></td>
<td width="400" valign="top"><img src="images/spacer.gif" width="400" height="1" border="0"></td>
<td width="10" valign="top" rowspan="2"><img src="images/spacer.gif" width="10" height="1" border="0"></td>
<td width="170" valign="top" rowspan="2">
<img src="images/spacer.gif" width="170" height="8" border="0"><br>
</td></tr>
<tr><td valign="top" colspan="3"><img src="images/spacer.gif" border="0">
	<table cellpadding="0" cellspacing="0" border="0">
		<tr><td width="450"><img src="images/spacer.gif" width="450" height="20" border="0"></td></tr>
		<tr><td valign="top" width="578">
		<% If CDate(event_date) > CDate("2011-11-11") Then %>

<table class="event" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td colspan="4" valign="middle" align="right" class="event-paging">
		<table class="event-paging" border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td nowrap align="left">
				<div class="rec-num">1 - 1 of 1</div>
			</td>

			
		</tr>
		</table>
	</td>
</tr>
<tr><th nowrap width="33%"><a href="Javascript: function(){};" title="Sort ASC" class="ev-b">Date</a><a href="Javascript: function(){};" title="Sort ASC"><div class="order"><img src="../../images/spacer.gif" alt="Sort ASC" width="7" height="6" border="0"></div></a></th>
<th nowrap width="33%"><a href="Javascript: function(){};" title="Sort DESC" class="ev-b">Country<a></a><a href="Javascript: function(){};" title="Sort DESC" class=""><div class="order"><img src="../../images/spacer.gif" alt="Sort DESC" width="7" height="6" border="0"></div></a></th>
<th nowrap width="33%"><a href="Javascript: function(){};" title="Sort DESC" class="ev-b">State<a></a><a href="Javascript: function(){};" title="Sort DESC" class=""><div class="order"><img src="../../images/spacer.gif" alt="Sort DESC" width="7" height="6" border="0"></div></a></th>
	<th nowrap width="33%">&nbsp;</th>
</tr>
<tr class="ev-last">
		<td nowrap>
			<% Call printEventLeft(event_date, event_end_date, start_time, end_time, TimeZone) %>
		</td>
        <td nowrap>
			<div class="ev-state"><%=country%></div>
		</td>
		<td nowrap><% Call printEventMiddle(state) %></td>
		<td>
			<% Call printEventRight(event_title, job_type, event_type, preregistration, EventAddInfo, EventAddress, location, state, JobDescriptionURL) %>
		</td>
</tr>
<tr>
	<td colspan="4" valign="middle" align="right" class="event-paging">
		<table class="event-paging" border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td nowrap align="left">
				<div class="rec-num">1 - 1 of 1</div>

			</td>
			
		</tr>
		</table>
	</td>
</tr>
</table>

		<% Else %>
			<p>
				<b><%=trim(event_title)%></b>
				<br>
				<%=event_date%>
				<br>
				<%=start_time%> - <%=end_time%>
				<br>
				<% If trim(job_type) <> "" Then Response.Write "<b>Job Type:</b> "&trim(job_type)&"<br>" %>
				<% If trim(location) <> "" Then Response.Write trim(location)& ", " %>
				<%=state%>
				<br><br>
				<% If trim(description) <> "" Then  Response.Write replace(trim(description),vbcrlf,"<br>") %>
				<br><br>
				<% If trim(Budget) <> "" Then %><B>BUDGET: <%=Budget%></b><% End If %>
				<br><br>
			</p>
		<% End If %>
		</td></tr>
		<tr><td width=450><img src="images/spacer.gif" width="450" height="20" border="0"></td></tr>
	</table>
<br><br>
<a href="Javascript:window.close();"><img src="images/close.gif" border="0"></a>
</td></tr>
<tr><td colspan="6"><!-- #include file=include/footer.inc --></td></tr>
</table>
<!-- content table ends -->
</td> 
<td width="10"><img src="images/spacer.gif" width="10" height="1" border="0"></td></tr></table>
</td></tr></table>
</HTML>
