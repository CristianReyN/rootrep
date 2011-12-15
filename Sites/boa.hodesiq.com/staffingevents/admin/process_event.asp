<% Response.Buffer=true%>
<!--#include file="include/security.asp"-->
<!--#include file="../../Includes/conn.asp"-->
<!--#include file="include/events_func.asp"-->
<%
SetLocale(1033)
Err.Clear
Set cnnEv = OpenConnectionEx(strEventsConnection)
Dim todo, rsEvent

todo=trim(Request("todo"))

select case trim(todo)
	case "Delete"
		event_id=cint(Request.QueryString("id"))
		If trim(event_id)="" Then Response.Redirect ("admin.asp")
		Set cmd = server.CreateObject("ADODB.Command")
		cmd.ActiveConnection = cnnEv
		cmd.CommandType = adCmdStoredProc
		cmd.CommandText = "deactivate_event"
		cmd.Parameters.Append cmd.CreateParameter("event_id",adInteger,adParamInput)
		cmd.Parameters("event_id") = event_id
		cmd.Execute()
		
		If Err.number <> 0 Then
			Call addError(3)
			Session("err") = error_numbers
			Response.Redirect("processed.asp")
		Else
			Call addMesaage(3)
			Session("msg") = message_numbers
			Response.Redirect("processed.asp")
		End if
	case "Copy"
		event_id=cint(Request.Form("id"))
		If trim(event_id)="" Then Response.Redirect ("admin.asp")
		'on error resume next
		Set rsOldEvent = getEvent(event_id, "read")
		'********************************************
		'Open Recordset and add
		Set rsEvent = getEvent("", "add")
		Call CopyEventRs(rsOldEvent)
		rsEvent.Update
		new_event_id = rsEvent("pevent")
		rsEvent.Close
		Set rsEvent = Nothing
		
		If Err.number <> 0 Then
			Call addError(4)
			Session("err") = error_numbers
			Response.Redirect("event.asp?case=edit&id="&event_id)
		Else
			Call addMesaage(4)
			Session("msg") = message_numbers
			Response.Redirect("event.asp?case=edit&id="&new_event_id)
		End if
	case "Update"
		event_id=cint(Request.Form("id"))
		If trim(event_id)="" Then Response.Redirect ("admin.asp")
		'on error resume next
		Call SetEventVars()
		
		If error_numbers <> "" Then
			Session("err") = error_numbers
			Call SetEventSessionVars()
			Response.Redirect("event.asp?case=edit&id="&event_id)
		End if
		'********************************************
		' Open Recordset and update
		Set rsEvent = getEvent(event_id, "update")
		Call SetEventRs()
		rsEvent.Update
		rsEvent.Close
		Set rsEvent = Nothing
		If Err.number <> 0 Then
			Call addError(1)
			Session("err") = error_numbers
			Call SetEventSessionVars()
			Response.Redirect("event.asp?case=edit&id="&event_id)
		Else
			Call addMesaage(1)
			Session("msg") = message_numbers
			Response.Redirect("event.asp?case=edit&id="&event_id)
		End if
	case "Save"
		'on error resume next
		Call SetEventVars()
		If error_numbers <> "" Then
			Session("err") = error_numbers
			Call SetEventSessionVars()
			Response.Redirect("event.asp?case=add")
		End if
		'********************************************
		'Open Recordset and add
		Set rsEvent = getEvent("", "add")
		Call SetEventRs()
		rsEvent.Update
		event_id = rsEvent("pevent")
		rsEvent.Close
		Set rsEvent = Nothing
		
		If Err.number <> 0 Then
			Call addError(2)
			Session("err") = error_numbers
			Call SetEventSessionVars()
			Response.Redirect("event.asp?case=add")
		Else
			Call addMesaage(2)
			Session("msg") = message_numbers
			Response.Redirect("event.asp?case=edit&id="&event_id)
		End if
		
	case else
		Response.Redirect ("admin.asp")

end select

Call CloseConnectionEx(cnnEv)
%>	
