<%
'Dim campus_url
'Dim isCampus
'campus_url = Request.ServerVariables("URL")
'response.write campus_url
'isCampus = Instr(campus_url, "campusrecruiting/")
'if isCampus > 0 then
 '   Response.Redirect("http://campus.bankofamerica.com")
'end if
 
 'Not sure why, but this is causing a server error.  There is a redirect happening somewhere else.  ????
 %>


<%
Dim JOB_SEARCH_TITLE
JOB_SEARCH_TITLE = "Guided Job Search"
Dim to_version
textonly_version = "Text Only Version"
ada_title = ada_title  & ", " & textonly_version
Dim left_margin, right_margin, top_content_padding_bottom, top_content_padding_bottom_hd, middle_content_padding
left_margin = 12
left_margin_0 = 0
right_margin = 8
right_margin_split = 20
top_content_padding_bottom = 12
top_content_padding_bottom_hd = 0
middle_content_padding = "padding: 0px 8px 0px 0px;"
if mpage = "camp" Then middle_content_padding = "padding: 0px 24px 0px 0px;"
%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="Description" content="<%=Metatag%>">
<%If Keywords <> "" Then %><meta name="Keywords" content="<%=Keywords%>"><%End If %>
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="-1" />
<meta http-equiv="Cache-control" content="no-store" />
<meta name="google-site-verification" content="R6RNgl5kJuOQGkpHjU-PwjFKoN2-f9VEtBshOj0BBOw" />
<title><%=title %></title>
<link rel="stylesheet" href="../includes/styles.css" type="text/css">
<!--[if IE]><link rel="stylesheet" href="../includes/ie.css" type="text/css"><![endif]-->
<link rel="stylesheet" href="../includes/hs_safebutton.css" type="text/css">
<%If mpage = "overview" Or mpage = "camp" Then %>
<script language="javascript" type="text/javascript">
//<!--
document.write('<style type="text/css">.auraltext{font-size: 0px; left: -10000px; top: -10000px; position: absolute;}<\/style>');
//-->
</script>
<%End If %>
<%If mpage = "fags" Then %><style type="text/css">
#faqs li, #answ2 li, #answ4 li {padding-bottom: 6px;}
</style><%End If %>
<%If tpage = "majormarketlife" Then %><style type="text/css">
H2.p, H3.p {
	margin: 12px 0px 6px 0px;
	padding: 0px;
}
</style><%End If %>
<script language="JavaScript1.2" src="../includes/masthead.js" type="text/javascript"></script>
<script language="JavaScript1.2" src="../includes/mvc-fontsize.js" type="text/javascript"></script>
<%If mpage = "camp" Then %>
<script language="JavaScript1.2" src="../includes/flash.js" type="text/javascript"></script>
<%End If %>
<% If (spage = "collrecruiting" And (tpage = "" Or tpage = "career_compass") And fpage = "") Or (mpage = "locations" And spage = "united_states" And tpage = "lb_career_compass") Or (spage = "collrecruiting" And (tpage = "graduate_programs" Or tpage = "undergraduate_programs" Or tpage = "internships_program") And fpage <> "") Or (mpage = "areasoftalent" And spage <> "") Then %>
<script language="JavaScript1.2" src="../includes/mm.js" type="text/javascript"></script>
<% End If %>
<% If spage = "collrecruiting" And tpage = "" And fpage = "" Then %>
<script language="JavaScript1.2" type="text/javascript">
<!--
function preloadCC(){MM_preloadImages('../images/cc_explore_over.gif','../images/cc_explore_down.gif');}
//-->
</script>
<% ElseIf spage = "collrecruiting" And tpage = "career_compass" And fpage = "" Then%>
<script language="JavaScript1.2" type="text/javascript">
<!--
function preloadCC(){MM_preloadImages('../images/cc_next_over.gif','../images/cc_next_down.gif','../images/cc_prev_over.gif','../images/cc_prev_down.gif','../images/cc_finish_over.gif','../images/cc_finish_down.gif','../images/cc_restart_over.gif','../images/cc_restart_down.gif');}
//-->
</script>
<% ElseIf spage = "collrecruiting" And (tpage = "graduate_programs" Or tpage = "undergraduate_programs" Or tpage = "internships_program") And fpage <> "" Then%>
<script language="JavaScript1.2" type="text/javascript">
<!--
function preloadCC(){MM_preloadImages('../Includes/pages/buttons/01btn-over.gif','../Includes/pages/buttons/02btn-over.gif','../Includes/pages/buttons/03btn-over.gif','../Includes/pages/buttons/05btn-over.gif','../Includes/pages/buttons/06btn-over.gif');}
//-->
</script>
<% ElseIf tpage = "mywork" Then%>
<script language="javascript" type="text/javascript">
<!--
var rotim,rotims,rottm,imidx;
function preloadCC()
{
	rotims = new Array();
	rotims[rotims.length] = _preloadImage('../images/mywork/rot1.jpg');
	rotims[rotims.length] = _preloadImage('../images/mywork/rot2.jpg');
	rotims[rotims.length] = _preloadImage('../images/mywork/rot3.jpg');
	rotims[rotims.length] = _preloadImage('../images/mywork/rot4.jpg');
	rotims[rotims.length] = _preloadImage('../images/mywork/rot5.jpg');
	rotims[rotims.length] = _preloadImage('../images/mywork/rot6.jpg');
	rotim = document.getElementById("rotim");
	imidx = 0;
	rottm = setTimeout("rotate();",2000);
}

function rotate()
{	if(rotim && rotims)
	{	if(imidx < rotims.length-1) imidx++;
		else imidx = 0;
		rotim.src = rotims[imidx].src;
		rottm = setTimeout("rotate();",2000);
	}
	else clearTimeout(rottm);
}
function _preloadImage(im)
{
	var d=document;
	if(d.images){ var new_im=new Image; new_im.src=im; return new_im; }
	return false;
}
//-->
</script>
<% End If %>
<script language="JavaScript1.2" src="../includes/ps.js" type="text/javascript"></script>
<script language="JavaScript" src="../includes/jquery-1.6.2.min.js" type="text/javascript"></script>
<script language="JavaScript" src="../includes/jquery-ui-1.8.15.custom.min.js" type="text/javascript"></script>
<script language="JavaScript" src="../includes/jquery.cookie.js" type="text/javascript"></script>
<!--[if IE]><script language="JavaScript" src="../includes/ha.js" type="text/javascript"></script><![endif]-->
<script language="JavaScript" src="../includes/jq.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
//<!--
function popup(imnam) { 
window.open(imnam,"pop","directory=no,height=450,width=500,toolbar=no,scrollbars=yes,location=no,resizable=yes"); 
}
function hover(ref, classRef) { eval(ref).className = classRef; }
function tdiv(tf){}
//-->
</script>
</head>
<body id="body" onload="startPs(); fixIE(<% If (mpage = "overview" And spage = "" ) Or spage = "career_fit_tool" Then %>false<% Else %>true<% End If %>);" onunload="">
<div>
<!-- #include file="../includes/manage_your_profile.asp" -->
<%
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
			categoryId = "career:" & mpage
		Else
			categoryId = "career:" & spage
		End If
	Else
		categoryId = "career:" & tpage
	End If
ElseIf tpage <> "" Then
	If spage = "" Then
		categoryId = "career:" & mpage
	Else
		categoryId = "career:" & spage
	End If
Else
	categoryId = "career:" & mpage
End If
%>
<!-- #include file="../Includes/utilities.asp" -->
<!-- #include file="../Includes/env.asp" -->
<!-- #include file="../Includes/url.asp" -->
<!-- #include file="../Includes/conn.asp" -->
<!-- #include file="../Includes/logo.asp" -->
<!-- #include file="../Includes/cm.asp" -->
<script language="javascript" type="text/javascript">
//<!--
	examineFontSize("body");
//-->
</script>
<% If _
	(mpage = "areasoftalent" _
		And ( (spage = "consumerbanking" Or spage = "customercare" Or spage = "operations") And tpage = "") _
	) _
	Or (mpage = "lob" _
		And ( spage = "lobgcsbb" And ( tpage = "lobnbcc" Or tpage = "lobbcc" ) ) _
	) _
	Or (mpage = "jobsearch" And spage = "" And ( tpage = "realistic_job_preview" Or tpage = "teller_video" Or tpage = "cashservices_video") ) _
	Or (mpage = "overview" And spage = "") _
	Or (mpage = "about_us" And spage = "diversity_video" And tpage = "") _
	Then %>
<table cellpadding="0" cellspacing="0" border="0" summary=""><tr><td>
<a href="<%=ada_href %>" id="tonly" title="<%=textonly_version %>" name="<%=CleanTheStringAlphanumeric_(Replace(textonly_version, " ", "_")) %>_header" class="hide-tab"><%=textonly_version %></a>
</td></tr></table>
<% End If %>
<%	If er_ror <> "" Then %>
<a href="#error" title="Go to page error message" name="Go_to_page_error_message_header" class="hide-tab">Go to page error message</a>
<%	End If %>
<table width="750" cellpadding="0" cellspacing="0" border="0" summary="">
<tr>
	<td valign="top" colspan="3" height="71">
		<table width="750" border="0" cellspacing="0" cellpadding="0" summary="">
			<tr><% Dim logo_alt, logo_title, logo_imageURL %><% logo_imageURL = getLogoImageURL(logo_alt, logo_title) %>
				<td width="262" valign="top"><table cellpadding="0" cellspacing="0" border="0"><tr><td><a name="top"></a><a href="#skipmaincontent" title="Skip to main content." name="Skip_to_main_content_header" style="width: 1px; height: 69px; display: inline-block;"></a></td><td></td><td><a href="https://www.bankofamerica.com/" title="<%=logo_title%>" name="<%=CleanTheStringAlphanumeric_(Replace(logo_title, " ", "_"))%>_header"><img src="<%=logo_imageURL%>" width="250" height="69" alt="<%=logo_alt%>" border="0" /></a></td><td><img src="../images/clear.gif" width="1" height="69" alt="" border="0" /></td></tr></table></td>
				<td width="232"><img src="../images/clear.gif" width="1" height="69" alt="" border="0" /></td>
				<td width="256" valign="bottom">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="">
						<tr>
							<td colspan="2" valign="bottom" align="right" nowrap>
<a href="../overview/contact_us.asp" class="mh-link1" title="Contact Us" name="Contact_Us_header" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Contact Us</a>&#160;<span class="linksep1">&#8226;</span>&#160;<a href="https://www.bankofamerica.com/help" class="mh-link1" title="Help" name="Help_header" onfocus="this.className='mh-link1-over';" onblur="this.className='mh-link1';">Help</a></td>
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
										<td width="10"><img src="../images/clear.gif" width="10" height="0" alt="" border="0" /><br><span class="ada-search"><label for="question_box" class="ada-search">Search</label></span></td>
										<td width="100%" style="padding: 0px;">
<input type="text" maxlength="75" class="searchbox" style="width: 100%;" id="question_box" name="question_box" value="" alt="Question or phrase to search." title="Get answers fast. Type in a question or phrase."></td>
										<td width="10"><img src="../images/clear.gif" width="10" height="0" alt="" border="0" /></td>
										<td width="60" valign="top" nowrap><div id="search-button"></div>
<script src="../Includes/hs_safebutton.js" language="JavaScript" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
<!--
create_safebutton("Search","javascript: submit_search();",0,0,0,0,"Search", 'search-button', 'Search_header');
//-->
</script>
<noscript><input name="Search_header" alt="Search" value="Search" title="Search" type="Submit"  class="btn"/></noscript>
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