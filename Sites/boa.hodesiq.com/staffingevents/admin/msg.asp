<%Response.Buffer=true
if (session.Contents ("login")<>1) then Response.Redirect ("Default.asp")
SetLocale(1033)
dim msg
em		=	Request.QueryString ("em")
if em = 1 then 
	msg = "Sorry!! There was an error.  Please go back and try again."
else
	msg = "Success!! Your request has been processed.<br><br><a href=""admin.asp"">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<A HREF=logout.asp>Logout</A>" 
end if 
'msg		=	Request.QueryString ("em")
emNo	=	Request.QueryString ("emNo")

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

<tr><td valign="top" colspan="3"><br>
<CENTER>
<%response.write("<br><br><p class=""evtxt"">" & msg & "</p>")%>
</td></tr>
<tr><td colspan="6"><!-- #include file=include/footer.inc --></td></tr>
</table>
<!-- content table ends -->

</td> 
<td width="10"><img src="images/spacer.gif" width="10" height="1" border="0"></td></tr></table>
</td></tr></table>
</BODY>
</HTML>