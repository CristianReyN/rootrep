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
<!-- #include file="../includes/manage_your_profile.asp" -->
<%
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
<script language="JavaScript1.2" src="../includes/ps.js" type="text/javascript"></script>
</head>
<body style="margin: 0px; color: #000000; background-color: #ffffff;" onload="startPs();">
<!-- #include file="../includes/pages/manage_your_profile.asp" -->
</body>
</html>

