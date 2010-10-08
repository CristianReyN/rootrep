<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en-us">
<head>
<title><% Response.Write title & ", Text Only Version" %></title>
<meta name="Description" content="<%=Metatag%>">
<%If Keywords <> "" Then %><meta name="Keywords" content="<%=Keywords%>"><%End If %>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="../includes/styles.css" type="text/css">
<link rel="stylesheet" href="../includes/hs_safebutton.css" type="text/css">
<script language="JavaScript1.2" src="../includes/masthead.js" type="text/javascript"></script>
<script language="JavaScript1.2" src="../includes/mvc-fontsize.js" type="text/javascript"></script>
<script language="JavaScript1.2" src="../includes/ps.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
//<!--
function popup(imnam) { 
window.open(imnam,"pop","directory=no,height=450,width=500,toolbar=no,scrollbars=yes,location=no,resizable=yes"); 
}
//-->
</script>
</head>
<body id="body" onload="startPs();">
<!-- #include file="../includes/manage_your_profile.asp" -->
<%
Dim JOB_SEARCH_TITLE
JOB_SEARCH_TITLE = "Guided Job Search"
Dim pageId, categoryId
pageId = "career:" & Replace(page_self, "../", "", 1, -1, 0)
If tpage = "lb_career_compass" Then
	pageId = Replace(pageId, "lb_career_compass", "lb_career_compass_"&page_number, 1, 1, 0)
ElseIf tpage = "career_compass" Then
	pageId = Replace(pageId, "career_compass", "career_compass_"&page_number, 1, 1, 0)
End If

If fpage <> "" Then
	If tpage = "" Then
		If spage = "" Then
			categoryId = "career:ada:" & mpage
		Else
			categoryId = "career:ada:" & spage
		End If
	Else
		categoryId = "career:ada:" & tpage
	End If
ElseIf tpage <> "" Then
	If spage = "" Then
		categoryId = "career:ada:" & mpage
	Else
		categoryId = "career:ada:" & spage
	End If
Else
	categoryId = "career:ada:" & mpage
End If
Dim left_margin, right_margin, top_content_padding_bottom, top_content_padding_bottom_hd, middle_content_padding
left_margin = 12
left_margin_0 = 0
right_margin = 8
right_margin_split = 20
top_content_padding_bottom = 12
top_content_padding_bottom_hd = 0
middle_content_padding = "padding: 0px 8px 0px 0px;"
if mpage = "camp" Then middle_content_padding = "padding: 0px 24px 0px 0px;"
%>
<script language="javascript1.1" src="http://www.bankofamerica.com/coremetrics/v40/eluminate.js" type="text/javascript"></script>
<script language="javascript1.1" src="http://www.bankofamerica.com/coremetrics/cmdatatagutils.js" type="text/javascript"></script>
<!-- #include file="../Includes/env.asp" -->
<!-- #include file="../Includes/url.asp" -->
<!-- #include file="../Includes/conn.asp" -->
<!-- #include file="../Includes/logo.asp" -->
<script language="JavaScript1.2" type="text/javascript">
//<!--
	examineFontSize("body");
	<% If ENV="production" Then Response.write "cmSetProduction();" %>
	cmCreatePageviewTag("<%= pageId %>", null, null,"<%= categoryId %>");
//-->
</script>
<%	If er_ror <> "" Then %>
<a href="#error" title="Go to page error message" class="hide-tab">Go to page error message</a>
<%	End If %>
<table width="750" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top" colspan="3" height="71">
		<table width="750" border="0" cellspacing="0" cellpadding="0" summary="">
			<tr><% Dim logo_alt, logo_title, logo_imageURL %><% logo_imageURL = getLogoImageURL(logo_alt, logo_title) %>
				<td width="262" valign="top"><table cellpadding="0" cellspacing="0" border="0"><tr><td><a name="top"></a><a href="#skipmaincontent" title="Skip To Main Content."><img src="../images/clear.gif" width="1" height="69" alt="Skip To Main Content." border="0" /></a></td><td><img src="../images/clear.gif" width="10" height="69" alt="" border="0" /></td><td><a href="http://www.bankofamerica.com/" title="<%=logo_title%>"><img src="<%=logo_imageURL%>" width="250" height="69" alt="<%=logo_alt%>" border="0" /></a></td><td><a href="http://www.bankofamerica.com/help/index.cfm?template=sitemap.cfm" title="Go to site map."><img src="../images/clear.gif" width="1" height="69" alt="Go to site map." border="0" /></a></td></tr></table></td>
				<td width="232"><img src="../images/clear.gif" width="1" height="69" alt="" border="0" /></td>
				<td width="256" valign="bottom">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="">
						<tr>
							<td colspan="2" valign="bottom" align="right" nowrap>
<a href="http://www.bankofamerica.com/index.cfm?page=about" class="mh-link1" title="Home" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Home</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/findit/locator.cfm" class="mh-link1" title="Locations" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Locations</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="contact_us.asp" class="mh-link1" title="Contact Us" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Contact Us</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/help" class="mh-link1" title="Help" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Help</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/signin/" class="mh-link2" title="Sign In" onfocus="this.className='mh-link2-over';" onblur="this.className='mh-link2';">Sign In</a></td>
						</tr>
						<tr><td colspan="2"><img src="../images/clear.gif" width="1" height="3" alt="" border="0" /></td></tr>
						<tr>
							<td width="5"><img src="../images/mhd_5x5_search_corner.gif" alt="" width="5" height="5" border="0" /></td>
							<td width="100%" class="mh-hline"><img src="../images/clear.gif" width="1" height="5" alt="" border="0" /></td>
						</tr>
						<tr align="right">
							<td width="5" class="mh-vline"><img src="../images/clear.gif" width="1" height="1" alt="" border="0" /></td>
							<td width="100%" class="mh-hline-bkg" valign="bottom">
<form method="post" action="http://www.bankofamerica.com/search/" style="margin: 0px;" name="SiteSearchForm" target="_parent">
<input name="ui_mode" type="hidden" value="question">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="SearchBox">
									<tr>
										<td width="10"><img src="../images/clear.gif" width="10" height="0" alt="" border="0" /><br><span class="ada-search"><label for="question_box" class="ada-search">Search</label></span></td>
										<td width="100%" style="padding: 0px;">
<input type="text" maxlength="75" class="searchbox" style="width: 100%;" id="question_box" name="question_box" value="" alt="Question or phrase to search." title="Get answers fast. Type in a question or phrase."></td>
										<td width="10"><img src="../images/clear.gif" width="10" height="0" alt="" border="0" /></td>
										<td width="60" valign="top" nowrap>
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
	<td colspan="3" style="background: #D4001A;" width="750" valign="top">
<img src="../images/careers.gif" width="76" height="25" alt="Careers" title="Careers" border="0"></td>
</tr>
<tr>
	<td width="160" style="background: #cadceb;"><img src="../images/clear.gif" width="160" height="1" alt="" border="0"></td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td width="578"></td>
</tr>
<tr valign="top">
	<td id="tdtbnav" width="160" valign="top" align="center" style="background: #cadceb;"><img src="../images/clear.gif" width="160" height="1" alt="" border="0"><br>
		<table id="tbnav" width="160" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" height="2"><img src="../images/clear.gif" width="154" height="2" alt="" border="0"></td></tr>