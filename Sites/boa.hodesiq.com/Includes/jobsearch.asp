<!-- #include file="jsearch.asp" -->
<form name="jsearch" action="<% Response.write job_search_action %>">
<input type="hidden" name="from" id="from" value="<% Response.write page_self %>">
					<table width="217" cellpadding="0" cellspacing="0" border="0" summary="">
						<tr>
							<td colspan="2" style="padding: 0px 6px 0px 12px;">
<p style="margin: 0px;">To specify a particular Job Family, choose an Area of Talent you are interested in, and then click the Select button.</p>
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
							</td>
						</tr>
						<tr>
							<td nowrap style="padding: 0px 6px 0px 12px;">
<label for="areasoftalent" class="p" style="margin: 0px;">Areas of Talent</label><br>
<select name="areasoftalent" id="areasoftalent" style="position: relative; width: 100%;">
	<option value="-1">All&nbsp;</option>
<% 
	call getAreasOfTalentOptions()
%>
</select>
							</td>
							<td nowrap style="padding: 12px 0px 0px 0px;">
<input type="submit" name="selareas" value="Select" title="Select Areas of talent first" alt="Select Areas of talent first" class="bodybtn">
							</td>
						</tr>
						<tr>
							<td colspan="2" nowrap style="padding: 0px 6px 0px 12px;">
<label for="jfamily" class="p" style="margin: 0px;">Job Family</label><br>
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
							<td colspan="2" nowrap style="padding: 0px 6px 0px 12px;">
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
							<td colspan="2" nowrap style="padding: 0px 6px 0px 12px;">
<label for="keywords" class="p" style="margin: 0px;">Keywords or Job Number (if known)</label><br>
<input type="text" name="keywords" id="keywords" value="<%Response.write keywords%>" style="width: 217px;">
							</td>
						</tr>
						<tr>
							<td colspan="2" valign="top" width="100%" align="center" style="padding: 6px 6px 0px 12px;"><input type="submit" name="bsearch" value="Begin Search" title="Begin Search" alt="Begin Search" class="bodybtn"></td>
						</tr>
						</table>
</form>