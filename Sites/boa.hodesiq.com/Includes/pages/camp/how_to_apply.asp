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
<p class="bac"<% If page_section <> "ADA" Then %> style="margin-bottom: 12px;"<% End If %>>We're ready when you are. Once you've taken a look at our <a href="explore_careers.asp" class="bac" title="Explore Careers">programs</a> and have found a good fit, this is the place to start the application process. Remember to also check our <a href="../CampusEvents.aspx" class="bac" title="Campus Events">campus events listings</a> to see when our recruiters will be coming your way. We'd love to meet you.</p>
		<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
		<% Else %>
<script language="JavaScript1.2" src="../includes/mm.js" type="text/javascript"></script>
		<% End If %>
<script language="JavaScript" type="text/javascript">
		<% If page_section <> "ADA" Then %>
var tab = <%=tab%>, cname = "tabstate_ha";
var tabstate = getTabState(cname);
if(tabstate && tabstate != tab) self.location.replace("<%=page_self%>?t="+tabstate);
var tabs = new Array(), pageId = "<%=pageId%>", categoryId = "<%=categoryId%>";
tabs[0] = new Tab("U.S.","t1","../images/camp/t1.gif","../images/camp/t1a.gif","dt1");
tabs[1] = new Tab("EMEA","t2","../images/camp/t2.gif","../images/camp/t2a.gif","dt2");
tabs[2] = new Tab("Asia","t3","../images/camp/t3.gif","../images/camp/t3a.gif","dt3");
if(window.cmCreatePageviewTag) cmCreatePageviewTag(pageId+":"+tabs[tab-1].t, null, null,categoryId);
tabs[tab-1].coremetrics = true;
		<% End If %>
function preload_add()
{
	MM_preloadImages("../images/camp/submit_profile_on.gif","../images/camp/apply_on.gif");
}
</script>
<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top">
		<% If page_section = "ADA" Then %>
		<a name="t1"></a>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" style="margin-top: 12px;" summary="">
			<tr>
				<td valign="top">
					<img src="../images/camp/t1a.gif" border="0" alt="U.S." /></td>
				<td valign="top">
					<a href="#t2"><img src="../images/camp/t2.gif" border="0" alt="EMEA" /></a></td>
				<td valign="top">
					<a href="#t3"><img src="../images/camp/t3.gif" border="0" alt="Asia" /></a></td>
				<td width="100%" background="../images/camp/trtb.gif" valign="top" align="right">
					<img src="../images/camp/trt.gif" border="0" alt="" /></td>
			</tr>
		</table>
		<% Else %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<img id="t1" name="t1" class="h" src="../images/camp/t1<% If tab = 1 Then %>a<% End If %>.gif" border="0" alt="U.S." /></td>
				<td valign="top">
					<img id="t2" name="t2" class="h" src="../images/camp/t2<% If tab = 2 Then %>a<% End If %>.gif" border="0" alt="EMEA" /></td>
				<td valign="top">
					<img id="t3" name="t3" class="h" src="../images/camp/t3<% If tab = 3 Then %>a<% End If %>.gif" border="0" alt="Asia" /></td>
				<td width="100%" background="../images/camp/trtb.gif" valign="top" align="right">
					<img src="../images/camp/trt.gif" border="0" alt="" /></td>
			</tr>
		</table>
		<% End If %>
	</td>
</tr>
<tr>
	<td valign="top">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td background="../images/camp/tl.gif" valign="top">
					<img src="../images/camp/tl.gif" width="6" height="10" border="0" alt="" /></td>
				<td width="100%" valign="top">
<div id="dt1" style="display: <% If tab = 1 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac">In order to be considered a candidate for an opportunity at Bank of America, you must apply via this web site. To submit your profile, first sign in as a new or returning user.  If you don't have an existing account, you'll need to register as a new user.  Then, complete your Candidate Profile and designate your program(s) of interest.  Please note that in order for your application to be considered complete, you must reach the final "Thank You" page.</p>
		<br><br>
		<a href="<% If page_section <> "ADA" Then  %>../learnmore/<% Else  %>../ada/<% End If %>sendresume.asp" target="_blank" title="Submit Your Profile" onmouseover="MM_swapImage('us_spr','','../images/camp/submit_profile_on.gif');" onmouseout="MM_swapImgRestore();"><img name="us_spr" src="../images/camp/submit_profile_off.gif" border="0" style="cursor: pointer;" alt="Submit Your Profile" /></a>
	</div>
</div>
		<% If page_section = "ADA" Then %>
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
<tr>
	<td valign="top">
		<a name="t2"></a>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" style="margin-top: 12px;" summary="">
			<tr>
				<td valign="top">
					<a href="#t1"><img src="../images/camp/t1.gif" border="0" alt="U.S." /></a></td>
				<td valign="top">
					<img src="../images/camp/t2a.gif" border="0" alt="EMEA" /></td>
				<td valign="top">
					<a href="#t3"><img src="../images/camp/t3.gif" border="0" alt="Asia" /></a></td>
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
		<% End If %>
<div id="dt2" style="display: <% If tab = 2 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac">For positions in Europe, you must apply through our online application system. Simply click the link below and follow the instructions to apply and track the progress of your application.</p>
		<br><br>
		<a href="https://www.careers.bofa.gtios.com/" target="_blank" title="Submit Your Profile" onmouseover="MM_swapImage('emea_spr','','../images/camp/apply_on.gif');" onmouseout="MM_swapImgRestore();"><img name="emea_spr" src="../images/camp/apply_off.gif" border="0" style="cursor: pointer;" alt="Submit Your Profile" /></a>
	</div>
</div>
		<% If page_section = "ADA" Then %>
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
<tr>
	<td valign="top">
		<a name="t3"></a>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" style="margin-top: 12px;" summary="">
			<tr>
				<td valign="top">
					<a href="#t1"><img src="../images/camp/t1.gif" border="0" alt="U.S." /></a></td>
				<td valign="top">
					<a href="#t2"><img src="../images/camp/t2.gif" border="0" alt="EMEA" /></a></td>
				<td valign="top">
					<img src="../images/camp/t3a.gif" border="0" alt="Asia" /></td>
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
		<% End If %>
<div id="dt3" style="display: <% If tab = 3 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac">Bank of America is recruiting for full time graduate and MBA positions in India and Singapore only. All applications are made through your university careers centre.</p>
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