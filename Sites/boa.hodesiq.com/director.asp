<%@ Language=VBScript %>
<%option explicit%>
<%
dim stitle,surl
if request.QueryString("m")=1 then
	stitle="Bank of America | Manage your Careers Profile Account"
	surl="profilerd.aspx?" & Request.QueryString("u").item
else
	stitle="Bank of America | Careers Job Application"
	surl="applyrd.aspx?" & Request.QueryString
end if
%>
<html> 
<head>
	<title><%=stitle %></title>
	<script language="javascript" type="text/javascript">

	</script>
</head>
<body style="margin: 0px; color: #000000; background-color: #ffffff;">
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
	<tr><td align="center" height="103">
		<img src="images/BoA_Header.jpg" width="752" height="103" border="0" alt="Bank of America Careers" title="Bank of America"></td></tr>
	<tr><td align="center" height="100%">
		<iframe frameborder="0" src="<%=surl%>"style="width: 752px; height: 100%;"></iframe></td></tr>
</table>
</body>
</html>