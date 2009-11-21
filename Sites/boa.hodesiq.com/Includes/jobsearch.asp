<!-- #include file="jsearch.asp" -->
<% Dim jwdt, style
jwdt = 192
If jwidth Then jwdt = jwidth
stl = "margin: 0px 5px 0px 4px"
If style <> "" Then stl = style %>
<%
	begin = "Begin Search"
	disabled = ""
	display = ""
	disable_state = ""
	display_state = ""
	disable_city = ""
	countryid = Request("countryid")
		If countryid = "" Then countryid = "-1"
		If countryid = "-1" Then
			disabled = " disabled"
			display = " display: none;"
			begin = "Begin"
			disable_city = " disabled"
		End If
		If countryid <> "1" Then
			disable_state = " disabled"
			display_state = " display: none;"
		End If
	stateid = Request("stateid")
		If stateid = "" Then stateid = "-1"
	cityid = Request("cityid")
		If cityid = "" Then cityid = "-1"
		If countryid = "1" AND stateid = "-1" Then
			disable_city = " disabled"
		End If
	jobareas = Request("jobareas")
		If jobareas = "" Then jobareas = "Select a Job Area"
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
	if(<%If disabled = "" Then %>true<% Else %>false<% End If %>) document.jsearch.submit();
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
	call getStateSelect(" onchange=""changeState();"""&disable_state," style=""position: relative; width: 100%; z-index: auto;"&display_state&"""")
%>
</div>
							</td>
						</tr>
						<tr style="<%=display%>">
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="cityid" class="p" style="margin: 0px;"><b>City</b></label><br>
<%If disable_city <> "" Then %><div style="position: absolute; height: 2.0em; width: <%=jwdt%>px; z-index: 100;" onclick="changeCity();">&nbsp;</div><% End If %>
<div id="L102" style="position: relative; z-index: 12;">
<% 
	call getCitySelect(disable_city," style=""position: relative; width: 100%; z-index: auto;"&display&"""")
%>
</div>
							</td>
						</tr>
						<tr style="<%=display%>">
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="jobareas" class="p" style="margin: 0px;"><b>Job areas</b></label><br>
<div id="L104" style="position: relative; z-index: 12;">
<% 
	call getJobAreasSelect(disabled," style=""position: relative; width: 100%; z-index: auto;"&display&"""")
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
						<tr>
							<td width="<%=jwdt%>" valign="top" style="padding: 6px 0px 0px 0px;">
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("<%=begin%>","javascript: _submit();",0,0,0,0,"<%=begin%>");
//-->
</script>
<noscript><input type="submit" name="bsearch" value="<%=begin%>" alt="<%=begin%>" title="<%=begin%>" class="btn"/></noscript>
							</td>
						</tr>
					</table>
</form>