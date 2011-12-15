<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../overview/overview.asp"
%><% Response.Buffer=True 
mpage = "feedback"
spage = ""
page_self = "../feedback/feedback_send.asp"
%>
<!-- #include file="../includes/fsend.asp" -->
<%
Response.Redirect "feedback_thanks.asp"
%>

