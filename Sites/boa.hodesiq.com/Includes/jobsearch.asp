<!-- #include file="jsearch.asp" -->
<%
On Error Resume Next
Dim jwdt, style, job_search_action, cm_job_search
cm_job_search = true
jwdt = 192
If jwidth Then jwdt = jwidth
stl = "margin: 0px 3px 0px 4px"
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
		If countryid = "-1" Then'If countryid = "-1" Or countryid = "2" Then
			disabled = " disabled"
			disabled_country = " disabled"
			display = " display: none;"
			begin = "Begin"
			disable_city = " disabled"
		End If
		'If countryid = "2" Then
		'	disabled_country = ""
		'	begin = "Begin Search"
		'	display_canada = ""
		'	display_begin = " display: none;"
		'End If
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
		show_add_message = False
		If countryid = "1" Then show_add_message = True
	jobareas = Request("jobareas")
	jobfamilyid = Request("jobfamilyid")
		If jobfamilyid = "" Then jobfamilyid = "-1"
	keywords = Request("keywords")
%><!-- #include file="whitelist.asp" --><%
	keywords = ClearKeywords(keywords)
	keywords = Server.HtmlEncode(keywords)
	
job_search_action = "../jobsearch/searchresult.asp"
%>
<script language="JavaScript" type="text/javascript">

function _submit()
{
	if(<%If disabled = "" Then %>true<% Else %>false<% End If %>) document.jsearch.action = "<% Response.write job_search_action %>";
	document.jsearch.submit();
}

function changeCountry()
{
	if ( document.all ) setTimeout ( "tab_changeCountry();", 100); else tab_changeCountry();
}
function tab_changeCountry()
{
	if(<%If disabled_country = "" Then %>true<% Else %>false<% End If %>) { if ( c_kstate == 1 || c_vstart == document.jsearch.countryid.value ) { c_kstate = 0; } else document.jsearch.submit(); };
}

function changeState()
{
	if ( document.all ) setTimeout ( "tab_changeState();", 100); else tab_changeState();
}
function tab_changeState()
{
	document.jsearch.stateid.changed = true;
	/*if(<%If disable_city = "" Then %>true<% Else %>false<% End If %>)*/ if ( s_kstate == 1 || s_vstart == document.jsearch.stateid.value ) { s_kstate = 0; } else document.jsearch.submit();
}

function changeCity()
{
	if(document.jsearch.stateid.value != "-1" && document.jsearch.stateid.changed) document.jsearch.submit();
}
</script>
<div id="help" style=""><iframe id="ihelp" name="ihelp" frameborder="0" marginheight="0" marginwidth="0" scrolling="no" width="0" height="0" src="../overview/chelp.html"></iframe></div>
<%If (instr(request.ServerVariables("URL"),"locations/Default.asp")>0) Then %>
<form style="margin: 0px;" name="jsearch" method="post" action="<% Response.write page_self %>">
<%Else %>
<form style="margin: 0px;" name="jsearch" method="post" action="">
<%End If%>
<input type="hidden" name="from" id="from" value="<% Response.write page_self %>">
<input type="hidden" name="guidedJS" id="guidedJS" value="1">
					<table width="<%=jwdt%>" cellpadding="0" cellspacing="0" border="0" summary="" style="<%=stl%>">
						<tr>
							<td style="padding: 0px 0px 0px 0px;">

<%If Request("countryid") =1 Then %>
<p style="margin: 0px;">
<% If taleo_upgrade Then %>
Due to site maintenance, you will be unable to apply for a U.S. position or create/update your profile from March&nbsp;21 through March&nbsp;25.
<br><br>
You may continue to search for jobs, as well as navigate the site during this timeframe.
<br><br>
All functionality will return on March&nbsp;26.
</p>
<p style="margin: 12px 0px 3px 0px;">
<% End If %>
Begin your career search by selecting a country.  You may then narrow your search further, by entering additional search criteria or keywords.<%If show_add_message Then %><br><%If Not overview_page Then %><b><% End If %>Note:<%If Not overview_page Then %></b><% End If %> City search options are limited to areas with current available job opportunities, which change constantly. Results are specific to the single city you select, and do not include results for nearby locations. <a href="Javascript: void(0);" id="lmh" class="p">Learn more<span class="hidden"> Link opens a new window</span></a><% End If %></p>
<%Else %>
<p style="margin: 0px;">To find a career suited to your skill set, begin by selecting a country from the list below. Then you may narrow your selection further by choosing additional search criteria and/or entering keywords.<%If show_add_message Then %><br><b>Please note:</b> City search results are for that city only. Please search individually for all cities within your desired geographic area.<% End If %></p>
<%End If %>
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

<!--<select onclick="if(this.selectedIndex == 0) this.selectedIndex = 1;" onfocus="if(this.selectedIndex == 0) this.selectedIndex = 1;" name="countryid" id="countryid" title="Select a country" onchange="changeCountry();" style="position: relative; width: 100%; z-index: auto;">
	<option value="-1">Select a country</option>
	<option value="1" selected>United States</option>

	<option value="11">Argentina</option>

	<option value="15">Australia</option>

	<option value="31">Bahamas</option>

	<option value="24">Bahrain</option>

	<option value="21">Belgium</option>

	<option value="30">Brazil</option>

	<option value="2">Canada</option>

	<option value="124">Cayman Islands</option>

	<option value="44">Chile</option>

	<option value="46">China</option>

	<option value="47">Colombia</option>

	<option value="49">Costa Rica</option>

	<option value="75">France</option>

	<option value="56">Germany</option>

	<option value="90">Greece</option>

	<option value="96">Hong Kong</option>

	<option value="105">India</option>

	<option value="102">Indonesia</option>

	<option value="103">Ireland</option>

	<option value="256">Isle of Man</option>

	<option value="104">Israel</option>

	<option value="111">Italy</option>

	<option value="114">Japan</option>

	<option value="260">Jersey</option>

	<option value="106">Korea, Republic Of</option>

	<option value="127">Lebanon</option>

	<option value="134">Luxembourg</option>

	<option value="257">Macao</option>

	<option value="157">Malaysia</option>

	<option value="156">Mexico</option>

	<option value="138">Monaco</option>

	<option value="167">Netherlands</option>

	<option value="168">Norway</option>

	<option value="176">Panama</option>

	<option value="180">Philippines</option>

	<option value="182">Poland</option>

	<option value="186">Portugal</option>

	<option value="185">Puerto Rico</option>

	<option value="192">Russian Federation</option>

	<option value="194">Saudi Arabia</option>

	<option value="199">Singapore</option>

	<option value="249">South Africa</option>

	<option value="68">Spain</option>

	<option value="41">Switzerland</option>

	<option value="228">Taiwan</option>

	<option value="218">Thailand</option>

	<option value="225">Turkey</option>

	<option value="234">United Arab Emirates</option>

	<option value="232">United Kingdom</option>

	<option value="1">United States</option>

	<option value="235">Uruguay</option>

	<option value="239">Venezuela</option>

</select>-->
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
<label for="cityid" class="p" style="margin: 0px;<%If overview_page Then %>  float : left;<% End If %>"><b>City</b></label><%If Request("countryid") =1 Then %><div<%If overview_page Then %> style="float : right;"<% End If %>><a href="Javascript: void(0);" id="hdh" class="p"><b>How do I use the city/zip code search?</b><span class="hidden"> Link opens a new window</span></a></div><%If overview_page Then %><br><% End If %><% End If %>
<%If disable_city <> "" Then %><div style="position: absolute; height: 2.0em; width: <%=jwdt%>px; z-index: 100;" onclick="changeCity();">&nbsp;</div><% End If %>
<div id="L103" style="position: relative; z-index: 12;">
<% 
	call getCitySelect(disable_city," style=""position: relative; width: 100%; z-index: auto;"&display&"""")
%>
</div>
							</td>
						</tr>

<%If countryid = "1" Then%>
<tr style="<%=display%>">
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="cityid" class="p" style="margin: 0px;"><b>Zip Code</b></label><br>
<div id="Div1" style="position: relative; z-index: 12;">
<% 
	call getZipCodeRadiusControl(""," style=""position: relative; width: 100%; z-index: auto;"&display&"""")
%>
</div>
	</td>
</tr>
<%end if %>


						<tr style="<%=display%>">
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="<% If countryid = "1" Then%>jobareas<% Else %>jobfamilyid<% End If %>" class="p" style="margin: 0px;"><b><%If countryid = "1" Then%>Job areas<%Else%>Job Family<%End If%></b></label><br>
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
    create_safebutton("<%=begin%>", "javascript:ValidateForm();", 0, 0, 0, 0, "<%=begin%>");
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
	<li>Email your resume to <a href="mailto:bac@resume.bankofamerica.com">bac@resume.bankofamerica.com</a></li>
	<li>In the Subject Line of your email, include "Source = Bank of America Careers"</li>
</ul>
<p style="margin: 3px 0px 3px 0px;">
<a href="../overview/manage_your_profile.asp" target="<%=OVERVIEW_TARGET%>" class="p" style="margin: 0px 0px 0px 0px;" title="Manage Your Profile<% If OVERVIEW_TARGET = "_blank" Then %>. Link opens a new window.<% End If%>">Manage Your Profile<span class="ada-label">If you have any difficulties, refer to above alternatives.</span></a>
</p>
<p style="margin: 3px 0px 0px 0px;">Create or update your existing candidate profile.</p>
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<p style="margin: 0px 0px 0px 0px;">
Bank of America associates should access the <a href="http://myhrtools.bankofamerica.com/" class="p" title="Internal Jobs Database">internal jobs database</a>.</p>
</div>
							</td>
						</tr>
					</table>
</form>

<script language='javascript1.1' type='text/javascript'>
    //<!—

    function ValidateForm() {
        if (ValidZipCode()) {
            _submit();
        }
    }

    function ValidZipCode() {

        var e = document.getElementById("countryid");
        var strCountry = e.options[e.selectedIndex].value;

        if (strCountry == 1) {
            if (document.getElementById("ddlRadius").selectedIndex > 0) {

                if (document.getElementById("txtZipCode").value == "") {
                    alert("Zip Code cannot be empty if you are searching by radius/distance.");
                    document.getElementById("txtZipCode").focus();
                    return false;
                }
                //return true;
            }
            if (document.getElementById("txtZipCode").value != "") {

                if (document.getElementById("ddlRadius").selectedIndex == 0) {
                    alert("Please select a distance (miles) from Zip Code value.");
                    document.getElementById("ddlRadius").focus();
                    return false;
                }
                if (document.getElementById("txtZipCode").value.length < 5) {
                    alert("Zip Code cannot be less than five digits.");
                    document.getElementById("txtZipCode").focus();
                    return false;
                }
                //return true;

            }
            return true;
        }
        else {
            return true;
        }

    }

    function onlyNumbers(evt) {
        var e = event || evt; // for trans-browser compatibility
        var charCode = e.which || e.keyCode;

        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

        return true;

    }
</script>