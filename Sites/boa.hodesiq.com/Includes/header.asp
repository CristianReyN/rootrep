<%
Dim ADA_iQ_NAV1,ADA_iQ_NAV2,ADA_iQ_NAV3,ADA_iQ_NAV4,ADA_iQ_NAV5
Dim ADA_iQ_TITLE1,ADA_iQ_TITLE2,ADA_iQ_TITLE3,ADA_iQ_TITLE4,ADA_iQ_TITLE5
Dim ADA_HEADER_LINKS
ADA_iQ_NAV1 = "../ada/overview.asp"
ADA_iQ_TITLE1 = "Overview"
ADA_iQ_NAV2 = "../ada/learnmore.asp"
ADA_iQ_TITLE2 = "Learn More"
ADA_iQ_NAV3 = "../ada/aresoftalent.asp"
ADA_iQ_TITLE3 = "Job Areas"
ADA_iQ_NAV4 = "../jobsearch.aspx"
ADA_iQ_TITLE4 = "Job Search"
ADA_iQ_NAV5 = "../ada/staffingevents.asp"
ADA_iQ_TITLE5 = "Staffing Events"
ADA_HEADER_LINKS = ""
if mpage <> "overview" Then ADA_HEADER_LINKS = ADA_HEADER_LINKS & "<a href=""" & ADA_iQ_NAV1 & """ title=""" & ADA_iQ_TITLE1 & """><img src=""../images/clear.gif"" width=""1"" height=""69"" alt=""" & ADA_iQ_TITLE1 & """ border=""0"" /></a>"
if mpage <> "learnmore" Then ADA_HEADER_LINKS = ADA_HEADER_LINKS & "<a href=""" & ADA_iQ_NAV2 & """ title=""" & ADA_iQ_TITLE2 & """><img src=""../images/clear.gif"" width=""1"" height=""69"" alt=""" & ADA_iQ_TITLE2 & """ border=""0"" /></a>"
if mpage <> "areasoftalent" Then ADA_HEADER_LINKS = ADA_HEADER_LINKS & "<a href=""" & ADA_iQ_NAV3 & """ title=""" & ADA_iQ_TITLE3 & """><img src=""../images/clear.gif"" width=""1"" height=""69"" alt=""" & ADA_iQ_TITLE3 & """ border=""0"" /></a>"
ADA_HEADER_LINKS = ADA_HEADER_LINKS & "<a href=""" & ADA_iQ_NAV4 & """ title=""" & ADA_iQ_TITLE4 & """><img src=""../images/clear.gif"" width=""1"" height=""69"" alt=""" & ADA_iQ_TITLE4 & """ border=""0"" /></a>"
if mpage <> "staffingevents" Then ADA_HEADER_LINKS = ADA_HEADER_LINKS & "<a href=""" & ADA_iQ_NAV5 & """ title=""" & ADA_iQ_TITLE5 & """><img src=""../images/clear.gif"" width=""1"" height=""69"" alt=""" & ADA_iQ_TITLE5 & """ border=""0"" /></a>"  

Dim to_version
textonly_version = "Text Only Version"
ada_title = ada_title  & ", " & textonly_version
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
<script language="JavaScript1.2" src="../includes/ps.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
//<!--
function popup(imnam) { 
window.open(imnam,"pop","directory=no,height=450,width=500,toolbar=no,scrollbars=yes,location=no,resizable=yes"); 
}
function hover(ref, classRef) { eval(ref).className = classRef; }


//-->
</script>
</head>
<body id="body" onload="startKeybordNav(); startPs(); if(window.loadVideoHost)loadVideoHost(); fixIE();" onunload="">
<script language="javascript" type="text/javascript">
//<!--
    examineFontSize("body");
//-->
</script>
<table cellpadding="0" cellspacing="0" border="0" summary=""><tr><td>
<% If flashPage Then %>
<a class="auraltext" id="stopaudio" href="JavaScript: if(window.hideFlash) hideFlash();" onFocus="hover(this,'show-tab'); this.focus();" onblur="hover(this,'auraltext');" title="<%=hide_flash_title%>"><%=hide_flash_title%></a>
<% Else %>
<a class="auraltext" id="stopaudio" href="<%=ada_href%>" onFocus="hover(this,'show-tab'); this.focus();" onblur="hover(this,'auraltext');" title="<%=ada_title%>"><%=ada_title%></a>
<% End If %>
</td></tr></table>

<table width="750" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top" colspan="3" height="71">
		<table width="750" border="0" cellspacing="0" cellpadding="0" summary="">
			<tr>
				<td width="262" valign="top"><a name="top"></a><a href="#skipmaincontent" title="Skip To Main Content."><img src="../images/clear.gif" width="1" height="69" alt="Skip To Main Content." border="0" /></a><img src="../images/clear.gif" width="10" height="69" alt="" border="0" /><a href="http://www.bankofamerica.com" title="Bank of America  Higher Standards home page"><img src="../images/mhd_reg_logo.gif" width="250" height="69" alt="Bank of America Higher Standards home page" border="0" /></a><a href="http://www.bankofamerica.com/help/index.cfm?template=sitemap.cfm" title="Go to site map."><img src="../images/clear.gif" width="1" height="69" alt="Go to site map." border="0" /></a></td>
				<td width="232"><a href="#skipnav" title="Skip global navigational links."><img src="../images/clear.gif" width="1" height="69" alt="Skip global navigational links." border="0" /></a></td>
				<td width="256" valign="bottom">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="">
						<tr>
							<td colspan="2" valign="bottom" align="right" nowrap>
<a href="http://www.bankofamerica.com/index.cfm?page=about" class="mh-link1" title="Home" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Home</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/findit/locator.cfm" class="mh-link1" title="Locations" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Locations</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/careers/index.cfm?template=contact_us" class="mh-link1" title="Contact Us" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Contact Us</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/help" class="mh-link1" title="Help" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Help</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/signin/" class="mh-link2" title="Sign In" onfocus="this.className='mh-link2-over';" onblur="this.className='mh-link2';">Sign In</a></td>
						</tr>
						<tr><td colspan="2"><img src="../images/clear.gif" width="1" height="3" alt="" border="0" /></td></tr>
						<tr>
							<td width="5"><img src="../images/mhd_5x5_search_corner.gif" alt="" width="5" height="5" border="0" /></td>
							<td width="100%" class="mh-hline"><img src="../images/clear.gif" width="100%" height="5" alt="" border="0" /></td>
						</tr>
						<tr align="right">
							<td width="5" class="mh-vline"><img src="../images/clear.gif" width="5" height="1" alt="" border="0" /></td>
							<td width="100%" class="mh-hline-bkg" valign="bottom">
<form method="post" action="http://www.bankofamerica.com/search/" style="margin: 0px;" name="SiteSearchForm" target="_parent">
<input name="ui_mode" type="hidden" value="question">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="SearchBox">
									<tr>
										<td width="10"><img src="../images/clear.gif" width="10" height="0" alt="" border="0" /><br><span class="ada-search"><label for="question_box" class="ada-search" style="display: none;">Search</label></span></td>
										<td width="100%" style="padding: 0px;">
<input type="text" maxlength="75" class="searchbox" style="width: 100%;" id="question_box" name="question_box" value="" alt="Question or phrase to search." title="Get answers fast. Type in a question or phrase."></td>
										<td width="10"><img src="../images/clear.gif" width="10" height="0" alt="" border="0" /></td>
										<td width="60" valign="top" nowrap>
<link href="../Includes/hs_safebutton.css" type="text/css" rel="stylesheet">
<script src="../Includes/hs_safebutton.js" language="JavaScript" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Search","javascript: submit_search();",0,0,0,0,"Search");
//-->
</script>
<noscript><input name="Search" alt="Search" value="Search" title="Search" type="Submit"  class="btn"/></noscript>
										</td>
										<td width="4"><img src="../images/clear.gif" width="4" height="0" alt="" border="0" /></td>
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
<img src="../images/careers.gif" width="76" height="25" alt="Bank of America | Career" title="Bank of America | Career" border="0"></td>
</tr>
<tr>
	<td width="160" style="background: #cadceb;"><img src="../images/clear.gif" width="160" height="1" alt="" border="0"></td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td width="578"><a name="skipnav"></a></td>
</tr>
<tr valign="top">
	<td id="tdtbnav" width="160" valign="top" align="center" style="background: #cadceb;"><img src="../images/clear.gif" width="160" height="1" alt="" border="0"><br>
		<table id="tbnav" width="160" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" height="2"><img src="../images/clear.gif" width="154" height="2" alt="" border="0"></td></tr>