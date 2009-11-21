		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td valign="top" width="578" height="166">
				<%if page_section <> "ADA" then %>
<script language="JavaScript1.2" type="text/javascript">
//<!--
function hover(ref, classRef) { eval(ref).className = classRef; }
function showFlash(bc){
	document.getElementById("flash_in2").innerHTML = bc;
	document.getElementById('flash_in2').style.display = 'inline';
	document.getElementById('image2').style.display = 'none';
	createStopAudio(stopWABAudio);
	hideVirtualHost(1);
	fixIE(true);
}

function hideVirtualHost(k){if(document.getElementById("flash_in")){
	if(!hiddenFlash) hiddenFlash = document.getElementById("flash_in").innerHTML;
	document.getElementById("flash_in").innerHTML = '<table width="160" height="60" cellpadding="0" cellspacing="0" border="0" summary="" style="margin-top: 30px; background: #ebebeb; border-top: 1px solid #dadada; border-bottom: 1px solid #dadada;"><tr><td style="padding: 5px 11px 5px 12px;"><div style="border: 1px solid #dadada;"><img src="../images/virtual-host.jpg" width="52" height="52" alt="Replay Video Host" border="0" style="border: 1px solid #ebebeb;"><\/div><\/td><td width="100%"><p style="margin: 0px;"><a href="Javascript: replayVirtualHost();" title="Replay Video Host" class="p" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';">Replay<br>video host<\/a><\/p><p style="margin: 6px 0px 0px 0px;"><a href="<%=ada_href %>" title="Video transcripts" class="p" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';">Video<br>transcripts<\/a><\/p><\/td><\/tr><\/table>';
	if(document.getElementById("videotranscript"))
	{
		document.getElementById("videotranscript").innerHTML = k==0?"<%=textonly_version%>":"Video transcripts";
		document.getElementById("videotranscript").title = "<%=ada_title %>";
		document.getElementById("videotranscript").href = "<%=ada_href %>";
	}
}}

function replayVirtualHost(){if(document.getElementById("flash_in")&& hiddenFlash){
	document.getElementById("flash_in").innerHTML = hiddenFlash;
	if(document.getElementById("videotranscript"))
	{
		document.getElementById("videotranscript").innerHTML = "Video transcripts";
		document.getElementById("videotranscript").title = "<%=ada_title %>";
		document.getElementById("videotranscript").href = "<%=ada_href %>";
	}
	createStopAudio(stopVHAudio);
	hideWeAreBankers();
	fixIE(true);
}}

function hideWeAreBankers(){if(document.getElementById("flash_in2") && document.getElementById('image2')){
	document.getElementById("flash_in2").innerHTML = "";
	document.getElementById('flash_in2').style.display = "none";
	document.getElementById('image2').style.display = "inline";
}}

function hideBothVideo(){
	hideVirtualHost(0);
	hideWeAreBankers();
	removeStopAudio();
}
	window.hideFlash = hideBothVideo;

if ( hasRequestedVersion ) {
	document.write('<div id="flash_in2" style="display: none; position: absolute; width: 578; height: 166; clip: rect(0 578 166 0);">');
	document.write('<\/div>');
	document.write('<div id="image2" style="display: inline;">');
	document.write('<a class="auraltext" href="JavaScript: ow(\'bc_cc\');" onFocus="hover(this,\'show-tab\');" onblur="hover(this,\'auraltext\');" title="'+accessFlash+'">'+accessFlash+'<\/a>');
	document.write('<img src="../images/whyworkhere_cc.jpg" width="578" height="166" border="0" usemap="#whywork" alt="Perform well. Get rewarded - that\'s why I work here." title="Perform well. Get rewarded - that\'s why I work here.">');
document.write('<map name="whywork"><area alt="Why Work Here" title="Why Work Here" shape="poly" coords="0,0,0,166,545,166,545,147,551,141,572,141,578,147,578,0" href="Javascript: showFlash(bc_ns);"><area alt="Why Work Here CC" title="Why Work Here CC" shape="poly" coords="545,166,545,147,551,141,572,141,578,147,578,166" href="Javascript: showFlash(bc_cc);"><\/map>');
	document.write('<\/div>');
} else {
	document.write('<a href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version."><img src="../images/whyworkhere_cc.jpg" width="578" height="166" alt="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." border="0" style="margin: 0px;" /><\/a><br>'+reqFlashPlayer+'<br><br>'); 
}
//-->
</script>
<noscript>
<img src="../images/whyworkhere_cc.jpg" width="578" height="166" border="0" alt="Perform well. Get rewarded - that's why I work here." title="Perform well. Get rewarded - that's why I work here.">
</noscript>
<div class="hidden">Why Choose Bank of America? Perform well. Get rewarded - that's why I work here. My Success is up to me.</div>
				</td>
			</tr>
			<tr valign="top"><td valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0" align="left">
			</td></tr>
			<tr valign="top"><td valign="top">
<a name="skipflash"></a>
			</td></tr>
				<%else%>
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
		<table width="578"  cellpadding="0" cellspacing="0" border="0" summary="">
<!-- #include file="../jsearch.asp" -->
			<tr valign="top">
				<td width="386" height="100%" valign="top" style="padding: 0px 0px 0px 0px;">
<H2 class="h1" style="margin: 0px 0px;">Guided Job Search</H2>
<img src="../images/clear.gif" width="100%" height="1" alt="" border="0" class="divb"><br clear="all">
<form name="jsearch" action="<% Response.write job_search_action %>" style="margin: 0px;">
<input type="hidden" name="from" id="from" value="<% Response.write page_self %>">
					<table width="378" style="margin: 6px 0px 0px 0px;" cellpadding="0" cellspacing="0" border="0" summary="">
						<tr>
							<td colspan="2" style="padding: 0px;">
<p style="margin: 0px;">Use the Search below to find a career suited to your skill set.  You may narrow your selection further by selecting a job area, location or entering a keyword.</p>
<p style="margin: 6px 0px 0px 0px;">
Bank of America and Countrywide Financial have officially joined forces to become America's leading home loan provider. The combination of our businesses creates some of the most exciting career opportunities in the industry. In addition to searching for career opportunities at Bank of America on this site, you can also search for Countrywide Financial positions at <a href="http://www.countrywidecareers.com/" class="p" title="Countrywide Financial" target="_blank">http://www.countrywidecareers.com/</a>.</p>
<p style="margin: 6px 0px 0px 0px;">
Bank of America associates should access the <a href="http://www.bankofamerica.com/careers/index.cfm?template=jobs_interstitial" class="p" title="Internal Jobs Database">internal jobs database</a>.</p>
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
							</td>
						</tr>
						<tr>
							<td colspan="2" nowrap style="padding: 0px;">
<label for="jobareas" class="p" style="margin: 0px;"><b>Job areas</b></label>
							</td>
						</tr>
						<tr>
							<td colspan="2" valign="top" width="100%">
<% 
	call getJobAreasSelect(""," style=""width: 100%;""")
%>
							</td>
						</tr>
						<tr>
							<td colspan="2" nowrap style="padding: 0px;">
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
							</td>
						</tr>
						<tr>
							<td colspan="2" nowrap style="padding: 0px;">
<label for="stateid" class="p" style="margin: 0px;"><b>Locations</b></label>
							</td>
						</tr>
						<tr>
							<td colspan="2" valign="top" width="100%">
<% 
	call getStateSelect(""," style=""width: 100%;""")
%>
							</td>
						</tr>
						<tr>
							<td colspan="2" nowrap style="padding: 0px;">
<label for="keywords" class="p" style="margin: 0px 0px 6px 0px; line-height: 1.0em;"><b>Keywords or job number (if known)</b></label>
							</td>
						</tr>
						<tr>
							<td colspan="2" valign="top" width="100%">
<div id="Layer1" style="position: relative; z-index: 12;">
<input type="text" name="keywords" id="keywords" value="<%Response.write keywords%>" size="20" style="width: 100%;">
</div>
							</td>
						</tr>
						<tr>
							<td colspan="2" valign="top" width="100%" style="padding: 6px 0px 0px 0px;">
<div id="Layer2" style="position: relative; z-index: 12;">
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Begin Search","javascript: document.jsearch.submit();",0,0,0,0,"Begin Search");
//-->
</script>
<noscript><input type="submit" name="bsearch" value="Begin Search" alt="Begin Search" title="Begin Search"  class="btn"/></noscript>
</div>
							</td>
						</tr>
						<tr>
							<td colspan="2" valign="top" width="100%" style="padding: 0px 0px 0px 0px;">
<div id="Layer3" style="position: relative; z-index: 12;">
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<p class="ada-label">Manage Your Profile. You are encouraged to complete the online candidate profile, however if you have difficulty, you should:</p>
<ul class="ada-label">
	<li>Email your resume to <a href="mailto:"bac@resume.bankofamerica.com>bac@resume.bankofamerica.com</a></li>
	<li>In the Subject Line of your email, include "Source = Bank of America Careers"</li>
</ul>
<a href="<%="../profilerd.aspx?" & server.urlencode("https://bacfhrs.taleo.net/servlets/CareerSection?art_ip_action=FlowDispatcher&flowTypeNo=3&alt=1&art_servlet_language=en&csNo=2") %>" target="_blank" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" style="margin: 3px 0px 0px 0px;" title="Manage Your Profile">Manage Your Profile<span class="ada-label">If you have any difficulties, refer to above alternatives.</span></a>
<p style="margin: 3px 0px 0px 0px;">Create or update your existing candidate profile.</p>
</div>
							</td>
						</tr>
						<tr>
							<td colspan="2" valign="top" style="padding: 3px 0px 0px 0px;">
<div id="Layer4" style="position: relative; z-index: 12;">
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<br>
<a href="eeoc.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Equal Employment Opportunity and Affirmative Action Statement">Equal Employment Opportunity and Affirmative Action Statement</a>
<br>
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<br>
<a href="eadpn.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Employment Application Data Protection Notice">Employment Application Data Protection Notice</a>

</div>
							</td>
						</tr>
					</table>
</form>
<br><br>
				</td>
				<td width="192" height="100%" valign="top" style="padding: 0px 0px 0px 0px;">
<H2 class="h1" style="margin: 0px 0px 0px 4px;">Related Information</H2>
<img src="../images/clear.gif" width="100%" height="1" alt="" border="0" class="divb"><br clear="all">
					<table width="192" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 0px 0px 0px 0px;">
						<tr valign="top">
							<td width="192" height="100%" valign="top" class="divl" style="padding: 6px 0px 0px 4px;">
<p style="margin: 0px;">Here you'll find valuable information to help you in your decision making process.</p>
<!-- #include file="../relinfonav.asp" -->
<br><br>

<div style="text-align: center; margin: 0px; padding: 0px;">
<!-- #include file="../talkingatm.html" -->
</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>