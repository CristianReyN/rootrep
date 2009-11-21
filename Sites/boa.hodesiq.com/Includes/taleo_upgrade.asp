<%
SetLocale(1033)
	taleo_upgrade = false
	after_taleo_upgrade = false
'If now() >= cdate("7/20/2009 00:00:00 AM") Then
If now() >= cdate("6/2/2009 00:00:00 AM") Then
	after_taleo_upgrade = true
'ElseIf now() >= cdate("7/17/2009 00:00:00 AM") Then
ElseIf now() >= cdate("6/1/2009 00:00:00 AM") Then
	taleo_upgrade = true
Else
	taleo_upgrade = false
	after_taleo_upgrade = false
End If
%>