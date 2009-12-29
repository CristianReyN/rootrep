<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Bank of America Career Search Tool under Maintenance"
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
<!-- #include file="../includes/pages/manage_your_profile.asp" -->
</body>
</html>

