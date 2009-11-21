<%@ Language=VBScript %>
<%option explicit%>
<%
dim stitle,surl
if request.QueryString("m")=1 then
	stitle="Bank of America | Careers | Manage My Profile"
	surl=Request.QueryString("u").item
else
	stitle="Bank of America | Careers | Job Search"
	surl="applyrd.aspx?" & Request.QueryString
end if
%>
<html>
<head>
	<title><%=stitle %></title>
	<script language="javascript" type="text/javascript">

	</script>
</head>
<frameset rows="103,*" framespacing="0" frameborder="0" border="1">
	<frame name="header"
		marginwidth ="0"
		marginheight="0"
		scrolling   ="no"
		frameborder ="no"
		noresize="noresize"
		src= "images/BoA_Header.jpg"
		/>
	<frame name="main" 
		marginwidth ="0"
		marginheight="0"
		scrolling   ="auto"
		frameborder ="no"
		noresize="noresize"
		src="<%=surl%>"
		/> 
</frameset>
</html>