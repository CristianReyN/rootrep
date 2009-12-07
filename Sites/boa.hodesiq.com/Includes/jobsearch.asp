<!-- #include file="jsearch.asp" -->
<%
On Error Resume Next
Dim jwdt, style
jwdt = 192
If jwidth Then jwdt = jwidth
stl = "margin: 0px 5px 0px 4px"
If style <> "" Then stl = style%>
<%
	begin = "Begin Search"
	disabled = ""
	disabled_country = ""
	display = ""
	disable_state = ""
	display_state = ""
	disable_city = ""
	display_manage = ""
	display_canada = " display: none;"
	display_begin = ""
	countryid = Request("countryid")
		If countryid = "" Then countryid = "-1"
		If countryid = "-1" Or countryid = "2" Then
			disabled = " disabled"
			disabled_country = " disabled"
			display = " display: none;"
			begin = "Begin"
			disable_city = " disabled"
		End If
		If countryid = "2" Then
			disabled_country = ""
			begin = "Begin Search"
			display_canada = ""
			display_begin = " display: none;"
		End If
		If countryid <> "1" Then
			disable_state = " disabled"
			display_state = " display: none;"
			display_manage = " display: none;"
		End If
	stateid = Request("stateid")
		If stateid = "" Then stateid = "-1"
	cityid = Request("cityid")
		If cityid = "" Then cityid = "-1"
		If countryid = "1" AND stateid = "-1" Then
			disable_city = " disabled"
		End If
	jobareas = Request("jobareas")
	jobfamilyid = Request("jobfamilyid")
		If jobfamilyid = "" Then jobfamilyid = "-1"
	keywords = Request("keywords")
%>
<script language="JavaScript" type="text/javascript">

function _submit()
{
	if(<%If disabled = "" Then %>true<% Else %>false<% End If %>) document.jsearch.action = "<% Response.write job_search_action %>";
	document.jsearch.submit();
}

function changeCountry()
{
	if(<%If disabled_country = "" Then %>true<% Else %>false<% End If %>) document.jsearch.submit();
}

function changeState()
{
	document.jsearch.stateid.changed = true;
	if(<%If disable_city = "" Then %>true<% Else %>false<% End If %>) document.jsearch.submit();
}

function changeCity()
{
	if(document.jsearch.stateid.value != "-1" && document.jsearch.stateid.changed) document.jsearch.submit();
}
</script>
<form style="margin: 0px;" name="jsearch" method="post" action="">
<input type="hidden" name="from" id="from" value="<% Response.write page_self %>">
					<table width="<%=jwdt%>" cellpadding="0" cellspacing="0" border="0" summary="" style="<%=stl%>">
						<tr>
							<td style="padding: 0px 0px 0px 0px;">
<p style="margin: 0px;">To find a career suited to your skill set, begin by selecting a country from the list below. Then you may narrow your selection further by choosing additional search criteria and/or entering keywords.</p>
<p class="ada-label">After you select a country from the country field, the page will refresh. For the United States, you can then pick a state.  After you select a state from the 'State' field, the page will refresh.  You will then be able to select a city from the 'City' field.  For all other countries, after you select a country other than the United States from the country field, the page will refresh and you can then select a city from the 'City' field.</p>
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
							</td>
						</tr>
						<tr>
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="countryid" class="p" style="margin: 0px;"><b>Country</b></label><br>
<div id="L101" style="position: relative; z-index: 12;">
<% 
	call getCountrySelect(" onchange=""changeCountry();"""," style=""position: relative; width: 100%; z-index: auto;""")
%>
</div>
							</td>
						</tr>
						<tr style="<%=display_state%>">
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="stateid" class="p" style="margin: 0px;"><b>State</b></label><br>
<div id="L102" style="position: relative; z-index: 12;">
<% 
	call getUSStateSelectDB(" onchange=""changeState();"""&disable_state," style=""position: relative; width: 100%; z-index: auto;"&display_state&"""")
%>
</div>
							</td>
						</tr>
						<tr style="<%=display%>">
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="cityid" class="p" style="margin: 0px;"><b>City</b></label><br>
<%If disable_city <> "" Then %><div style="position: absolute; height: 2.0em; width: <%=jwdt%>px; z-index: 100;" onclick="changeCity();">&nbsp;</div><% End If %>
<div id="L103" style="position: relative; z-index: 12;">
<% 
	call getCitySelect(disable_city," style=""position: relative; width: 100%; z-index: auto;"&display&"""")
%>
</div>
							</td>
						</tr>
						<tr style="<%=display%>">
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="jobareas" class="p" style="margin: 0px;"><b><%If countryid = "1" Then%>Job areas<%Else%>Job Family<%End If%></b></label><br>
<div id="L104" style="position: relative; z-index: 12;">
<% 
	If countryid = "1" Then
		call getJobAreasSelect(disabled," style=""position: relative; width: 100%; z-index: auto;"&display&"""")
	Else
		call getJobFamilySelect(disabled," style=""position: relative; width: 100%; z-index: auto;"&display&"""")
	End If
%>
</div>
							</td>
						</tr>
						<tr style="<%=display%>">
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="keywords" class="p" style="margin: 0px;"><b>Keywords or job number (if known)</b></label><br>
<div id="L105" style="position: relative; z-index: 12;">
<input type="text" name="keywords" id="keywords" value="<%Response.write keywords%>" style="width: 100%;<%=display%>"<%=disabled%>>
</div>
							</td>
						</tr>
						<tr style="<%=display_canada%>">
							<td width="<%=jwdt%>" valign="top" style="padding: 6px 0px 0px 0px;">
<div id="L107" style="position: relative; z-index: 12;">
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<p style="margin: 3px 0px 3px 0px;">
<a href="http://ig12.i-grasp.com/fe/tpl_bankofamerica06.asp" target="_blank" class="p" style="margin: 0px 0px 0px 0px;" title="Search and apply for jobs in Canada. Link opens a new window.">Search and apply</a> for jobs in Canada.
</p>
</div>
							</td>
						</tr>
						<tr style="<%=display_begin%>">
							<td width="<%=jwdt%>" valign="top" style="padding: 6px 0px 0px 0px;">
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("<%=begin%>","javascript: _submit();",0,0,0,0,"<%=begin%>");
//-->
</script>
<noscript><input type="submit" name="bsearch" value="<%=begin%>" alt="<%=begin%>" title="<%=begin%>" class="btn"/></noscript>
							</td>
						</tr>
						<tr style="<%=display_manage%>">
							<td width="<%=jwdt%>" valign="top" style="padding: 6px 0px 0px 0px;">
<div id="L106" style="position: relative; z-index: 12;">
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<p class="ada-label">Manage Your Profile. You are encouraged to complete the online candidate profile, however if you have difficulty, you should:</p>
<ul class="ada-label">
	<li>Email your resume to <a href="mailto:"bac@resume.bankofamerica.com>bac@resume.bankofamerica.com</a></li>
	<li>In the Subject Line of your email, include "Source = Bank of America Careers"</li>
</ul>
<p style="margin: 3px 0px 3px 0px;">
<a href="../overview/manage_your_profile.asp" target="<%=OVERVIEW_TARGET%>" class="p" style="margin: 0px 0px 0px 0px;" title="Manage Your Profile<% If OVERVIEW_TARGET = "_blank" Then %>. Link opens a new window.<% End If%>">Manage Your Profile<span class="ada-label">If you have any difficulties, refer to above alternatives.</span></a>
</p>
<p style="margin: 3px 0px 0px 0px;">Create or update your existing candidate profile.</p>
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<p style="margin: 0px 0px 0px 0px;">
Bank of America associates should access the <a href="http://www.bankofamerica.com/careers/index.cfm?template=jobs_interstitial" class="p" title="Internal Jobs Database">internal jobs database</a>.</p>
</div>
							</td>
						</tr>
					</table>
</form>