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
<H2 class="bach">Choose. Connect. Grow.</H2>
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
<% If Request("t") = "" Then %>if(tabstate && tabstate != tab) self.location.replace("<%=page_self%>?t="+tabstate);<% End If %>
var tabs = new Array(), pageId = "<%=pageId%>", categoryId = "<%=categoryId%>";
tabs[0] = new Tab("Americas","t1","../images/camp/t_americas.gif","../images/camp/t_americas_a.gif","dt1","t1h");
tabs[1] = new Tab("EMEA","t2","../images/camp/t_emea.gif","../images/camp/t_emea_a.gif","dt2","t2h");
tabs[2] = new Tab("Asia Pacific","t3","../images/camp/t_asia_pacific.gif","../images/camp/t_asia_pacific_a.gif","dt3","t3h");
if(window.cmCreatePageviewTag) cmCreatePageviewTag(pageId+":"+tabs[tab-1].t, null, null,categoryId);
tabs[tab-1].coremetrics = true;
		<% End If %>
function preload_add()
{
	MM_preloadImages("../images/camp/apply_us_on.gif","../images/camp/apply_canada_on.gif","../images/camp/apply_on.gif");
}
</script>
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
					<img id="t1" name="t1" class="h" src="../images/camp/t_americas<% If tab = 1 Then %>_a<% End If %>.gif" border="0" alt="How to Apply in Americas – includes US &amp; Canada" /></td>
				<td valign="top">
					<img id="t2" name="t2" class="h" src="../images/camp/t_emea<% If tab = 2 Then %>_a<% End If %>.gif" border="0" alt="How to Apply in EMEA" /></td>
				<td valign="top">
					<img id="t3" name="t3" class="h" src="../images/camp/t_asia_pacific<% If tab = 3 Then %>_a<% End If %>.gif" border="0" alt="How to Apply in Asia Pacific" /></td>
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
<H2 class="hidden">How to Apply Americas – includes US &amp; Canada</H2>
<a href="#" id="t1h" class="hide-tab" title="How to Apply in Americas – includes US &amp; Canada">How to Apply in Americas – includes US &amp; Canada</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="bottom" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">How to Apply in Americas – includes US &amp; Canada</H2></td>
			<td valign="bottom">
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t2" title="How to Apply in EMEA" class="bacb">How to Apply in EMEA</a></H2>
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t3" title="How to Apply in Asia Pacific" class="bacb">How to Apply in Asia Pacific</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt1" style="display: <% If tab = 1 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<H3 class="bac">Apply in the U.S.</H3>
		<p class="bac">For positions in the U.S. you must apply through our online application system. Simply click the link below and follow the instructions to apply and track the progress of your application.</p>
		<br><br>
		<span class='auraltext'>
			<h3 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions.</h3>
				Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
				<ul>
					<li />Email your resume to <a href="mailto:bac@resume.bankofamerica.com">bac@resume.bankofamerica.com</a>
					<li />In the Subject Line of your email, include "Source = Bank&nbsp;of&nbsp;America Campus Careers" and the specific position title found at the top of the job posting.
				</ul>
		</span>
		<a href="<% If page_section <> "ADA" Then  %>../learnmore/<% Else  %>../ada/<% End If %>sendresume.asp" target="<%=HOWTOAPPLY_TARGET%>" title="Apply U.S.<% If HOWTOAPPLY_TARGET = "_blank" Then %> Link opens a new window.<% End If%>" onmouseover="MM_swapImage('us_spr','','../images/camp/apply_us_on.gif');" onmouseout="MM_swapImgRestore();"><img name="us_spr" src="../images/camp/apply_us_off.gif" border="0" style="cursor: pointer;" alt="Apply U.S.<% If HOWTOAPPLY_TARGET = "_blank" Then %> Link opens a new window.<% End If%>" title="Apply U.S.<% If HOWTOAPPLY_TARGET = "_blank" Then %> Link opens a new window.<% End If%>" /></a>
		
		<H3 class="bac" style="margin-top: 18px;">Apply in Canada</H3>
		<p class="bac">For positions in Canada you must apply through our online application system. Simply click the link below and follow the instructions to apply and track the progress of your application.</p>
		<br><br>
		<span class='auraltext'>
			<h3 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions.</h3>
				Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
				<ul>
					<li />Email your resume to <a href="mailto:torrectm@ml.com">torrectm@ml.com</a>
					<li />In the Subject Line of your email, include "Source = Bank&nbsp;of&nbsp;America Campus Careers" and the specific position title found at the top of the job posting.
				</ul>
		</span>
		<a href="https://apply.ml.com/Students/Login.aspx" target="_blank" title="Apply Canada. Link opens a new window." onmouseover="MM_swapImage('us_spr','','../images/camp/apply_canada_on.gif');" onmouseout="MM_swapImgRestore();"><img name="us_spr" src="../images/camp/apply_canada_off.gif" border="0" style="cursor: pointer;" alt="Apply Canada. Link opens a new window." title="Apply Canada. Link opens a new window." /></a>
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
<H2 class="hidden">How to Apply in EMEA</H2>
<a href="#" id="t2h" class="hide-tab" title="How to Apply in EMEA">How to Apply in EMEA</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="bottom" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">How to Apply in EMEA</H2></td>
			<td valign="bottom">
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t1" title="How to Apply in Americas – includes US &amp; Canada" class="bacb">How to Apply in Americas – includes US &amp; Canada</a></H2>
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t3" title="How to Apply in Asia Pacific" class="bacb">How to Apply in Asia Pacific</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt2" style="display: <% If tab = 2 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac">For positions in Europe, Middle East and Africa, you must apply through our online application system. Simply click the link below and follow the instructions to apply and track the progress of your application.</p>
		<br><br>
		<span class='auraltext'>
			<h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions.</h2>
				Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
				<ul>
					<li />Email your resume to <a href="mailto:graduate_recruitment@ml.com">graduate_recruitment@ml.com</a>
					<li />In the Subject Line of your email, include "Source = Bank&nbsp;of&nbsp;America Campus Careers" and the specific position title found at the top of the job posting.
				</ul>
		</span>
		<a href="https://static.wcn.co.uk/company/ml/apply_now.html" target="_blank" title="Apply. Link opens a new window." onmouseover="MM_swapImage('emea_spr','','../images/camp/apply_on.gif');" onmouseout="MM_swapImgRestore();"><img name="emea_spr" src="../images/camp/apply_off.gif" border="0" style="cursor: pointer;" alt="Apply. Link opens a new window." title="Apply. Link opens a new window." /></a>
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
<H2 class="hidden">How to Apply in Asia Pacific</H2>
<a href="#" id="t3h" class="hide-tab" title="How to Apply in Asia Pacific">How to Apply in Asia Pacific</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="bottom" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">How to Apply in Asia Pacific</H2></td>
			<td valign="bottom">
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t1" title="How to Apply in Americas – includes US &amp; Canada" class="bacb">How to Apply in Americas – includes US &amp; Canada</a></H2>
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t2" title="How to Apply in EMEA" class="bacb">How to Apply in EMEA</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt3" style="display: <% If tab = 3 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac">For positions in Asia, you must apply through our online application system. Simply click the link below and follow the instructions to apply and track the progress of your application.</p>
		<br><br>
		<span class='auraltext'>
			<h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions.</h2>
				Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
				<ul>
					<li />Email your CV to <a href="mailto:apr_campus@ml.com">apr_campus@ml.com</a>
					<li />In the Subject Line of your email, include "Source = Bank&nbsp;of&nbsp;America Campus Careers" and the specific position title found at the top of the job posting.
				</ul>
		</span>
		<a href="https://static.wcn.co.uk/company/ml/apply_now.html" target="_blank" title="Apply. Link opens a new window." onmouseover="MM_swapImage('emea_spr','','../images/camp/apply_on.gif');" onmouseout="MM_swapImgRestore();"><img name="emea_spr" src="../images/camp/apply_off.gif" border="0" style="cursor: pointer;" alt="Apply. Link opens a new window." title="Apply. Link opens a new window." /></a>
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