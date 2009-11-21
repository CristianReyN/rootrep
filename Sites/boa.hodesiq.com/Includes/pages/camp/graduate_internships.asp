<%
Dim tab
tab = 1
If Request("t") <> "" Then tab = Request("t")
%>
		<img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom-2)%>" alt="" border="0"><br />
		<a name="skipmaincontent"></a><H1 class="bac">Graduate Internships</H1>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="578" height="100%" valign="top" style="padding: 0px 0px 0px <%=left_margin_0%>px;">
		<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
var tab = <%=tab%>, cname = "tabstate_gi";
var tabstate = getTabState(cname);
if(tabstate && tabstate != tab) self.location.replace("<%=page_self%>?t="+tabstate);
var tabs = new Array(), pageId = "<%=pageId%>", categoryId = "<%=categoryId%>";
tabs[0] = new Tab("U.S.","t1","../images/camp/t1.gif","../images/camp/t1a.gif","dt1");
tabs[1] = new Tab("EMEA","t2","../images/camp/t2.gif","../images/camp/t2a.gif","dt2");
if(window.cmCreatePageviewTag) cmCreatePageviewTag(pageId+":"+tabs[tab-1].t, null, null,categoryId);
tabs[tab-1].coremetrics = true;
</script>
		<% End If %>
<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top">
		<% If page_section = "ADA" Then %>
		<a name="t1"></a>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<img src="../images/camp/tlt.gif" border="0" alt="" /></td>
				<td width="100%" background="../images/camp/trtb.gif" valign="top" align="right">
					<img src="../images/camp/trt.gif" border="0" alt="" /></td>
			</tr>
		</table>
		<% Else %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<img id="t1" name="t1" class="h" src="../images/camp/t1<% If tab = 1 Then %>a<% End If %>.gif" border="0" alt="Graduate Internships U.S." /></td>
				<td valign="top">
					<img id="t2" name="t2" class="h" src="../images/camp/t2<% If tab = 2 Then %>a<% End If %>.gif" border="0" alt="Graduate Internships EMEA" /></td>
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
		<% If page_section <> "ADA" Then %><H2 class="hidden">Graduate Internships U.S.</H2>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="bottom" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Graduate Internships U.S.</H2></td>
			<td valign="bottom">
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t2" title="Graduate Internships EMEA" class="bacb">Graduate Internships EMEA</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt1" style="display: <% If tab = 1 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<H3 class="bac" style="margin-top: 15px;">Corporate Staff and Support</H3>
		<ul class="bac">
			<li><a href="gi_us_cw_mba_sai.asp" class="bac">Corporate Workplace MBA Senior Analyst Internship</a></li>
			<li><a href="gi_us_ghrldpi.asp" class="bac">Global Human Resources Leadership and Development Program - Internship</a></li>
			<li><a href="gi_us_gmca_ip.asp" class="bac">Global Marketing and Corporate Affairs  Internship Program</a></li>
			<li><a href="gi_us_qp_mba_ci.asp" class="bac">Quality and Productivity MBA Consultant Internship</a></li>
			<li><a href="gi_us_tmba_ip.asp" class="bac">Technology MBA Intern Program</a></li>
		</ul>
		<H3 class="bac" style="margin-top: 15px;">Global Consumer and Small Business Banking</H3>
		<ul class="bac">
			<li><a href="gi_us_bccma_mba_ldi.asp" class="bac">Banking Center Channel Market Manager MBA Leadership Development Intern</a></li>
			<li><a href="gi_us_gcsbbpi.asp" class="bac">Global Consumer and Small Business Banking Product Intern</a></li>
			<li><a href="gi_us_omba_ip.asp" class="bac">Operations MBA Internship Program</a></li>
		</ul>
		<H3 class="bac" style="margin-top: 15px;">Global Corporate and Investment Banking</H3>
		<ul class="bac">
			<li><a href="gi_us_cmsa.asp" class="bac">Capital Markets Summer Associate</a></li>
			<li><a href="gi_us_cdpsap.asp" class="bac">Corporate Debt Products Summer Associate Program</a></li>
			<li><a href="gi_us_gcbgps_mba_ip.asp" class="bac">Global Commercial Banking and Global Product Solutions MBA Intern Program</a></li>
			<li><a href="gi_us_gibsap.asp" class="bac">Global Investment Banking Summer Associate Program</a></li>
			<li><a href="gi_us_pfsa.asp" class="bac">Public Finance Summer Associate</a></li>
			<li><a href="gi_us_rsa.asp" class="bac">Research Summer Associate</a></li>
			<li><a href="gi_us_stsa.asp" class="bac">Sales and Trading Summer Associate</a></li>
		</ul>
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
		<table width="100%" cellpadding="0" cellspacing="0" border="0" style="margin-top: 0px;" summary="">
			<tr>
				<td valign="top">
					<img src="../images/camp/tlt.gif" border="0" alt="" /></td>
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
		<% If page_section <> "ADA" Then %><H2 class="hidden">Graduate Internships EMEA</H2>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="bottom" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Graduate Internships EMEA</H2></td>
			<td valign="bottom">
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t1" title="Graduate Internships U.S." class="bacb">Graduate Internships U.S.</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt2" style="display: <% If tab = 2 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<H3 class="bac" style="margin-top: 15px;">Global Corporate and Investment Banking</H3>
		<ul class="bac">
			<li><a href="gi_emea_cm.asp" class="bac">Capital Markets</a></li>
			<li><a href="gi_emea_gib.asp" class="bac">Global Investment Banking</a></li>
			<li><a href="gi_emea_gm.asp" class="bac">Global Markets</a></li>
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