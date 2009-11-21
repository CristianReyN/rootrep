<%@LANGUAGE="VBScript"%>
<% Response.Status = "404 Not Found" 
On Error Resume Next 'important in an error page to prevent another error
strTarget = Request.ServerVariables("QUERY_STRING")
if trim(strTarget) ="" then strTarget = Request.ServerVariables("URL")

pos=InStr(strTarget,"/mlo/")
nm=right(strTarget,(len(strTarget)-(pos+7)))
nm=right(strTarget,(len(strTarget)-(pos+4)))
if pos > 0 and nm <> "" then 
%>
<html>
<meta NAME="robots" CONTENT="noindex">
<head><title>Bank of America : Careers</title>
<style>
			.style1{background:url(/404/nbody.jpg) no-repeat}
			.style2{float: right;}
</style>
</head>
<body BGCOLOR="#FFFFFF">
<table width="100%" height="100%" cellpadding=0 cellspacing=0>
<tr>
<td  valign=middle width=685 align="center">
<div style="width: 685px;   padding: 0px 0px 0px 0px;border: 0px solid #000000; background:#FFFFFF;" align="center">
<img src="/404/n_top.gif" border=0>
<div  style="height: 400px;padding: 0px 0px 0px 0px;background:#ffffff;">
<table width="685" height="400" cellpadding=0 cellspacing=0>
<tr>
<td  valign=top width=685>
<p class="style1">
<font style="FONT-SIZE: 16px; COLOR: #D2001B; FONT-FAMILY: Arial, Verdana; "><br>
<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome <%=nm%>,</b></font>
<br><br><img src="/404/spacer.gif" height=400 border=0>
</font>
</p>
</td>
</tr>
</table>
</div>	
</div>	
</td></tr></table>
</body>
</html>
<%else%>
<html>
<meta NAME="robots" CONTENT="noindex">
<head><title>Bank of America : Careers</title>
<style>
			.style1{background:url(/404/nbody.jpg) no-repeat}
			.style2{float: right;}
</style>
</head>
<body BGCOLOR="#FFFFFF">
<div style="width: 685px;   padding: 0px 0px 0px 0px;border: 1px solid #000000; background:#FFFFFF;" align="center">
<img src="/404/n_top1.gif" border=0>
<div  style="height: 400px;padding: 0px 0px 0px 0px;background:#ffffff;">
<table width="685" height="400" cellpadding=0 cellspacing=0>
<tr>
<td  valign=top width=685>
<p style="padding: 20px 20px 20px 20px;">
<font style="FONT-SIZE: 16px; COLOR: #D2001B; FONT-FAMILY: Arial, Verdana; "><br>
<font style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial, Verdana;">
<h1>&nbsp;&nbsp;The page cannot be found</h1>
&nbsp;&nbsp;The page you are looking for might have been removed, had its name changed, or is temporarily unavailable.
<br><br>
&nbsp;&nbsp;<a href="http://careers.bankofamerica.com">Click here</a> to go to Bank of America Careers. 
<br><br><img src="/404/spacer.gif" height=400 border=0>
</font>
</p>
</td>
</tr>
</table>
</div>	
</div>	
</body>
</html>
<%end if%>

