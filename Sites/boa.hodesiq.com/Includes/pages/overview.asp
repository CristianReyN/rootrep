		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td valign="top" width="578" height="300">
<%
'On Error Resume Next
	countryid = Request("countryid")
		If countryid = "" Then countryid = "-1"
%>
				<%if page_section <> "ADA" Then %>
					<%if CInt(countryid) > 0 Then %>
						<!-- #include file="../regions.asp" -->
						<% Dim a_l_t
							image = getImage(  countryid, "", a_l_t )%>
						<img name="region" id="region" src="<%=image%>" alt="<%=a_l_t%>" border="0">
					<%Else%>
<script language="JavaScript1.2" src="../includes/flash.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
//<!--
hasRequestedVersion = DetectFlashVer(9, 0, 9);
if ( hasRequestedVersion ) {
	init_img();
	document.write('<table border="0" cellspacing="0" cellpadding="0" width="578" height="300"><tr><td valign="top" width="312"><div id="fdv" style="position: absolute; width: 578px; height: 300px; clip: rect(0 578 300 0);">'+flash+'<\/div></td>');
	document.write('<td valign="top" width="266"><img id="idvi" src="../images/clear.gif" style="position: absolute; width: 266px; height: 425px; clip: rect(0 266 425 0); display: none;" /></td></tr></table>');
} else {
	init_img();
	window.onload_do[window.onload_do.length] = function(){rotate_img("start");};
	document.write('<table border="0" cellspacing="0" cellpadding="0" width="578" height="300"><tr><td valign="top" width="312"><div id="fdv" style="position: absolute; width: 578px; height: 300px; clip: rect(0 578 300 0);">'+getReqFlashPlayerImg( "../images/whyworkhere_cc.jpg",9)+'<\/div></td>');
	document.write('<td valign="top" width="266"><img id="idvi" src="../images/clear.gif" style="position: absolute; width: 266px; height: 425px; clip: rect(0 266 425 0); display: none;" /></td></tr></table>');
}
//-->
</script>
<noscript>
<img src="../images/whyworkhere_cc.jpg" width="578" height="166" border="0" alt="Perform well. Get rewarded - that's why I work here." title="Perform well. Get rewarded - that's why I work here.">
</noscript>
<div class="hidden">Why Choose Bank of America? Perform well. Get rewarded - that's why I work here. My Success is up to me.</div>
					<%End If%>
				</td>
			</tr>
			<tr valign="top"><td valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0" align="left"></td></tr>
			<tr valign="top"><td valign="top">
<a name="skipflash"></a>
			</td></tr>
				<%Else%>
				<a href="#jobsearch" title="Jump to jobsearch"><a name="wab"></a><img src="../images/clear.gif" width="1" height="1" alt="Jump to jobsearch function" border="0" /></a><br clear="all">
<p style="margin: 9px 0px 3px 0px; font : normal 2.0em/1.25em Times New Roman, Times, serif; color: #333333;">
Why Choose Bank of America?
</p>
<p style="margin: 0px 0px 9px 0px; padding-left: 30px; font : normal 1.6em/1.25em Times New Roman, Times, serif; color: #777777;">
&ldquo;Perform well, get rewarded.<br>
That's why I work here.<br>
My success is up to me.&rdquo;<br>
</p>
<img src="../images/clear.gif" width="100%" height="4" alt="" border="0" class="divt">

<H2 class="h1" style="margin: 6px 0px 6px 0px;">Bank of Opportunity<br><span>Video Transcript</span></H2>
<p style="margin: 0px 0px 12px 0px;">
This is and will always be<br>
the land of opportunity.<br>
Fortunately, it comes with a bank.<br>
Bank of America,<br>
Bank of Opportunity.
</p>
<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
				<colgroup span="4" valign="top"></colgroup>
				<tr class="c1">
					<td width="25%" style="padding: 0 0 6 0;" valign="top">
						<p style="background-color: #ffffff; margin: 0; padding: 0 0 2 4;"><b>Benefits</b></p>
						<ul compact style="margin: 6 0 0 0; padding: 0 0 0 18;">
							<li>Rewarding Success</li>
							<li>Insurance Plans</li>
							<li>Reimbursement Accounts</li>
							<li>Retirement Plans</li>
							<li>Home Loans</li>
						</ul>
					</td>
					<td width="25%" style="padding: 0 0 6 0;" valign="top">
						<p style="background-color: #ffffff; margin: 0; padding: 0 0 2 4;"><b>History</b></p>
						<ul style="margin: 0 0 0 0; padding: 0 0 0 18;">
							<li>Rich in History<br></li>
							<li>Rich in Possibility<br></li>
							<li>Core Values<br></li>
							<li>Achieving Results<br></li>
							<li>Global Marketplace</li>
						</ul>
					</td>
					<td width="25%" style="padding: 0 0 6 0;" valign="top">
						<p style="background-color: #ffffff; margin: 0; padding: 0 0 2 4;"><b>Work/Life Balance</b></p>
						<ul style="margin: 0 0 0 0; padding: 0 0 0 18;">
							<li>Flexible Schedules<br></li>
							<li>Dependent Care Programs<br></li>
							<li>Tuition Reimbursement<br></li>
							<li>Volunteer Network<br></li>
							<li>Counseling Programs</li>
						</ul>
					</td>
					<td width="25%" style="padding: 0 0 6 0;" valign="top">
						<p style="background-color: #ffffff; margin: 0; padding: 0 0 2 4;"><b>Diversity</b></p>
						<ul style="margin: 0 0 0 0; padding: 0 0 0 18;">
							<li>Multicultural Environment<br></li>
							<li>Strength<br></li>
							<li>Diversity Councils<br></li>
							<li>Disability Resources<br></li>
							<li>Inclusive Culture</li>
						</ul>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
				<colgroup span="3" valign="top"></colgroup>
				<tr class="c1">
					<td width="33%" style="padding: 0 0 6 0;" valign="top">
						<p style="background-color: #ffffff; margin: 0; padding: 0 0 2 4;"><b>Financial Success</b></p>
						<ul style="margin: 0 0 0 0; padding: 0 0 0 18;">
							<li>Financial Success<br></li>
							<li>Bold Thinking<br></li>
							<li>Public Trust<br></li>
							<li>Growing Momentum<br></li>
							<li>Higher Standards<br></li>
							<li>Confidence<br></li>
							<li>High Earnings</li>
						</ul>
					</td>
					<td width="33%" style="padding: 0 0 6 0;" valign="top">
						<p style="background-color: #ffffff; margin: 0; padding: 0 0 2 4;"><b>Corporate Philanthropy</b></p>
						<ul style="margin: 0 0 0 0; padding: 0 0 0 18;">
							<li>Sustaining Communities<br></li>
							<li>Arts &amp; Culture<br></li>
							<li>Education<br></li>
							<li>Incredible Reach<br></li>
							<li>Commitment</li>
						</ul>
					</td>
					<td width="33%" style="padding: 0 0 6 0;" valign="top">
						<p style="background-color: #ffffff; margin: 0; padding: 0 0 2 4;"><b>Awards</b></p>
						<ul style="margin: 0 0 0 0; padding: 0 0 0 18;">
							<li>Best Company for Working Mothers<br></li>
							<li>Best Company for Diversity<br></li>
							<li>Top 100 Company for Hispanics<br></li>
							<li>Best Company for Latinas<br></li>
							<li>Top 50 Company for Supplier Diversity</li>
						</ul>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
				</td>
			</tr>
			<tr valign="top"><td valign="top" class="divb"><a name="skipflash"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></a></td></tr>
			<%end if%>
		</table>
		<a name="jobsearch"></a><a name="skipmaincontent"></a>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="378" height="100%" valign="top" style="padding: 12px 0px 0px 0px;">
<% jwidth = 378
style = "margin: 0px;"
overview_page = true %>
<!-- #include file="../jobsearch.asp" -->
					<table width="378" style="margin: 0px 0px 90px 0px;" cellpadding="0" cellspacing="0" border="0" summary="">
						<tr>
							<td colspan="2" valign="top" width="100%" style="padding: 0px 0px 0px 0px;">
<div id="L01" style="position: relative; z-index: 12;">
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<p style="margin: 3px 0px 0px 0px;">
Throughout Bank&nbsp;of&nbsp;America&#39;s history, we have held one purpose - to help everyone we work with realize their dreams. In fulfilling this purpose, a constant theme in our work has been &ldquo;opportunity.&rdquo;
</p>
<p style="margin: 6px 0px 0px 0px;">
We create opportunities for customers to buy a home, to attend college, or to retire with security. We create opportunities for businesses to grow. We create opportunities for all of us to build stronger communities in which to live and work. And, we also create opportunities for our associates to fulfill their personal and professional potential.
</p>
</div>
							</td>
						</tr>
						<tr>
							<td colspan="2" valign="top" style="padding: 3px 0px 0px 0px;">
<div id="L02" style="position: relative; z-index: 12;">
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<p style="margin: 3px 0px 6px 0px;">
<a href="eeoc.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Equal Employment Opportunity and Affirmative Action Statement">Equal Employment Opportunity and Affirmative Action Statement</a>
</p>
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<p style="margin: 3px 0px 6px 0px;">
<a href="eadpn.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Employment Application Data Protection Notice">Employment Application Data Protection Notice</a>
</p>
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
							</td>
						</tr>
					</table>
				</td>
				<td width="192" height="100%" valign="top" style="padding: 12px 0px 0px 4px;" id="foot">
<div style="text-align: center; margin: 0px; padding: 0px;">
<map name="opp_starts">
<area title="Opportunity starts here. Which line of business is right for you? Find out now &gt;&gt;&gt;" alt="Opportunity starts here. Which line of business is right for you? Find out now &gt;&gt;&gt;" coords="0,0,187,105" href="../<% If page_section <> "ADA" Then %>learnmore<% Else %>ada<% End If %>/lob.asp">
</map>
<img src="../images/clear.gif" width="100%" height="1" vspace="1" alt="" border="0" style="background: #989898;"><br clear="all">
<img src="../images/clear.gif" width="100%" height="1" vspace="0" alt="" border="0" style="background: #c9c9c9; margin: 0px 0px 6px 0px;"><br clear="all">
<img src="../images/opp_starts_home.jpg" width="187" height="105" border="0" style="margin: 6px 0px 0px 0px;" usemap="#opp_starts" alt="Opportunity starts here. Which line of business is right for you? Find out now &gt;&gt;&gt;"><br clear="all">
<div class="hidden">Opportunity starts here. Which line of business is right for you?. Find out now &gt;&gt;&gt;</div>
<img src="../images/clear.gif" width="100%" height="1" vspace="0" alt="" border="0" style="background: #c9c9c9; margin: 12px 0px 0px 0px;"><br clear="all">
<img src="../images/clear.gif" width="100%" height="1" vspace="1" alt="" border="0" style="background: #989898;"><br clear="all">
</div>


<div style="text-align: center; margin: 0px; padding: 0px;">
<map name="fin_adv">
<area title="Welcome Financial Advisor candidates. Find out more &gt;&gt;&gt;" alt="Welcome Financial Advisor candidates. Find out more &gt;&gt;&gt;" coords="0,0,187,105" href="../fard.aspx?<% If page_section <> "ADA" Then %>financialadvisor/<% Else %>ada/lobfa.asp<% End If %>">
</map>
<img src="../images/clear.gif" width="100%" height="1" vspace="0" alt="" border="0" style="background: #c9c9c9; margin: 0px 0px 6px 0px;"><br clear="all">
<img src="../images/finacial_advisor.jpg" width="187" height="105" border="0" style="margin: 6px 0px 0px 0px;" usemap="#fin_adv" alt="Welcome Financial Advisor candidates. Find out more &gt;&gt;&gt;"><br clear="all">
<div class="hidden">Welcome Financial Advisor candidates. Find out more &gt;&gt;&gt;</div>
<img src="../images/clear.gif" width="100%" height="1" vspace="0" alt="" border="0" style="background: #c9c9c9; margin: 12px 0px 0px 0px;"><br clear="all">
<img src="../images/clear.gif" width="100%" height="1" vspace="1" alt="" border="0" style="background: #989898;"><br clear="all">
</div>
<div style="text-align: center; margin: 0px; padding: 0px;">
<!-- #include file="../twitter.asp" -->
</div>
				</td>
			</tr>
		</table>