<!-- #include file="../../../Includes/utilities.asp" --><!-- #include file="../../../includes/video_profiles.asp" --><% Set video_profile = video_profiles.Item("Jarrod") %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<title><%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%></title>
<link rel="stylesheet" href="../../../includes/styles.css" type="text/css">
<!--[if IE]><link rel="stylesheet" href="../../../includes/ie.css" type="text/css"><![endif]-->
</head>
<body id="body">
	<div id="mdtrans">
		<div class="mdv-top">
			<div class="mdv-head">
				<p><%=video_profile.Item("name")%>, <%=video_profile.Item("videoname")%></p>
			</div>
			<div class="mdv-close">
				<a href="Javascript: self.close();" class="modaldialog-close">close window</a>
			</div>
		</div>
		<div class="clearall"></div>
		<div class="mdv-line"></div>
		<div class="mdv-content">
<!-- #include file="transcript.html" -->
		</div>
	</div><% js_path = "../../../Includes/" %>
<!-- #include file="../../../Includes/cm.asp" -->
<!-- #include file="../../../Includes/coremetrics.asp" -->
</body>
</html>