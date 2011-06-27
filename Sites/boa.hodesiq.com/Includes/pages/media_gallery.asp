		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top">
<img src="../images/media_gallery.jpg" width="578" height="166" alt="Explore a career with the Bank of Opportunity. Media Gallery." title="Explore a career with the Bank of Opportunity. Media Gallery." border="0">
<div class="hidden">Explore a career with the Bank of Opportunity. Media Gallery.</div>
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<img src="../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<a name="skipmaincontent"></a><H1 class="hidden">Media Gallery</H1>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="373" height="100%" valign="top" style="padding: 0px <%=right_margin%>px 0px <%=left_margin_0%>px;">
<p style="margin-top: 0px;">
Welcome to the Bank of America multi-media page.
</p>

<p style="margin-top: 12px;">
In an effort to maximize the time you spend on our site, we have cataloged our multi-media assets into relevant categories.
</p>

<p style="margin-top: 12px;">
The videos are direct streaming media links; new videos will be added regularly on diverse subjects.
</p>

<p style="margin-top: 12px;">
Enjoy!
</p>
<%
	mg = Request("mg")
%>
<div align="left" style="margin: 0px; padding: 0px; width: 100%;">
<form name="media_galery" action="media_gallery.asp">
<select name="mg" id="mg" title="Select a Job area/Line of business"<%If page_section <> "ADA" Then%> onchange="this.form.submit();"<%End If%>>
	<option style="font-style : italic; color: #666666; text-align: center;" value=""<%If mg="" Then Response.write " selected"%>><center>Job Area or Line of Business</center></option>
	<option value="admin"<%If mg="admin" Then Response.write " selected"%>>Administration</option>
	<option value="lobbcc"<%If mg="lobbcc" Then Response.write " selected"%>>Banking Center Channel</option>
	<option value="lobcf"<%If mg="lobcf" Then Response.write " selected"%>>CFO Group/Finance</option>
	<option value="comm"<%If mg="comm" Then Response.write " selected"%>>Communications</option>
	<option value="corpwp"<%If mg="corpwp" Then Response.write " selected"%>>Corporate Workplace</option>
	<option value="divinc"<%If mg="divinc" Then Response.write " selected"%>>Diversity and Inclusion</option>
	<option value="csbbam"<%If mg="csbbam" Then Response.write " selected"%>>Global Consumer &amp; Small Business Banking</option>
	<option value="qpa"<%If mg="qpa" Then Response.write " selected"%>>Global Corporate Planning and Strategy</option>
	<option value="lobghr"<%If mg="lobghr" Then Response.write " selected"%>>Global Human Resources</option>
	<option value="lobgmca"<%If mg="lobgmca" Then Response.write " selected"%>>Global Marketing &amp; Corporate Affairs</option>
	<option value="mvr"<%If mg="mvr" Then Response.write " selected"%>>Military and Veteran Recruiting</option>
	<option value="lobnbcc"<%If mg="lobnbcc" Then Response.write " selected"%>>Non-Banking Center Channel / Customer Care</option>
	<option value="oper"<%If mg="oper" Then Response.write " selected"%>>Operations</option>
	<option value="sales"<%If mg="sales" Then Response.write " selected"%>>Sales</option>
	<option value="lobgto"<%If mg="lobgto" Then Response.write " selected"%>>Technology</option>
</select>
<%If page_section = "ADA" Then%>
<script language="JavaScript" type="text/javascript"><!--
create_safebutton("Select","javascript: _submit();",0,0,0,0,"Select");
//--></script>
<noscript><input name="Select" alt="Select" value="Select" title="Select" type="Submit"  class="btn"/></noscript>
<%End If%>
</form>
</div>
<div align="left" style="margin: 0px; padding: 0px; width: 100%;">
<%
If page_section <> "ADA" Then
	ada_href = ada_href & "?mg=" & mg
Else
	standart_href = standart_href & "?mg=" & mg
End If
Select Case mg
	Case "admin"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="associate/henderson.asp" -->
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Chanel Henderson&acute;s Associate Testimonial Video</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 0px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<%
	Case "lobbcc"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="lob/diaz.asp" -->
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Anthony Diaz&acute;s Associate Testimonial Video</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<map name="teller_banner"><area title="Realistic Job Preview. Learn about being a Teller. Play Video &gt;&gt;&gt;" alt="Realistic Job Preview. Learn about being a Teller. Play Video &gt;&gt;&gt;" coords="0,0,187,105" href="<% If page_section = "ADA" Then %>teller_video.asp<% Else  %>../teller_video/<% End If  %>?mg=<%=mg%>"></map>
			<img src="../images/teller_banner.jpg" width="187" height="105" border="0" style="margin: 0px 0px 0px 0px;" usemap="#teller_banner" alt="Realistic Job Preview. Learn about being a Teller. Play Video &gt;&gt;&gt;">
			<img class="dotdiv" style="margin: 12px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<div style=" width: 205px; text-align: left;"><!-- #include file="faq/tammy.asp" --></div>
<%
	Case "lobcf"
			suf_fix = "mg" %>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="lob/chen.asp" -->
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Rich Chen&#39;s Associate Testimonial Video</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<div style=" width: 205px; text-align: left;"><!-- #include file="camp/video/tony.asp" --></div>
			<img class="dotdiv" style="margin: 12px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<div style=" width: 205px; text-align: left;"><!-- #include file="faq/kim.asp" --></div>
<%
	Case "comm"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="associate/cucchi.asp" -->
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Marina LanniCucchi&acute;s Associate Testimonial Video</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 0px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<%
	Case "corpwp"
			suf_fix = "mg" %>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="cw/cw.asp" -->
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Corporate Workplace Video</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<div style=" width: 205px; text-align: left;"><!-- #include file="camp/video/chris.asp" --></div>
			<img class="dotdiv" style="margin: 12px 0px 0px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<%
	Case "divinc"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<a href="<% If page_section <> "ADA" Then %>../learnmore/<% End If%>diversity_inclusion_video.asp" title="View the Diversity and Inclusion Film &gt;"><img src="../images/difilm.jpg" width="205" height="166" border="0" style="margin: 0px 0px 0px 0px;" alt="View the Diversity and Inclusion Film &gt;"></a>
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Diversity and Inclusion Film</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 0px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<%
	Case "csbbam"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="camp/video/erin.asp" -->
			<img class="dotdiv" style="margin: 12px 0px 0px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<%
	Case "qpa"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="camp/video/anne.asp" -->
			<img class="dotdiv" style="margin: 12px 0px 0px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<%
	Case "ghrld"%>
<%
	Case "lobgmca"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
</script>
			<div style=" width: 205px; text-align: left;"><!-- #include file="faq/nancy.asp" --></div>
<%
	Case "lobghr"
			suf_fix = "mg" %>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="lob/cambra.asp" -->
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Gretchen Cambra&#39;s Associate Testimonial Video</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<div style=" width: 205px; text-align: left;"><!-- #include file="camp/video/nathan.asp" --></div>
			<img class="dotdiv" style="margin: 12px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<div style=" width: 205px; text-align: left;"><!-- #include file="faq/ryan.asp" --></div>
<%
	Case "mvr"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="lob/michael.asp" -->
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Michael&acute;s Associate Testimonial Video</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 0px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<%
	Case "lobnbcc"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="lob/fairbrother.asp" -->
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Jonathan Fairbrother&acute;s Associate Testimonial Video</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 6px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<div style="width: 201px; text-align: center; margin: 0px 0px 0px 0px; padding: 0px;"><!-- #include file="../rjp.asp" --></div>
			<img class="dotdiv" style="margin: 12px 0px 0px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<%
	Case "oper"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="associate/benitez.asp" -->
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Deborah BenitezLedtje&acute;s Associate Testimonial Video</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 6px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<div style="width: 201px; text-align: center; margin: 0px 0px 0px 0px; padding: 0px;">
			<%
				link = "../cashservices_video/"
				If page_section = "ADA" Then link = "cashservices_video.asp"
				target = ""
				adAlt = "Cash Services Realistic Job Preview Video &gt;&gt;&gt;"
			%>
			<map name="cashservices"><area title="<%=adAlt%>" alt="<%=adAlt%>" coords="0,0,187,105" href="<%=link%>?mg=<%=mg%>"<%=target%>></map>
			<img src="../images/cash_services.jpg" width="187" height="105" border="0" style="margin: 6px 0px 0px 0px;" usemap="#cashservices" alt="<%=adAlt%>"><br clear="all">
			<img class="dotdiv" style="margin: 12px 0px 0px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<%
	Case "sales"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="associate/placencia.asp" -->
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Patricia Placencia&acute;s Associate Testimonial Video</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 0px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
<%
	Case "lobgto"%>
			<img class="dotdiv" style="margin: 0px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<!-- #include file="lob/saulsberry.asp" -->
<%		If page_section <> "ADA" Then %>
			<a href="#video" class="hlink">Shawn Saulsberry&acute;s Associate Testimonial Video</a>
<%		End If%>
			<img class="dotdiv" style="margin: 12px 0px 12px 0px;" src="../images/clear.gif" width="100%" height="1" alt="" border="0">
			<div style=" width: 205px; text-align: left;"><!-- #include file="faq/andy.asp" --></div>
<%
	Case else
		Response.write ""
End Select
%>
</div>
<br>
				</td>
				<td width="205" height="100%" valign="top">
<div style="border: 1px solid #e8e8e9; margin: 0px 0px 12px 0px; padding: 0px 0px 6px 0px;">
	<H2 class="g" style="margin: 0px 0px 0px 0px;"><%=JOB_SEARCH_TITLE%></H2>
	<img src="../images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 1px 0px 6px 0px; background: #e8e8e9;" align="top"><br clear="all">
<!-- #include file="../jobsearch.asp" -->
</div>
				</td>
			</tr>
		</table>