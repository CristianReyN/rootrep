<%
SetLocale(1033)
	taleo_upgrade = false
	after_taleo_upgrade = false
If now() >= cdate("1/1/2020 00:00:00 AM") Then
	after_taleo_upgrade = true
ElseIf now() >= cdate("8/21/2009 05:45:00 PM") Then
	taleo_upgrade = true
Else
	taleo_upgrade = false
	after_taleo_upgrade = false
End If
%>