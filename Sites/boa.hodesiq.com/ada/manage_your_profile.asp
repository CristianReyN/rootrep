<%@ Language=VBScript %><%
Response.Status="404 Not Found"
Response.Redirect "../overview/overview.asp"
%><% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Bank of America Career Search Tool under Maintenance for U.S. Positions"
mpage = "manage_your_profile"
spage = ""
standart_href = "../overview/manage_your_profile.asp"
Metatag=""
page_self = "../ada/manage_your_profile.asp"
page_section="ADA"
Dim flashPage
flashPage = false
%>
<!-- #include file="../includes/manage_your_profile.asp" -->
<%
If taleo_upgrade Then
%>
<!-- Header -->
<!-- #include file="header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td height="50" valign="top"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<%
Else
title = breadcrumb & "Manage your Careers Profile Account"
%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="Description" content="<%=Metatag%>">
<%If Keywords <> "" Then %><meta name="Keywords" content="<%=Keywords%>"><%End If %>
<title><%=title %></title>
<link rel="stylesheet" href="../includes/styles.css" type="text/css">
<script language="JavaScript1.2" src="../includes/ps.js" type="text/javascript"></script>
</head>
<body style="margin: 0px; color: #000000; background-color: #ffffff;" onload="startPs();">
<%
End If
%>
<!-- #include file="../includes/pages/manage_your_profile.asp" -->
<%
If taleo_upgrade Then
%>
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="footer.asp" -->
<!-- Footer -->
<%
Else
%></body>
</html>
<%
End If
%>

