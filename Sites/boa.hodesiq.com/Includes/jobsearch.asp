<!-- #include file="jsearch.asp" -->
<% Dim jwdt
jwdt = 192
If jwidth Then jwdt = jwidth %>
<form style="margin: 0px;" name="jsearch" action="<% Response.write job_search_action %>">
<input type="hidden" name="from" id="from" value="<% Response.write page_self %>">
					<table width="<%=jwdt%>" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 0px 5px 0px 4px;">
						<tr>
							<td style="padding: 0px 0px 0px 0px;">
<p style="margin: 0px;">Use the Search below to find a career suited to your skill set. You may narrow your selection further by selecting a job area, location or entering a keyword.</p>
<p style="margin: 6px 0px 0px 0px;">
Bank of America associates should access the <a href="http://www.bankofamerica.com/careers/index.cfm?template=jobs_interstitial" class="p" onfocus="this.className='p-over';" onblur="this.className='p';" title="Internal Jobs Database">internal jobs database</a>.</p>
<img class="dotdiv" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
							</td>
						</tr>
						<tr>
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="jobareas" class="p" style="margin: 0px;"><b>Job areas</b></label><br>
<% 
	call getJobAreasSelect(""," style=""position: relative; width: 100%; z-index: auto;""")
%>
							</td>
						</tr>
						<tr>
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="stateid" class="p" style="margin: 0px;"><b>Locations</b></label><br>
<% 
	call getStateSelect(""," style=""width: 100%; z-index: auto;""")
%>
							</td>
						</tr>					
						<tr>
							<td width="<%=jwdt%>" nowrap style="padding: 0px 0px 0px 0px;">
<label for="keywords" class="p" style="margin: 0px;"><b>Keywords or job number (if known)</b></label><br>
<input type="text" name="keywords" id="keywords" value="<%Response.write keywords%>" style="width: 100%;">
							</td>
						</tr>
						<tr>
							<td width="<%=jwdt%>" valign="top" style="padding: 6px 0px 0px 0px;">
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Begin Search","javascript: document.jsearch.submit();",0,0,0,0,"Begin Search");
//-->
</script>
<noscript><input type="submit" name="bsearch" value="Begin Search" alt="Begin Search" title="Begin Search" class="btn"/></noscript>
							</td>
						</tr>
					</table>
</form>