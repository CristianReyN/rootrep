<%Response.Buffer=true%>
<!--#include file="include/security.asp"-->
<!--#include file="../../Includes/conn.asp"-->
<!--#include file="include/events_func.asp"-->
<%
	SetLocale(1033)
	success_message = trim(Session.Contents("msg"))
	If success_message <> "" Then
		Session.Contents.Remove("msg")
		success_message_arr = Split(success_message,",")
		For i = 0 To Ubound(success_message_arr)
			success_message_arr(i) = getMsg(success_message_arr(i))
		Next
		success_message = Join(success_message_arr, "<br>")
	End If
	
	error_message = trim(Session.Contents("err"))
	If error_message <> "" Then
		Session.Contents.Remove("err")
		error_message_arr = Split(error_message,",")
		For i = 0 To Ubound(error_message_arr)
			error_message_arr(i) = getErrorMsg(error_message_arr(i))
		Next
		error_message = Join(error_message_arr, "<br>")
	End If
%> 
<HTML>
<HEAD>
<TITLE>Bank of America : Events</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="include/styles.css" type="text/css">
<title>Anthem</title>
<META name="keywords" content="">
</HEAD>
<BODY bgcolor="#f6f6f6" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" rightmargin="0" bottommargin="0">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
<td align="left" valign="top" width="22"><IMG SRC="images/spacer.gif" WIDTH="22" HEIGHT="1" BORDER="0"></td>

<td align="left" valign="top" width="100%">
<table width="705" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
<tr><td width="10"><img src="images/spacer.gif" width="10" height="1" border="0"></td>
<td width="685">
<!-- content table begins -->
<table width="685" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
<tr><td colspan="6"><!-- #include file=include/top_nav.inc --></td></tr>
<tr><td colspan="6"><IMG SRC="images/spacer.gif" WIDTH="20" HEIGHT="15" BORDER="0"></td></tr>
<tr><td width="20" valign="top" rowspan="2"><IMG SRC="images/spacer.gif" WIDTH="20" HEIGHT="1" BORDER="0"></td>
<td width="75" valign="top" align="left"><IMG SRC="images/spacer.gif" WIDTH="75" HEIGHT="1" BORDER="0"></td>
<td width="10" valign="top"><IMG SRC="images/spacer.gif" WIDTH="10" HEIGHT="1" BORDER="0"></td>
<td width="400" valign="top"><IMG SRC="images/spacer.gif" WIDTH="400" HEIGHT="1" BORDER="0"></td>
<td width="10" valign="top" rowspan="2"><IMG SRC="images/spacer.gif" WIDTH="10" HEIGHT="1" BORDER="0"></td>
<td width="170" valign="top" rowspan="2">
<img src="images/spacer.gif" width="170" height="8" border="0"><br>
</td></tr>
<tr><td valign="top" colspan="3">
<!--#include file="include/nav.asp"-->
<br><br>
<CENTER>
<% If success_message <> "" Then %>
	<p class="msgtxt"><%=success_message %></p>
<% End If %>
<% If error_message <> "" Then %>
	<p class="evtxt"><%=error_prefix&"<br>"&error_message %></p>
<% End If %>
</CENTER>
</td></tr>
<tr><td colspan="6"><!-- #include file=include/footer.inc --></td></tr>
</table>
<!-- content table ends -->
</td> 
<td width="10"><img src="images/spacer.gif" width="10" height="1" border="0"></td></tr></table>
</td></tr></table>
</BODY>
</HTML>