<%
	Function getJobAreasSelect(c_lass,style)
%>
<select name="jobareas" id="jobareas" title="Select a Job Area"<%=c_lass%><%=style%>>
	<option value="">none</option>
			<optgroup label="Adminstration">
			<option value="258065|-1">All Administration</option>
			<option value="258065|258068">Change Mgmt &amp; Process</option>
			<option value="258065|258271">Corporate Executive</option>
			<option value="258065|258279">Legal</option>
			<option value="258065|258286">Services</option>
			</optgroup>
			<optgroup label="CFO Group/Finance">
			<option value="358820|-1">All CFO Group/Finance</option>
			<option value="358820|258273">Credit</option>
			<option value="358820|258277">Investment Banking</option>
			<option value="358820|258288">Wealth &amp; Investment Mgmt</option>
			</optgroup>
			<optgroup label="Communications">
			<option value="358819|-1">All Communications</option>
			<option value="358819|258280">Marketing</option>
			</optgroup>
			<optgroup label="Consumer Banking">
			<option value="358826|-1">All Consumer Banking</option>
			</optgroup>
			<optgroup label="Customer Care">
			<option value="258066|-1">All Customer Care</option>
			<option value="258066|258273">Credit</option>
			<option value="258066|258274">Customer Service</option>
			<option value="258066|258282">Relationship Management</option>
			<option value="258066|258285">Sales</option>
			</optgroup>
			<optgroup label="Financial Advisor">
			<option value="358828|-1">All Financials Advisor</option>
			</optgroup>
			<optgroup label="Human Resources">
			<option value="358821|-1">All Human Resources</option>
			</optgroup>
			<optgroup label="Mortgage">
			<option value="358827|-1">All Mortgage</option>
			</optgroup>
			<optgroup label="Operations">
			<option value="358822|-1">All Operations</option>
			<option value="358822|258068">Change Mgmt &amp; Process</option>
			<option value="358822|258272">Corporate Workplace</option>
			<option value="358822|258279">Legal</option>
			<option value="358822|258286">Services</option>
			</optgroup>
			<optgroup label="Risk Management">
			<option value="358823|-1">All Risk Management</option>
			</optgroup>
			<optgroup label="Sales">
			<option value="358824|-1">All Sales</option>
			</optgroup>
			<optgroup label="Risk Evaluation">
			<option value="358824|258270">Consumer Banking</option>
			</optgroup>
			<optgroup label="Technology">
			<option value="358825|-1">All Technology</option>
			<option value="358825|258272">Corporate Workplace</option>
			</optgroup>

</select>
<%
	End Function
	
    Function getZipCodeRadiusControl(c_lass,style)
%>
    <input name="txtZipCode" type="text" id="txtZipCode" onkeypress="return onlyNumbers(event);" maxlength="5" title="Zip Code" <%=c_lass%><%=style%> /><br>
    <b>Distance (miles) from Zip Code</b>

    <select size="1" name="ddlRadius" id="ddlRadius" title="Distance (miles) from Zip Code" <%=c_lass%><%=style%>>
			<option value="-1">Select the distance </option>
			<option value="5">5</option>
			<option value="10">10</option>
			<option value="20">20</option>
			<option value="50">50</option>
			<option value="70">75</option>
			<option value="100">100</option>
		</select>
    
<%
    End Function
	
	Function getStateSelect(c_lass,style)
%>
<select name="stateid" id="stateid" title="Select a State"<%=c_lass%><%=style%>>
	<option value="-1"<%If stateid="-1" Or stateid="" Then Response.write " selected"%>>All states</option>
	<option value="1"<%If stateid="1" Then Response.write " selected"%>>Alabama&nbsp;</option>
	<option value="2"<%If stateid="2" Then Response.write " selected"%>>Alaska&nbsp;</option>
	<option value="3"<%If stateid="3" Then Response.write " selected"%>>Arizona&nbsp;</option>
	<option value="4"<%If stateid="4" Then Response.write " selected"%>>Arkansas&nbsp;</option>
	<option value="5"<%If stateid="5" Then Response.write " selected"%>>California&nbsp;</option>
	<option value="6"<%If stateid="6" Then Response.write " selected"%>>Colorado&nbsp;</option>
	<option value="7"<%If stateid="7" Then Response.write " selected"%>>Connecticut&nbsp;</option>
	<option value="8"<%If stateid="8" Then Response.write " selected"%>>Delaware&nbsp;</option>
	<option value="9"<%If stateid="9" Then Response.write " selected"%>>District of Columbia&nbsp;</option>
	<option value="10"<%If stateid="10" Then Response.write " selected"%>>Florida&nbsp;</option>
	<option value="11"<%If stateid="11" Then Response.write " selected"%>>Georgia&nbsp;</option>
	<option value="12"<%If stateid="12" Then Response.write " selected"%>>Hawaii&nbsp;</option>
	<option value="13"<%If stateid="13" Then Response.write " selected"%>>Idaho&nbsp;</option>
	<option value="14"<%If stateid="14" Then Response.write " selected"%>>Illinois&nbsp;</option>
	<option value="15"<%If stateid="15" Then Response.write " selected"%>>Indiana&nbsp;</option>
	<option value="16"<%If stateid="16" Then Response.write " selected"%>>Iowa&nbsp;</option>
	<option value="17"<%If stateid="17" Then Response.write " selected"%>>Kansas&nbsp;</option>
	<option value="18"<%If stateid="18" Then Response.write " selected"%>>Kentucky&nbsp;</option>
	<option value="19"<%If stateid="19" Then Response.write " selected"%>>Louisiana&nbsp;</option>
	<option value="20"<%If stateid="20" Then Response.write " selected"%>>Maine&nbsp;</option>
	<option value="21"<%If stateid="21" Then Response.write " selected"%>>Maryland&nbsp;</option>
	<option value="22"<%If stateid="22" Then Response.write " selected"%>>Massachusetts&nbsp;</option>
	<option value="23"<%If stateid="23" Then Response.write " selected"%>>Michigan&nbsp;</option>
	<option value="24"<%If stateid="24" Then Response.write " selected"%>>Minnesota&nbsp;</option>
	<option value="25"<%If stateid="25" Then Response.write " selected"%>>Mississippi&nbsp;</option>
	<option value="26"<%If stateid="26" Then Response.write " selected"%>>Missouri&nbsp;</option>
	<option value="27"<%If stateid="27" Then Response.write " selected"%>>Montana&nbsp;</option>
	<option value="28"<%If stateid="28" Then Response.write " selected"%>>Nebraska&nbsp;</option>
	<option value="29"<%If stateid="29" Then Response.write " selected"%>>Nevada&nbsp;</option>
	<option value="30"<%If stateid="30" Then Response.write " selected"%>>New Hampshire&nbsp;</option>
	<option value="31"<%If stateid="31" Then Response.write " selected"%>>New Jersey&nbsp;</option>
	<option value="32"<%If stateid="32" Then Response.write " selected"%>>New Mexico&nbsp;</option>
	<option value="33"<%If stateid="33" Then Response.write " selected"%>>New York&nbsp;</option>
	<option value="34"<%If stateid="34" Then Response.write " selected"%>>North Carolina&nbsp;</option>
	<option value="35"<%If stateid="35" Then Response.write " selected"%>>North Dakota&nbsp;</option>
	<option value="36"<%If stateid="36" Then Response.write " selected"%>>Ohio&nbsp;</option>
	<option value="37"<%If stateid="37" Then Response.write " selected"%>>Oklahoma&nbsp;</option>
	<option value="38"<%If stateid="38" Then Response.write " selected"%>>Oregon&nbsp;</option>
	<option value="39"<%If stateid="39" Then Response.write " selected"%>>Pennsylvania&nbsp;</option>
	<option value="40"<%If stateid="40" Then Response.write " selected"%>>Rhode Island&nbsp;</option>
	<option value="41"<%If stateid="41" Then Response.write " selected"%>>South Carolina&nbsp;</option>
	<option value="42"<%If stateid="42" Then Response.write " selected"%>>South Dakota&nbsp;</option>
	<option value="43"<%If stateid="43" Then Response.write " selected"%>>Tennessee&nbsp;</option>
	<option value="44"<%If stateid="44" Then Response.write " selected"%>>Texas&nbsp;</option>
	<option value="45"<%If stateid="45" Then Response.write " selected"%>>Utah&nbsp;</option>
	<option value="46"<%If stateid="46" Then Response.write " selected"%>>Vermont&nbsp;</option>
	<option value="47"<%If stateid="47" Then Response.write " selected"%>>Virginia&nbsp;</option>
	<option value="48"<%If stateid="48" Then Response.write " selected"%>>Washington&nbsp;</option>
	<option value="49"<%If stateid="49" Then Response.write " selected"%>>West Virginia&nbsp;</option>
	<option value="50"<%If stateid="50" Then Response.write " selected"%>>Wisconsin&nbsp;</option>
	<option value="51"<%If stateid="51" Then Response.write " selected"%>>Wyoming&nbsp;</option>
</select>
<%
	End Function
	
	
	Function getStateOptionsAbr()
%>
	<option value="AK"<%If stateid="AK" Then Response.write " selected"%>>Alaska&nbsp;</option>
	<option value="AL"<%If stateid="AL" Then Response.write " selected"%>>Alabama&nbsp;</option>
	<option value="AZ"<%If stateid="AZ" Then Response.write " selected"%>>Arizona&nbsp;</option>
	<option value="AR"<%If stateid="AR" Then Response.write " selected"%>>Arkansas&nbsp;</option>
	<option value="CA"<%If stateid="CA" Then Response.write " selected"%>>California&nbsp;</option>
	<option value="CO"<%If stateid="CO" Then Response.write " selected"%>>Colorado&nbsp;</option>
	<option value="CT"<%If stateid="CT" Then Response.write " selected"%>>Connecticut&nbsp;</option>
	<option value="DE"<%If stateid="DE" Then Response.write " selected"%>>Delaware&nbsp;</option>
	<option value="DC"<%If stateid="DC" Then Response.write " selected"%>>District of Columbia&nbsp;</option>
	<option value="FL"<%If stateid="FL" Then Response.write " selected"%>>Florida&nbsp;</option>
	<option value="GA"<%If stateid="GA" Then Response.write " selected"%>>Georgia&nbsp;</option>
	<option value="HI"<%If stateid="HI" Then Response.write " selected"%>>Hawaii&nbsp;</option>
	<option value="ID"<%If stateid="ID" Then Response.write " selected"%>>Idaho&nbsp;</option>
	<option value="IL"<%If stateid="IL" Then Response.write " selected"%>>Illinois&nbsp;</option>
	<option value="IN"<%If stateid="IN" Then Response.write " selected"%>>Indiana&nbsp;</option>
	<option value="IA"<%If stateid="IA" Then Response.write " selected"%>>Iowa&nbsp;</option>
	<option value="KS"<%If stateid="KS" Then Response.write " selected"%>>Kansas&nbsp;</option>
	<option value="KY"<%If stateid="KY" Then Response.write " selected"%>>Kentucky&nbsp;</option>
	<option value="LA"<%If stateid="LA" Then Response.write " selected"%>>Louisiana&nbsp;</option>
	<option value="ME"<%If stateid="ME" Then Response.write " selected"%>>Maine&nbsp;</option>
	<option value="MD"<%If stateid="MD" Then Response.write " selected"%>>Maryland&nbsp;</option>
	<option value="MA"<%If stateid="MA" Then Response.write " selected"%>>Massachusetts&nbsp;</option>
	<option value="MI"<%If stateid="MI" Then Response.write " selected"%>>Michigan&nbsp;</option>
	<option value="MN"<%If stateid="MN" Then Response.write " selected"%>>Minnesota&nbsp;</option>
	<option value="MS"<%If stateid="MS" Then Response.write " selected"%>>Mississippi&nbsp;</option>
	<option value="MO"<%If stateid="MO" Then Response.write " selected"%>>Missouri&nbsp;</option>
	<option value="MT"<%If stateid="MT" Then Response.write " selected"%>>Montana&nbsp;</option>
	<option value="NE"<%If stateid="NE" Then Response.write " selected"%>>Nebraska&nbsp;</option>
	<option value="NV"<%If stateid="NV" Then Response.write " selected"%>>Nevada&nbsp;</option>
	<option value="NH"<%If stateid="NH" Then Response.write " selected"%>>New Hampshire&nbsp;</option>
	<option value="NJ"<%If stateid="NJ" Then Response.write " selected"%>>New Jersey&nbsp;</option>
	<option value="NM"<%If stateid="NM" Then Response.write " selected"%>>New Mexico&nbsp;</option>
	<option value="NY"<%If stateid="NY" Then Response.write " selected"%>>New York&nbsp;</option>
	<option value="NC"<%If stateid="NC" Then Response.write " selected"%>>North Carolina&nbsp;</option>
	<option value="ND"<%If stateid="ND" Then Response.write " selected"%>>North Dakota&nbsp;</option>
	<option value="OH"<%If stateid="OH" Then Response.write " selected"%>>Ohio&nbsp;</option>
	<option value="OK"<%If stateid="OK" Then Response.write " selected"%>>Oklahoma&nbsp;</option>
	<option value="OR"<%If stateid="OR" Then Response.write " selected"%>>Oregon&nbsp;</option>
	<option value="PA"<%If stateid="PA" Then Response.write " selected"%>>Pennsylvania&nbsp;</option>
	<option value="PR"<%If stateid="PR" Then Response.write " selected"%>>Puerto Rico&nbsp;</option>
	<option value="RI"<%If stateid="RI" Then Response.write " selected"%>>Rhode Island&nbsp;</option>
	<option value="SC"<%If stateid="SC" Then Response.write " selected"%>>South Carolina&nbsp;</option>
	<option value="SD"<%If stateid="SD" Then Response.write " selected"%>>South Dakota&nbsp;</option>
	<option value="TN"<%If stateid="TN" Then Response.write " selected"%>>Tennessee&nbsp;</option>
	<option value="TX"<%If stateid="TX" Then Response.write " selected"%>>Texas&nbsp;</option>
	<option value="UT"<%If stateid="UT" Then Response.write " selected"%>>Utah&nbsp;</option>
	<option value="VT"<%If stateid="VT" Then Response.write " selected"%>>Vermont&nbsp;</option>
	<option value="VA"<%If stateid="VA" Then Response.write " selected"%>>Virginia&nbsp;</option>
	<option value="WA"<%If stateid="WA" Then Response.write " selected"%>>Washington&nbsp;</option>
	<option value="WV"<%If stateid="WV" Then Response.write " selected"%>>West Virginia&nbsp;</option>
	<option value="WI"<%If stateid="WI" Then Response.write " selected"%>>Wisconsin&nbsp;</option>
	<option value="WY"<%If stateid="WY" Then Response.write " selected"%>>Wyoming&nbsp;</option>
<%
	End Function
	
	
	Function getCountrySelect(c_lass,style)
		Call setCmd()
		'cmd.CommandText = "p_SelectISOCountries"
        cmd.CommandText = "P_SelectCountryAll"  'hits iq2 db
        
		Set rssCountries=server.CreateObject ("ADODB.Recordset")
		rssCountries.LockType = adLockOptimistic
		rssCountries.CursorLocation = adUseClient
		rssCountries.CursorType = adOpenDynamic
		rssCountries.Open cmd
		
		Set countries = Server.CreateObject("Scripting.Dictionary")
		
		If not (rssCountries.EOF And rssCountries.BOF) And Not Err.Number > 0 Then
			rssCountries.MoveFirst
			Do While not rssCountries.EOF
				Set country = Server.CreateObject("Scripting.Dictionary")
				country.add "countryid", Trim(rssCountries("countryid"))
				country.add "country", Trim(rssCountries("country"))
				country.add "Country_Code_2", Trim(rssCountries("Country_Code_2"))
				
				country_number = countries.Count + 1
				countries.add country_number, country
				rssCountries.MoveNext
			Loop
		End If
		rssCountries.Close
		Set  rssCountries = nothing
%>
<select onclick="if(this.selectedIndex == 0) this.selectedIndex = 1;" onfocus="if(this.selectedIndex == 0) this.selectedIndex = 1;" name="countryid" id="countryid" title="Select a country"<%=c_lass%><%=style%>>
	<option value="-1"<%If countryid="-1" Or countryid="" Then Response.write " selected"%>>Select a country</option>
	<option value="1"<%If countryid="1" Then Response.write " selected"%>>United States</option>
<%
		country_numbers = countries.Keys
		If countries.Count > 0 Then
			For c = 0 To countries.Count -1
				country_number = country_numbers(c)
				Set country = countries.Item(country_number)
%>
	<option value="<%=country.Item("countryid")%>"<% If country.Item("countryid") = countryid And countryid <> 1 Then %> selected<% End If %>><%=country.Item("country")%></option>
<%		   Next
		End If %>
</select>
<%
	End Function
	
	
	Function getUSStateSelectDB(c_lass,style)
		Call setCmd()
		'cmd.CommandText = "p_SelectStateList"
        
			cmd.Parameters.Append cmd.CreateParameter("iCountryId",adInteger,adParamInput)
				cmd.Parameters("iCountryId") = countryid
				param_number = cmd_params.Count + 1
				cmd_params.add param_number, "iCountryId"
			cmd.CommandText = "GetState"

		Set rssStates=server.CreateObject ("ADODB.Recordset")
		rssStates.LockType = adLockOptimistic
		rssStates.CursorLocation = adUseClient
		rssStates.CursorType = adOpenDynamic
		rssStates.Open cmd
		
		Set states = Server.CreateObject("Scripting.Dictionary")
		
		If not (rssStates.EOF And rssStates.BOF) And Not Err.Number > 0 Then
			rssStates.MoveFirst
			Do While not rssStates.EOF
				Set state = Server.CreateObject("Scripting.Dictionary")
				state.add "StateID", Trim(rssStates("state_id"))
				state.add "State", Trim(rssStates("state_name"))
				
				state_number = states.Count + 1
				states.add state_number, state
				rssStates.MoveNext
			Loop
		End If
		rssStates.Close
		Set  rssStates = nothing
%>
<select name="stateid" id="stateid" title="Select a State"<%=c_lass%><%=style%>>
	<option value="-1"<%If stateid="-1" Or stateid="" Then Response.write " selected"%>>All states</option>
<%
		state_numbers = states.Keys
		If states.Count > 0 Then
			For s = 0 To states.Count -1
				state_number = state_numbers(s)
				Set state = states.Item(state_number)
%>
	<option value="<%=state.Item("StateID")%>"<% If state.Item("StateID") = stateid Then %> selected<% End If %>><%=state.Item("State")%></option>
<%		   Next
		End If %>
</select>
<%
	End Function
	
	
	Function getCitySelect(c_lass,style)
		Call setCmd()
		
		Set cities = Server.CreateObject("Scripting.Dictionary")
		
		If CInt(countryid) > 0 Then

				cmd.Parameters.Append cmd.CreateParameter("hiring_orgID",adInteger,adParamInput)
					cmd.Parameters("hiring_orgID") = 1233
					param_number = cmd_params.Count + 1
					cmd_params.add param_number, "hiring_orgID"

                cmd.Parameters.Append cmd.CreateParameter("countryid",adInteger,adParamInput)
                    cmd.Parameters("countryid") = countryid
					param_number = cmd_params.Count + 1
					cmd_params.add param_number, "countryid"

                cmd.Parameters.Append cmd.CreateParameter("stateID",adInteger,adParamInput)
                    cmd.Parameters("stateID") = stateid
					param_number = cmd_params.Count + 1
					cmd_params.add param_number, "stateID"


				'cmd.CommandText = "p_Career_Sites_select_City"
                cmd.CommandText = "p_BOAJobsCitiesByCountryAndState" ' iq db

			Set rssCities=server.CreateObject ("ADODB.Recordset")
			rssCities.LockType = adLockOptimistic
			rssCities.CursorLocation = adUseClient
			rssCities.CursorType = adOpenDynamic
			rssCities.Open cmd
			
			If not (rssCities.EOF And rssCities.BOF) And Not Err.Number > 0 Then
				rssCities.MoveFirst
				Do While not rssCities.EOF
					Set city = Server.CreateObject("Scripting.Dictionary")

					city.add "cityid", Trim(rssCities("LocationID"))
					city.add "city", Trim(rssCities("City"))

					city_number = cities.Count + 1
					cities.add city_number, city
					rssCities.MoveNext
				Loop
			End If
			rssCities.Close
			Set  rssCities = nothing
		End If
%>
<select name="cityid" id="cityid" title="Select a city" <%=c_lass%><%=style%>>
	<option value="-1"<%If cityid="-1" Or cityid="" Then Response.write " selected"%>>All cities</option>
<%
		city_numbers = cities.Keys
		If cities.Count > 0 Then
			For c = 0 To cities.Count -1
				city_number = city_numbers(c)
				Set city = cities.Item(city_number)
%>
	<option value="<%=city.Item("cityid")%>"<% If city.Item("cityid") = cityid Then %> selected<% End If %>><%=city.Item("city")%></option>
<%		   Next
		End If %>
</select>
<%
	End Function
	
	Function getJobFamilySelect(c_lass,style)
		
%>
<select name="jobfamilyid" id="jobfamilyid" title="Select a Job Family"<%=c_lass%><%=style%>>
	<option value="">none</option>
			<option value="-1" selected="selected">All</option>
			<option value="258067">Administration</option>
			<option value="258068">Change Mgmt &amp; Process</option>
			<option value="258269">Communications</option>
			<option value="258270">Consumer Banking</option>
			<option value="258271">Corporate Executive</option>
			<option value="258273">Credit</option>
			<option value="258274">Customer Service</option>
			<option value="258275">Finance</option>
			<option value="258276">Human Resources</option>
			<option value="359540">International Contractor</option>
			<option value="258277">Investment Banking</option>
			<option value="258278">Learning &amp; Leadership Development</option>
			<option value="258279">Legal</option>
			<option value="258280">Marketing</option>
			<option value="258281">Operations</option>
			<option value="258282">Relationship Management</option>
			<option value="258283">Risk Evaluation</option>
			<option value="258285">Sales</option>
			<option value="258286">Services</option>
			<option value="258287">Technology</option>
			<option value="258288">Wealth &amp; Investment Management</option>
</select>
<%
	End Function
	
	Dim cmd_params
	
	Function setCmd()
		If Not IsObject(cmd) Then
			SetLocale(1033)
			Call OpenDBConnection()
			
			Set cmd = server.CreateObject("ADODB.Command")
			cmd.ActiveConnection = cnnDB
			cmd.CommandType = adCmdStoredProc
				cmd.Parameters.Append cmd.CreateParameter("returnCode",adInteger,adParamReturnValue)
		End If
		
		If Not IsObject(cmd_params) Then
			Set cmd_params = Server.CreateObject("Scripting.Dictionary")
		End If
		
		param_numbers = cmd_params.Keys
		If cmd_params.Count > 0 Then
			For p = 0 To cmd_params.Count -1
				param_number = param_numbers(p)
				cmd_param = cmd_params.Item(param_number)
				cmd.Parameters.Delete cmd_param
				cmd_params.Remove(param_number)
			Next 
		End If
	End Function
%>