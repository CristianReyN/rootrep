<%
	OVERVIEW_URL = "../profilerd.aspx?" & server.urlencode("https://bacfhrs.taleo.net/servlets/CareerSection?art_ip_action=FlowDispatcher&flowTypeNo=3&alt=1&art_servlet_language=en&csNo=2")
	OVERVIEW_TARGET = "_blank"
	HOWTOAPPLY_URL = "https://bacfhrs.taleo.net/servlets/art.product.common.CareerSectionIdentityProviderServlet?art_servlet_language=en&art_ip_action=art.product.careersection.identityprovider.login.LoginController&csNo=4&flowTypeNo=3&canRegister=true"
	HOWTOAPPLY_TARGET = "_blank"
%>
<!-- #include file="taleo_upgrade.asp" -->
<%
If after_taleo_upgrade Then
	If trim(Request.ServerVariables("SERVER_NAME")) = "boa.stg.hodesiq.com" Then 'staging
		OVERVIEW_URL = "../profilerd.aspx?" & server.urlencode("https://stgbacfhrs75.taleo.net/careersection/bacextprofile/profile.ftl?lang=en")
	Else
		OVERVIEW_URL = "../profilerd.aspx?" & server.urlencode("https://bacfhrs.taleo.net/careersection/bacextprofile/profile.ftl?lang=en")
	End If
	OVERVIEW_TARGET = "_blank"
	If trim(Request.ServerVariables("SERVER_NAME")) = "boa.stg.hodesiq.com" Then 'staging
		HOWTOAPPLY_URL = "../profilerd.aspx?" & server.urlencode("https://stgbacfhrs75.taleo.net/careersection/baccolprofile/profile.ftl?lang=en")
	Else
		HOWTOAPPLY_URL = "../profilerd.aspx?" & server.urlencode("https://bacfhrs.taleo.net/careersection/baccolprofile/profile.ftl?lang=en")
	End If
	HOWTOAPPLY_TARGET = "_blank"
ElseIf taleo_upgrade Then
	OVERVIEW_URL = ""
	OVERVIEW_TARGET = "_top"
	HOWTOAPPLY_URL = ""
	HOWTOAPPLY_TARGET = "_top"
End If
%>