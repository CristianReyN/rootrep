<%Response.buffer=true%>
<!--#include file="include/security.asp"--> 
<!--#include file="../../Includes/adovbs.inc"-->
<!--#include file="include/events_global.asp"-->
<%
SetLocale(1033)
pevent=trim(request("p"))
if trim(pevent)="" then Response.Redirect ("admin.asp")
if not isnumeric(pevent) then Response.Redirect ("admin.asp")
call openConnection()
'if trim(pcat) <> "" then Call popFieldNames()
'id1=trim(Request("txtST"))
'id2=trim(request("txtED"))
'scrt =" "
'if (id1<>"" and id2="")  then scrt=" AND [timestamp] > '" & id1 & "' "
'if (id2<>"" and id1="")  then scrt=" AND [timestamp] < '" & id2 & "' "
'if (id1<>"" and id2<>"")  then scrt=" AND ([timestamp] > '" & id1 & "' and [timestamp] < '" & id2 & "' )"
sql="select * from vDownload where pevent=" & pevent & " "
sql=sql & " " & scrt & " order by [timestamp] "
response.ContentType="application/vnd.ms-excel"
set rs=server.createobject("adodb.recordset")
rs.open sql,cn,3,1
totalrecs=rs.recordcount

rowstart="<tr>" 
rowend="</tr>" 
cellstart="<td align=left>"
cellend="</td>"  
cellstart0="<td align=left bgcolor=""#000000""><font color=""#FFFFFF"">"  
cellend0="</font></td>" 
cellstart1="<td align=left colspan=""9"" bgcolor=""#C0C000""><font color=""#000040"">"
cellend1="</font></td>" 
response.write "<table border=1>" 
	response.write rowstart 
	response.write cellstart0 & "<b>FIRST NAME</b>" & cellend0
	response.write cellstart0 & "<b>LASTNAME</b>" & cellend0
	response.write cellstart0 & "<b>PHONE NO</b>" & cellend0
	response.write cellstart0 & "<b>E-MAIL</b>" & cellend0
	response.write cellstart0 & "<b>PASS OR FAIL</b>" & cellend0
	response.write cellstart0 & "<b>DATE SUBMITTED</b>" & cellend0
	response.write cellstart0 & "<b>RECRUITER'S EMAIL</b>" & cellend0
	response.write cellstart & "<b>CITY</b>" & cellend0
	response.write cellstart & "<b>State</b>" & cellend0
	'response.write cellstart & "<b>DATE NOTIFIED</b>" & cellend
	'response.write cellstart & "<b>NOTIFIED BY</b>" & cellend
	response.write rowend
	If not rs.eof then
		evtt=trim(rs("event_title"))
		evdt=trim(rs("event_date"))
		evbg=trim(rs("Budget"))
		while not rs.EOF
			response.write rowstart 
			response.write cellstart & trim(rs("Fname"))  & cellend
			response.write cellstart & trim(rs("lname"))  & cellend
			response.write cellstart & trim(rs("phone"))  & cellend
			response.write cellstart & trim(rs("email"))  & cellend
			response.write cellstart 
			if (rs("pass_fail")) then
				 response.write "PASS"
			else
				 response.write "FAIL"  
			end if
			response.write cellend
			response.write cellstart & trim(rs("timestamp"))  & cellend
			response.write cellstart & trim(rs("rEmail"))  & cellend
			response.write cellstart & trim(rs("city"))  & cellend
			response.write cellstart & trim(rs("state"))  & cellend
			'response.write cellstart & trim(rs("Budget"))  & cellend
	'		response.write cellstart 
	'		if (rs("EmailNotification")) then
	'			 response.write "Yes"
	'		else
	'			 response.write "No"  
	'		end if
	'		response.write cellend
	'		response.write cellstart & trim(rs("DateNotified"))  & cellend
	'		response.write cellstart & trim(rs("Notifiedby"))  & cellend
			
			response.write rowend 
			rs.MoveNext
		wend
		response.write rowstart & cellstart1 & "<b>Total records found : "  & totalrecs & "</b>"  & cellend1 & rowend
		response.write rowstart & cellstart1 & "<b>"  & evtt & " : "  & evdt & "</b>" & cellend1 & rowend
		response.write rowstart & cellstart1 & "<b>BUDGET : "   &  evbg & "</b>" & cellend1 & rowend
	else
		response.write rowstart & cellstart & "<b>No data was returned</b>" & cellend & rowend
		'response.write rowstart & cellstart & "<b>"  & evtt & " :" & evdt & "</b>" & cellend & rowend

	End If


rs.close
set rs=nothing
response.write "</table>"
call closeConnection()
%>
