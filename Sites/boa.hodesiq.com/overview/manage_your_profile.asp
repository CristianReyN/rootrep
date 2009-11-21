<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Bank of America Career Search Tool under Maintenance"
mpage = "manage_your_profile"
spage = ""
ada_href = "../ada/manage_your_profile.asp"
page_self = "../overview/manage_your_profile.asp"
ada_title = breadcrumb & "Bank of America Career Search Tool under Maintenance"
job_search_action = "../jobsearch/searchresult.asp"
Dim flashPage
flashPage = false
Metatag=""
%>
<!-- #include file="../includes/taleo_upgrade.asp" -->
<%
If taleo_upgrade Then
%>
<!-- Header -->
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->
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
ada_title = breadcrumb & "Manage your Careers Profile Account"
%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="Description" content="<%=Metatag%>">
<%If Keywords <> "" Then %><meta name="Keywords" content="<%=Keywords%>"><%End If %>
<title><%=title %></title>
<link rel="stylesheet" href="../includes/styles.css" type="text/css">
</head>
<body style="margin: 0px; color: #000000; background-color: #ffffff;">
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
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->
<%
Else
%></body>
</html>
<%
End If
%>

