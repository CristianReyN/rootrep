<%
Dim tab
tab = 1
If Request("t") <> "" Then tab = Request("t")
%>
		<img src="../images/clear.gif" width="100%" height="<%=(top_content_padding_bottom-3)%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="393" height="100%" valign="top" style="<%=middle_content_padding%>">
<a name="skipmaincontent"></a><H1 class="bac">Internships</H1>
					<p class="bac">An internship at Bank&nbsp;of&nbsp;America is more than an impressive line on a resume. Here you&#39;ll work alongside our full-time associates performing real tasks with the potential for measurable impact on our business. The skill-building and networking opportunities you&#39;ll get with us can make all the difference after graduation.</p>
					<ul class="bac" style="margin-top: 12px;<% If page_section <> "ADA" Then %> margin-bottom: 12px;<% End If %>">
						<li><a href="analyst_internships.asp" class="bacb" title="Analyst Internships">Analyst internships</a></li>
						<li><a href="associate_phd_internships.asp" class="bacb" title="Associate & PhD internships">Associate &amp; PhD internships</a></li>
					</ul>
		<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../includes/tab.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
var tab = <%=tab%>, cname = "tabstate_in";
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
					<img id="t1" name="t1" class="h" src="../images/camp/t_americas<% If tab = 1 Then %>_a<% End If %>.gif" border="0" alt="Internships Americas – includes US &amp; Canada" /></td>
				<td valign="top">
					<img id="t2" name="t2" class="h" src="../images/camp/t_emea<% If tab = 2 Then %>_a<% End If %>.gif" border="0" alt="Internships EMEA" /></td>
				<td valign="top">
					<img id="t3" name="t3" class="h" src="../images/camp/t_asia_pacific<% If tab = 3 Then %>_a<% End If %>.gif" border="0" alt="Internships Asia Pacific" /></td>
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
<H2 class="hidden">Internships Americas – includes US &amp; Canada</H2>
<a href="#" id="t1h" class="hide-tab" title="Internships Americas – includes US &amp; Canada">Internships Americas – includes US &amp; Canada</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px 0px 0px;">
		<tr>
			<td valign="bottom" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Internships Americas – includes US &amp; Canada</H2></td>
			<td valign="bottom">
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t2" title="Internships EMEA" class="bacb">Internships EMEA</a></H2>
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t3" title="Internships Asia Pacific" class="bacb">Internships Asia Pacific</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt1" style="display: <% If tab = 1 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<H3 class="bac">Eligibility</H3>
		<p class="bac">Internships are available to full-time undergraduate or graduate students attending an accredited college/university who also meet the following requirements:</p>
		<ul class="bac">
			<li>Overall GPA of 3.0 or above<span style="font-size: 0.6em; position: relative; top: -0.6em;"><a href="#footnote1" title="Footnote 1 " class="p">&nbsp;1&nbsp;<span class="auraltext">Link to Footnote 1.</span></a></span></span></li>
			<li>Non-graduation status (graduation date no earlier than August of the next year in which your internship takes place)</li>
			<li>Ability to work 40 hours per week for the entire program (10 to 12 weeks)<span style="font-size: 0.6em; position: relative; top: -0.6em;"><a href="#footnote1" title="Footnote 1 " class="p">&nbsp;1&nbsp;<span class="auraltext">Link to Footnote 1.</span></a></span></span></li>
		</ul>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Internship Benefits</H3>
		<p class="bac" style="margin-left: 24px;"><b>Compensation</b> - We offer competitive compensation and benefits such as access to Associate Banking and two paid days off if you work more than 10 weeks. You&#39;ll be classified as a temporary associate for benefits purposes.<span style="font-size: 0.6em; position: relative; top: -0.6em;"><a href="#footnote1" title="Footnote 1 " class="p">&nbsp;1&nbsp;<span class="auraltext">Link to Footnote 1.</span></a></span></span></p>
	
		<p class="bac" style="margin-left: 24px;"><b>Networking</b> - You&#39;ll have the chance to meet and interact with senior executives at a variety of meetings and receptions. In addition, volunteer and social activities are great opportunities to meet other interns.</p>
	
		<p class="bac" style="margin-left: 24px;"><b>Professional Development</b> - Your work will be measurable, challenging and realistic. To give you practice interacting with managers and demonstrating your business acumen, you&#39;ll present a summary of your project work to both managers and peers at the end of your internship.<span style="font-size: 0.6em; position: relative; top: -0.6em;"><a href="#footnote1" title="Footnote 1 " class="p">&nbsp;1&nbsp;<span class="auraltext">Link to Footnote 1.</span></a></span></span></p>
	
		<p class="bac" style="margin-left: 24px;"><b>Guidance</b> - At the beginning of the summer, managers will help you develop a performance plan to establish goals and objectives. These plans are reviewed during your final performance evaluation. You&#39;ll also be paired with a mentor for one-to-one guidance during your time with us.<span style="font-size: 0.6em; position: relative; top: -0.6em;"><a href="#footnote1" title="Footnote 1 " class="p">&nbsp;1&nbsp;<span class="auraltext">Link to Footnote 1.</span></a></span></span></p>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Important Dates</H3>
		<p class="bac">Internships typically begin in May/June and continue through August. The application deadline is mid-February of each year, and open positions are usually filled by mid-April.</p>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Locations</H3>
		<p class="bac">Most of our U.S. internship opportunities are in:</p>
		<table cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<ul class="bac">
						<li>Atlanta</li>
						<li>Boston</li>
						<li>Charlotte</li>
						<li>Chicago</li>
						<li>Concord</li>
						<li>Dallas</li>
						<li>Jacksonville</li>
					</ul>
				</td>
				<td valign="top">
					<ul class="bac">
						<li>Los Angeles</li>
						<li>Miami</li>
						<li>New York City</li>
						<li>Phoenix</li>
						<li>San Francisco</li>
						<li>Tampa</li>
						<li>Washington, DC</li>
					</ul>
				</td>
			</tr>
		</table>
		<p class="bac">Most of our Canada internship opportunities are in:</p>
		<table cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<ul class="bac">
						<li>Calgary</li>
						<li>Montreal</li>
						<li>Toronto</li>
					</ul>
				</td>
			</tr>
		</table>
		<br>
		<a name="footnote1"></a><p class="bac"><span style="font-size: 0.6em; position: relative; top: -0.6em;">1</span></span> <span class="s">Footnote 1: Benefits and eligibility may vary by region. Please discuss questions with your recruiter.</span></p>
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
<H2 class="hidden">Internships EMEA</H2>
<a href="#" id="t2h" class="hide-tab" title="Internships EMEA">Internships EMEA</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="bottom" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Internships EMEA</H2></td>
			<td valign="bottom">
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t1" title="Internships Americas – includes US &amp; Canada" class="bacb">Internships Americas – includes US &amp; Canada</a></H2>
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t3" title="Internships Asia Pacific" class="bacb">Internships Asia Pacific</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt2" style="display: <% If tab = 2 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<p class="bac" style="margin: 0px 0px 12px 0px;">Bank&nbsp;of&nbsp;America&#39;s summer internship programme is the ideal opportunity to gain an introduction into the world of banking. The nine week programme kicks off with an induction week covering core skills where you will work along side our fulltime associates gaining valuable work experience in the financial industry.</p>
		
		<H3 class="bac">Eligibility</H3>
		<ul class="bac">
			<li>Our nine week summer programme is aimed at penultimate year students (analyst) or first year MBA students (associate).</li>
			<li>Candidates must demonstrate a combination of academic aptitude, quantitative skills, strategic and creative thinking and written and oral communications skills.</li>
			<li>In addition, you must be realistically expecting to obtain a minimum 2:1 degree or equivalent for our analyst internships.</li>
		</ul>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Internship Benefits</H3>
		<p class="bac" style="margin-left: 24px;"><b>Compensation</b> - We offer competitive compensation and benefits.</p>
	
		<p class="bac" style="margin-left: 24px;"><b>Networking</b> - You&#39;ll have the chance to meet and interact with senior executives at a variety of meetings and receptions. In addition a community volunteer day and social activities are great opportunities to meet other interns.</p>
	
		<p class="bac" style="margin-left: 24px;"><b>Professional Development</b> - Your work will be measurable, challenging and realistic.  Depending on your business area, you&#39;ll either stay with one group or complete a series of rotations. Either way, you&#39;ll be treated as an integral member of the team and expected to add real value.  Fully supported by structured training, you&#39;ll also be assigned a mentor who will help you make the most of your internship.</p>
	
		<p class="bac" style="margin-left: 24px;"><b>Guidance</b> - Throughout the summer, as well as receiving support from your line manager, HR and a buddy, you will also experience a number of social and educational events giving you a great insight into Bank&nbsp;of&nbsp;America. There will be an opportunity to receive formal feedback in the middle and at the end of your internship. Managers will also help you develop a performance plan to establish goals and objectives.</p>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Important Dates</H3>
		<p class="bac">Internships typically begin in June and continue through August. The application deadline is in December of each year, and open positions are usually filled by February.</p>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Locations</H3>
		<p class="bac">Most of our internship opportunities are in:</p>
		<table cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<ul class="bac">
						<li>Frankfurt</li>
						<li>London</li>
						<li>Madrid</li>
						<li>Milan</li>
						<li>Paris</li>
						<li>Camberley</li>
						<li>Croydon</li>
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
<H2 class="hidden">Internships Asia Pacific</H2>
<a href="#" id="t3h" class="hide-tab" title="Internships Asia Pacific">Internships Asia Pacific</a>
		<% ElseIf page_section = "ADA" Then %>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 18px 0px -12px 0px;">
		<tr>
			<td valign="bottom" nowrap><H2 class="bach" style="margin: 0px 12px 0px 12px;">Internships Asia Pacific</H2></td>
			<td valign="bottom">
				<H2 class="bac" style="margin: 0px 12px 0px 12px;"><a href="#t1" title="Internships Americas – includes US &amp; Canada" class="bacb">Internships Americas – includes US &amp; Canada</a></H2>
				<H2 class="bac" style="margin: 6px 12px 0px 12px;"><a href="#t2" title="Internships EMEA" class="bacb">Internships EMEA</a></H2>
			</td>
		</tr>
		</table>
		<% End If %>
<div id="dt3" style="display: <% If tab = 3 Or page_section = "ADA" Then %>inline<% Else %>none<% End If %>;">
	<div class="innerTab">
		<H3 class="bac">Eligibility</H3>
		<p class="bac">Internships are available to full-time undergraduate and graduate students attending an accredited college/university who also meet the following requirements:</p>
		<ul class="bac">
			<li>Minimum GPA of 3.4/4 or minimum 2:1 degree (UK system)<span style="font-size: 0.6em; position: relative; top: -0.6em;"><a href="#footnote11" title="Footnote 1 " class="p">&nbsp;1&nbsp;<span class="auraltext">Link to Footnote 1.</span></a></span></span></li>
			<li>Non-graduation status (graduation date no earlier than August of the year in which your internship takes place)</li>
			<li>Ability to commit to the entire program (typically 10-12 weeks)</li>
		</ul>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Internship Benefits</H3>
		<p class="bac" style="margin-left: 24px;"><b>Compensation</b> - We offer competitive compensation and benefits.</p>
	
		<p class="bac" style="margin-left: 24px;"><b>Networking</b> - You&#39;ll have the chance to meet and interact with senior executives at a variety of meetings, receptions and social events.</p>
	
		<p class="bac" style="margin-left: 24px;"><b>Professional Development</b> - Upon joining you will undergo a short orientation and induction to the company.  In addition, you will receive relevant ongoing training during the internship.  Your work will be measurable, challenging and realistic. To give you practice interacting with managers and demonstrating your business acumen, you&#39;ll have the opportunity to present to both managers and peers at the end of your internship.</p>
	
		<p class="bac" style="margin-left: 24px;"><b>Guidance</b> - At the beginning of the internship, managers will help you develop a performance plan to establish goals and objectives. These plans will be reviewed during your performance evaluation during your internship through formal constructive feedback sessions. You&#39;ll also be paired with a mentor for one-to-one guidance and a buddy to help you assimilate from school to work during your time with us.</p>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Important Dates</H3>
		<p class="bac">Internship application and program dates vary depending on location.  Please check dates to ensure eligibility and a timely application.</p>

		<img src="../images/clear.gif" class="bac" alt=""><br clear="all">

		<H3 class="bac">Locations</H3>
		<p class="bac">Most of our internship opportunities are in:</p>
		<table cellpadding="0" cellspacing="0" border="0" summary="">
			<tr>
				<td valign="top">
					<ul class="bac">
						<li>Australia</li>
						<li>Hong Kong</li>
						<li>India</li>
						<li>Japan</li>
						<li>Singapore</li>
					</ul>
				</td>
			</tr>
		</table>
		<br>
		<a name="footnote11"></a><p class="bac"><span style="font-size: 0.6em; position: relative; top: -0.6em;">1</span></span> <span class="s">Footnote 1: Please check individual job descriptions as some programs have a higher minimum GPA.</span></p>
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