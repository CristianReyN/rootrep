<%
maintenance_from = "6/30/2011 00:00:00 AM"
maintenance_to = "7/5/2011 00:00:00 AM"

'REMOVE AFTER TESTING
Set fs=Server.CreateObject("Scripting.FileSystemObject")
if fs.FileExists(Server.MapPath("../taleofrom.txt"))=true then
	Set f=fs.OpenTextFile(Server.MapPath("../taleofrom.txt"), 1)
	day_from = f.ReadAll
	f.Close
	Set f=Nothing
	maintenance_from = "6/"&day_from&"/2011 00:00:00 AM"
end if
if fs.FileExists(Server.MapPath("../taleoto.txt"))=true then
	Set f=fs.OpenTextFile(Server.MapPath("../taleoto.txt"), 1)
	day_to = f.ReadAll
	f.Close
	Set f=Nothing
	maintenance_to = "6/"&day_to&"/2011 00:00:00 AM"
end if
Set fs=Nothing
'Response.write "maintenance_from: " & maintenance_from & "<br>"
'Response.write "maintenance_to: " & maintenance_to & "<br>"
'REMOVE AFTER TESTING


SetLocale(1033)
	taleo_upgrade = false
	after_taleo_upgrade = false
If now() >= cdate(maintenance_to) Then
	after_taleo_upgrade = true
ElseIf now() >= cdate(maintenance_from) Then
	taleo_upgrade = true
Else
	taleo_upgrade = false
	after_taleo_upgrade = false
End If
'Response.write "taleo_upgrade: " & taleo_upgrade & "<br>"
'Response.write "after_taleo_upgrade: " & after_taleo_upgrade & "<br>"
%>