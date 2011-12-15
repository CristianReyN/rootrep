<%
If category_name_level_2 <> "" And category_name_level_3 <> "" And file_name <> "" Then %>
<!-- BEGIN COREMETRICS SUPPORT -->
<script type="text/javascript" src="https://www.bankofamerica.com/pa/global-assets/external/coremetrics/hp/eluminate.js"></script>
<script type="text/javascript" src="https://www.bankofamerica.com/pa/global-assets/external/coremetrics/hp/cmdatatagutils.js"></script>
<script language="javascript1.1" type="text/javascript">
//<!--
<% If trim(Request.ServerVariables("SERVER_NAME")) = "boa.hodesiq.com" _
		OR trim(Request.ServerVariables("SERVER_NAME")) = "careers.bankofamerica.com" _
		OR trim(Request.ServerVariables("SERVER_NAME")) = "bankofamerica.com" _
		Then ' production %>cmSetProduction();<%
	ElseIf trim(Request.ServerVariables("SERVER_NAME")) = "boa.stg.hodesiq.com" _
		Then 'staging %>cmSetStaging();<%
	ElseIf trim(Request.ServerVariables("SERVER_NAME")) = "boa.dev.hodesiq.com" _
		Then 'development %><%
 	End If %>
cmCreatePageviewTag('<%=categoryID%>;<%=pageID%>',null,null,'<%=categoryID%>',false,false,null,false,false,null,null,null,null,null,null,null,null,null,null,null,null);
<% If category_name_level_2 = "Prod" And IsObject(program) Then
	program_title = Replace(Replace(Replace(program.Item("title"), "&amp;", "and"), "  ", " "), "  ", " ")
	program_title = CleanTheStringAlphanumeric_Space(program_title) %>
cmCreateProductviewTag('<%=program_title%>','<%=program_title%>','<%=productviewCategoryID%>',null,false,false,null,false,null,null,false,null);
<% End If %>
 //-->
</script>
<% If IsEmpty(js_path) Then %><script language="JavaScript1.1" src="../Includes/ln.js" type="text/javascript"></script><% Else %><script language="JavaScript" src="<%=js_path%>jquery-1.6.2.min.js" type="text/javascript"></script><script language="JavaScript1.1" src="<%=js_path%>ps.js" type="text/javascript"></script><script language="JavaScript1.1" src="<%=js_path%>ln.js" type="text/javascript"></script><% End If %>
 <!-- END COREMETRICS -->
 <% End If %>