<%
maintenance_from = "3/21/2012 06:00:00 PM"
maintenance_to = "3/26/2012 10:00:00 PM"

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