<% Response.Buffer=True 
Dim selareas, requestfrom, areasoftalent, jobareas
	'selareas = Request("selareas")
	'requestfrom = Request("from")
	'areasoftalent = Request("areasoftalent")
	'jfamily = Request("jfamily")
	stateid = Request("stateid")
	keywords = Request("keywords")
	'If selareas = "Select" and requestfrom <> "" Then Response.Redirect(requestfrom&"?areasoftalent="&areasoftalent&"&jfamily="&jfamily&"&stateid="&stateid&"&keywords="&keywords)
	
	jobareas = Request("jobareas")
	Response.Redirect("http://boa.hodesiq.com/jobsearch.aspx"&"?jobareas="&jobareas&"&stateid="&stateid&"&keywords="&keywords)
%>

