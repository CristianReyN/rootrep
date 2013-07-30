<%@ Language= "VBScript" CODEPAGE=65001%>
<%
dim strURL
strURL = "https://careers.peopleclick.com/careerscp/client_expedia/external/en-us/jobDetails.do?" & request.querystring

Response.Write "redirecting to: " & strURL

'Response.Redirect strURL
%>