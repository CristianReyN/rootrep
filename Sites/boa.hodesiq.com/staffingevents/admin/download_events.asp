<%Response.buffer=true%>
<!--#include file="include/security.asp"-->
<!--#include file="../../Includes/conn.asp"-->
<!--#include file="include/events_func.asp"-->
<%
SetLocale(1033)
myflag=trim(Request.Form("myflag"))
'if (myflag <> "4F20") then Response.Redirect ("admin.asp") 
state_id=trim(Request.Form("state"))
job_type_id = trim(Request.Form("job_type"))
event_type_id = trim(Request.Form("event_type"))
from_date=trim(Request.Form("from_date"))
to_date=trim(request.Form("to_date"))
active=trim(request.Form("active"))
If active = "" Or CStr(active) = "1" Then
	active = 1
	activeValue = "Yes"
Else
	active = 0
	activeValue = "No"
End If

if isdate(from_date) then 
	from_date = from_date
else
	from_date=""
end if	
if isdate(to_date) then 
	to_date = to_date
else
	to_date=""
end if	
if from_date="Starting Date: (mm/dd/yyyy)" then from_date=""
if to_date="Ending Date: (mm/dd/yyyy)" then to_date=""

scrt =" "
if (from_date<>"" and to_date="")  then scrt=" AND [event_date] >= '" & from_date & "' "
if (to_date<>"" and from_date="")  then scrt=" AND [event_date] <= '" & to_date & "' "
if (from_date<>"" and to_date<>"")  then scrt=" AND ([event_date] >= '" & from_date & "' and [event_date] =< '" & to_date & "' )"

sqldat="select * from vspDownload where active=" & active &  " "	
if state_id <> "" And CStr(state_id) <> "0" then sqldat=sqldat & " AND pState=" & state_id &  " "
if job_type_id <> "" And CStr(job_type_id) <> "0" then sqldat=sqldat & " AND ppoi=" & job_type_id &  " "
if event_type_id <> "" And CStr(event_type_id) <> "0" then sqldat=sqldat & " AND etid=" & event_type_id &  " "
sqldat=sqldat &   scrt & " order by event_date DESC, pevent"

Set cnnEv = OpenConnectionEx(strEventsConnection)

if job_type_id = "" Or CStr(job_type_id) = "0" then
	job_type = "All"
Else
	job_type=getJobType(job_type_id)
End If

if event_type_id = "" Or CStr(event_type_id) = "0" then
	event_type = "All"
Else
	event_type=getEventType(event_type_id)
End If

if state_id = "" Or CStr(state_id) = "0" then
	stateValue = "All"
Else
	stateValue=getState(state_id, false)
End If

sql=sqldat

response.ContentType="application/vnd.ms-excel"
set rs=server.createobject("adodb.recordset")
rs.open sql,cnnEv,3,1
totalrecs=rs.recordcount
rowstart="<tr>" 
rowend="</tr>" 
cellstart="<td align=left valign=top  style=""FONT-WEIGHT: normal;FONT-SIZE: 10px; COLOR: #3029c5; FONT-STYLE: normal;FONT-FAMILY: Verdana,Arial, Helvetica, sans-serif"">"
cellend="</font></td>"  
cellstart0="<td align=left bgcolor=""#000000""><font color=""#FFFFFF"">"  
cellend0="</font></td>" 
cellstart1="<td align=left colspan=""7"" bgcolor=""#C0C000""><font color=""#000040"">"
cellend1="</font></td>"
cellstart2="<td align=left width=""5"" bgcolor=""#C0C000""><font color=""#000040"">"
cellend2="</font></td>" 
MST="FONT-WEIGHT: Bold;FONT-SIZE: 11px; COLOR: #000080; FONT-FAMILY: Verdana,Arial, Helvetica, sans-serif;"
response.write "<table border=1>" 
	response.write rowstart 
	response.write cellstart0 & "<b>Event Date</b>" & cellend0
	response.write cellstart0 & "<b>Event Title</b>" & cellend0
	response.write cellstart0 & "<b>State</b>" & cellend0
	response.write cellstart0 & "<b>Job Type</b>" & cellend0
	response.write cellstart0 & "<b>Event Type</b>" & cellend0
	response.write cellstart0 & "<b>Budget</b>" & cellend0
	response.write cellstart0 & "<b>Recruiter</b>" & cellend0
	response.write cellstart0 & "<b>PASSED SUBMITTALS</b>" & cellend0
	response.write cellstart0 & "<b>FAILED SUBMITTALS</b>" & cellend0
	response.write rowend
	If not rs.eof then
		oldEv=""
		evtt=trim(rs("event_title"))
		evdt=trim(rs("event_date"))
		evbg=trim(rs("Budget"))
		while not rs.EOF
			response.write rowstart 
				response.write cellstart & trim(rs("event_date")) &  cellend
				response.write cellstart & trim(rs("event_title"))  & cellend
				response.write cellstart & trim(rs("state"))  & cellend
				response.write cellstart & trim(rs("position"))  & cellend
				response.write cellstart & trim(rs("event_type"))  & cellend
				response.write cellstart & trim(rs("budget"))  & cellend
				response.write cellstart & trim(rs("rEmail"))  & cellend
				response.write cellstart & trim(rs("pass"))  & cellend
				response.write cellstart & trim(rs("fail"))  & cellend
			response.write rowend 
			rs.MoveNext
		wend
	else
		response.write rowstart & cellstart & "<b>No data was returned</b>" & cellend & rowend
	End If

rs.close
set rs=nothing
response.write rowstart 
	response.write "<td bgcolor=""#F0F000"" COLSPAN=9 align=left valign=top STYLE=""" & MST & """>"
	response.write "SEARCH CRITERIA: "
	response.write "</TD>"
	response.write rowend
	response.write rowstart 
	response.write "<td bgcolor=""#F0F000""  COLSPAN=9 align=left valign=top STYLE=""" & MST & """>"
	response.write "STATE: " & stateValue & "<BR>"
	response.write "</TD>"
	response.write rowend
	response.write rowstart 
	response.write "<td bgcolor=""#F0F000""  COLSPAN=9 align=left valign=top STYLE=""" & MST & """>"
	response.write "JOB TYPE: " & job_type & "<BR>"
	response.write "</TD>"
	response.write rowend
	response.write rowstart 
	response.write "<td bgcolor=""#F0F000""  COLSPAN=9 align=left valign=top STYLE=""" & MST & """>"
	response.write "EVENT TYPE: " & event_type & "<BR>"
	response.write "</TD>"
	response.write rowend
	response.write rowstart 
	response.write "<td  bgcolor=""#F0F000"" COLSPAN=9 align=left valign=top STYLE=""" & MST & """>"
	response.write "START DATE: " & from_date & "<BR>"
	response.write "</TD>"
	response.write rowend
	response.write rowstart 
	response.write "<td bgcolor=""#F0F000""  COLSPAN=9 align=left valign=top STYLE=""" & MST & """>"
	response.write "END DATE: " & to_date & "<BR>"
	response.write "</TD>"
	response.write rowend
	response.write rowstart 
	response.write "<td bgcolor=""#F0F000""  COLSPAN=9 align=left valign=top STYLE=""" & MST & """>"
	response.write "ACTIVE: " & activeValue & "<BR>"
	response.write "</TD>"
	response.write rowend
response.write "</table>"
Call CloseConnectionEx(cnnEv)
%>
