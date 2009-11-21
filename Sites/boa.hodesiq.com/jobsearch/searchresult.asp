<% Response.Buffer=True 
Dim selareas, requestfrom, areasoftalent
	selareas = Request("selareas")
	requestfrom = Request("from")
	areasoftalent = Request("areasoftalent")
	jfamily = Request("jfamily")
	stateid = Request("stateid")
	keywords = Request("keywords")
	If selareas = "Select" and requestfrom <> "" Then Response.Redirect(requestfrom&"?areasoftalent="&areasoftalent&"&jfamily="&jfamily&"&stateid="&stateid&"&keywords="&keywords)
	
	Response.Redirect("../jobsearch.aspx"&"?areasoftalent="&areasoftalent&"&jfamily="&jfamily&"&stateid="&stateid&"&keywords="&keywords)
%>

