<%
maintenance_from = "6/30/2011 08:00:00 PM"
maintenance_to = "7/4/2011 08:00:00 PM"

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
%>