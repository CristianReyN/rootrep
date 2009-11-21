		<a name="skipmaincontent"></a><H1 style="margin: 0px <%=right_margin%>px 0px <%=left_margin_0%>px; padding: 0px;">Internships</H1>

		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="373" height="100%" valign="top" style="<%=middle_content_padding%>">
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">

<p style="margin: 0px;">Take the first step towards a rewarding career in financial services. Work alongside our world-class team of full-time associates, developing the personal and professional skills that can set the tone for your future success.</p>

<H2 class="p"><b>Eligibility</b></H2>

<p style="margin: 12px 0px 0px 0px;">Internships are available to full-time undergraduate or graduate students attending an accredited college/university who also meet the following requirements:</p>
<ul>
	<li>Overall GPA of 3.0 or above </li>
	<li>Business or technical-related majors</li>
	<li>Non-graduation status (graduation date no earlier than August of the year in which the internship takes place)</li>
	<li>Ability to work 40 hours per week for the entire program (10 to 12 weeks)</li>
</ul>

<p style="margin: 24px 0px 6px 0px;">
<a href="<% If page_section <> "ADA" Then %>../overview/<%End If%>eeoc.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Equal Employment Opportunity and Affirmative Action Statement">Equal Employment Opportunity and Affirmative Action Statement</a>
</p>

<H2 class="p"><b>Opportunity awaits</b></H2>

<p style="margin: 12px 0px 0px 0px;">We recruit for summer internship opportunities through mid-February. View complete <a href="<% If page_section <> "ADA" Then %>../learnmore/<%End If%>internships_details.asp"class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="See complete Internship details">internship details.</a></p>


<%	href_pre = ""
	if page_section <> "ADA" then href_pre = "../learnmore/" %>
<!-- #include file="../programs.asp" -->
<p style="margin: 12px 0px 12px 0px;">To send us your resume, simply sign in as a new or returning user and designate your internship(s) of interest from the following options:</p>
<% 	call getInternshipProgramForm(""," style=""width: 100%; margin: 0px 0px 6px 0px;""","--- Select A Program ---",href_pre,fpage)
%>
<br>
<!-- #include file="../sendresume.asp" -->

<p style="margin: 12px 0px 0px 0px;">You may also be interested in:</p>
<!-- #include file="../programsnav.asp" -->



				</td>
				<td width="205" height="100%" valign="top"><% lob_top = 8 %>
<!-- #include file="../lobnav.asp" -->
				</td>
			</tr>
		</table>