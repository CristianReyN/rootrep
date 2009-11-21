<%
Dim tab
tab = 1
If Request("t") <> "" Then tab = Request("t")
%>
		<img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom-3)%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="393" height="100%" valign="top" style="<%=middle_content_padding%>">
<a name="skipmaincontent"></a><h1 class="bac">Internships</h1>
					<p class="bac">An internship at Bank of America is more than an impressive line on a resume. Here you'll work alongside our full-time associates performing real tasks with the potential for measurable impact on our business. The skill-building and networking opportunities you'll get with us can make all the difference after graduation.</p>
					<ul class="bac" style="margin-top: 12px;<% If page_section <> "ADA" Then %> margin-bottom: 12px;<% End If %>">
						<li><a href="undergraduate_internships.asp" class="bacb" title="Undergraduate Internships">Undergraduate Internships</a></li>
						<li><a href="graduate_internships.asp" class="bacb" title="Graduate Internships">Graduate Internships</a></li>
					</ul>
		<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
var tab = <%=tab%>, cname = "tabstate_in";
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
		<table width="100%" cellpadding="0" cellspacing="0" border="0" style="margin-top: 12px;" summary="">
			<tr>
				<td valign="top">
					<img src="../images/camp/t1a.gif" border="0" alt="U.S." /></td>
				<td valign="top">
					<a href="#t2"><img src="../images/camp/t2.gif" border="0" alt="EMEA" /></a></td>
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
		<h2 class="bac">Eligibility</h2>
		<p class="bac">Internships are available to full-time undergraduate or graduate students attending an accredited college/university who also meet the following requirements:</p>
		<ul class="bac">
			<li>Overall GPA of 3.0 or above</li>
			<li>Business or technical-related majors</li>
			<li>Non-graduation status (graduation date no earlier than August of the year in which your internship takes place)</li>
			<li>Ability to work 40 hours per week for the entire program (10 to 12 weeks)</li>
		</ul>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<h2 class="bac">Internship Benefits</h2>
		<p class="bac" style="margin-left: 24px;"><b>Compensation</b> - We offer competitive compensation and benefits such as access to Associate Banking and 2 paid days off if you work more than 10 weeks. You'll be classified as a temporary associate for benefits purposes.</p>
	
		<p class="bac" style="margin-left: 24px;"><b>Networking</b> - You'll have the chance to meet and interact with senior executives at a variety of meetings and receptions. In addition, volunteer and social activities are great opportunities to meet other interns.</p>
	
		<p class="bac" style="margin-left: 24px;"><b>Professional development</b> - Your work will be measurable, challenging and realistic. To give you practice interacting with managers and demonstrating your business acumen, you'll present a summary of your project work to both managers and peers at the end of your internship.</p>
	
		<p class="bac" style="margin-left: 24px;"><b>Guidance</b> - At the beginning of the summer, managers will help you develop a performance plan to establish goals and objectives. These plans are reviewed during your final performance evaluation. You'll also be paired with a mentor for one-to-one guidance during your time with us.</p>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<h2 class="bac">Important Dates</h2>
		<p class="bac">Internships typically begin in May and continue through August. The application deadline is mid-February of each year, and open positions are usually filled by mid-April.</p>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<h2 class="bac">Locations</h2>
		<p class="bac">Most of our internship opportunities are in:</p>
		<table cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<ul class="bac">
						<li>Atlanta</li>
						<li>Boston</li>
						<li>Concord</li>
						<li>Dallas</li>
						<li>Jacksonville</li>
						<li>Los Angeles</li>
						<li>Miami</li>
					</ul>
				</td>
				<td valign="top">
					<ul class="bac">
						<li>Charlotte</li>
						<li>Chicago</li>
						<li>New York City</li>
						<li>Phoenix</li>
						<li>San Francisco</li>
						<li>Tampa</li>
						<li>Washington, DC</li>
					</ul>
				</td>
			</tr>
		</table>
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
		<p class="bac">Bank of America's summer analyst programme is the ideal opportunity to gain an introduction into the world of banking. The 10-week programme kicks off with an induction week covering core skills before you hit your desk where you will work along side our fulltime associates gaining valuable work experience in the financial industry.</p>

		<p class="bac">Throughout the summer, as well as receiving support from your line manager, HR and a buddy, you will also experience a number of social and educational events giving you a great insight into Bank of America.  There will be an opportunity to receive formal feedback in the middle and at the end of your internship.</p>

		<p class="bac">Candidates must demonstrate a combination of academic aptitude, quantitative skills, strategic and creative thinking and written and oral communications skills.  In addition you must be realistically expecting to obtain a minimum 2:1 degree or equivalent.  Underlying all this, you must demonstrate dedication to a career in banking.</p>
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
				<td width="185" height="100%" valign="top" style="padding-top: 7px;">
<!-- #include file="../../camprnav.asp" -->
				</td>
			</tr>
		</table>