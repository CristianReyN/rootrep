<!-- #include file="jsearch.asp" -->
<form name="jsearch" action="<% Response.write job_search_action %>">
<input type="hidden" name="from" id="from" value="<% Response.write page_self %>">
					<table width="217" cellpadding="0" cellspacing="0" border="0" summary="">
						<tr>
							<td nowrap style="padding: 0px 6px 0px 12px;">
<label for="areasoftalent"><p style="margin: 0px;">Areas of Talent</p></label>
<select name="areasoftalent" id="areasoftalent" class="right" style="position: relative; width: 100%;">
	<option value="-1">All&nbsp;</option>
<% 
	call getAreasOfTalentOptions()
%>
</select>
							</td>
							<td nowrap style="padding: 12px 0px 0px 0px;">
<input type="submit" name="selareas" value="Select" alt="Select" class="bodybtn">
							</td>
						</tr>
						<tr>
							<td colspan="2" nowrap style="padding: 0px 6px 0px 12px;">
<label for="jfamily"><p style="margin: 0px;">Job Family</p></label>
<select name="jfamily" id="jfamily" class="right" style="width: 100%;">
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
							<td colspan="2" nowrap style="padding: 0px 6px 0px 12px;">
<label for="stateid"><p style="margin: 0px;">Locations</p></label>
<select name="stateid"  id="stateid" class="right" style="width: 100%; z-index: auto;">
	<option value="-1">All&nbsp;</option>
<% 
	call getStateOptions()
%>
</select>
							</td>
						</tr>						
						<tr>
							<td colspan="2" nowrap style="padding: 0px 6px 0px 12px;">
<label for="Keywords"><p style="margin: 0px;">Keywords</p></label>
<input type="text" name="keywords" id="keywords" value="<%Response.write keywords%>" class="right" style="width: 217px;">
							</td>
						</tr>
						<tr>
							<td colspan="2" valign="top" width="100%" align="center" style="padding: 6px 6px 0px 12px;">
<input type="submit" name="bsearch" value="Begin Search" alt="Begin Search" class="bodybtn">&nbsp;<input type="submit" name="vjobs" value="View All Jobs" alt="View All Jobs" class="bodybtn">
							</td>
						</tr>
						</table>
</form>