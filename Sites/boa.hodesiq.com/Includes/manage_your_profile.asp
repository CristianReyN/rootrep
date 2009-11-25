<%
	OVERVIEW_URL = "../profilerd.aspx?" & server.urlencode("https://bacfhrs.taleo.net/careersection/bacextprofile/profile.ftl?lang=en")
	OVERVIEW_TARGET = "_blank"
	HOWTOAPPLY_URL = "../profilerd.aspx?" & server.urlencode("https://bacfhrs.taleo.net/careersection/baccolprofile/profile.ftl?lang=en")
	HOWTOAPPLY_TARGET = "_blank"
	
	'staging
	'If trim(Request.ServerVariables("SERVER_NAME")) = "boa.stg.hodesiq.com" Then
	'	OVERVIEW_URL = "../profilerd.aspx?" & server.urlencode("https://stgbacfhrs75.taleo.net/careersection/bacextprofile/profile.ftl?lang=en")
	'	HOWTOAPPLY_URL = "../profilerd.aspx?" & server.urlencode("https://stgbacfhrs75.taleo.net/careersection/baccolprofile/profile.ftl?lang=en")
	'End If
%>