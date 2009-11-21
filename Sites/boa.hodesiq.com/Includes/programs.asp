<%
	Function getUndergraduateProgramForm(c_lass,style,sel_ect,href_pre,fpage)
%>
<form name="undergraduate" action="program.asp" style="margin: 0px;">
<input type="hidden" name="back" id="back" value="undergraduate_programs.asp">
<span class="ada-label"><label class="ada-label" for="program">Select for Program Detail</label></span>
<select name="program" id="program" title="<% Response.write sel_ect %>"<%=c_lass%><%=style%>>
	<option value="0"><% Response.write sel_ect %></option>
<optgroup label="Global Technology and Operations">
	<option value="up_cwa.asp"<% If fvpage = "up_cwa" Then %> disabled<% End If %>>Corporate Workplace Analyst</option>
	<option value="up_gmgorp.asp"<% If fvpage = "up_gmgorp" Then %> disabled<% End If %>>Global Markets Group Operations Rotational Program</option>
	<option value="up_gmorp.asp"<% If fvpage = "up_gmorp" Then %> disabled<% End If %>>Global Middle Office Rotational Program</option>
	<option value="up_isbc.asp"<% If fvpage = "up_isbc" Then %> disabled<% End If %>>Information Security Business Continuity</option>
	<option value="up_ncgldrp.asp"<% If fvpage = "up_ncgldrp" Then %> disabled<% End If %>>Network Computing Group Leadership Development Rotational Program</option>
	<option value="up_ncgmbp.asp"<% If fvpage = "up_ncgmbp" Then %> disabled<% End If %>>Network Computing Group Mainframe Build Program</option>
	<option value="up_natorp.asp"<% If fvpage = "up_natorp" Then %> disabled<% End If %>>North American Treasury Operations Rotational Program</option>
	<option value="up_gmt.asp"<% If fvpage = "up_gmt" Then %> disabled<% End If %>>Global Markets Technology</option>
</optgroup>
<optgroup label="Global Risk">
	<option value="up_dpa.asp"<% If fvpage = "up_dpa" Then %> disabled<% End If %>>Corporate Debt Products Analyst</option>
	<option value="up_grmap.asp"<% If fvpage = "up_grmap" Then %> disabled<% End If %>>Global Risk Management Associate Program</option>
	<option value="up_gwimcr.asp"<% If fvpage = "up_gwimcr" Then %> disabled<% End If %>>Global Wealth and Investment Management Compliance Risk</option>
	<option value="up_qmap.asp"<% If fvpage = "up_qmap" Then %> disabled<% End If %>>Quantitative Management Associate Program</option>
	<option value="up_ca.asp"<% If fvpage = "up_ca" Then %> disabled<% End If %>>Corporate Audit</option>
	<option value="up_cs.asp"<% If fvpage = "up_cs" Then %> disabled<% End If %>>Corporate Security</option>
</optgroup>
<optgroup label="Corporate Treasury">
	<option value="up_ctap.asp"<% If fvpage = "up_ctap" Then %> disabled<% End If %>>Corporate Treasury Associate Program</option>
</optgroup>
<optgroup label="Corporate Finance">
	<option value="up_fmap.asp"<% If fvpage = "up_fmap" Then %> disabled<% End If %>>Finance Management Associate Program</option>
</optgroup>
<optgroup label="Supply Chain Management">
	<option value="up_scmap.asp"<% If fvpage = "up_scmap" Then %> disabled<% End If %>>Supply Chain Management Associate Program</option>
</optgroup>
<optgroup label="Global Wealth Investment Management">
	<option value="up_undergraduate.asp"<% If fvpage = "up_undergraduate" Then %> disabled<% End If %>>Undergraduate</option>
</optgroup>
<optgroup label="Global Corporate Investment Banking">
	<option value="http://www.bofa.com/careers">ABS/MBS Analyst</option>
	<option value="http://www.bofa.com/careers">Commercial Real Estate Analyst</option>
	<option value="http://www.bofa.com/careers">Treasury Management Associate Program</option>
	<option value="http://www.bofa.com/careers">Public Finance Analyst</option>
	<option value="http://www.bofa.com/careers">Sales & Trading Analyst</option>
	<option value="http://corp.bankofamerica.com/public/public.portal?_pd_page_label=career/home/default">Credit Management Development Program</option>
</optgroup>
<optgroup label="EMEA and Asia">
	<option value="http://www.bofa.com/careers">Investment Banking Analyst</option>
	<option value="http://www.bofa.com/careers">Capital Markets Analyst</option>
	<option value="http://www.bofa.com/careers">Sales, Trading, and Research Analyst</option>
	<option value="http://www.bofa.com/careers">Global Treasury Services Analyst</option>
	<option value="http://www.bofa.com/careers">Global Markets Technology Analyst</option>
	<option value="http://www.bofa.com/careers">Risk Management Analyst</option>
	<option value="http://www.bofa.com/careers">Global Middle Office Analyst</option>
	<option value="http://www.bofa.com/careers">Global Operations Analyst</option>
	<option value="http://www.bofa.com/careers">Network Computing Analyst</option>
</optgroup>
</select>
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Select A Program","JavaScript: none();","selectProgram(document.undergraduate); return false;",0,0,0,"Select A Program");
function selectProgram(f){if(f && f.program && f.program.selectedIndex != 0){var u = f.program.options[f.program.selectedIndex].value; if(u.indexOf("http")!=-1) f.target="_blank"; f.submit(); f.target="_self";}}
function none(){}
//-->
</script>
<noscript><input type="Submit" name="go" value="Select A Program" title="Select A Program" class="btn" /></noscript>
</form>
<%
	End Function
	
	Function getGraduateProgramForm(c_lass,style,sel_ect,href_pre,fpage)
%>
<form name="graduate" action="program.asp" style="margin: 0px;">
<input type="hidden" name="back" id="back" value="graduate_programs.asp">
<span class="ada-label"><label class="ada-label" for="program">Select for Program Detail</label></span>
<select name="program" id="program" title="<% Response.write sel_ect %>"<%=c_lass%><%=style%>>
	<option value="0"><% Response.write sel_ect %></option>
<optgroup label="Global Technology and Operations">
	<option value="gp_cwsa.asp"<% If fvpage = "gp_cwsa" Then %> disabled<% End If %>>Corporate Workplace Senior Analyst</option>
	<option value="gp_qpc.asp"<% If fvpage = "gp_qpc" Then %> disabled<% End If %>>Quality and Productivity Consultant</option>
	<option value="gp_sflrp.asp"<% If fvpage = "gp_sflrp" Then %> disabled<% End If %>>Operations MBA Program</option>
	<option value="gp_tmbap.asp"<% If fvpage = "gp_tmbap" Then %> disabled<% End If %>>Technology MBA Program</option>
</optgroup>
<optgroup label="Global Risk">
	<option value="gp_dpsa.asp"<% If fvpage = "gp_dpsa" Then %> disabled<% End If %>>Corporate Debt Products Associate</option>
</optgroup>
<optgroup label="Global Human Resources">
	<option value="gp_ldc.asp"<% If fvpage = "gp_ldc" Then %> disabled<% End If %>>Leadership Development Consultant</option>
	<option value="gp_lc.asp"<% If fvpage = "gp_lc" Then %> disabled<% End If %>>Learning Consultant</option>
	<option value="gp_iditd.asp"<% If fvpage = "gp_iditd" Then %> disabled<% End If %>>Instructional Designer</option>
	<option value="gp_cc.asp"<% If fvpage = "gp_cc" Then %> disabled<% End If %>>Compensation Consultant</option>
	<option value="gp_sosaa.asp"<% If fvpage = "gp_sosaa" Then %> disabled<% End If %>>Staffing Operations - Selection and Assessment Analyst</option>
	<option value="gp_wpa.asp"<% If fvpage = "gp_wpa" Then %> disabled<% End If %>>Staffing Operations - Workforce Planning Analyst</option>
</optgroup>
<optgroup label="Global Consumer Small Business Banking">
	<option value="gp_bccmmldp.asp"<% If fvpage = "gp_bccmmldp" Then %> disabled<% End If %>>Banking Center Channel Market Manager Leader Development Program</option>
	<option value="gp_gcsbbd.asp"<% If fvpage = "gp_gcsbbd" Then %> disabled<% End If %>>Global Consumer and Small Business Banking Product Leader Development Program</option>
</optgroup>
<optgroup label="Global Wealth & Investment Management">
	<option value="gp_g.asp"<% If fvpage = "gp_g" Then %> disabled<% End If %>>Graduate</option>
</optgroup>
<optgroup label="Global Corporate Investment Banking">
	<option value="http://www.bofa.com/careers">Global Commercial Banking/Treasury Services Associate</option>
	<option value="http://www.bofa.com/careers">Investment Banking & Capital Markets Associate</option>
	<option value="http://www.bofa.com/careers">Research Associate</option>
	<option value="http://www.bofa.com/careers">Sales & Trading Associate</option>
</optgroup>
<optgroup label="EMEA and Asia">
	<option value="http://www.bofa.com/careers">Investment Banking Associate</option>
	<option value="http://www.bofa.com/careers">Capital Markets Associate</option>
	<option value="http://www.bofa.com/careers">Sales, Trading, and Research Associate</option>
</optgroup>
</select>
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Select A Program","JavaScript: none();","selectProgram(document.graduate); return false;",0,0,0,"Select A Program");
function selectProgram(f){if(f && f.program && f.program.selectedIndex != 0){var u = f.program.options[f.program.selectedIndex].value; if(u.indexOf("http")!=-1) f.target="_blank"; f.submit(); f.target="_self";}}
function none(){}
//-->
</script>
<noscript><input type="Submit" name="go" value="Select A Program" title="Select A Program" class="btn" /></noscript>
</form>
<%
	End Function
	
	Function getInternshipProgramForm(c_lass,style,sel_ect,href_pre,fpage)
%>
<form name="internship" action="program.asp" style="margin: 0px;">
<input type="hidden" name="back" id="back" value="internships_program.asp">
<span class="ada-label"><label class="ada-label" for="program">Select for Program Detail</label></span>
<select name="program" id="program" title="<% Response.write sel_ect %>"<%=c_lass%><%=style%>>
	<option value="0"><% Response.write sel_ect %></option>
<optgroup label="Global Technology and Operations">
	<option value="ip_cwa.asp"<% If fvpage = "ip_cwa" Then %> disabled<% End If %>>Corporate Workplace Analyst Internship</option>
	<option value="ip_gmgo.asp"<% If fvpage = "ip_gmgo" Then %> disabled<% End If %>>Global Markets Group Operations Intern</option>
	<option value="ip_gmo.asp"<% If fvpage = "ip_gmo" Then %> disabled<% End If %>>Global Middle Office Intern</option>
	<option value="ip_isbc.asp"<% If fvpage = "ip_isbc" Then %> disabled<% End If %>>Information Security Business Continuity Intern</option>
	<option value="ip_ncg.asp"<% If fvpage = "ip_ncg" Then %> disabled<% End If %>>Network Computing Group Intern</option>
	<option value="ip_ncgmfb.asp"<% If fvpage = "ip_ncgmfb" Then %> disabled<% End If %>>Network Computing Group Mainframe Build Intern</option>
	<option value="ip_qpcas.asp"<% If fvpage = "ip_qpcas" Then %> disabled<% End If %>>Quality and Productivity Change Analyst Intern</option>
	<option value="ip_omap.asp"<% If fvpage = "ip_omap" Then %> disabled<% End If %>>Operations Management Associate Program Intern</option>
	<option value="ip_gmt.asp"<% If fvpage = "ip_gmt" Then %> disabled<% End If %>>Global Markets Technology Intern</option>
	<option value="ip_cwsa.asp"<% If fvpage = "ip_cwsa" Then %> disabled<% End If %>>Corporate Workplace Senior Analyst Internship</option>
	<option value="ip_qpc.asp"<% If fvpage = "ip_qpc" Then %> disabled<% End If %>>Quality and Productivity Consultant Intern</option>
	<option value="ip_sf.asp"<% If fvpage = "ip_sf" Then %> disabled<% End If %>>Operations MBA Internship</option>
	<option value="ip_tmba.asp"<% If fvpage = "ip_tmba" Then %> disabled<% End If %>>Technology MBA Intern</option>
</optgroup>
<optgroup label="Global Risk">
	<option value="ip_ca.asp"<% If fvpage = "ip_ca" Then %> disabled<% End If %>>Corporate Audit Intern</option>
	<option value="ip_cs.asp"<% If fvpage = "ip_cs" Then %> disabled<% End If %>>Corporate Security Intern</option>
	<option value="ip_dpa.asp"<% If fvpage = "ip_dpa" Then %> disabled<% End If %>>Corporate Debt Products Analyst Intern</option>
	<option value="ip_grmap.asp"<% If fvpage = "ip_grmap" Then %> disabled<% End If %>>Global Risk Management Associate Program Intern</option>
	<option value="ip_dpsa.asp"<% If fvpage = "ip_dpsa" Then %> disabled<% End If %>>Corporate Debt Products Associate Intern</option>
</optgroup>

<optgroup label="Corporate Treasury">
	<option value="ip_ct.asp"<% If fvpage = "ip_ct" Then %> disabled<% End If %>>Corporate Treasury Intern</option>
</optgroup>

<optgroup label="Corporate Finance">
	<option value="ip_cf.asp"<% If fvpage = "ip_cf" Then %> disabled<% End If %>>Finance Intern</option>
</optgroup>

<optgroup label="Supply Chain Management">
	<option value="ip_scm.asp"<% If fvpage = "ip_scm" Then %> disabled<% End If %>>Supply Chain Management Intern</option>
</optgroup>

<optgroup label="Global Human Resources">
	<option value="ip_ldc.asp"<% If fvpage = "ip_ldc" Then %> disabled<% End If %>>Leadership Development Consultant Intern</option>
	<option value="ip_lc.asp"<% If fvpage = "ip_lc" Then %> disabled<% End If %>>Learning Consultant Intern</option>
	<option value="ip_id.asp"<% If fvpage = "ip_id" Then %> disabled<% End If %>>Instructional Designer Intern</option>
	<option value="ip_cc.asp"<% If fvpage = "ip_cc" Then %> disabled<% End If %>>Compensation Consultant Intern</option>
	<option value="ip_so_saa.asp"<% If fvpage = "ip_so_saa" Then %> disabled<% End If %>>Staffing Operations - Selection and Assessment Analyst Intern</option>
	<option value="ip_so_wpa.asp"<% If fvpage = "ip_so_wpa" Then %> disabled<% End If %>>Staffing Operations - Workforce Planning Analyst Intern</option>
	<option value="ip_ss_cm.asp"<% If fvpage = "ip_ss_cm" Then %> disabled<% End If %>>Shared Services - Case Manager Internship</option>
	<option value="ip_ss_wc.asp"<% If fvpage = "ip_ss_wc" Then %> disabled<% End If %>>Shared Services - Workforce Communications Intern</option>
	<option value="ip_gmca.asp"<% If fvpage = "ip_gmca" Then %> disabled<% End If %>>Global Marketing &amp; Corporate Affairs</option>
</optgroup>

<optgroup label="Global Consumer Small Business Banking">
	<option value="ip_bccmmld.asp"<% If fvpage = "ip_bccmmld" Then %> disabled<% End If %>>Banking Center Channel Market Manager Leader Development Intern</option> 
	<option value="ip_gcsbbp.asp"<% If fvpage = "ip_gcsbbp" Then %> disabled<% End If %>>Global Consumer Small Business Banking Product Intern</option>
</optgroup>

<optgroup label="Global Wealth and Investment Management">
	<option value="ip_ungr.asp"<% If fvpage = "ip_ungr" Then %> disabled<% End If %>>Undergraduate Intern</option>
	<option value="ip_gr.asp"<% If fvpage = "ip_gr" Then %> disabled<% End If %>>Graduate Intern</option>
</optgroup>

<optgroup label="Global Corporate Investment Banking Summer Analyst">
	<option value="http://www.bofa.com/careers">Commercial Real Estate Summer BA Analyst (Undergraduate program)</option>
	<option value="http://www.bofa.com/careers">Investment Banking & Capital Markets Summer BA Analyst  (Undergraduate program)</option>
	<option value="http://www.bofa.com/careers">Public Finance Summer BA Analyst (Undergraduate program)</option>
	<option value="http://www.bofa.com/careers">Research Summer BA Analyst (Undergraduate program)</option>
	<option value="http://www.bofa.com/careers">Sales & Trading Summer BA Analyst  (Undergraduate  program)</option>
	<option value="http://www.bofa.com/careers">Treasury Services Summer BA Analyst (Undergraduate  program)</option>
	<option value="http://corp.bankofamerica.com/public/public.portal?_pd_page_label=career/home/default">Credit Management Development Summer BA Analyst (Undergraduate program)</option>
</optgroup>

<optgroup label="Global Corporate Investment Banking Summer Associate">
	<option value="http://www.bofa.com/careers">Investment Banking & Capital Markets Summer MBA Associate  (Graduate program)</option>
	<option value="http://www.bofa.com/careers">Sales & Trading Summer MBA Associate (Graduate program)</option>
	<option value="http://www.bofa.com/careers">Research Summer MBA Associate (Graduate program)</option>
	<option value="http://www.bofa.com/careers">Global Commercial Banking/Treasury Services MBA Summer Associate  (Graduate program)</option>
</optgroup>

<optgroup label="EMEA and Asia Summer Analyst">
	<option value="http://www.bofa.com/careers">Investment Banking Summer Analyst (Undergraduate program)</option>
	<option value="http://www.bofa.com/careers">Capital Markets Summer Analyst (Undergraduate program)</option>
	<option value="http://www.bofa.com/careers">Sales, Trading, and Research Summer Analyst (Undergraduate  program)</option>
	<option value="http://www.bofa.com/careers">Global Treasury Services Analyst (Undergraduate program)</option>
	<option value="http://www.bofa.com/careers">Global Markets Technology Analyst (Undergraduate program)</option>
	<option value="http://www.bofa.com/careers">Risk Management Analyst (Undergraduate program)</option>
	<option value="http://www.bofa.com/careers">Global Middle Office Analyst (Undergraduate program)</option>
	<option value="http://www.bofa.com/careers">Global Operations Analyst (Undergraduate program)</option>
	<option value="http://www.bofa.com/careers">Network Computing Analyst (Undergraduate  program)</option>
</optgroup>

<optgroup label="EMEA and Asia Summer Associate">
	<option value="http://www.bofa.com/careers">Investment Banking Summer Associate (Graduate program)</option>
	<option value="http://www.bofa.com/careers">Capital Markets Summer Associate (Graduate program)</option>
	<option value="http://www.bofa.com/careers">Sales, Trading, and Research Summer Associate (Graduate  program)</option>
</optgroup>

</select>
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Select A Program","JavaScript: none();","selectProgram(document.internship); return false;",0,0,0,"Select A Program");
function selectProgram(f){if(f && f.program && f.program.selectedIndex != 0){var u = f.program.options[f.program.selectedIndex].value; if(u.indexOf("http")!=-1) f.target="_blank"; f.submit(); f.target="_self";}}
function none(){}
//-->
</script>
<noscript><input type="Submit" name="go" value="Select A Program" title="Select A Program" class="btn" /></noscript>
</form>
<%
	End Function
	
	Function getLobSelectForm(c_lass,style,sel_ect,href_pre,tpage)
%>
<form name="lob" action="program.asp" style="margin: 0px;">
<input type="hidden" name="back" id="back" value="corpinfo.asp">
<span class="ada-label"><label class="ada-label" for="program">Select for Program Detail</label></span>
<select name="program" id="program" title="<% Response.write sel_ect %>"<%=c_lass%><%=style%>>
	<option value="0"><% Response.write sel_ect %></option>
	<% If spage <> "lobcfo" Then %><!--<option value="lobcfo.asp">Corporate Financial Operations</option>--><% End If %>
	<% If spage <> "lobgcsbb" Then %><option value="lobgcsbb.asp">Global Consumer &amp; Small Business Banking</option><% End If %>
	<% If tpage <> "lobgcib" Then %><option value="../gcib/">Global Corporate &amp; Investment Banking</option><% End If %>
	<% If tpage <> "lobgwim" Then %><option value="../wealthmanagement/">Global Wealth &amp; Investment Management</option><% End If %>
	<% If spage <> "lobgto" Then %><option value="../technology/">Global Technology &amp; Operations</option><% End If %>
	<% If spage <> "lobcss" Then %><option value="lobcss.asp">Corporate Staff &amp; Support</option><% End If %>
</select>
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Go To Business","JavaScript: none();","goToBusiness(document.lob); return false;",0,0,0,"Go To Business");
function goToBusiness(f){if(f && f.program && f.program.selectedIndex != 0){var u = f.program.options[f.program.selectedIndex].value; if(u.indexOf("http")!=-1) f.target="_blank"; f.submit(); f.target="_self";}}
function none(){}
//-->
</script>
<noscript><input type="Submit" name="go" value="Go To  Business" title="Go To Business" class="btn" /></noscript>
</form>
<%
	End Function
%>


