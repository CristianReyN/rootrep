<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action,page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Job Areas | Corporate Workplace | Corporate Workplace Teams"
mpage = "areasoftalent"
spage = "corporateworkplace"
tpage = "cw_teams"
standart_href = "../corporateworkplace/cw_teams.asp"
job_search_action = "../jobsearch/searchresult.asp"
page_self = "../ada/cw_teams.asp"
page_section="ADA"
Dim flashPage
flashPage = false
Dim subtitle
subtitle=" Corporate Workplace Teams"
Metatag="Detail page of Corporate Workplace division within Bank of America careers website. Gives details on business unit's specific teams and job  requirements, job links and career search."
Keywords="Bank of America, Corporate Workplace, careers, jobs, real estate, internal space planning, corporate workplace executives, portfolio management, facility management, project management, leasing office space, leased facilities, business enablement, lease administration, risk management, workplace innovation, bank"
'****************************** ADDED FOR HOT JOB OPENING***************************
Dim familyid,rowcount
familyid=11
rowcount=6
%>
<!-- Header -->
<!-- #include file="header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td height="50" valign="bottom"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/cw_teams.asp" -->
<br><br>
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="footer.asp" -->
<!-- Footer -->

