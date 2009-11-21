<%
On Error Resume Next
Dim feedback
    feedback=Request("feedback")
'Send Feedback E-mail
set objMail=server.CreateObject("CDO.Message")
objMail.From="careers@bankofamerica.com"
objMail.To="careers@bankofamerica.com"
objMail.Cc="yarutyunov@hodes.com"
objMail.Subject= "Bank of America | Careers | Feedback"
objMail.HTMLBody="<p style=""font : normal 12px/12px Arial, Helvetica, sans-serif;"">"&feedback&"</p>"
objMail.Send
Set objMail=Nothing
%>