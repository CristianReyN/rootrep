<%
	'S_R_C = HOWTOAPPLY_URL
	'If(InStr(Request.ServerVariables ("HTTP_REFERER"),"overview.asp")) Then S_R_C = OVERVIEW_URL
	
	S_R_C = OVERVIEW_URL
	If(InStr(Request.ServerVariables ("HTTP_REFERER"),"campusrecruiting/")) Then S_R_C = HOWTOAPPLY_URL
%>
<script language="javascript" type="text/javascript">
//<!--
function go_faq(){if(opener){
	opener.location.href = "<% If page_section <> "ADA" Then  %>../faq/<% Else  %>../ada/<% End If %>faq.asp";
	opener.focus();
	return false;
}}
//-->
</script>
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
	<tr><td align="center" height="103">
		<img src="../images/boa_myp.jpg" width="752" height="103" border="0" alt="Bank of America Careers" title="Bank of America Careers"></td></tr>
	<tr><td align="center">
		<table border="0" cellpadding="0" cellspacing="0" width="752">
		<tr><td align="center">
			<h1 class="hidden">Manage your Careers Profile Account</h1>
			<p style="width: 752px; margin: 12px auto 12px auto; padding: 0px; text-align: left;">Once you reach the Summary page, after completing each of the steps, you will be able to go back and edit any one of these steps before your final submission.  If you have difficulty completing this process, please refer to the <a title="Link opens in a new window." href="<% If page_section <> "ADA" Then  %>../faq/<% Else  %>../ada/<% End If %>faq.asp" class="p" onclick="return go_faq();" target="_blank">Frequently Asked Questions</a> page.</p>
		</td></tr>
		</table>
	</td></tr>
	<tr><td align="center" height="100%" valign="top">
		<iframe marginheight="0" marginwidth="0" width="752" height="100%" frameborder="0" src="<%=S_R_C%>" style="width: 752px; height: 100%; margin: 0px;"></iframe></td></tr>
</table>