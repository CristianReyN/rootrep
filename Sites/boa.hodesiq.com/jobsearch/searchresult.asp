<% Response.Buffer=True
Function ExistsInRequest(requested_key)
	Dim exists, request_key
		exists = FALSE
	If isObject(Request.QueryString) And Request.QueryString <> "" Then
		For each request_key In Request.QueryString
			If request_key = requested_key Then
				exists = TRUE
				Exit For
			End If
		Next
	ElseIf isObject(Request.Form) And Request.Form <> "" Then
		For each request_key In Request.Form
			If request_key = requested_key Then
				exists = TRUE
				Exit For
			End If
		Next
	Else
	End If
	ExistsInRequest = exists
End Function
	
	Dim requestfrom, countryid, cityid, jobareas, jobfamilyid, keywords, SearchPage, txtZipcode, ddlRadius
		requestfrom = Request("from")
		countryid = Request("countryid")
		stateid = Request("stateid")
			If stateid = "" Then stateid = "-1"
		cityid = Request("cityid")
			If cityid = "" Then cityid = "-1"
		jobareas = Request("jobareas")
		jobfamilyid = Request("jobfamilyid")
		keywords = Request("keywords")
		SearchPage = Request("SearchPage")
        txtZipCode = Request("txtZipCode")
        ddlRadius = Request("ddlRadius")

%><!-- #include file="../Includes/whitelist.asp" --><%
	keywords = ClearKeywords(keywords)
	keywords = Server.HtmlEncode(keywords)
	
	Dim query
		query = ""
	If ExistsInRequest("jobareas") Then
		query = "?countryid=1&stateid="&stateid&"&cityid="&cityid&"&txtZipCode="&txtZipCode&"&ddlRadius="&ddlRadius&"&keywords="&keywords&"&jobareas="&jobareas
		If ExistsInRequest("SearchPage") Then query = query & "&SearchPage=" & SearchPage
	ElseIf ExistsInRequest("jobfamilyid") And CInt(countryid) > 1 Then
		query = "?countryid="&countryid&"&internationalcityid="&cityid&"&keywords="&keywords&"&jobfamilyid="&jobfamilyid
	End If
	
	If query = "" Then
		Response.Redirect(Request.ServerVariables("HTTP_REFERER"))
	Else
		Response.Redirect("../jobsearch.aspx"&query)
	End If
%>

