<%
SetLocale(1033)
Dim taleo_upgrade
If now() >= cdate("5/26/2009 00:00:00 AM") And now() < cdate("7/20/2009 00:00:00 AM") Then
	taleo_upgrade = true
Else
	taleo_upgrade = false
End If
%>