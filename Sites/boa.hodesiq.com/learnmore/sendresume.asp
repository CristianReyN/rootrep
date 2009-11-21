<%Response.Buffer=True
On Error Resume Next
%>
<!-- #include file="../includes/taleo_upgrade.asp" -->
<%
If taleo_upgrade Then
	Response.Redirect("../overview/taleo_upgrade.asp")
Else
	Response.Redirect("https://bacfhrs.taleo.net/servlets/art.product.common.CareerSectionIdentityProviderServlet?art_servlet_language=en&art_ip_action=art.product.careersection.identityprovider.login.LoginController&csNo=4&flowTypeNo=3&canRegister=true")
End If
%>