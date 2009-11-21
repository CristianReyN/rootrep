<!-- #include file="jsearch.asp" -->
<form style="margin: 0px;" name="jsearch" action="<% Response.write job_search_action %>">
<input type="hidden" name="from" id="from" value="<% Response.write page_self %>">
					<table width="192" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 0px 5px 0px 4px;">
						<tr>
							<td colspan="2" style="padding: 0px 0px 0px 0px;">
<p style="margin: 0px;">To find jobs suited to your skill set, choose an area of talent and click Select. Then narrow your selections by choosing a job family and/or location.</p>
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
							</td>
						</tr>
						<tr>
							<td width="132" nowrap style="padding: 0px 0px 0px 0px;">
<label for="areasoftalent" class="p" style="margin: 0px;">Areas of talent</label><br>
<select name="areasoftalent" id="areasoftalent" style="width: 100%;">
	<option value="-1">All&nbsp;</option>
<% 
	call getAreasOfTalentOptions()
%>
</select>
							</td>
							<td nowrap style="padding: 12px 0px 0px 6px;" align="right">
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Select","javascript: document.jsearch.selareas.value = 'Select'; document.jsearch.submit();",0,0,0,0,"Choose an area of talent and click Select");
document.write("<input type=\"hidden\" name=\"selareas\" value=\"\">");
//-->
</script>
<noscript><input name="selareas" value="Select" alt="Choose an area of talent and click Select" title="Choose an area of talent and click Select" type="Submit"  class="btn"/></noscript>
							</td>
						</tr>
						<tr>
							<td width="192" colspan="2" nowrap style="padding: 0px 0px 0px 0px;">
<label for="jfamily" class="p" style="margin: 0px;">Job family</label><br>
<select name="jfamily" id="jfamily" style="width: 100%;">
<%
	If areasoftalent <> "" Then
%>
	<option value="-1">All&nbsp;</option>
<%
		call getJobfamiliesOptions()
	Else
%>
	<option value=""></option>
<%
	End If
%>
</select>
							</td>
						</tr>
						<tr>
							<td width="192" colspan="2" nowrap style="padding: 0px 0px 0px 0px;">
<label for="stateid" class="p" style="margin: 0px;">Locations</label><br>
<select name="stateid"  id="stateid" style="width: 100%; z-index: auto;">
	<option value="-1">All&nbsp;</option>
<% 
	call getStateOptions()
%>
</select>
							</td>
						</tr>					
						<tr>
							<td width="192" colspan="2" nowrap style="padding: 0px 0px 0px 0px;">
<label for="keywords" class="p" style="margin: 0px;">Keywords or job number (if known)</label><br>
<input type="text" name="keywords" id="keywords" value="<%Response.write keywords%>" style="width: 100%;">
							</td>
						</tr>
						<tr>
							<td width="192" colspan="2" valign="top" width="100%" align="center" style="padding: 6px 0px 0px 12px;">
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Begin Search","javascript: document.jsearch.submit();",0,0,0,0,"Begin Search");
//-->
</script>
<noscript><input type="submit" name="bsearch" value="Begin Search" alt="Begin Search" title="Begin Search"  class="btn"/></noscript>
							</td>
						</tr>
					</table>
</form>