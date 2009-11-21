<%
Dim tab
tab = 1
If Request("t") <> "" Then tab = Request("t")
%>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top">
<img src="../images/camp/howtoapply.jpg" width="578" height="152" alt="How to Apply" title="How to Apply" border="0">
<div class="hidden">How to Apply.</div>
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom+3)%>" alt="" border="0"><br />
		<a name="skipmaincontent"></a><H1 class="hidden">How to Apply</H1>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="393" height="100%" valign="top" style="<%=middle_content_padding%>">
<h2 class="bach">Choose. Connect. Grow.</h2>
<p class="bac" style="margin-bottom: 12px;">We're ready when you are. Once you've taken a look at our <a href="explore_careers.asp" class="bac" title="Explore Careers">programs</a> and have found a good fit, this is the place to start the application process. Remember to also check our <a href="../CampusEvents.aspx" class="bac" title="Campus Events">campus events listings</a> to see when our recruiters will be coming your way. We'd love to meet you.</p>
<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
var tabs = new Array(), pageId = "<%=pageId%>", categoryId = "<%=categoryId%>";
tabs[0] = new Tab("U.S.","t1","../images/camp/t1.gif","../images/camp/t1a.gif","dt1");
tabs[1] = new Tab("EMEA/Asia","t2","../images/camp/t23.gif","../images/camp/t23a.gif","dt2");
if(window.cmCreatePageviewTag) cmCreatePageviewTag(pageId+":"+tabs[<%=tab%>-1].t, null, null,categoryId);
tabs[<%=tab%>-1].coremetrics = true;
function preload_add()
{
	MM_preloadImages("../images/camp/submit_profile_on.gif");
}
</script>
<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<img id="t1" name="t1" class="h" src="../images/camp/t1<% If tab = 1 Then %>a<% End If %>.gif" border="0" alt="" /></td>
				<td valign="top">
					<img id="t2" name="t2" class="h" src="../images/camp/t23<% If tab = 2 Then %>a<% End If %>.gif" border="0" alt="" /></td>
				<td width="100%" background="../images/camp/trtb.gif" valign="top" align="right">
					<img src="../images/camp/trt.gif" border="0" alt="" /></td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td valign="top">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td background="../images/camp/tl.gif" valign="top">
					<img src="../images/camp/tl.gif" width="6" height="10" border="0" alt="" /></td>
				<td width="100%" valign="top">
<div id="dt1" style="display: <% If tab = 1 Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac">In order to be considered a candidate for an opportunity at Bank of America, you must apply via this web site. To submit your profile, first sign in as a new or returning user.  If you don't have an existing account, you'll need to register as a new user.  Then, complete your Candidate Profile and designate your program(s) of interest.  Please note that in order for your application to be considered complete, you must reach the final "Thank You" page.</p>
		<br><br>
		<a href="<% If page_section <> "ADA" Then  %>../learnmore/<% Else  %>../ada/<% End If %>sendresume.asp" target="_blank" title="Submit Your Profile" onmouseover="MM_swapImage('us_spr','','../images/camp/submit_profile_on.gif');" onmouseout="MM_swapImgRestore();"><img name="us_spr" src="../images/camp/submit_profile_off.gif" border="0" style="cursor: pointer;" alt="Submit Your Profile" /></a>
	</div>
</div>
<div id="dt2" style="display: <% If tab = 2 Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac">For positions in Europe, you must apply through our online application system. To submit your profile, simply click the link below and follow the instructions to apply and track the progress of your application.</p>
		<p class="bac">Bank of America is recruiting for full time graduate and MBA positions in India and Singapore only.  All applications are made through your university careers centre.</p>
		<br><br>
		<a href="https://www.careers.bofa.gtios.com/" target="_blank" title="Submit Your Profile" onmouseover="MM_swapImage('emea_spr','','../images/camp/submit_profile_on.gif');" onmouseout="MM_swapImgRestore();"><img name="emea_spr" src="../images/camp/submit_profile_off.gif" border="0" style="cursor: pointer;" alt="Submit Your Profile" /></a>
	</div>
</div>
				</td>
				<td background="../images/camp/tr.gif" valign="top">
					<img src="../images/camp/tr.gif" width="6" height="4" border="0" alt="" /></td>
			</tr>
			<tr>
				<td valign="top">
					<img src="../images/camp/tlb.gif" border="0" alt="" /></td>
				<td width="100%" background="../images/camp/tb.gif" valign="top">
					<img src="../images/camp/tb.gif" height="6" width="100%"  border="0" alt="" /></td>
				<td valign="top">
					<img src="../images/camp/trb.gif" border="0" alt="" /></td>
			</tr>
		</table>
	</td>
</tr>
</table>
<br>
				</td>
				<td width="185" height="100%" style="padding-top: 1px;" valign="top">
<!-- #include file="../../camprnav.asp" -->
				</td>
			</tr>
		</table>