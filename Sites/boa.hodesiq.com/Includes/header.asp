<%
Dim ADA_iQ_NAV1,ADA_iQ_NAV2,ADA_iQ_NAV3,ADA_iQ_NAV4,ADA_iQ_NAV5
Dim ADA_iQ_TITLE1,ADA_iQ_TITLE2,ADA_iQ_TITLE3,ADA_iQ_TITLE4,ADA_iQ_TITLE5
Dim ADA_HEADER_LINKS
ADA_iQ_NAV1 = "../ada/overview.asp"
ADA_iQ_TITLE1 = "Overview"
ADA_iQ_NAV2 = "../ada/learnmore.asp"
ADA_iQ_TITLE2 = "Learn More"
ADA_iQ_NAV3 = "../ada/aresoftalent.asp"
ADA_iQ_TITLE3 = "Areas of Talent"
ADA_iQ_NAV4 = "jobsearch.asp"
ADA_iQ_TITLE4 = "Job Search"
ADA_iQ_NAV5 = "../ada/staffingevents.asp"
ADA_iQ_TITLE5 = "Overview"
ADA_HEADER_LINKS =	"<a href=""#h1"" title=""Skip to Level 1 Heading.""><img src=""../images/clear.gif"" width=""1"" height=""1"" alt=""Skip to Level 1 Heading."" border=""0"" /></a>" &_
					"<a href=""" & ADA_iQ_NAV1 & """ title=""" & ADA_iQ_TITLE1 & """><img src=""../images/clear.gif"" width=""1"" height=""1"" alt=""" & ADA_iQ_TITLE1 & """ border=""0"" /></a>" &_
					"<a href=""" & ADA_iQ_NAV2 & """ title=""" & ADA_iQ_TITLE2 & """><img src=""../images/clear.gif"" width=""1"" height=""1"" alt=""" & ADA_iQ_TITLE2 & """ border=""0"" /></a>" &_
					"<a href=""" & ADA_iQ_NAV3 & """ title=""" & ADA_iQ_TITLE3 & """><img src=""../images/clear.gif"" width=""1"" height=""1"" alt=""" & ADA_iQ_TITLE3 & """ border=""0"" /></a>" &_ 
					"<a href=""" & ADA_iQ_NAV4 & """ title=""" & ADA_iQ_TITLE4 & """><img src=""../images/clear.gif"" width=""1"" height=""1"" alt=""" & ADA_iQ_TITLE4 & """ border=""0"" /></a>" &_
					"<a href=""" & ADA_iQ_NAV5 & """ title=""" & ADA_iQ_TITLE5 & """><img src=""../images/clear.gif"" width=""1"" height=""1"" alt=""" & ADA_iQ_TITLE5 & """ border=""0"" /></a>"  
%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="Description" content="<%=Metatag%>">
<title><%=title %></title>
<link rel="stylesheet" href="../includes/styles.css" type="text/css">
<script language="JavaScript1.2" src="../includes/masthead.js" type="text/javascript"></script>
<script language="JavaScript1.2" src="../includes/mvc-fontsize.js" type="text/javascript"></script>
<script language="JavaScript1.2" src="../includes/flash.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
//<!--
function popup(imnam) { 
window.open(imnam,"pop","directory=no,height=450,width=500,toolbar=no,scrollbars=yes,location=no,resizable=yes"); 
}
function hover(ref, classRef) { eval(ref).className = classRef; }
//-->
</script>
</head>
<body id="body">
<script language="javascript" type="text/javascript">
//<!--
    examineFontSize("body");
	function hideFlash(id){if(document.getElementById(id).style.display = 'inline') document.getElementById(id).style.display = 'none';}
//-->
</script>
<% if trim(skipFlash) = "1" then Response.write("<a class=""auraltext"" href="" & ada_href & "" onFocus=""hover(this,'show-tab'); this.focus()"" onblur=""hover(this,'auraltext')"">Low-bandwidth version</a>")%>

<table width="750" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top" colspan="4" height="71">
		<table width="750" border="0" cellspacing="0" cellpadding="0" summary="">
			<tr>
				<td width="262" valign="top"><a name="top"></a><%=ADA_HEADER_LINKS%><a href="#skipnav" title="Skip global navigational links."><img src="../images/clear.gif" width="1" height="51" alt="Skip global navigational links." border="0" /></a><a href="http://www.bankofamerica.com/help/index.cfm?template=sitemap.cfm" title="Go to site map."><img src="../images/clear.gif" width="1" height="69" alt="Go to site map." border="0" /></a><img src="../images/clear.gif" width="4" height="51" alt="" border="0" /><a href="http://www.bankofamerica.com" title="Bank of America  Higher Standards home page"><img src="../images/mhd_reg_logo.gif" width="250" height="69" alt="Bank of America Higher Standards home page" border="0" /></a></td>
				<td width="232"><a href="JavaScript: hideFlash('flash_in');" title="Stop Flash audio."><img src="../images/clear.gif" width="1" height="1" alt="Stop Flash audio." border="0" /></a></td>
				<td width="256" valign="bottom">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="">
						<tr>
							<td colspan="2" valign="bottom" align="right" nowrap>
<a href="http://www.bankofamerica.com/index.cfm?page=about" class="mh-link1" title="Home">Home</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/findit/locator.cfm" class="mh-link1" title="Locations">Locations</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/careers/index.cfm?template=contact_us" class="mh-link1" title="Contact Us">Contact Us</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/careers/index.cfm?template=lc_faqs" class="mh-link1" title="Help">Help</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/signin/" class="mh-link2" title="Sign In">Sign In</a></td>
						</tr>
						<tr><td colspan="2"><img src="../images/clear.gif" width="1" height="3" alt="" border="0" /></td></tr>
						<tr>
							<td width="5"><img src="../images/mhd_5x5_search_corner.gif" alt="" width="5" height="5" border="0" /></td>
							<td width="251" class="mh-hline"><img src="../images/clear.gif" width="1" height="5" alt="" border="0" /></td>
						</tr>
						<tr align="right">
							<td width="5" class="mh-vline"><img src="../images/clear.gif" width="1" height="1" alt="" border="0" /></td>
							<td width="251" class="mh-hline-bkg" valign="bottom">
							<form method="post" action="http://www.bankofamerica.com/search/" style="margin: 0px;" name="SiteSearchForm" target="_parent">
							<input name="ui_mode" type="hidden" value="question">
								<table width="251" border="0" cellspacing="0" cellpadding="0" summary="SearchBox" align="right">
									<tr valign="middle">
										<td><span class="ada-search"><label for="question_box" class="ada-search">Search</label></span></td>
										<td>
<input type="text" maxlength="75" class="searchbox" id="question_box" name="question_box" value="" alt="Question or phrase to search." title="Get answers fast. Type in a question or phrase."></td>
										<td width="5"><img src="../images/clear.gif" width="5" height="0" alt="" border="0" /></td>
										<td>
<script language="JavaScript1.1" type="text/javascript">
<!--
create_button("Search","javascript:submit_search();","btn1",null,null,null,null);
//-->
</script>
<noscript><input type="submit" name="Search" value="Search" alt="Search" class="btn1" ></noscript>
										</td>
										<td width="10"><img src="../images/clear.gif" width="10" height="1" alt="" border="0" /></td>
									</tr>
								</table>
</form>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="mh-hline"><img src="../images/clear.gif" width="1" height="5" alt="" border="0" /></td>
    			<td class="mh-hline-bkg"><img src="../images/clear.gif" width="1" height="5" alt="" border="0" /></td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td colspan="4" style="background: #d4100a;" width="750" valign="top">
<img src="../images/careers.gif" width="76" height="25" alt="" border="0"></td>
</tr>
<tr>
	<td width="160" style="background: #cadceb;"><img src="../images/clear.gif" width="160" height="1" alt="" border="0"></td>
	<td width="1"><img src="../images/clear.gif" width="1" height="1" alt="" border="0"></td>
	<td width="11"><img src="../images/clear.gif" width="11" height="1" alt="" border="0"></td>
	<td width="578"><a name="skipnav"></a><a href="#skipmaincontent" title="Skip To Main Content."><img src="../images/clear.gif" width="1" height="1" alt="Skip To Main Content." border="0" /></a></td>
</tr>
<tr valign="top">
	<td id="tdtbnav" width="160" valign="top" align="center"><img src="../images/clear.gif" width="160" height="1" alt="" border="0"><br>
		<table id="tbnav" width="160" cellpadding="0" cellspacing="0" border="0" summary="Site Navigation">
			<tr valign="top" style="background: #cadceb;"><td valign="middle"  height="10"><img src="../images/clear.gif" width="154" height="10" alt="" border="0"></td></tr>
			<tr valign="top" style="background: #ffffff;"><td valign="middle"><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>