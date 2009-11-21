<%
	Function getUndergraduateProgramForm(c_lass,style,sel_ect,href_pre,fpage)
%>
<form name="undergraduate" action="program.asp" style="margin: 0px;">
<input type="hidden" name="back" id="back" value="undergraduate_programs.asp">
<select name="program" id="program" title="<% Response.write sel_ect %>"<%=c_lass%><%=style%>>
	<option value="0"><% Response.write sel_ect %></option>
<optgroup label="Global Technology and Operations">
	<option value="up_cwa.asp"<% If fpage = "up_cwa" Then %> disabled<% End If %>>Corporate Workplace Analyst</option>
	<option value="up_gmgorp.asp"<% If fpage = "up_gmgorp" Then %> disabled<% End If %>>Global Markets Group Operations Rotational Program</option>
	<option value="up_gmorp.asp"<% If fpage = "up_gmorp" Then %> disabled<% End If %>>Global Middle Office Rotational Program</option>
	<option value="up_isbc.asp"<% If fpage = "up_isbc" Then %> disabled<% End If %>>Information Security Business Continuity</option>
	<option value="up_ncgldrp.asp"<% If fpage = "up_ncgldrp" Then %> disabled<% End If %>>Network Computing Group Leadership Development Rotational Program</option>
	<option value="up_ncgmbp.asp"<% If fpage = "up_ncgmbp" Then %> disabled<% End If %>>Network Computing Group Mainframe Build Program</option>
	<option value="up_natorp.asp"<% If fpage = "up_natorp" Then %> disabled<% End If %>>North American Treasury Operations Rotational Program</option>
	<option value="up_gmt.asp"<% If fpage = "up_gmt" Then %> disabled<% End If %>>Global Markets Technology</option>
</optgroup>
<optgroup label="Global Risk">
	<option value="up_dpa.asp"<% If fpage = "up_dpa" Then %> disabled<% End If %>>Debt Products Analyst</option>
	<option value="up_grmap.asp"<% If fpage = "up_grmap" Then %> disabled<% End If %>>Global Risk Management Associate Program</option>
	<option value="up_gwimcr.asp"<% If fpage = "up_gwimcr" Then %> disabled<% End If %>>Global Wealth and Investment Management Compliance Risk</option>
	<option value="up_mrap.asp"<% If fpage = "up_mrap" Then %> disabled<% End If %>>Markets Risk Associate Program</option>
	<option value="up_qmap.asp"<% If fpage = "up_qmap" Then %> disabled<% End If %>>Quantitative Management Associate Program</option>
	<option value="up_ca.asp"<% If fpage = "up_ca" Then %> disabled<% End If %>>Corporate Audit</option>
	<option value="up_cs.asp"<% If fpage = "up_cs" Then %> disabled<% End If %>>Corporate Security</option>
</optgroup>
<optgroup label="Corporate Treasury">
	<option value="up_ctap.asp"<% If fpage = "up_ctap" Then %> disabled<% End If %>>Corporate Treasury Associate Program</option>
</optgroup>
<optgroup label="Corporate Finance">
	<option value="up_fmap.asp"<% If fpage = "up_fmap" Then %> disabled<% End If %>>Finance Management Associate Program</option>
</optgroup>
<optgroup label="Supply Chain Management">
	<option value="up_scmap.asp"<% If fpage = "up_scmap" Then %> disabled<% End If %>>Supply Chain Management Associate Program</option>
</optgroup>
</select>
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Select A Program","JavaScript: none();","selectProgram(document.undergraduate); return false;",0,0,0,"Select A Program");
function selectProgram(f){if(f && f.program && f.program.selectedIndex != 0){f.submit();}}
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
<select name="program" program="gp" title="<% Response.write sel_ect %>"<%=c_lass%><%=style%>>
	<option value="0"><% Response.write sel_ect %></option>
<optgroup label="Global Technology and Operations">
	<option value="gp_cwsa.asp"<% If fpage = "gp_cwsa" Then %> disabled<% End If %>>Corporate Workplace Senior Analyst</option>
	<option value="gp_qpc.asp"<% If fpage = "gp_qpc" Then %> disabled<% End If %>>Quality and Productivity Consultant</option>
	<option value="gp_sflrp.asp"<% If fpage = "gp_sflrp" Then %> disabled<% End If %>>Service and Fulfillment Leadership Rotational Program</option>
	<option value="gp_tmbap.asp"<% If fpage = "gp_tmbap" Then %> disabled<% End If %>>Technology MBA Program</option>
</optgroup>
<optgroup label="Global Risk">
	<option value="gp_dpsa.asp"<% If fpage = "gp_dpsa" Then %> disabled<% End If %>>Debt Products Senior Analyst</option>
</optgroup>
<optgroup label="Global Human Resources">
	<option value="gp_ldc.asp"<% If fpage = "gp_ldc" Then %> disabled<% End If %>>Leadership Development Consultant</option>
	<option value="gp_lc.asp"<% If fpage = "gp_lc" Then %> disabled<% End If %>>Learning Consultant</option>
	<option value="gp_iditd.asp"<% If fpage = "gp_iditd" Then %> disabled<% End If %>>Instructional Designer</option>
	<option value="gp_cc.asp"<% If fpage = "gp_cc" Then %> disabled<% End If %>>Compensation Consultant</option>
	<option value="gp_sosaa.asp"<% If fpage = "gp_sosaa" Then %> disabled<% End If %>>Staffing Operations - Selection and Assessment Analyst</option>
	<option value="gp_wpa.asp"<% If fpage = "gp_wpa" Then %> disabled<% End If %>>Staffing Operations - Workforce Planning Analyst</option>
</optgroup>
<optgroup label="Global Consumer Small Business Banking">
	<option value="gp_bccmmldp.asp"<% If fpage = "gp_bccmmldp" Then %> disabled<% End If %>>Banking Center Channel Market Manager Leader Development Program</option>
	<option value="gp_gcsbbd.asp"<% If fpage = "gp_gcsbbd" Then %> disabled<% End If %>>Global Consumer and Small Business Banking Product Leader Development Program</option>
</optgroup>
</select>
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Select A Program","JavaScript: none();","selectProgram(document.graduate); return false;",0,0,0,"Select A Program");
function selectProgram(f){if(f && f.program && f.program.selectedIndex != 0){f.submit();}}
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
<select name="program" id="program" title="<% Response.write sel_ect %>"<%=c_lass%><%=style%>>
	<option value="0"><% Response.write sel_ect %></option>
	<% If tpage <> "lobcfo" Then %><!--<option value="lobcfo.asp">Corporate Financial Operations</option>--><% End If %>
	<% If tpage <> "lobgcsbb" Then %><option value="lobgcsbb.asp">Global Consumer & Small Business Banking</option><% End If %>
	<% If tpage <> "lobgcib" Then %><option value="lobgcib.asp">Global Corporate Investment Bank</option><% End If %>
	<% If tpage <> "lobgwim" Then %><option value="lobgwim.asp">Global Wealth & Investment Management</option><% End If %>
	<% If tpage <> "lobgto" Then %><option value="lobgto.asp">Global Technology & Operations</option><% End If %>
	<% If tpage <> "lobcss" Then %><option value="lobcss.asp">Corporate Staff & Support</option><% End If %>
</select>
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Go To Business","JavaScript: none();","goToBusiness(document.lob); return false;",0,0,0,"Go To Business");
function goToBusiness(f){if(f && f.program && f.program.selectedIndex != 0){f.submit();}}
function none(){}
//-->
</script>
<noscript><input type="Submit" name="go" value="Go To  Business" title="Go To Business" class="btn" /></noscript>
</form>
<%
	End Function
	
	Function getInternshipProgramForm(c_lass,style,sel_ect,href_pre,fpage)
%>
<form name="internship" action="program.asp" style="margin: 0px;">
<input type="hidden" name="back" id="back" value="internships_program.asp">
<select name="program" id="program" title="<% Response.write sel_ect %>"<%=c_lass%><%=style%>>
	<option value="0"><% Response.write sel_ect %></option>
<optgroup label="Global Technology and Operations">
	<option value="ip_cwa.asp"<% If fpage = "ip_cwa" Then %> disabled<% End If %>>Corporate Workplace Analyst Internship</option>
	<option value="ip_gmgo.asp"<% If fpage = "ip_gmgo" Then %> disabled<% End If %>>Global Markets Group Operations Intern</option>
	<option value="ip_gmo.asp"<% If fpage = "ip_gmo" Then %> disabled<% End If %>>Global Middle Office Intern</option>
	<option value="ip_isbc.asp"<% If fpage = "ip_isbc" Then %> disabled<% End If %>>Information Security Business Continuity Intern</option>
	<option value="ip_ncg.asp"<% If fpage = "ip_ncg" Then %> disabled<% End If %>>Network Computing Group Intern</option>
	<option value="ip_ncgmfb.asp"<% If fpage = "ip_ncgmfb" Then %> disabled<% End If %>>Network Computing Group Mainframe Build Intern</option>
	<option value="ip_qpcas.asp"<% If fpage = "ip_qpcas" Then %> disabled<% End If %>>Quality and Productivity Change Analyst Intern</option>
	<option value="ip_omap.asp"<% If fpage = "ip_omap" Then %> disabled<% End If %>>Operations Management Associate Program Intern</option>
	<option value="ip_gmt.asp"<% If fpage = "ip_gmt" Then %> disabled<% End If %>>Global Markets Technology Intern</option>
	<option value="ip_cwsa.asp"<% If fpage = "ip_cwsa" Then %> disabled<% End If %>>Corporate Workplace Senior Analyst Internship</option>
	<option value="ip_qpc.asp"<% If fpage = "ip_qpc" Then %> disabled<% End If %>>Quality and Productivity Consultant Intern</option>
	<option value="ip_sf.asp"<% If fpage = "ip_sf" Then %> disabled<% End If %>>Service and Fulfillment Intern</option>
	<option value="ip_tmba.asp"<% If fpage = "ip_tmba" Then %> disabled<% End If %>>Technology MBA Intern</option>
</optgroup>

<optgroup label="Global Risk">
	<option value="ip_ca.asp"<% If fpage = "ip_ca" Then %> disabled<% End If %>>Corporate Audit Intern</option>
	<option value="ip_cs.asp"<% If fpage = "ip_cs" Then %> disabled<% End If %>>Corporate Security Intern</option>
	<option value="ip_dpa.asp"<% If fpage = "ip_dpa" Then %> disabled<% End If %>>Debt Products Analyst Intern</option>
	<option value="ip_grmap.asp"<% If fpage = "ip_grmap" Then %> disabled<% End If %>>Global Risk Management Associate Program Intern</option>
	<option value="ip_mr.asp"<% If fpage = "ip_mr" Then %> disabled<% End If %>>Markets Risk Intern</option>
	<option value="ip_dpsa.asp"<% If fpage = "ip_dpsa" Then %> disabled<% End If %>>Debt Products Senior Analyst Intern</option>
</optgroup>


<optgroup label="Corporate Investments Group">
	<option value="ip_ci.asp"<% If fpage = "ip_ci" Then %> disabled<% End If %>>Corporate Investments Intern</option>
</optgroup>

<optgroup label="Corporate Treasury">
	<option value="ip_ct.asp"<% If fpage = "ip_ct" Then %> disabled<% End If %>>Corporate Treasury Intern</option>
</optgroup>

<optgroup label="Corporate Finance">
	<option value="ip_cf.asp"<% If fpage = "ip_cf" Then %> disabled<% End If %>>Finance Intern</option>
</optgroup>

<optgroup label="Supply Chain Management">
	<option value="ip_scm.asp"<% If fpage = "ip_scm" Then %> disabled<% End If %>>Supply Chain Management Intern</option>
</optgroup>

<optgroup label="Global Human Resources">
	<option value="ip_ldc.asp"<% If fpage = "ip_ldc" Then %> disabled<% End If %>>Leadership Development Consultant Intern</option>
	<option value="ip_lc.asp"<% If fpage = "ip_lc" Then %> disabled<% End If %>>Learning Consultant Intern</option>
	<option value="ip_id.asp"<% If fpage = "ip_id" Then %> disabled<% End If %>>Instructional Designer Intern</option>
	<option value="ip_cc.asp"<% If fpage = "ip_cc" Then %> disabled<% End If %>>Compensation Consultant Intern</option>
	<option value="ip_so_saa.asp"<% If fpage = "ip_so_saa" Then %> disabled<% End If %>>Staffing Operations - Selection and Assessment Analyst Intern</option>
	<option value="ip_so_wpa.asp"<% If fpage = "ip_so_wpa" Then %> disabled<% End If %>>Staffing Operations - Workforce Planning Analyst Intern</option>
	<option value="ip_ss_cm.asp"<% If fpage = "ip_ss_cm" Then %> disabled<% End If %>>Shared Services - Case Manager Internship</option>
	<option value="ip_ss_wc.asp"<% If fpage = "ip_ss_wc" Then %> disabled<% End If %>>Shared Services - Workforce Communications Intern</option>
</optgroup>

<optgroup label="Global Consumer Small Business Banking">
	<option value="ip_bccmmld.asp"<% If fpage = "ip_bccmmld" Then %> disabled<% End If %>>Banking Center Channel Market Manager Leader Development Intern</option> 
	<option value="ip_gcsbbp.asp"<% If fpage = "ip_gcsbbp" Then %> disabled<% End If %>>Global Consumer Small Business Banking Product Intern</option>
</optgroup>

<optgroup label="Global Wealth and Investment Management">
	<option value="ip_ungr.asp"<% If fpage = "ip_ungr" Then %> disabled<% End If %>>Undergraduate Intern</option>
	<option value="ip_gr.asp"<% If fpage = "ip_gr" Then %> disabled<% End If %>>Graduate Intern</option>
</optgroup>
</select>
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Select A Program","JavaScript: none();","selectProgram(document.internship); return false;",0,0,0,"Select A Program");
function selectProgram(f){if(f && f.program && f.program.selectedIndex != 0){f.submit();}}
function none(){}
//-->
</script>
<noscript><input type="Submit" name="go" value="Select A Program" title="Select A Program" class="btn" /></noscript>
</form>
<%
	End Function
%>


