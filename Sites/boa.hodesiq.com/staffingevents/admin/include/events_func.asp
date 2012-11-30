<!--#include file="events_env.asp"-->
<%
function jobTypeOptions(job_type_id)
	Dim jobTypes, selected
	Set jobTypes=getJobTypes("") %>
<%
	if not (jobTypes.EOF and jobTypes.BOF) then
		while not jobTypes.EOF
			selected = ""
			if trim(job_type_id) = trim(jobTypes("PPOI")) then selected = " selected"
%>
<option value="<%=jobTypes("PPOI") %>"<%=selected%>><%= jobTypes("POSITION") %></option>
<%			jobTypes.MoveNext
		wend
	End If
end function

function getJobTypes(job_type_id)
	If trim(job_type_id) = "" Then job_type_id = 0
	If Not IsObject(cnnEv) Then Set cnnEv = OpenConnectionEx(strEventsConnection)
	Set cmd = server.CreateObject("ADODB.Command")
	cmd.ActiveConnection = cnnEv
	cmd.CommandType = adCmdStoredProc
	cmd.CommandText = "get_job_types"
		cmd.Parameters.Append cmd.CreateParameter("job_type_id",adInteger,adParamInput)
		cmd.Parameters("job_type_id") = job_type_id
	Set getJobTypes=cmd.Execute()
end function

function getJobType(job_type_id)
	Set rsJobType = getJobTypes(job_type_id)
	getJobType=rsJobType("POSITION")
	rsJobType.Close
	Set rsJobType=nothing
end function

function getJobTypeForPreview(job_type_id)
	Set rsJobType = getJobTypesForPreview(job_type_id)
	getJobTypeForPreview=rsJobType("POSITION")
	rsJobType.Close
	Set rsJobType=nothing
end function

function getJobTypesForPreview(job_type_id)
	If trim(job_type_id) = "" Then job_type_id = 0
	If Not IsObject(cnnEv) Then Set cnnEv = OpenConnectionEx(strEventsConnection)
	Set cmd = server.CreateObject("ADODB.Command")
	cmd.ActiveConnection = cnnEv
	cmd.CommandType = adCmdStoredProc
	cmd.CommandText = "get_job_types_all"
		cmd.Parameters.Append cmd.CreateParameter("job_type_id",adInteger,adParamInput)
		cmd.Parameters("job_type_id") = job_type_id
	Set getJobTypesForPreview=cmd.Execute()
end function



function eventTypesOptions(event_type_id)
	Dim eventTypes, selected
	Set eventTypes=getEventTypes("") %>
<%
	if not (eventTypes.EOF and eventTypes.BOF) then
		while not eventTypes.EOF
			selected = ""
			if trim(event_type_id) = trim(eventTypes("ETID")) then selected = " selected"
%>
<option value="<%=eventTypes("ETID") %>"<%=selected%>><%= eventTypes("EVENT_TYPE") %></option>
<%			eventTypes.MoveNext
		wend
	End If
end function

function getEventTypes(event_type_id)
	If trim(event_type_id) = "" Then event_type_id = 0
	If Not IsObject(cnnEv) Then Set cnnEv = OpenConnectionEx(strEventsConnection)
	Set cmd = server.CreateObject("ADODB.Command")
	cmd.ActiveConnection = cnnEv
	cmd.CommandType = adCmdStoredProc
	cmd.CommandText = "get_event_types"
		cmd.Parameters.Append cmd.CreateParameter("event_type_id",adInteger,adParamInput)
		cmd.Parameters("event_type_id") = event_type_id
	Set getEventTypes=cmd.Execute()
end function

function getEventType(event_type_id)
	Set rsEventType = getEventTypes(event_type_id)
	getEventType=rsEventType("EVENT_TYPE")
	rsEventType.Close
	Set rsEventType=nothing
end function

function statesOptions(state_id)
	Dim states, selected
	Set states=getStates("") %>
<%
	if not (states.EOF and states.BOF) then
		while not states.EOF
			selected = ""
			if trim(state_id) = trim(states("PSTATE")) then selected = " selected"
%>
<option value="<%=states("PSTATE") %>"<%=selected%>><%= states("LONGSTATE") %></option>
<%			states.MoveNext
		wend
	End If
end function

function countryOptions(country_id)
	Dim country, selected
	Set country=getCountries("") %>
<%
	if not (country.EOF and country.BOF) then
		while not country.EOF
			selected = ""
			if trim(country_id) = trim(country("countryID")) then selected = " selected"
%>
<option value="<%=country("CountryID") %>"<%=selected%>><%= country("Country") %></option>
<%			country.MoveNext
		wend
	End If
end function

function getStates(state_id)
	If trim(state_id) = "" Then state_id = 0
	If Not IsObject(cnnEv) Then Set cnnEv = OpenConnectionEx(strEventsConnection)
	Set cmd = server.CreateObject("ADODB.Command")
	cmd.ActiveConnection = cnnEv
	cmd.CommandType = adCmdStoredProc
	cmd.CommandText = "get_states"
		cmd.Parameters.Append cmd.CreateParameter("state_id",adInteger,adParamInput)
		cmd.Parameters("state_id") = state_id
	Set getStates=cmd.Execute()
end function

function getState(state_id, LONGSTATE)
	Set rsState = getStates(state_id)
	If LONGSTATE Then 
		getState=rsState("LONGSTATE")
	Else
		getState=rsState("STATE")
	End If
	rsState.Close
	Set rsState=nothing
end function

function getCountry(country_id)

    if trim(country_id) = "" then
        getCountry = ""
    else
	    Set rsCountry = getCountries(country_id)
	    getCountry=rsCountry("Country")
        rsCountry.Close
	    Set rsCountry=nothing
    end if
	
end function

function getCountries(country_id)
	If trim(country_id) = "" Then country_id = 0
	If Not IsObject(cnnEv) Then Set cnnEv = OpenConnectionEx(strEventsConnection)
	Set cmd = server.CreateObject("ADODB.Command")
	cmd.ActiveConnection = cnnEv
	cmd.CommandType = adCmdStoredProc
	cmd.CommandText = "get_countries"
		cmd.Parameters.Append cmd.CreateParameter("country_id",adInteger,adParamInput)
		cmd.Parameters("country_id") = country_id
	Set getCountries=cmd.Execute()
end function

function getEvent(event_id, for_)
	If trim(event_id) = "" Then event_id = 0
	If Not IsObject(cnnEv) Then Set cnnEv = OpenConnectionEx(strEventsConnection)
	If event_id = 0 And for_ = "add" Then'add
		Set cmd = server.CreateObject("ADODB.Command")
		cmd.ActiveConnection = cnnEv
		cmd.CommandType = adCmdStoredProc
		cmd.CommandText = "get_event"
			cmd.Parameters.Append cmd.CreateParameter("event_id",adInteger,adParamInput)
			cmd.Parameters("event_id") = event_id
		
		set rsEvent=server.CreateObject ("ADODB.Recordset")
		rsEvent.LockType = adLockOptimistic
		rsEvent.CursorLocation = adUseClient
		rsEvent.CursorType = adOpenDynamic
		
		rsEvent.Open cmd
		rsEvent.AddNew
		Set getEvent=rsEvent
	Else
		Set cmd = server.CreateObject("ADODB.Command")
		cmd.ActiveConnection = cnnEv
		cmd.CommandType = adCmdStoredProc
		cmd.CommandText = "get_event"
			cmd.Parameters.Append cmd.CreateParameter("event_id",adInteger,adParamInput)
			cmd.Parameters("event_id") = event_id
		
		If for_ = "update" Then'update
			set rsEvent=server.CreateObject ("ADODB.Recordset")
			rsEvent.LockType = adLockOptimistic
			rsEvent.CursorLocation = adUseClient
			rsEvent.CursorType = adOpenDynamic
			rsEvent.Open cmd
			Set getEvent=rsEvent
		Else'read
			Set getEvent=cmd.Execute()
		End If
	End If
end function

' GET EVENT LIST

function getEvents(active_event, state_id, country_id, job_type_id, event_type_id, from_date, to_date, order_by, per_page, page_num, number_of_events, number_of_pages)
	If trim(active_event) = "" Then active_event = 1
	If trim(state_id) = "" Then state_id = 0
	If trim(job_type_id) = "" Then job_type_id = 0
	If trim(event_type_id) = "" Then event_type_id = 0
	If trim(from_date) = "" Then from_date = Date
	If to_date = "" Then to_date = ""
	If Not IsObject(cnnEv) Then Set cnnEv = OpenConnectionEx(strEventsConnection)
	
	Set cmd = server.CreateObject("ADODB.Command")
	cmd.ActiveConnection = cnnEv
	cmd.CommandType = adCmdStoredProc
	cmd.CommandText = "get_events"
		cmd.Parameters.Append cmd.CreateParameter("active",adInteger,adParamInput)
			cmd.Parameters("active") = active_event
		cmd.Parameters.Append cmd.CreateParameter("state_id",adInteger,adParamInput)
			cmd.Parameters("state_id") = state_id
        cmd.Parameters.Append cmd.CreateParameter("country_id",adInteger,adParamInput)
			cmd.Parameters("country_id") = country_id
		cmd.Parameters.Append cmd.CreateParameter("job_type_id",adInteger,adParamInput)
			cmd.Parameters("job_type_id") = job_type_id
		cmd.Parameters.Append cmd.CreateParameter("event_type_id",adInteger,adParamInput)
			cmd.Parameters("event_type_id") = event_type_id
		cmd.Parameters.Append cmd.CreateParameter("from_date",adDate,adParamInput)
			cmd.Parameters("from_date") = from_date
		cmd.Parameters.Append cmd.CreateParameter("to_date",adDate,adParamInput)
			If to_date <> "" Then
				cmd.Parameters("to_date") = to_date
			Else
				cmd.Parameters("to_date") = NULL
			End If
		cmd.Parameters.Append cmd.CreateParameter("order_by",adVarchar,adParamInput, 255)
			cmd.Parameters("order_by") = NULL
		cmd.Parameters.Append cmd.CreateParameter("per_page",adInteger,adParamInput)
			cmd.Parameters("per_page") = -1
		cmd.Parameters.Append cmd.CreateParameter("page_num",adInteger,adParamInput)
			cmd.Parameters("page_num") = -1
	Set eventNumberRs=cmd.Execute()
	number_of_events = eventNumberRs("num_records") 
	number_of_pages = Int( number_of_events/per_page )
	If number_of_events/per_page > Int( number_of_events/per_page ) Then number_of_pages = number_of_pages + 1
	
	If order_by <> "" Then
		cmd.Parameters("order_by") = order_by
	Else
		cmd.Parameters("order_by") = NULL
	End If
	cmd.Parameters("per_page") = per_page
	cmd.Parameters("page_num") = page_num
	
	'Set getEvents = cmd.Execute()
	
	set rsEvents=server.CreateObject ("ADODB.Recordset")
	rsEvents.LockType = adLockOptimistic
	rsEvents.CursorLocation = adUseClient
	rsEvents.CursorType = adOpenDynamic
	rsEvents.Open cmd
	Set getEvents = rsEvents
end function


' EVENT MESSAGING

Dim error_numbers, error_prefix
error_numbers = ""
error_prefix = "STOP!! Please check following : "
function addError(errno)
	If error_numbers <> "" Then  error_numbers = error_numbers & ","
	error_numbers = error_numbers & errno
end function

function getErrorMsg(errno)
	errorMsg = ""
	select case errno
		case 1
			errorMsg = "Fail"'"Sorry!! There was an error.  Please go back and try again."
		case 2
			errorMsg = "Fail"
		case 3
			errorMsg = "Sorry!! There was an error. Please go back and try again."
		case 4
			errorMsg = "Sorry!! There was an error. Please go back and try again."
			
		case 10
			errorMsg = "Missing Event Title"
		case 11
			errorMsg = "Missing Event Start Date"
		case 12
			errorMsg = "Missing Event Start Time"
		case 13
			errorMsg = "Missing Event End Time"
		case 14
			errorMsg = "Missing State"
		case 15
			errorMsg = "Missing Event Location"
		case 16
			errorMsg = "Missing Job Area"
		case 17
			errorMsg = "Missing E-mail address"
		case 18
			errorMsg = "Please check if schedule is required"
		case 19
			errorMsg = "Missing # of Slots"
		case 20
			errorMsg = "# of Slots is invalid"
		case 21
			errorMsg = "Missing Timezone"
		case 22
			errorMsg = "Description can not be more than 1000 character"
		case 23
			errorMsg = "Missing Event Type"
		case 24
			errorMsg = "Missing Event Address"
		case 25
			errorMsg = "The pre-registration required indicator is on. Please enter the pre-registration details in the Additional information text box."
		case 26
			errorMsg = "Missing Event End Date"
		case 27
			errorMsg = "Start date is greater then End Date"
		case 28
			errorMsg = "Please check if pre-registration is required"
        case 29
			errorMsg = "Missing Country"
	end select
	getErrorMsg = errorMsg
end function

Dim message_numbers
message_numbers = ""
function addMesaage(msgno)
	If message_numbers <> "" Then  message_numbers = message_numbers & ","
	message_numbers = message_numbers & msgno
end function

function getMsg(msgno)
	msg = ""
	select case trim(msgno)
		case 1
			msg = "Event updated"
		case 2
			msg = "Event saved"
		case 3
			msg = "Event deactivated"
		case 4
			msg = "Event duplicated"
	end select
	getMsg = msg
end function

' EVENT SERVICE

dim event_title, event_date, start_time, end_time, pstate, countryID, location, ppoi, description, rEmail, active, rSlot, schedule, TimeZone, Budget
dim etid, JobDescriptionURL, EventAddress, EventAddInfo, event_end_date
event_title="" 
event_date=""
start_time=""
end_time=""
pstate=""
countryID=""
location=""
ppoi=""
description="" 
rEmail=""
active=0
rSlot=""
schedule=0
TimeZone=""
Budget=""
etid=""
JobDescriptionURL="" 
EventAddress="" 
EventAddInfo="" 
event_end_date=""
preregistration=0

Function SetEventVars()
		error_numbers = ""
		If trim(Request.Form ("ev_title")) = "" Then
			Call addError(10)
		Else
			event_title=trim(Request.Form ("ev_title"))
		End If
		If trim(Request.Form ("eventStartDate")) = "" Then
			Call addError(11)
		Else
			event_date=CDATE(trim(Request.Form ("eventStartDate")))
		End If
		If trim(Request.Form ("eventStartTime")) = "" Then
			Call addError(12)
		Else
			start_time=trim(Request.Form ("eventStartTime")) 
		End If
		If trim(Request.Form ("eventEndTime")) = "" Then
			Call addError(13)
		Else
			end_time=trim(Request.Form ("eventEndTime"))
		End If

        countryID = CINT(trim(Request.Form ("country")))

        If trim(Request.Form ("Country")) = "47" Then 'United States
               If trim(Request.Form ("State")) = "" Then
			        Call addError(14)
		        Else
			        pstate=CINT(trim(Request.Form ("State")))
		        End If
        else 
            pstate=0
        End if

        If trim(Request.Form ("State")) <> "109" Then 'Multiple States
            If trim(Request.Form ("evLocation")) = "" Then
			    Call addError(15)
		    Else
			    location=trim(Request.Form ("evLocation"))
		    End If            
            
            If trim(Request.Form ("EventAddress")) = "" Then
			    Call addError(24)
		    Else
			    EventAddress=trim(Request.Form ("EventAddress"))
		    End If     
        End if
	
		
		If trim(Request.Form ("lob")) = "" Then
			Call addError(16)
		Else
			ppoi=trim(Request.Form ("lob"))
		End If
		description=trim(Request.Form ("ev_desc"))
		If trim(Request.Form ("rEmail")) = "" Then
			Call addError(17)
		Else
			rEmail=trim(Request.Form ("rEmail"))
		End If
		
		chkEventActive=trim(Request.Form ("chkEventActive"))
		If trim(chkEventActive) <> "" Then  active=1
		
		EventAddInfo=trim(Request.Form ("EventAddInfo"))
        
		
'		chkSchedule=trim(Request.Form ("chkSchedule"))
'		If trim(chkSchedule) <> "" Then schedule=1
		rSlot=trim(Request.Form ("rSlot"))
		
'		If schedule = 0 And ( rSlot <> "" ) Then Call addError(18)
'		If schedule <> 0 And rSlot = "" Then Call addError(19)
		
		chkPreRegistration=trim(Request.Form ("chkPreRegistration"))
		If trim(chkPreRegistration) <> "" Then  preregistration=1
		If preregistration <> 0 And EventAddInfo = "" Then Call addError(25)
		'If preregistration = 0 And ( EventAddInfo <> "" ) Then Call addError(28)
		
'		If rSlot <> "" And Not IsNumeric(rSlot) Then
'			If CInt(rSlot) <> rSlot Then Call addError(20)
'		End If
		If trim(Request.Form ("tz")) = "" Then
			Call addError(21)
		Else
			TimeZone=trim(Request.Form ("tz"))
		End If
		Budget=trim(Request.Form ("rBudget"))
		If trim(Request.Form ("etid")) = "" Then
			Call addError(23)
		Else
			etid=trim(Request.Form ("etid"))
		End If
		
		JobDescriptionURL=trim(Request.Form ("JobDescriptionURL"))
		
		If trim(Request.Form ("eventEndDate")) = "" Then
			Call addError(26)
		Else
			event_end_date=CDATE(trim(Request.Form ("eventEndDate")))
		End If
		
		If event_date <> "" And event_end_date <> "" Then
			If event_end_date < event_date Then Call addError(27)
		End If
		
End Function

Function SetEventRs()
	rsEvent("event_title") = event_title
	rsEvent("event_date") = event_date
	rsEvent("start_time") = start_time
	rsEvent("end_time") = end_time
	rsEvent("pstate") = pstate
    rsEvent("countryID") = countryID
	rsEvent("location") = location
	rsEvent("ppoi") = ppoi
	rsEvent("description") = description
	rsEvent("rEmail") = rEmail
	
	If trim(rSlot)<> "" Then 
		rsEvent("rSlot") = rSlot
	else
		rsEvent("rSlot") = Null
	end if
	
	rsEvent("schedule") = schedule
	
	If trim(TimeZone)<> "" Then 
		rsEvent("TimeZone") = TimeZone
	else
		rsEvent("TimeZone") = Null
	end if
	
	If trim(Budget)<> "" Then 
		rsEvent("Budget") = Budget
	else
		rsEvent("Budget") = Null
	end if
	
	rsEvent("active") = active
	rsEvent("etid") = etid
	rsEvent("JobDescriptionURL") = JobDescriptionURL
	rsEvent("EventAddress") = EventAddress
	rsEvent("EventAddInfo") = EventAddInfo
	If trim(event_end_date)<> "" Then 
		rsEvent("event_end_date") = event_end_date
	else
		rsEvent("event_end_date") = Null
	end if
	rsEvent("preregistration") = preregistration
	
	If todo = "Save" Then rsEvent("timestamp") = Now()
	rsEvent("last_updated") = Now()
End Function

Function CopyEventRs(rsOldEvent)
	rsEvent("event_title") = rsOldEvent("event_title")
	rsEvent("event_date") = rsOldEvent("event_date")
	rsEvent("start_time") = rsOldEvent("start_time")
	rsEvent("end_time") = rsOldEvent("end_time")
	rsEvent("pstate") = rsOldEvent("pstate")
    rsEvent("countryID") = rsOldEvent("countryID")
	rsEvent("location") = rsOldEvent("location")
	rsEvent("ppoi") = rsOldEvent("ppoi")
	rsEvent("description") = rsOldEvent("description")
	rsEvent("rEmail") = rsOldEvent("rEmail")
	rsEvent("rSlot") = rsOldEvent("rSlot")
	rsEvent("schedule") = rsOldEvent("schedule")
	rsEvent("TimeZone") = rsOldEvent("TimeZone")
	rsEvent("Budget") = rsOldEvent("Budget")
	rsEvent("active") = 1
	rsEvent("etid") = rsOldEvent("etid")
	rsEvent("JobDescriptionURL") = rsOldEvent("JobDescriptionURL")
	rsEvent("EventAddress") = rsOldEvent("EventAddress")
	rsEvent("EventAddInfo") = rsOldEvent("EventAddInfo")
	rsEvent("event_end_date") = rsOldEvent("event_end_date")
	rsEvent("preregistration") = rsOldEvent("preregistration")
	rsEvent("timestamp") = Now()
	rsEvent("last_updated") = Now()
End Function
		
Function SetEventSessionVars()
		Session.Contents("event_title") = event_title
		Session.Contents("event_date") = event_date
		Session.Contents("start_time") = start_time
		Session.Contents("end_time") = end_time
		Session.Contents("pstate") = pstate
		Session.Contents("location") = location
		Session.Contents("ppoi") = ppoi
		Session.Contents("description") = description
		Session.Contents("rEmail") = rEmail
		Session.Contents("active") = active
		If trim(rSlot)<> "" Then
			Session.Contents("rSlot") = rSlot
		else
			Session.Contents("rSlot") = ""
		end if
		Session.Contents("schedule") = schedule
		If trim(TimeZone)<> "" Then
			Session.Contents("TimeZone") = TimeZone
		else
			Session.Contents("TimeZone") = ""
		end if
		
		If trim(Budget)<> "" Then
			Session.Contents("Budget") = Budget
		else
			Session.Contents("Budget") = ""
		end if
		Session.Contents("etid") = etid
		Session.Contents("JobDescriptionURL") = JobDescriptionURL
		Session.Contents("EventAddress") = EventAddress
		Session.Contents("EventAddInfo") = EventAddInfo
		Session.Contents("event_end_date") = event_end_date
		Session.Contents("preregistration") = preregistration
End Function
		
Function RemoveEventSessionVars()
		Session.Contents.Remove("event_title")
		Session.Contents.Remove("event_date")
		Session.Contents.Remove("start_time")
		Session.Contents.Remove("end_time")
		Session.Contents.Remove("pstate")
        Session.Contents.Remove("countryID")
		Session.Contents.Remove("location")
		Session.Contents.Remove("ppoi")
		Session.Contents.Remove("description")
		Session.Contents.Remove("rEmail")
		Session.Contents.Remove("active")
		Session.Contents.Remove("rSlot")
		Session.Contents.Remove("schedule")
		Session.Contents.Remove("TimeZone")
		Session.Contents.Remove("Budget")
		Session.Contents.Remove("etid")
		Session.Contents.Remove("JobDescriptionURL")
		Session.Contents.Remove("EventAddress")
		Session.Contents.Remove("EventAddInfo")
		Session.Contents.Remove("event_end_date")
		Session.Contents.Remove("preregistration")
End Function

Function printEventLeft(event_date, event_end_date, start_time, end_time, TimeZone) %>
			<div class="ev-date">
			<%=boaFormatDate(event_date)%>
			<% If trim(event_end_date) <> "" Then Response.Write "<br>through<br>"&boaFormatDate(event_end_date) %><br>
			</div><div class="clear"></div>
			<%=trim(start_time)%> - <%=trim(end_time)%>&nbsp;<%=trim(TimeZone)%>
<% End Function
Function printEventMiddle(state) %>
			<div class="ev-state"><%=state%></div>
<% End Function
Function printEventRight(event_title, job_type, event_type, preregistration, EventAddInfo, EventAddress, location, state, JobDescriptionURL) %>
			<div class="ev-title"><%=trim(event_title)%></div>
			<div class="ev-body">
			<% If trim(event_type) <> "" Then Response.Write "<b>Event Type:</b> "&trim(event_type)&"<br>" %>
			<% If trim(job_type) <> "" Then Response.Write "<b>Job Area:</b> "&trim(job_type)&"<br>" %>
			<b>Pre-registration required: </b><% If preregistration Then Response.Write "Y" Else Response.Write "N" End If %><br>
			<% If trim(EventAddInfo) <> "" Then 
                Call WriteShortLink(EventAddInfo, "Pre-registration Link") 
                End If   
             %>
			<b>Address:</b><br>
			<% If trim(EventAddress) <> "" Then Response.Write trim(EventAddress)& "<br>" %><% If trim(location) <> "" Then Response.Write trim(location)& ", " %><%=state%><br>
			<% If trim(JobDescriptionURL) <> "" Then %>
				<a href="<%=trim(JobDescriptionURL)%>" class="ev-p" target="_blank">Job Description for <%=trim(event_title)%><span class="hidden"> Link opens a new window</span></a><br>
			<% End If %>
			</div>
<% End Function

    Function WriteShortLink(strLink, strText)
        strLink = replace(trim(strLink),vbcrlf,"<br>")&"<br>"
        strLink = "<a href='" & strLink & "' target='_blank'>" & strText & "</a><br><br>"
        'Response.Write strLink
        Response.Write replace(trim(strLink),vbcrlf,"<br>")&"<br>"

    End Function


	Function boaFormatDate(da_te)
		boaFormatDate = MonthName(DatePart("m",CDate(da_te)))&"&nbsp;"&DatePart("d",CDate(da_te))&",&nbsp;"&DatePart("yyyy",CDate(da_te))
		'boaFormatDate = FormatDateTime(da_te,2)
	End Function
%>