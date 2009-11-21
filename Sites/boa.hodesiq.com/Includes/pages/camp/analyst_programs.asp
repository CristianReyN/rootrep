<%
Dim tab
tab = 1
If Request("t") <> "" Then tab = Request("t")
%>
<!-- #include file="../../../includes/career_fit_tool_programs.asp" -->
		<img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom-2)%>" alt="" border="0"><br />
		<a name="skipmaincontent"></a><H1 class="bac">Analyst Programs</H1>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="578" height="100%" valign="top" style="padding: 0px 0px 0px <%=left_margin_0%>px;">
<p class="bac"<% If page_section <> "ADA" Then %> style="margin-bottom: 12px;"<% End If %>>
Learn from the industry&#39;s best in a challenging combination of instructor-led and web-based education, on-the-job training, and networking. From the start, you&#39;ll have the opportunity to make a real impact.
</p>
		<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
var tab = <%=tab%>, cname = "tabstate_up";
var tabstate = getTabState(cname);
if(tabstate && tabstate != tab) self.location.replace("<%=page_self%>?t="+tabstate);
var tabs = new Array(), pageId = "<%=pageId%>", categoryId = "<%=categoryId%>";
tabs[0] = new Tab("Americas","t1","../images/camp/t_americas.gif","../images/camp/t_americas_a.gif","dt1","t1h");
tabs[1] = new Tab("EMEA","t2","../images/camp/t_emea.gif","../images/camp/t_emea_a.gif","dt2","t2h");
tabs[2] = new Tab("Asia Pacific","t3","../images/camp/t_asia_pacific.gif","../images/camp/t_asia_pacific_a.gif","dt3","t3h");
if(window.cmCreatePageviewTag) cmCreatePageviewTag(pageId+":"+tabs[tab-1].t, null, null,categoryId);
tabs[tab-1].coremetrics = true;
</script>
		<% End If %>
<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top">
		<% If page_section = "ADA" Then %>
		<a name="t1"></a>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" style="margin-top: 0px;" summary="">
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
					<img id="t1" name="t1" class="h" src="../images/camp/t_americas<% If tab = 1 Then %>_a<% End If %>.gif" border="0" alt="Analyst Programs Americas – includes US &amp; Canada" /></td>
				<td valign="top">
					<img id="t2" name="t2" class="h" src="../images/camp/t_emea<% If tab = 2 Then %>_a<% End If %>.gif" border="0" alt="Analyst Programs EMEA" /></td>
				<td valign="top">
					<img id="t3" name="t3" class="h" src="../images/camp/t_asia_pacific<% If tab = 3 Then %>_a<% End If %>.gif" border="0" alt="Analyst Programs Asia Pacific" /></td>
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
		<% If page_section <> "ADA" Then %>
<H2 class="hidden">Analyst Programs Americas – includes US &amp; Canada</H2>
<a href="#" id="t1h" class="hide-tab" title="Analyst Programs Americas – includes US &amp; Canada">Analyst Programs Americas – includes US &amp; Canada</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="bottom"><H2 class="bach" style="margin: 0px 12px 0px 12px;">Analyst Programs Americas – includes US &amp; Canada</H2></td>
			<td valign="bottom">
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t2" title="Analyst Programs EMEA" class="bacb">Analyst Programs EMEA</a></H2>
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t3" title="Analyst Programs Asia Pacific" class="bacb">Analyst Programs Asia Pacific</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt1" style="display: <% If tab = 1 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<% For g=1 To UBound(program_groups) Step 1 
			Set program_group = program_groups(g)
				If program_group.Item("is_active") Then
					Set program_group_all_programs = program_group.Item("programs")
					If program_group_all_programs.Exists(AMERICAS&ANALYST&FULLTIME) Then
						Set program_group_programs = program_group_all_programs.Item(AMERICAS&ANALYST&FULLTIME)
						program_group_program_keys = program_group_programs.Keys %>
		<H3 class="bac" style="margin-top: 15px;"><%=program_group.Item("group_name")%></H3>
		<ul class="bac">
					<% For p=0 To UBound(program_group_program_keys) Step 1 
							Set program_group_program = program_group_programs.Item(program_group_program_keys(p))
							If program_group_program.Item("is_active") Then %>
			<li><a href="<%=program_group_program.Item("url")%>" class="bac"><%=program_group_program.Item("title")%><% If program_group_program.Item("sub_region") = CANADA Then %> (<%=CANADA%>)<% End If %></a></li>
						<% End If
						Next %>
		</ul>
					<% End If
				End If
			Next %>
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
		<% If page_section <> "ADA" Then %>
<H2 class="hidden">Analyst Programs EMEA</H2>
<a href="#" id="t2h" class="hide-tab" title="Analyst Programs EMEA">Analyst Programs EMEA</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="bottom"><H2 class="bach" style="margin: 0px 12px 0px 12px;">Analyst Programs EMEA</H2></td>
			<td valign="bottom">
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t1" title="Analyst Programs Americas – includes US &amp; Canada" class="bacb">Analyst Programs Americas – includes US &amp; Canada</a></H2>
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t3" title="Analyst Programs Asia Pacific" class="bacb">Analyst Programs Asia Pacific</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt2" style="display: <% If tab = 2 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<% For g=1 To UBound(program_groups) Step 1 
			Set program_group = program_groups(g)
				If program_group.Item("is_active") Then
					Set program_group_all_programs = program_group.Item("programs")
					If program_group_all_programs.Exists(EMEA&ANALYST&FULLTIME) Then
						Set program_group_programs = program_group_all_programs.Item(EMEA&ANALYST&FULLTIME)
						program_group_program_keys = program_group_programs.Keys %>
		<H3 class="bac" style="margin-top: 15px;"><%=program_group.Item("group_name")%></H3>
		<ul class="bac">
					<% For p=0 To UBound(program_group_program_keys) Step 1 
							Set program_group_program = program_group_programs.Item(program_group_program_keys(p))
							If program_group_program.Item("is_active") Then %>
			<li><a href="<%=program_group_program.Item("url")%>" class="bac"><%=program_group_program.Item("title")%></a></li>
						<% End If
						Next %>
		</ul>
					<% End If
				End If
			Next %>
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
		<% If page_section <> "ADA" Then %>
<H2 class="hidden">Analyst Programs Asia Pacific</H2>
<a href="#" id="t3h" class="hide-tab" title="Analyst Programs Asia Pacific">Analyst Programs Asia Pacific</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="bottom"><H2 class="bach" style="margin: 0px 12px 0px 12px;">Analyst Programs Asia Pacific</H2></td>
			<td valign="bottom">
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t1" title="Analyst Programs Americas – includes US &amp; Canada" class="bacb">Analyst Programs Americas – includes US &amp; Canada</a></H2>
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t2" title="Analyst Programs EMEA" class="bacb">Analyst Programs EMEA</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt3" style="display: <% If tab = 3 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<% For g=1 To UBound(program_groups) Step 1 
			Set program_group = program_groups(g)
				If program_group.Item("is_active") Then
					Set program_group_all_programs = program_group.Item("programs")
					If program_group_all_programs.Exists(ASIA&ANALYST&FULLTIME) Then
						Set program_group_programs = program_group_all_programs.Item(ASIA&ANALYST&FULLTIME)
						program_group_program_keys = program_group_programs.Keys %>
		<H3 class="bac" style="margin-top: 15px;"><%=program_group.Item("group_name")%></H3>
		<ul class="bac">
					<% For p=0 To UBound(program_group_program_keys) Step 1 
							Set program_group_program = program_group_programs.Item(program_group_program_keys(p))
							If program_group_program.Item("is_active") Then %>
			<li><a href="<%=program_group_program.Item("url")%>" class="bac"><%=program_group_program.Item("title")%></a></li>
						<% End If
						Next %>
		</ul>
					<% End If
				End If
			Next %>
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