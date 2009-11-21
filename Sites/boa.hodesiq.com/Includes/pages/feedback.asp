		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<a name="skipmaincontent"></a><H1 style="margin: 0px <%=right_margin%>px 0px <%=left_margin_0%>px; padding: 0px;">Your Feedback</H1>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="578" colspan="2" height="100%" valign="top" style="<%=middle_content_padding%> padding-right: 0px;">
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<div id="Layer1" style="position: relative; z-index: 12; width: 500px;">
	<%	href_pre = ""
		if page_section <> "ADA" then href_pre = "../feedback/" %>
<p style="margin: 0px;">Bank of America is committed to building and maintaining a world-class Careers web site.</p>
<p style="margin: 12px 0px 6px 0px;">To that end, we welcome your feedback. Please take a moment to provide us with any comments or suggestions on how we might improve the content or the overall user experience of the site.</p>
<p style="margin: 12px 0px 6px 0px;">Thanks for your input.</p>
<br>
<p style="margin: 12px 0px 3px 0px;">Your comments/suggestions</p>
<form name="fbckfrm" action="<%=href_pre%>feedback_send.asp" onsubmit="cs();" style="margin: 0px;">
<textarea cols="30" rows="5" name="feedback" id="feedback" style="width: 500px; margin-bottom: 6px;"></textarea>
<div align="right" id="Layer2" style="position: relative; z-index: 12; width: 500px;">
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Send","Javascript: cs();",0,0,0,0,"Send");
function cs()
{
	if(document.fbckfrm.feedback.value=="")
	{
		alert("Please take a moment to provide us with any comments or suggestions on how we might improve the content or the overall user experience of the site.");
		document.fbckfrm.feedback.focus();
	}
	else
	{
		document.fbckfrm.submit();
<% If ENV="production" Then
	Response.write "if(window.cmSetProduction) cmCreatePageviewTag('career:feedback/feedback_send.asp', null, null,'career:feedback');"
End If %>
	}
}
//-->
</script>
<noscript><input type="submit" name="bsend" value="Send" alt="Send" title="Send"  class="btn"/></noscript>
</div>
</form>
</div>
				</td>
			</tr>
		</table>