<%
On Error Resume Next
Dim feedback
    feedback=Request("feedback")
'Send Feedback E-mail
With CreateObject("CDO.Message")
    .MimeFormatted = True
    .From = "Bank of America | Careers | Feedback <careers@opportunity.bankofamerica.com>"
    .To = "careers@bankofamerica.com"
    '.Cc = "yarutyunov@hodes.com"
    .ReplyTo = "Bank of America | Careers | Feedback <careers@opportunity.bankofamerica.com>"
    .Subject  = "Feedback"
    .HTMLBody = "<p style=""font : normal 12px/12px Arial, Helvetica, sans-serif;"">"&feedback&"</p>"
    .Send
End With
%>