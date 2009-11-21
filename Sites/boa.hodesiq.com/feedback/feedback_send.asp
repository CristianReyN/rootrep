<% Response.Buffer=True 
mpage = "feedback_send"
spage = ""
page_self = "../feedback/feedback_send.asp"
%>
<!-- #include file="../includes/fsend.asp" -->
<%
Response.Redirect "feedback_thanks.asp"
%>

