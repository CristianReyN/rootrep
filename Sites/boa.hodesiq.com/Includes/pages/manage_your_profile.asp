<%
If taleo_upgrade Then
%>
		<a name="skipmaincontent"></a>
		<img src="../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="373" height="100%" valign="top" style="border: 2px solid #000000; padding: 12px;">
<H1 style="margin: 0px 0px 0px <%=left_margin_0%>px;">Bank of America Career Search Tool under Maintenance</H1>
<p>
Our Career Search Tool is currently under maintenance from Friday, 8/21 through Sunday 8/23.  As a result you will be:
</p>
<ul>
	<li>Unable to create and/or update your existing Careers profile</li>
	<li>Unable to apply for a position(s)</li>
</ul>
<p style="margin: 0px 0px 12px 0px;">
You may continue to search for jobs, as well as navigate to all other sections within the site during this timeframe.  As of Monday, 8/24 you will be able to fully utilize all profile and application functionality within the site.  Additionally, upon your return when accessing your profile and/or applying for a position you will notice a new look with many new features.
<br><br>
Bank of America strives to continue to improve our overall Careers site to ensure the best experience possible for our visitors.  We apologize for any inconvenience during this time.  
<br><br>
Please come back on Monday, 7/20 to revisit our site and explore all the new features!  Also note that any information that you have previously provided has been maintained and will be accessible at that time.
<br><br>
<a href="<%=Request.ServerVariables ("HTTP_REFERER") %>" class="p" title="Return to the previous page">Return to the previous page</a>
</p>
				</td>
				<td width="192" height="100%" valign="top" >&nbsp;</td>
			</tr>
		</table>
<%
Else
	S_R_C = HOWTOAPPLY_URL
	If(InStr(Request.ServerVariables ("HTTP_REFERER"),"overview.asp")) Then S_R_C = OVERVIEW_URL
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
	<% If after_taleo_upgrade Then %>
	<tr><td align="center" height="103">
		<img src="../images/boa_myp.jpg" width="752" height="103" border="0" alt="Bank of America Careers" title="Bank of America Careers"></td></tr>
	<tr><td align="center">
		<table border="0" cellpadding="0" cellspacing="0" width="752">
		<tr><td align="center">
			<h1 class="hidden">Manage your Careers Profile Account</h1>
			<p style="width: 752px; margin: 12px auto 12px auto; padding: 0px; text-align: left;">After completing each of the steps in your profile or application and reach the Summary page, you can edit any of the steps prior to your final submission. If you have difficulty completing this process, please refer to the <a title="Link opens in a new window." href="<% If page_section <> "ADA" Then  %>../faq/<% Else  %>../ada/<% End If %>faq.asp" class="p" onclick="return go_faq();" target="_blank">Frequently Asked Questions</a> page.</p>
		</td></tr>
		</table>
	</td></tr>
	<% End If %>
	<tr><td align="center" height="100%" valign="top">
		<iframe marginheight="0" marginwidth="0" width="752" height="100%" frameborder="0" src="<%=S_R_C%>" style="width: 752px; height: 100%; margin: 0px;"></iframe></td></tr>
</table>
<%
End If
%>