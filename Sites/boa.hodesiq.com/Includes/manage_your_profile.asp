<%
	OVERVIEW_URL = "../profilerd.aspx?" & server.urlencode("https://bacfhrs.taleo.net/careersection/bacextprofile/profile.ftl?lang=en")
	OVERVIEW_TARGET = "_blank"
	HOWTOAPPLY_URL = "../profilerd.aspx?" & server.urlencode("https://bacfhrs.taleo.net/careersection/baccolprofile/profile.ftl?lang=en")
	HOWTOAPPLY_TARGET = "_blank"
%>
<!-- #include file="taleo_upgrade.asp" -->
<%
If taleo_upgrade Then
	OVERVIEW_URL = ""
	OVERVIEW_TARGET = "_top"
	HOWTOAPPLY_URL = ""
	HOWTOAPPLY_TARGET = "_top"
End If
%>