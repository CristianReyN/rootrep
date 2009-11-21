<%
	Dim PRG, BACK
		PRG = trim(Request("program"))
		BACK = trim(Request("back"))
	If PRG <> "" Then
		Response.Redirect(PRG)
	Else
		Response.Redirect(BACK)
	End If
%>