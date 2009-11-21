<%	adAlt = "Realistic Job Preview. Learn about being a Customer Care Associate. Play Video >>>"
	target = " target=""_top"""
	link = "../rjp/"
	If page_section = "ADA" Then link = "rjp.asp"
	rjp_mg = false
	and_mg = ""
	If mg <> "" Then
		rjp_mg = true
		and_mg = "?mg=" & mg
	End If
%>
<map name="rjp"><area title="<%=adAlt%>" alt="<%=adAlt%>" coords="0,0,187,105" href="<%=link%><%=and_mg%>"<%=target%>></map>
<%	If rjp_standalone Then %>
<img src="../images/clear.gif" width="100%" height="1" vspace="1" alt="" border="0" style="background: #989898;"><br clear="all">
<img src="../images/clear.gif" width="100%" height="1" vspace="0" alt="" border="0" style="background: #c9c9c9; margin: 0px 0px 6px 0px;"><br clear="all">
<%	Else %>
	<%	If Not rjp_mg Then %>
<img src="../images/clear.gif" width="100%" height="9" vspace="0" alt="" border="0"><br clear="all">
	<%	End If %>
<%	End If %>
<img src="../images/rjp_preview.jpg" width="187" height="105" border="0" style="margin: 6px 0px 0px 0px;" usemap="#rjp" alt="<%=adAlt%>"><br clear="all">
<div class="hidden">Realistic Job Preview. Learn about being a Customer Care Associate. Play Video >>></div>
<%	If Not rjp_mg Then %>
<img src="../images/clear.gif" width="100%" height="1" vspace="0" alt="" border="0" style="background: #c9c9c9; margin: 15px 0px 0px 0px;"><br clear="all">
<img src="../images/clear.gif" width="100%" height="1" vspace="1" alt="" border="0" style="background: #989898;"><br clear="all">
<%	End If %>