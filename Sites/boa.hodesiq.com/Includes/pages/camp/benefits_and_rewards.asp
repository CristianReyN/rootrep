<%
Dim tab
tab = 1
If Request("t") <> "" Then tab = Request("t")
%>
		<img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom-3)%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="393" height="100%" valign="top" style="<%=middle_content_padding%>">
<a name="skipmaincontent"></a><H1 class="bac">Benefits and Rewards</H1>
<p class="bac"<% If page_section <> "ADA" Then %> style="margin-bottom: 12px;"<% End If %>>
Because we want to take good care of the people who are at the heart of our business, Bank&nbsp;of&nbsp;America offers a generous rewards and benefits program.
</p>
		<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
var tab = <%=tab%>, cname = "tabstate_br";
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
					<img id="t1" name="t1" class="h" src="../images/camp/t_americas<% If tab = 1 Then %>_a<% End If %>.gif" border="0" alt="Benefits and Rewards Americas – includes US &amp; Canada" /></td>
				<td valign="top">
					<img id="t2" name="t2" class="h" src="../images/camp/t_emea<% If tab = 2 Then %>_a<% End If %>.gif" border="0" alt="Benefits and Rewards EMEA" /></td>
				<td valign="top">
					<img id="t3" name="t3" class="h" src="../images/camp/t_asia_pacific<% If tab = 3 Then %>_a<% End If %>.gif" border="0" alt="Benefits and Rewards Asia Pacific" /></td>
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
<H2 class="hidden">Benefits and Rewards Americas – includes US &amp; Canada</H2>
<a href="#" id="t1h" class="hide-tab" title="Benefits and Rewards Americas – includes US &amp; Canada">Benefits and Rewards Americas – includes US &amp; Canada</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="top" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Benefits and Rewards Americas – includes US &amp; Canada</H2></td>
		</tr>
		<tr>
			<td valign="top" align="right">
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t2" title="Benefits and Rewards EMEA" class="bacb">Benefits and Rewards EMEA</a></H2>
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t3" title="Benefits and Rewards Asia Pacific" class="bacb">Benefits and Rewards Asia Pacific</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt1" style="display: <% If tab = 1 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac">Bank&nbsp;of&nbsp;America offers a competitive benefits package to its associates which, we believe, is one of the best in the financial services industry.</p>
		
		<p class="bac">Our comprehensive Full Time Associate package includes<span style="font-size: 0.6em; position: relative; top: -0.6em;"><a href="#footnote1" title="Footnote 1 " class="p">&nbsp;1&nbsp;<span class="auraltext">Link to Footnote 1.</span></a></span></span>:</p>
		
		<H3 class="bac" style="margin-top: 6px;">Financial and Retirement Support</H3>
		<ul class="bac">
			<li>Discounts and additional benefits on a wide range of banking and investing products - including checking accounts with no monthly maintenance fee or balance requirement, free checks and free or discounted annual safe deposit box rental among others</li>
			<li> 	401K and pension plan<span style="font-size: 0.6em; position: relative; top: -0.6em;"><a href="#footnote2" title="Footnote 2 " class="p">&nbsp;2&nbsp;<span class="auraltext">Link to Footnote 2.</span></a></span></span></li>
		</ul>
		
		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">
		
		<H3 class="bac">Health Care and Insurance</H3>
		<ul class="bac">
			<li>Comprehensive health care benefits include medical, dental and vision coverage, as well as Health Flexible Spending Accounts</li>
		</ul>
		
		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">
		
		<H3 class="bac">Work/Life Benefits</H3>
		<ul class="bac">
			<li>Flexible work arrangements</li>
			<li>Paid and unpaid time off</li>
			<li>Tuition reimbursement</li>
			<li>Commuter benefits</li>
		</ul>
		
		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">
		
		<H3 class="bac">Other opportunities, such as:</H3>
		<ul class="bac">
			<li>Volunteer time &mdash; Full-time associates receive up to two paid hours per week including travel time to volunteer at a local organization, including schools, shelters, food banks and mentoring programs</li>
			<li>Matching gifts program &mdash; Bank&nbsp;of&nbsp;America will match associate contributions to qualifying nonprofit organizations up to a specified amount each calendar year</li>
			<li>Volunteer grants &mdash; An unrestricted grant is made to any qualifying nonprofit organization for which an associate has committed substantial volunteer hours within a calendar year</li>
			<li>Commuter benefits</li>
		</ul>
		<br>
		<a name="footnote1"></a><p class="bac"><span style="font-size: 0.6em; position: relative; top: -0.6em;">1</span></span> <span class="s">Footnote 1: Benefits may vary by region. Please discuss specific benefit related questions with your recruiter.</span></p>
		<a name="footnote2"></a><p class="bac" style="margin-top: 6px;"><span style="font-size: 0.6em; position: relative; top: -0.6em;">2</span></span> <span class="s">Footnote 2: Associates are eligible after one year of full-time service or 1000 hours worked within a year.</span></p>
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
<H2 class="hidden">Benefits and Rewards EMEA</H2>
<a href="#" id="t2h" class="hide-tab" title="Benefits and Rewards EMEA">Benefits and Rewards EMEA</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="top" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Benefits and Rewards EMEA</H2></td>
		</tr>
		<tr>
			<td valign="top" align="right">
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t1" title="Benefits and Rewards Americas – includes US &amp; Canada" class="bacb">Benefits and Rewards Americas – includes US &amp; Canada</a></H2>
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t3" title="Benefits and Rewards Asia Pacific" class="bacb">Benefits and Rewards Asia Pacific</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt2" style="display: <% If tab = 2 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac">Bank&nbsp;of&nbsp;America offers a competitive benefits package to its associates which, we believe, is one of the best in the financial services industry.</p>

		<p class="bac">Bonuses and incentive programmes are important parts of the overall package. Associate Benefit Choices (ABC) is Bank&nbsp;of&nbsp;America&#39;s flexible benefits programme that encourages each associate to actively participate in the selection of their benefits package and gives them the freedom to choose benefits within certain criteria that work for each individual and their dependents.</p>

		<p class="bac">The package can be adapted as personal circumstances change. It is a programme designed to make the bank a better place to work and it is a key element of the company&#39;s proposition to associates.</p>

		<p class="bac">Within ABC there are a range of 22 benefits covering Financial, Health Care, Lifestyle and Leisure aspects of your life. Some of these benefits offer attractive Income Tax and National Insurance savings. The bank provides the opportunity for associates to receive employer matching contributions for pension, Give as You Earn, learning accounts, leisure accounts and certain health treatments.</p>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Benefits within the ABC package include:</H3>
		
		<H4 class="bac" style="margin: 12px 0px 0px 0px;">Financial</H4>
		<ul class="bac">
			<li>Critical Illness Insurance</li>
			<li>Group Income Protection</li>
			<li>Life Assurance</li>
			<li>Pension Plan</li>
			<li>Personal Accident Insurance</li>
		</ul>

		<H4 class="bac" style="margin: 12px 0px 0px 0px;">Health Care</H4>
		<ul class="bac">
			<li>Dental Cover</li>
			<li>Health Account</li>
			<li>Health Screening</li>
			<li>Optical Cover</li>
			<li>Private Health Care</li>
		</ul>

		<H4 class="bac" style="margin: 12px 0px 0px 0px;">Lifestyle</H4>
		<ul class="bac">
			<li>Car Parking</li>
			<li>Carbon Offsetting</li>
			<li>Childcare Vouchers</li>
			<li>Give As You Earn</li>
			<li>Mobile Phones</li>
			<li>Travel Insurance</li>
			<li>Vacation</li>
		</ul>

		<H4 class="bac" style="margin: 12px 0px 0px 0px;">Leisure</H4>
		<ul class="bac">
			<li>Bicycles 
			<li>Gym Membership (on-site)</li>
			<li>Learning Account</li>
			<li>Leisure Account</li>
			<li>Retail Vouchers</li>
		</ul>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Benefits outside of the ABC package include:</H3>
		<ul class="bac">
			<li>Personal Accident Insurance</li>
			<li>Short term sick pay (service-related provision)</li>
			<li>General Practitioner drop-in centre (Canary Wharf)</li>
			<li>Flu vaccinations (Oct/Nov)</li>
			<li>Optician expenses</li>
			<li>On-site physiotherapy</li>
			<li>Associate Discount Programme</li>
			<li>Flexible working policy</li>
			<li>Associate Assistance Programme</li>
			<li>Maternity, paternity and adoption leave -above statutory minimum parental leave</li>
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
<H2 class="hidden">Benefits and Rewards Asia Pacific</H2>
<a href="#" id="t3h" class="hide-tab" title="Benefits and Rewards Asia Pacific">Benefits and Rewards Asia Pacific</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="top" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Benefits and Rewards Asia Pacific</H2></td>
		</tr>
		<tr>
			<td valign="top" align="right">
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t1" title="Benefits and Rewards Americas – includes US &amp; Canada" class="bacb">Benefits and Rewards Americas – includes US &amp; Canada</a></H2>
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t2" title="Benefits and Rewards EMEA" class="bacb">Benefits and Rewards EMEA</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt3" style="display: <% If tab = 3 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		
		<p class="bac">Bank&nbsp;of&nbsp;America offers a competitive benefits package to its associates which, we believe, is one of the best in the financial services industry.</p>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<p class="bac">Our comprehensive package for full time associates can include:</p>
		
		<H3 class="bac" style="margin-top: 6px;">Health Care and Insurance </H3>
		<ul class="bac">
			<li>Comprehensive health care benefits include medical life and accident</li>
		</ul>
		
		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">
		
		<H3 class="bac">Work/Life Benefits</H3>
		<ul class="bac">
			<li>Flexible work arrangements</li>
			<li>Paid and unpaid time off</li>
			<li>Tuition reimbursement</li>
		</ul>
		
		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">
		
		<H3 class="bac">Other opportunities, such as:</H3>
		<ul class="bac">
			<li>Matching gifts program - Bank&nbsp;of&nbsp;America will match associate contributions to qualifying nonprofit organizations up to a specified amount each calendar year</li>
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
				<td width="185" height="100%" style="padding-top: 7px;" valign="top">
<!-- #include file="../../camprnav.asp" -->
				</td>
			</tr>
		</table>