
<%
Dim mypage,REFERER
mypage="admin.asp"
if trim(Request.Cookies("Bankofamerica")) <> "True" then	Response.Redirect("default.asp")


%>