<!-- #include file="jsearch.asp" -->
<form style="margin: 0px;" name="jsearch" action="<% Response.write job_search_action %>">
<input type="hidden" name="from" id="from" value="<% Response.write page_self %>">
					<table width="192" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 0px 5px 0px 4px;">
						<tr>
							<td colspan="2" style="padding: 0px 0px 0px 0px;">
<p style="margin: 0px;">To find a career suited to your skill set, select a job area from the list below. Then you may narrow your selection further by choosing a location and/or entering a keyword.</p>
<p style="margin: 6px 0px 0px 0px;">
If you are currently a Bank of America associate, you should access the <a href="http://www.bankofamerica.com/careers/index.cfm?template=jobs_interstitial" target="_blank" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Bank of America jobs database</a> through the internal Career Search tool.</p>
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
							</td>
						</tr>
						<tr>
							<td width="192" colspan="2" nowrap style="padding: 0px 0px 0px 0px;">
<label for="jobareas" class="p" style="margin: 0px;">Job Areas</label><br>
<select name="jobareas" id="jobareas" title="Select a Job Area" style="position: relative; width: 100%; z-index: auto;">
	<option value="Select a Job Area" selected="selected">Select a Job Area</option>
<optgroup label="Administration">
	<option value="1|-1" OptionGroup="Administration">All</option>
	<option value="1|4" OptionGroup="Administration">Change Mgmt &amp; Process</option>
	<option value="1|2" OptionGroup="Administration">Corporate Executive</option>
	<option value="1|3" OptionGroup="Administration">Corporate Workplace</option>
	<option value="1|7" OptionGroup="Administration">Learning &amp; Org Effectiveness</option>
	<option value="1|5" OptionGroup="Administration">Legal</option>
	<option value="1|6" OptionGroup="Administration">Services</option>
</optgroup>
<optgroup label="Communications">
	<option value="3|-1" OptionGroup="Communications">All</option>
	<option value="3|11" OptionGroup="Communications">Marketing</option>
</optgroup>
<optgroup label="Consumer Banking">
	<option value="10|-1" OptionGroup="Consumer Banking">All</option>
</optgroup>
<optgroup label="Customer Care">
	<option value="2|8" OptionGroup="Customer Care"> Relationship Management</option>
	<option value="2|3" OptionGroup="Customer Care">Corporate Workplace</option>
	<option value="2|9" OptionGroup="Customer Care">Customer Service</option>
</optgroup>
<optgroup label="Finance">
	<option value="4|-1" OptionGroup="Finance">All</option>
	<option value="4|13" OptionGroup="Finance">Credit</option>
	<option value="4|14" OptionGroup="Finance">Investment Banking</option>
	<option value="4|15" OptionGroup="Finance">Wealth &amp; Investment Mgmt</option>
</optgroup>
<optgroup label="Human Resources">
	<option value="5|-1" OptionGroup="Human Resources">All</option>
	<option value="5|7" OptionGroup="Human Resources">Learning &amp; Org Effectiveness</option>
</optgroup>
<optgroup label="Operations">
	<option value="6|-1" OptionGroup="Operations">All</option>
	<option value="6|4" OptionGroup="Operations">Change Mgmt &amp; Process</option>
	<option value="6|5" OptionGroup="Operations">Legal</option>
	<option value="6|6" OptionGroup="Operations">Services</option>
</optgroup>
<optgroup label="Risk Evaluation">
	<option value="7|-1" OptionGroup="Risk Evaluation">All</option>
</optgroup>
<optgroup label="Sales">
	<option value="8|-1" OptionGroup="Sales">All</option>
	<option value="8|20" OptionGroup="Sales">Consumer banking</option>
</optgroup>
<optgroup label="Technology">
	<option value="9|-1" OptionGroup="Technology">All</option>
</optgroup>
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