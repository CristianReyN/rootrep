<%
Dim tab
tab = 1
If Request("t") <> "" Then tab = Request("t")
%>
		<img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom-2)%>" alt="" border="0"><br />
		<a name="skipmaincontent"></a><h1 class="bac">Undergraduate Internships</h1>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="578" height="100%" valign="top" style="padding: 0px 0px 0px <%=left_margin_0%>px;">
<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
var tabs = new Array(), pageId = "<%=pageId%>", categoryId = "<%=categoryId%>";
tabs[0] = new Tab("U.S.","t1","../images/camp/t1.gif","../images/camp/t1a.gif","dt1");
tabs[1] = new Tab("EMEA","t2","../images/camp/t2.gif","../images/camp/t2a.gif","dt2");
if(window.cmCreatePageviewTag) cmCreatePageviewTag(pageId+":"+tabs[<%=tab%>-1].t, null, null,categoryId);
tabs[<%=tab%>-1].coremetrics = true;
</script>
<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<img id="t1" name="t1" class="h" src="../images/camp/t1<% If tab = 1 Then %>a<% End If %>.gif" border="0" alt="" /></td>
				<td valign="top">
					<img id="t2" name="t2" class="h" src="../images/camp/t2<% If tab = 2 Then %>a<% End If %>.gif" border="0" alt="" /></td>
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
		<p class="bacb">Corporate Staff and Support</p>
		<ul class="bac">
			<li><a href="ui_us_caip.asp" class="bac">Corporate Audit Intern Program</a></li>
			<li><a href="ui_us_ctip.asp" class="bac">Corporate Treasury Intern Program</a></li>
			<li><a href="ui_us_fip.asp" class="bac">Finance Intern Program</a></li>
			<li><a href="ui_us_lsgtsip.asp" class="bac">LaSalle Global Trust Services Intern Program<span style="font-size: 0.6em; position: relative; top: -0.6em;">TM</span></span></a></li>
			<li><a href="ui_us_grmip.asp" class="bac">Global Risk Management Intern Program</a></li>
			<li><a href="ui_us_scmip.asp" class="bac">Supply Chain Management  Intern Program</a></li>
			<li><a href="ui_us_cwai.asp" class="bac">Corporate Workplace Analyst Internship</a></li>
			<li><a href="ui_us_qpai.asp" class="bac">Quality and Productivity Analyst Internship</a></li>
			<li><a href="ui_us_gipbcip.asp" class="bac">Global Information Protection Business Continuity Intern Program</a></li>
			<li><a href="ui_us_ncgldip.asp" class="bac">Network Computing Group Leader Development Internship Program</a></li>
			<li><a href="ui_us_ncgmtip.asp" class="bac">Network Computing Group Mainframe Technologies Intern Program</a></li>
		</ul>
		<p class="bacb">Global Consumer and Small Business Banking</p>
		<ul class="bac">
			<li><a href="ui_us_oi.asp" class="bac">Operations Internship</a></li>
		</ul>
		<p class="bacb">Global Wealth and Investment Management</p>
		<ul class="bac">
			<li><a href="ui_us_gwimcip.asp" class="bac">Global Wealth and Investment Management College Internship Program</a></li>
		</ul>
		<p class="bacb">Global Corporate and Investment Banking</p>
		<ul class="bac">
			<li><a href="ui_us_cdpsap.asp" class="bac">Corporate Debt Products Summer Analyst Program</a></li>
			<li><a href="ui_us_crebsap.asp" class="bac">Commercial Real Estate Banking Summer Analyst Program</a></li>
			<li><a href="ui_us_gcb_gps_saip.asp" class="bac">Global Commercial Banking and Global Product Solutions Summer Analyst Intern Program</a></li>
			<li><a href="ui_us_cmsa.asp" class="bac">Capital Markets Summer Analyst</a></li>
			<li><a href="ui_us_gibsa.asp" class="bac">Global Investment Banking Summer Analyst</a></li>
			<li><a href="ui_us_pfsa.asp" class="bac">Public Finance Summer Analyst</a></li>
			<li><a href="ui_us_rsa.asp" class="bac">Research Summer Analyst</a></li>
			<li><a href="ui_us_stsa.asp" class="bac">Sales and Trading Summer Analyst</a></li>
			<li><a href="ui_us_gmgosip.asp" class="bac">Global Markets Group Operations Summer Internship Program</a></li>
			<li><a href="ui_us_gmtsa.asp" class="bac">Global Markets Technology Summer Analyst</a></li>
			<li><a href="ui_us_gmosip.asp" class="bac">Global Middle Office Summer Intern Program</a></li>
			<li><a href="ui_us_gtoip.asp" class="bac">Global Treasury Operations Intern Program</a></li>
		</ul>
	</div>
</div>
<div id="dt2" style="display: <% If tab = 2 Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bacb">Global Corporate and Investment Banking</p>
		<ul class="bac">
			<li><a href="ui_emea_gib.asp" class="bac">Global Investment Banking</a></li>
			<li><a href="ui_emea_gps.asp" class="bac">Global Products Solutions</a></li>
			<li><a href="ui_emea_grm.asp" class="bac">Global Risk Management</a></li>
			<li><a href="ui_emea_gmo.asp" class="bac">Global Middle Office</a></li>
			<li><a href="ui_emea_tech.asp" class="bac">Technology</a></li>
			<li><a href="ui_emea_gm.asp" class="bac">Global Markets</a></li>
			<li><a href="ui_emea_cm.asp" class="bac">Capital Markets</a></li>
		</ul>
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
			</tr>
		</table>