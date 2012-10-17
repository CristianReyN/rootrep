<%Response.Buffer=true%>
<!--#include file="../../Includes/adovbs.inc"-->
<!--#include file="include/events_global.asp"-->
<!--#include file="password.asp"-->
<HTML>
<HEAD>
<%
SetLocale(1033)
uid=Request.Form ("uid")
pwd=Request.Form ("pwd")
em=""
em2=""
if (trim(uid) <> "" and trim(pwd)<> "") then 
	if (trim(uid)=trim(myuid) AND trim(pwd)=trim(mypassword)) then
		Response.Cookies("Bankofamerica").Expires=date+1
		Response.Cookies("BankofAmerica")=true
		
		Response.Redirect("admin.asp")
	else
		if (trim(uid)<> trim(myuid)or trim(pwd)<> trim(mypassword))  then 
			em=em & "<br>Invalid USERID or PASSWORD<br>UserId and Password are case sensitive.<hr><br><br>"
			em2="<br><br>Note: The current process has been changed.  Please contact Teresa LeBlanc (teresa.leblanc@bankofamerica.com) for a request for site/calendar access."
		end if
	end if
end if 	
Response.Write Request.Cookies("Bankofamerica")
if trim(Request.Cookies("Bankofamerica")) ="True"  then response.Redirect("admin.asp")
%>
<title><%=title%></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript">
<!--

function ResetForm(){
var f=document.bkForm;
f.uid.value="";
f.pwd.value="";
f.submit();
}
//-->
</script>




<link rel="stylesheet" href="include/styles.css" type="text/css">
<title>Bank of America</title>
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
<form action="default.asp" method="POST" name="bkForm">
<center><table border="0" cellpadding="5" cellspacing="0"  width="100%">
	<tr>
		<td align="center">
			<table border="0" cellpadding="0" cellspacing="5" bordercolor="#FFFF00" width="400">
				<tr>
					<td align="left" colspan=2><p><b><%=em%></strong></b></td>
					
				</tr>
				<tr>
					<td align="right"><p><b>User Id :</strong></b></td>
					<td align="left"><p><input type="text" size="15" name="uid" value="<%=uid%>" style="font-size: 9pt; font-family: Verdana,Arial"></td>
				</tr>
				<tr>
					<td align="right"><p><b>Password :</b></td>
					<td align="left"><p><input type="password" size="15" name="pwd" value="<%=pwd%>" style="font-size: 9pt; font-family: Verdana,Arial"></td>
				</tr>
				
				<tr>
					<td align="center" colspan=2><p><b><input type="Submit" value= "     Log in    "   style="font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif" id=Submit1 name=Submit1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="Reset" value= "     Clear    " Onclick="javascript:ResetForm();"   style="font-size: 9pt; font-family: verdana,Arial,Helvetica,sans-serif" id=Reset1 name=Reset1></b></td>
				</tr>
				<tr>
					<td align="left" colspan=2><p><b><%=em2%></strong></b></td>
					
				</tr>
			</table>
		</td>
	</tr>
</table><center>		
</form>
</td></tr>
<tr><td colspan="6"><!-- #include file=include/footer.inc --></td></tr>
</table>
<!-- content table ends -->

</td> 
<td width="10"><img src="images/spacer.gif" width="10" height="1" border="0"></td></tr></table>
</td></tr></table>
</BODY>
</HTML>