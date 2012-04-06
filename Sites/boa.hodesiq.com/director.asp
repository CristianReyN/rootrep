<%@ Language=VBScript %>
<%'option explicit%>
<!-- #include file="Includes/whitelist.asp" --><%
dim stitle,surl,countryid
if request.QueryString("m")=1 then
	stitle="Bank of America | Careers | Manage your Careers Profile Account"
	surl="profilerd.aspx?" & Request.QueryString("u").item
else
	stitle="Bank of America | Careers | Job Application"
	surl="applyrd.aspx?" & Request.QueryString("url").item & "&jobpipeline="  & Request.QueryString("jobpipeline").item
    
end if
	no_after_chars = Array("<", ">", "'", """")
	surl = ClearKeywords(surl)
	surl = Server.HtmlEncode(surl)

countryid = request.QueryString("countryid")

if countryid = "" then
    countryid = 1
end if
%>
<html> 
<head>
	<title><%=stitle %></title>
	<script language="javascript" type="text/javascript">

	</script>
	<link rel="stylesheet" href="includes/styles.css" type="text/css" />
</head>
<body style="margin: 0px; color: #000000; background-color: #ffffff;">
<table border="0" cellpadding="5" cellspacing="0" width="100%" height="100%">
<%dim currdate : currdate = date()
if currdate >= cdate("2009-08-15") and countryid  = "1" then %>
	<tr><td align="center" height="103">
		<img src="images/BoA_Header.jpg" width="752" height="103" border="0" alt="Bank of America Careers" title="Bank of America Careers" /></td></tr>
	<tr><td align="center">
		<p style="width: 752px; margin: 12px auto 12px auto; padding: 0px; text-align: left;">
		Once you reach the Summary page, after completing each of the steps, you will be able to go back and edit any one of these steps before your final submission. If you have difficulty completing this process, please refer to the <a href="faq/faq.asp" target="boamain" onclick="window.opener.focus();">Frequently Asked Questions</a> page.
		</p></td></tr>
<%end if %>
	<tr><td align="center" height="100%">
		<iframe frameborder="0" src="<%=surl%>"style="width: 752px; height: 100%;" height="100%" width="752px" title="apply"></iframe></td></tr>
</table>
</body>
</html>