	<%
Dim tab
tab = 1
If Request("t") <> "" Then tab = Request("t")
%>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top">
<img src="../images/camp/campusevents.jpg" width="578" height="152" alt="Campus Events" title="Campus Events" border="0">
<div class="hidden">Campus Events.</div>
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom+3)%>" alt="" border="0"><br />
		<a name="skipmaincontent"></a><H1 class="hidden">Campus Events</H1>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="578" height="100%" valign="top" style="padding: 0px 0px 0px <%=left_margin_0%>px;">
					<p class="bac" style="margin-bottom: 12px;">copy</p>

<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
var tabs = new Array(), pageId = "<%=pageId%>", categoryId = "<%=categoryId%>";
tabs[0] = new Tab(1,"U.S.","t1","../images/camp/t1.gif","../images/camp/t1a.gif","dt1");
tabs[1] = new Tab(2,"EMEA","t2","../images/camp/t2.gif","../images/camp/t2a.gif","dt2");
tabs[2] = new Tab(3,"Asia","t3","../images/camp/t3.gif","../images/camp/t3a.gif","dt3");
if(window.cmCreatePageviewTag) cmCreatePageviewTag(pageId+":"+tabs[<%=tab%>-1].t, null, null,categoryId);
tabs[<%=tab%>-1].coremetrics = true;
var tab_page = "ce";
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
				<td valign="top">
					<img id="t3" name="t3" class="h" src="../images/camp/t3<% If tab = 3 Then %>a<% End If %>.gif" border="0" alt="" /></td>
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
tab 1
	</div>
</div>
<div id="dt2" style="display: <% If tab = 2 Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
tab 2
	</div>
</div>
<div id="dt3" style="display: <% If tab = 3 Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
tab 3
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