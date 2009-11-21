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
Because we want to take good care of the people who are at the heart of our business, Bank of America offers a generous rewards and benefits program.
</p>
		<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
var tab = <%=tab%>, cname = "tabstate_br";
var tabstate = getTabState(cname);
if(tabstate && tabstate != tab) self.location.replace("<%=page_self%>?t="+tabstate);
var tabs = new Array(), pageId = "<%=pageId%>", categoryId = "<%=categoryId%>";
tabs[0] = new Tab("U.S.","t1","../images/camp/t1.gif","../images/camp/t1a.gif","dt1");
tabs[1] = new Tab("EMEA","t2","../images/camp/t2.gif","../images/camp/t2a.gif","dt2");
tabs[2] = new Tab("Asia","t3","../images/camp/t3.gif","../images/camp/t3a.gif","dt3");
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
					<img id="t1" name="t1" class="h" src="../images/camp/t1<% If tab = 1 Then %>a<% End If %>.gif" border="0" alt="Benefits and Rewards U.S." /></td>
				<td valign="top">
					<img id="t2" name="t2" class="h" src="../images/camp/t2<% If tab = 2 Then %>a<% End If %>.gif" border="0" alt="Benefits and Rewards EMEA" /></td>
				<td valign="top">
					<img id="t3" name="t3" class="h" src="../images/camp/t3<% If tab = 3 Then %>a<% End If %>.gif" border="0" alt="Benefits and Rewards Asia" /></td>
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
		<% If page_section <> "ADA" Then %><H2 class="hidden">Benefits and Rewards U.S.</H2>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="top" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Benefits and Rewards U.S.</H2></td>
		</tr>
		<tr>
			<td valign="top" align="right">
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t2" title="Benefits and Rewards EMEA" class="bacb">Benefits and Rewards EMEA</a></H2>
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t3" title="Benefits and Rewards Asia" class="bacb">Benefits and Rewards Asia</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt1" style="display: <% If tab = 1 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac">Our comprehensive package includes<span style="font-size: 0.6em; position: relative; top: -0.6em;"><a href="#footnote1" title="Footnote 1 " class="p">&nbsp;1&nbsp;<span class="auraltext">Link to Footnote 1.</span></a></span></span>:</p>
		
		<H3 class="bac" style="margin-top: 6px;">Financial and retirement support</H3>
		<ul class="bac">
			<li>Discounts and additional benefits on a wide range of banking and investing products &mdash; including checking accounts with no monthly maintenance fee or balance requirement, free checks, free or discounted annual safe deposit box rental and no fees for traveler&#39;s checks among others</li>
			<li>401K and pension plan</li>
		</ul>
		
		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">
		
		<H3 class="bac">Health care and insurance</H3>
		<ul class="bac">
			<li>Comprehensive health care benefits include medical, dental and vision coverage, as well as Health Flex Spending Accounts</li>
		</ul>
		
		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">
		
		<H3 class="bac">Work/Life benefits</H3>
		<ul class="bac">
			<li>Flexible work arrangements</li>
			<li>Paid and unpaid time off</li>
			<li>Tuition reimbursement</li>
		</ul>
		
		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">
		
		<H3 class="bac">Other opportunities, such as:</H3>
		<ul class="bac">
			<li>Volunteer time &mdash; Full-time associates receive up to 2 paid hours per week including travel time to volunteer at a local organization, including schools, shelters, food banks and mentoring programs</li>
			<li>Matching gifts program &mdash; Bank of America will match associate contributions to qualifying nonprofit organizations up to a specified amount each calendar year</li>
			<li>Volunteer grants &mdash; An unrestricted grant is made to any qualifying nonprofit organization for which an associate has committed substantial volunteer hours within a calendar year</li>
			<li>Commuter benefits</li>
		</ul>
		<br>
		<a name="footnote1"></a><p class="bac"><span style="font-size: 0.6em; position: relative; top: -0.6em;">1</span></span> <span class="s">Footnote 1: Benefits may vary by region. Please discuss specific benefit related questions with your recruiter.</span></p>
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
		<% If page_section <> "ADA" Then %><H2 class="hidden">Benefits and Rewards EMEA</H2>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="top" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Benefits and Rewards EMEA</H2></td>
		</tr>
		<tr>
			<td valign="top" align="right">
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t1" title="Benefits and Rewards U.S." class="bacb">Benefits and Rewards U.S.</a></H2>
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t3" title="Benefits and Rewards Asia" class="bacb">Benefits and Rewards Asia</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt2" style="display: <% If tab = 2 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac">Bank of America offers an award winning competitive benefits package to its associates which, we believe, is one of the best in the financial services industry.</p>

		<p class="bac">Bonuses and incentive programmes are important parts of the overall package.  Associate Benefit Choices (ABC) is Bank of America&#39;s flexible benefits programme that encourages each associate to actively participate in the selection of their benefits package and gives them the freedom to choose benefits within certain criteria that work for each individual and their dependants.</p>

		<p class="bac">The package can be adapted as personal circumstances change. It is a programme designed to make the bank a better place to work and it is a key element of the company&#39;s proposition to associates.</p>

		<p class="bac">Within ABC there are a range of twenty benefits covering Financial, Healthcare, Lifestyle and Leisure aspects of your life. Some of these benefits offer attractive Income Tax and National Insurance savings. The bank provides the opportunity for associates to receive employer matching contributions for pension, Give as You Earn, learning accounts, leisure accounts and certain health treatments.</p>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Benefits within the ABC package include:</H3>
		
		<H4 class="bac" style="margin: 12px 0px 0px 0px;">Financial</H4>
		<ul class="bac">
			<li>Critical Illness Insurance</li>
			<li>Group Income Protection</li>
			<li>Life Assurance</li>
			<li>Pension Plan</li>
		</ul>

		<H4 class="bac" style="margin: 12px 0px 0px 0px;">Healthcare</H4>
		<ul class="bac">
			<li>Dental Cover</li>
			<li>Health Account</li>
			<li>Health Screening</li>
			<li>Optical Cover</li>
			<li>Private Healthcare</li>
		</ul>

		<H4 class="bac" style="margin: 12px 0px 0px 0px;">Lifestyle</H4>
		<ul class="bac">
			<li>Car Parking</li>
			<li>Childcare Vouchers</li>
			<li>Give As You Earn</li>
			<li>Mobile Telephone</li>
			<li>Travel Insurance</li>
			<li>Vacation</li>
		</ul>

		<H4 class="bac" style="margin: 12px 0px 0px 0px;">Leisure</H4>
		<ul class="bac">
			<li>Bicycles</li>
			<li>Learning Account</li>
			<li>Leisure Account</li>
			<li>Retail Vouchers</li>
		</ul>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Benefits outside of the ABC package include:</H3>
		<ul class="bac">
			<li>Personal Accident Insurance</li>
			<li>Short term sick pay (service-related provision)</li>
			<li>GP drop-in centre (Canary Wharf)</li>
			<li>Flu vaccinations (Oct/Nov)</li>
			<li>Optician expenses</li>
			<li>On-site physiotherapy</li>
			<li>On-site gymnasium (Canary Wharf and Chester)</li>
			<li>Associate Discount Programme</li>
			<li>Flexible working policy</li>
			<li>Employee Assistance Programme</li>
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
		<% If page_section <> "ADA" Then %><H2 class="hidden">Benefits and Rewards Asia</H2>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="top" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Benefits and Rewards Asia</H2></td>
		</tr>
		<tr>
			<td valign="top" align="right">
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t1" title="Benefits and Rewards U.S." class="bacb">Benefits and Rewards U.S.</a></H2>
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t2" title="Benefits and Rewards EMEA" class="bacb">Benefits and Rewards EMEA</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt3" style="display: <% If tab = 3 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<H3 class="bac" style="margin-top: 6px;">Benefits</H3>
		<p class="bac">We offer one of the most competitive benefits packages in the financial services industry.</p>
		
		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">
		
		<H3 class="bac">Performance-based compensation</H3>
		<p class="bac">In addition to strong base compensation, bonuses and incentive programs are important parts of our overall compensation package.</p>
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