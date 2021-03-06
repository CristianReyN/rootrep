﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="maintenance.aspx.cs" Inherits="maintenance" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /><meta id="ctl00_metadescription" name="Description" content="Main page for job search functionality for careers site." /><title>
	Bank of America | Careers | Job Search
</title><link rel="stylesheet" href="includes/DotNetStyles.css" type="text/css" /><link href="Includes/hs_safebutton.css" type="text/css" rel="stylesheet" />
<script language="JavaScript1.2" src="includes/masthead.js" type="text/javascript"></script>
<script language="JavaScript1.2" src="includes/mvc-fontsize.js" type="text/javascript"></script>
<script language="JavaScript1.2" src="includes/ps.js" type="text/javascript"></script>
<script language="JavaScript1.2" src="includes/fixit.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
//<!--
function popup(imnam) { 
window.open(imnam,"pop","directory=no,height=450,width=500,toolbar=no,scrollbars=yes,location=no,resizable=yes"); 
}
//-->
</script>
</head>
<body id="body" onload="startKeybordNav(); startPs(); fixIE();" onunload="">

<!-- BEGIN COREMETRICS SUPPORT -->
<script language='javascript1.1' src='http://www.bankofamerica.com/coremetrics/v40/eluminate.js'  type='text/javascript'></script>
<script language='javascript1.1' src='http://www.bankofamerica.com/coremetrics/cmdatatagutils.js' type='text/javascript'></script>
<script language='javascript1.1' type='text/javascript'>
//<!—
cmCreatePageviewTag('Career | Job Search', null, null, 'career:jobsearch');
//-->
</script>
<!-- END COREMETRICS -->

<script language="javascript" type="text/javascript">
//<!--
    examineFontSize("body");
//-->
</script>
<table width="750" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top" colspan="3" height="71">
		<table width="750" border="0" cellspacing="0" cellpadding="0" summary="">

			<tr>
				<td width="262" valign="top"><a name="top"></a><a href="#skipmaincontent" title="Skip To Main Content."><img src="images/clear.gif" width="1" height="69" alt="Skip To Main Content." border="0" /></a><img src="images/clear.gif" width="10" height="69" alt="" border="0" /><a href="http://www.bankofamerica.com/" title="Bank of America home page"><img src="images/mhd_reg_logo.gif" width="250" height="69" alt="Bank of America home page" border="0" /></a><a href="http://www.bankofamerica.com/help/index.cfm?template=sitemap.cfm" title="Go to site map."><img src="images/clear.gif" width="1" height="69" alt="Go to site map." border="0" /></a></td>
				<td width="232"><a href="#skipnav" title="Skip global navigational links."><img src="images/clear.gif" width="1" height="69" alt="Skip global navigational links." border="0" /></a></td>
				<td width="256" valign="bottom">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="">
						<tr>
							<td colspan="2" valign="bottom" align="right" nowrap>
<a href="http://www.bankofamerica.com/" class="mh-link1" title="Home" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Home</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/findit/locator.cfm" class="mh-link1" title="Locations" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Locations</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="overview/contact_us.asp" class="mh-link1" title="Contact Us" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Contact Us</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/help" class="mh-link1" title="Help" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Help</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="http://www.bankofamerica.com/signin/" class="mh-link2" title="Sign In" onfocus="this.className='mh-link2-over';" onblur="this.className='mh-link2';">Sign In</a></td>

						</tr>
						<tr><td colspan="2"><img src="images/clear.gif" width="1" height="3" alt="" border="0" /></td></tr>
						<tr>
							<td width="5"><img src="images/mhd_5x5_search_corner.gif" alt="" width="5" height="5" border="0" /></td>
							<td width="100%" class="mh-hline"><img src="images/clear.gif" width="100%" height="5" alt="" border="0" /></td>
						</tr>
						<tr align="right">
							<td width="5" class="mh-vline"><img src="images/clear.gif" width="5" height="1" alt="" border="0" /></td>
							<td width="100%" class="mh-hline-bkg" valign="bottom">

<form method="post" action="http://www.bankofamerica.com/search/" style="margin: 0px;" name="SiteSearchForm" target="_parent">
<input name="ui_mode" type="hidden" value="question" />
								<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="SearchBox">
									<tr>
										<td width="10"><img src="images/clear.gif" width="10" height="0" alt="" border="0" /><br /><span class="ada-search"><label for="question_box" class="ada-search" style="display: none;">Search</label></span></td>
										<td width="100%" style="padding: 0px;">
<input type="text" maxlength="75" class="searchbox" style="width: 100%;" id="question_box" name="question_box" value="" alt="Question or phrase to search." title="Get answers fast. Type in a question or phrase." /></td>
										<td width="10"><img src="images/clear.gif" width="10" height="0" alt="" border="0" /></td>										<td width="60" valign="top" nowrap>
<link href="Includes/hs_safebutton.css" type="text/css" rel="stylesheet">
<script src="Includes/hs_safebutton.js" language="JavaScript" type="text/javascript"></script>

<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Search","javascript: submit_search();",0,0,0,0,"Search");
//-->
</script>
<noscript><input name="Search" alt="Search" value="Search" title="Search" type="Submit"  class="btn"/></noscript>
										</td>
										<td width="4"><img src="images/clear.gif" width="4" height="0" alt="" border="0" /></td>
									</tr>
								</table>
</form>
							</td>
						</tr>

					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="mh-hline"><img src="images/clear.gif" width="1" height="5" alt="" border="0" /></td>
    			<td class="mh-hline-bkg"><img src="images/clear.gif" width="1" height="5" alt="" border="0" /></td>
			</tr>
		</table>
	</td>

</tr>
<tr>
	<td colspan="4" style="background: #d4100a;" width="750" valign="top">
<img src="images/careers.gif" width="76" height="25" alt="Bank of America | Career" title="Bank of America | Career" border="0" /></td>
</tr>
<tr>
	<td width="160" style="background: #cadceb;"><img src="images/clear.gif" width="160" height="1" alt="" border="0" /></td>
	<td width="12"><img src="images/clear.gif" width="12" height="1" alt="" border="0" /></td>
	<td width="578"><a name="skipnav"></a></td>
</tr>
<tr valign="top">
	<td id="tdtbnav" width="160" valign="top" align="center" style="background: #cadceb;"><img src="images/clear.gif" width="160" height="1" alt="" border="0" /><br />

		<table id="tbnav" width="160" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top" height="2"><img src="images/clear.gif" width="154" height="2" alt="" border="0" /></td></tr>
<!-- Header -->
<!-- Left Nav -->
			<tr valign="top"><td valign="middle" style="background: #cadceb; padding: 0px 6px 0px 6px;"><a class="g" href="overview/overview.asp" id="overview" title="Overview" onfocus="this.className='g-over';" onblur="this.className='g';">Overview</a></td></tr>

			<tr valign="top" style="background: #ffffff;"><td><img src="images/white.gif" width="154" height="1" alt="" border="0" /></td></tr>

			<tr valign="top"><td style="background: #eaf1f7; padding: 0px 6px 0px 6px;"><a class="g" href="jobsearch.aspx" id="jsearch" title="Job Search" onfocus="this.className='g-over';" onblur="this.className='g';">Job Search</a></td></tr>

			<tr valign="top" style="background: #ffffff;"><td><img src="images/white.gif" width="154" height="1" alt="" border="0" /></td></tr>

			<tr valign="top" onmouseover="tdiv(false);" onmouseout="tdiv(true);"><td id="tdnav" valign="middle" style="background: #cadceb; padding: 0px 6px 0px 6px;" onmouseover="popAoT(true);" onmouseout="popAoT(false);"><div id="aotstartdv" style="position: absolute;"><a name="lnav1" id="aotstart"></a></div><a class="g" href="areasoftalent/areasoftalent.asp" id="aroftalent" title="Job Areas" onfocus="this.className='g-over'; popAoT(true); tdiv(false);" onblur="this.className='g'; popAoT(false); tdiv(true);">Job Areas</a><div id="aotenddv" style="position: absolute;"><a name="lnav2" id="aotend"></a></div></td></tr>

			<tr valign="top" style="background: #ffffff;"><td><img src="images/white.gif" width="154" height="1" alt="" border="0" /></td></tr>

			<tr valign="top" onmouseover="tdiv(false);" onmouseout="tdiv(true);"><td id="tdnavr" valign="middle" style="background: #cadceb; padding: 0px 6px 0px 6px;" onmouseover="popLearnmore(true);" onmouseout="popLearnmore(false);"><div id="learnmorestartdv" style="position: absolute;"><a name="lnav3" id="learnmorestart"></a></div><a class="g" href="learnmore/learnmore.asp" id="learnmore" title="Related Information" onfocus="this.className='g-over'; popLearnmore(true); tdiv(false);" onblur="this.className='g'; popLearnmore(false); tdiv(true);">Related Information</a><div id="learnmoreenddv" style="position: absolute;"><a name="lnav4" id="learnmoreend"></a></div></td></tr>

			<tr valign="top" style="background: #ffffff;"><td><img src="images/white.gif" width="154" height="1" alt="" border="0" /></td></tr>

			<tr valign="top"><td style="background: #cadceb; padding: 0px 6px 0px 6px;"><a class="g" href="staffingevents/staffingevents.asp" title="Staffing Events" onfocus="this.className='g-over';" onblur="this.className='g';">Staffing Events</a></td></tr>

			<tr valign="top" style="background: #ffffff;"><td><img src="images/white.gif" width="154" height="1" alt="" border="0" /></td></tr>

			<tr valign="top"><td style="background: #cadceb; padding: 0.35em 6px 0.35em 6px;"><a class="g" href="faq/faq.asp" title="Frequently Asked Questions" onfocus="this.className='g-over';" onblur="this.className='g';" style="line-height: 1.2em;">Frequently Asked Questions</a></td></tr>

			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0" /></td></tr>
<!-- Left Nav -->
			<tr valign="top"><td height="30" style="background: #cadceb;" valign="bottom" align="right"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /><br>
			</td></tr>

			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0" />
			</td></tr>
			<tr valign="top"><td height="50"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>
		</table>
<script language="javascript" type="text/javascript">
//<!--
function tdiv(tf)
{
    for(var i=1; i<=5; i++)
		if(document.getElementById("d" + String(i)))
		{
			document.getElementById("d" + String(i)).style.display=tf==true?"inline":"none";
		}
}
//-->
</script>
	</td>
	<td width="12"><img src="images/clear.gif" width="12" height="1" alt="" border="0" /></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->

        <a id="skipmaincontent"></a>
        <img alt="" height="4" src="images/clear.gif" width="15" /><br />
		
        <table border="0" cellpadding="0" cellspacing="0" summary="" width="578">
            <tr valign="top">
                <td valign="top">
                    <img alt="" height="4" src="images/clear.gif" width="100%" /></td>
            </tr>
            <tr valign="top">
				<td width="100%" valign="top">

					<form name="aspnetForm" method="post" action="default.aspx" id="aspnetForm" style="margin:0px;">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjUzNTk5OTE4D2QWAmYPZBYEAgEPZBYCAgEPFgIeB2NvbnRlbnQFOE1haW4gcGFnZSBmb3Igam9iIHNlYXJjaCBmdW5jdGlvbmFsaXR5IGZvciBjYXJlZXJzIHNpdGUuZAIDDxYCHgRUZXh0Ba4DPCEtLSBCRUdJTiBDT1JFTUVUUklDUyBTVVBQT1JUIC0tPg0KPHNjcmlwdCBsYW5ndWFnZT0namF2YXNjcmlwdDEuMScgc3JjPSdjb3JlbWV0cmljcy92NDAvZWx1bWluYXRlLmpzJyAgdHlwZT0ndGV4dC9qYXZhc2NyaXB0Jz48L3NjcmlwdD4NCjxzY3JpcHQgbGFuZ3VhZ2U9J2phdmFzY3JpcHQxLjEnIHNyYz0nY29yZW1ldHJpY3MvY21kYXRhdGFndXRpbHMuanMnIHR5cGU9J3RleHQvamF2YXNjcmlwdCc+PC9zY3JpcHQ+DQo8c2NyaXB0IGxhbmd1YWdlPSdqYXZhc2NyaXB0MS4xJyB0eXBlPSd0ZXh0L2phdmFzY3JpcHQnPg0KLy88IeKAlA0KY21DcmVhdGVQYWdldmlld1RhZygnQ2FyZWVyIHwgSm9iIFNlYXJjaCcsIG51bGwsIG51bGwsICdjYXJlZXI6am9ic2VhcmNoJyk7DQovLy0tPg0KPC9zY3JpcHQ+DQo8IS0tIEVORCBDT1JFTUVUUklDUyAtLT4NCmRkdGp5SzalHUenPG5BssJkleiokGg=" />
</div>

					
               
               <h1 style="margin: 0px 0px 0px 12px; ">BOA Maintenance</h1>
                <table border="0" cellpadding="0" cellspacing="0" summary="" width="578">
                    <tr valign="top">
                        <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
                        On Sunday, July 29th, this site will be undergoing routine maintenance.<br/>

                        Please come back and visit us today after 3:00 am (EDT)
                        </td>
                    </tr>
                </table>            
 
					</form>
				</td>
            </tr>
        </table>
        <br />
        <br />

<!-- Body-->

	</td>
</tr>
</table>
<!-- Footer -->
<div class="hs-footer">
<table width="749" border="0" cellspacing="0" cellpadding="0" summary="">
	<tr><td colspan="3" style="background: #000000;"><img src="images/clear.gif" width="1" height="1" alt="" border="0" /></td></tr>
	<tr><td colspan="3"><img src="images/clear.gif" width="1" height="3" alt="" border="0" /></td></tr>
	<tr valign="top">

		<td width="8"><img src="images/clear.gif" width="8" height="1" alt="" border="0" /></td>

		<td valign="top"><a href="http://www.bankofamerica.com/privacy/" class="ftrlnk" onfocus="this.className='ftrlnk-over';" onblur="this.className='ftrlnk';" title="Privacy &amp; Security">Privacy &amp; Security</a>&nbsp;<span class="ftrtxt">|</span>&nbsp;<a href="http://www.bankofamerica.com/careers/" class="ftrlnk" onfocus="this.className='ftrlnk-over';" onblur="this.className='ftrlnk';" title="Careers">Careers</a>&nbsp;<span class="ftrtxt">|</span>&nbsp;<a href="http://www.bankofamerica.com/help/index.cfm?template=sitemap.cfm" class="ftrlnk" onfocus="this.className='ftrlnk-over';" onblur="this.className='ftrlnk';" title="Site Map">Site Map</a><br />
		<img src="images/clear.gif" width="1" height="19" alt="" border="0" />
		<div class="ftrtxt2">Bank of America, N.A. Member FDIC.
		<a href="http://www.bankofamerica.com/help/equalhousing_popup.cfm" onclick="javascript:window.open('http://www.bankofamerica.com/help/equalhousing_popup.cfm','newwin','width=640,height=371,scrollbars=yes,resizable=yes,left=35,top=161'); return false;" target="_blank" class="ftrlnk" onfocus="this.className='ftrlnk-over';" onblur="this.className='ftrlnk';" title="Link opens Equal Housing Lender pop-up window">Equal Housing Lender</a><a href="http://www.bankofamerica.com/help/equalhousing_popup.cfm" onclick="javascript:window.open('http://www.bankofamerica.com/help/equalhousing_popup.cfm','newwin','width=640,height=371,scrollbars=yes,resizable=yes,left=35,top=161'); return false;" target="_blank" title="Link opens Equal Housing Lender pop-up window"><img src="images/house.gif" width="14" height="9" hspace="3" alt="Link opens Equal Housing Lender pop-up window" border="0" /></a><br />
		&copy; 2007 Bank of America Corporation. All rights reserved.</div><br /></td>

		<td align="right" width="131"><a href="http://www.bankofamerica.com/sponsorships/" title="Official Sponsor 2004-2008 U.S. Olympic Teams"><img src="images/foot_olympic.gif" alt="Official Sponsor 2004-2008 U.S. Olympic Teams" width="131" height="33" border="0" align="right" vspace="7" /></a></td>
	</tr>
</table>
</div>
<script language="JavaScript1.2" type="text/javascript">
var isIE = document.all;

function startKeybordNav()
{
	if(!window.event) window.captureEvents(Event.ONKEYDOWN);// Netscape/Firefox/Opera		

	if(document.getElementById("learnmore"))
		document.getElementById("learnmore").onkeydown=setNextTabLearnmorePopup;
	if(document.getElementById("benefitsadv"))
		document.getElementById("benefitsadv").onkeydown=setNextTabLearnmoreShift;
	if(document.getElementById("investment"))
		document.getElementById("investment").onkeydown=setNextTabLearnmorePopupQuit;

	if(document.getElementById("aroftalent"))
		document.getElementById("aroftalent").onkeydown=setNextTabAotPopup;
	if(document.getElementById("administration"))
		document.getElementById("administration").onkeydown=setNextTabAotShift;
	if(document.getElementById("consumerbanking"))
		document.getElementById("consumerbanking").onkeydown=setNextTabAotPopupQuit;

}

function transferFocus(ev)
{
	var transFocus = false;
	if((window.event && window.event.keyCode == 9)// IE
		|| (ev && ev.which && ev.which == 9)// Netscape/Firefox/Opera
	) transFocus = true;
	return transFocus;
}

function isShiftKey(ev)
{
	var isShift = false;
	if((window.event && window.event.shiftKey)// IE
		|| (ev && ev.shiftKey)// Netscape/Firefox/Opera
	) isShift = true;
	return isShift;
}

var learnmorePopupShow, aotPopupShow;


function setNextTabLearnmore(ev)
{	if(transferFocus(ev) && !isShiftKey(ev) && document.getElementById("learnmorestart"))
		document.getElementById("learnmorestart"+(isIE?"dv":"")).focus();
}
function setNextTabLearnmoreShift(ev)
{	if(transferFocus(ev) && isShiftKey(ev) && document.getElementById("learnmoreend"))
		document.getElementById("learnmoreend"+(isIE?"dv":"")).focus();
}

function setNextTabLearnmorePopup(ev)
{	if(isShiftKey(ev) && transferFocus(ev))
	{
		if(document.getElementById("learnmorestart"))
			document.getElementById("learnmorestart"+(isIE?"dv":"")).focus();
	}
	else if(transferFocus(ev) && document.getElementById("learnmorepopup"))
	{	learnmorePopupShow = true; popLearnmore(true);
		document.getElementById("learnmorepopup"+(isIE?"dv":"")).focus();
}}
function setNextTabLearnmorePopupQuit(ev)
{if(transferFocus(ev) && !isShiftKey(ev) && document.getElementById("learnmoreend"))
	{	learnmorePopupShow = false; popLearnmore(false);
		document.getElementById("learnmoreend"+(isIE?"dv":"")).focus();
}}

function setNextTabAot(ev)
{	if(transferFocus(ev) && isShiftKey(ev) && document.getElementById("aotstart"))
		document.getElementById("aotstart"+(isIE?"dv":"")).focus();
}
function setNextTabAotShift(ev)
{	if(transferFocus(ev) && isShiftKey(ev) && document.getElementById("aotend"))
		document.getElementById("aotend"+(isIE?"dv":"")).focus();
}

function setNextTabAotPopup(ev)
{	if(isShiftKey(ev) && transferFocus(ev))
	{
		if(document.getElementById("aotstart"))
			document.getElementById("aotstart"+(isIE?"dv":"")).focus();
	}
	else if(transferFocus(ev) && document.getElementById("aotpopupdv"))
	{	aotPopupShow = true; popAoT(true);
		document.getElementById("aotpopup"+(isIE?"dv":"")).focus();
	}
}
function setNextTabAotPopupQuit(ev)
{	if(transferFocus(ev)&& !isShiftKey(ev) && document.getElementById("aotend"))
	{	aotPopupShow = false; popAoT(false);
		document.getElementById("aotend"+(isIE?"dv":"")).focus();
}}

</script>

<script language="JavaScript1.2" type="text/javascript">
function popAoT(show)
{var d=document; if(d.getElementById("tdtbnav")&&d.getElementById("tbnav")&&d.getElementById("tdnav")&&d.getElementById("anav")){if(show || aotPopupShow){d.getElementById("anav").style.visibility = "visible"; d.getElementById("anav").style.display = "block";d.getElementById("anav").style.left=d.getElementById("tdtbnav").offsetLeft+d.getElementById("tbnav").offsetLeft+d.getElementById("tdnav").offsetLeft+d.getElementById("tdnav").offsetWidth-3;d.getElementById("anav").style.top=d.getElementById("tdtbnav").offsetTop+d.getElementById("tbnav").offsetTop+d.getElementById("tdnav").offsetTop;}else{d.getElementById("anav").style.visibility = "hidden"; d.getElementById("anav").style.display = "none";}
} setTimeout("aotPopupShow = false;",500);}
</script>
<div id="anav" style="position: absolute; left: 0px; top: 0px; visibility: hidden; display: none; z-index: 100; border: 1px solid #7F99B2; font-size: 0.8em;" onmouseover="popAoT(true);tdiv(false);" onmouseout="popAoT(false);tdiv(true);">
<table width="160" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><div id="aotpopupdv" style="position: absolute;"><a name="lnav5" id="aotpopup"></a></div><a href="administration/" id="administration" class="sbtxt" title="Administration" onfocus="this.className='sbtxt-over'; tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Administration</a></td></tr>
			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>

			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="customercare/" class="sbtxt" title="Customer Care" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Customer Care</a></td></tr>
			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="communications/" class="sbtxt" title="Communications" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Communications</a></td></tr>
			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="finance/" class="sbtxt" title="Finance" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Finance</a></td></tr>
			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="humanresources/" class="sbtxt" title="Human Resources" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Human Resources</a></td></tr>

			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="operations/" class="sbtxt" title="Operations" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Operations</a></td></tr>
			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="riskevaluation/" class="sbtxt" title="Risk Evaluation" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Risk Evaluation</a></td></tr>
			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="sales/" class="sbtxt" title="Sales" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Sales</a></td></tr>
			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>

			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="technology/" class="sbtxt" title="Technology" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Technology</a></td></tr>
			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="consumerbanking/" id="consumerbanking" class="sbtxt" title="Consumer Banking" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Consumer Banking</a></td></tr>
</table>
</div>

<script language="JavaScript1.2" type="text/javascript">
function popLearnmore(show)
{var d=document; if(d.getElementById("tdtbnav")&&d.getElementById("tbnav")&&d.getElementById("tdnavr")&&d.getElementById("anavr")){if(show || learnmorePopupShow){d.getElementById("anavr").style.visibility = "visible"; d.getElementById("anavr").style.display = "block";d.getElementById("anavr").style.left=d.getElementById("tdtbnav").offsetLeft+d.getElementById("tbnav").offsetLeft+d.getElementById("tdnavr").offsetLeft+d.getElementById("tdnavr").offsetWidth-3;d.getElementById("anavr").style.top=d.getElementById("tdtbnav").offsetTop+d.getElementById("tbnav").offsetTop+d.getElementById("tdnavr").offsetTop;}else{d.getElementById("anavr").style.visibility = "hidden"; d.getElementById("anavr").style.display = "none";}
} setTimeout("learnmorePopupShow = false;",500);}
</script>
<div id="anavr" style="position: absolute; left: 0px; top: 0px; visibility: hidden; display: none; z-index: 100; border: 1px solid #7F99B2; font-size: 0.8em;" onmouseover="popLearnmore(true);tdiv(false);" onmouseout="popLearnmore(false);tdiv(true);">
<table width="160" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><div id="learnmorepopupdv" style="position: absolute;"><a name="lnav6" id="learnmorepopup"></a></div><a href="learnmore/benefitsadv.asp" id="benefitsadv" class="sbtxt" title="Benefits and advantages" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Benefits and advantages</a></td></tr>

			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="learnmore/diversity.asp" id="diversity" class="sbtxt" title="Diversity and inclusion" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Diversity and inclusion</a></td></tr>
			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="learnmore/corpinfo.asp" class="sbtxt" title="Corporate information" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Corporate information</a></td></tr>
			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>
			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="learnmore/collrecruiting.asp" class="sbtxt" title="College recruiting" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">College recruiting</a></td></tr>
			<tr valign="top"><td style="background: #7F99B2;"><img src="images/clear.gif" width="154" height="1" alt="" border="0" /></td></tr>

			<tr valign="top"><td style="background: #cadceb; padding: 5px 6px 5px 14px;"><a href="learnmore/globalloc.asp" id="investment" class="sbtxt" title="Global locations" onfocus="this.className='sbtxt-over';tdiv(false);" onblur="this.className='sbtxt';tdiv(true);">Global locations</a></td></tr>
</table>
</div>

</body>
</html>
