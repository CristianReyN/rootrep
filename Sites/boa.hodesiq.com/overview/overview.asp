<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action,page_section, Metatag
title = "Bank of America | Career | Overview"
mpage = "overview"
spage = ""
ada_href = "../ada/overview.asp"
page_self = "../overview/overview.asp"
ada_title = "Bank of America | Career | Overview"
job_search_action = "../jobsearch/searchresult.asp"
page_section=""
Dim flashPage
flashPage = true
hide_flash_title = "Stop Video Host Audio"
hide_flash_title2 = "Stop  We Are Bankers Audio"
Metatag="Main page of the careers site. From this page you can listen to a video host who gives a quick tour to point in the direction of either engaging information, job search information or more in-depth information about employment with Bank of America. From this page you can job search to find if there is an opportunity available. You can click to more links about benefits, diversity, corporate information, college information, global locations and to Investment Banking Careers."
playflash = Request.Cookies("PFOT")
If playflash = "" Then
	Response.Cookies("PFOT") = "2"
	Response.Cookies("PFOT").Expires = "January 1,2038"
Else
	If playflash = "2" Then
		Response.Cookies("PFOT") = "1"
		Response.Cookies("PFOT").Expires = "January 1,2038"
		playflash = "1"
	End If
End If
If playflash = "1" Then flashPage = false
%>
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->
<noscript>
<% If playflash = "" Then %>
			<tr valign="top"><td valign="middle" style="background: #cadceb; padding: 0.35em 6px 0.35em 6px;"><a class="g" href="../ada/overview.asp" id="videotranscripts" title="Video transcripts" onfocus="this.className='g-over';" onblur="this.className='g';" style="line-height: 1.1em;">Video Transcripts</a></td></tr>
			<tr valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
<% End If %>
</noscript>
			<tr valign="top"><td height="450" style="background: #cadceb;">
<div id="flash1" style="position: absolute;">
<script language="JavaScript1.2" type="text/javascript">
//<!--
function setCookie(c_name,value,expiredays)
{
	var exdate=new Date()
	exdate.setDate(exdate.getDate()+expiredays)
	document.cookie=c_name+ "=" +escape(value)+
	((expiredays==null) ? "" : ";expires="+exdate.toGMTString())
}

function getCookie(c_name)
{
	if (document.cookie.length>0)
	{
		c_start=document.cookie.indexOf(c_name + "=")
		if (c_start!=-1)
		{ 
			c_start=c_start + c_name.length+1 
			c_end=document.cookie.indexOf(";",c_start)
			if (c_end==-1) c_end=document.cookie.length
			return unescape(document.cookie.substring(c_start,c_end))
		} 
	}
	return false;
}

var replayVideoHost = '<p style="margin: 0px;"><a href="Javascript: replayVirtualHost();" title="Replay Video Host" class="p" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';">Replay<br>video host</a></p>';
var videoTranscripts = '<p style="margin: 6px 0px 0px 0px;"><a href="<%=ada_href %>" title="Video transcripts" class="p" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';">Video<br>transcripts</a></p>';

function loadVideoHost()
{if(document.getElementById("flash_in")){
	var playflash = getCookie("PFOT");
	if(!playflash || playflash != "1")
	{
		document.getElementById("flash_in").innerHTML = hiddenFlash;
		setCookie("PFOT",1,10000);
	}
	else
		document.getElementById("flash_in").innerHTML = helpLinks;
}}

requiredMajorVersion = 8;
requiredVersion = 8;
hasRequestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);
var reqFlashPlayer = '<a href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." class="p" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';">This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version.</a>';
var helpLinks = '<table width="160" height="60" cellpadding="0" cellspacing="0" border="0" summary="" style="margin-top: 13px; background: #ebebeb; border-top: 1px solid #dadada; border-bottom: 1px solid #dadada;"><tr><td style="padding: 5px 11px 5px 12px;"><div style="border: 1px solid #dadada;"><img src="../images/piper.jpg" width="52" height="52" alt="'+(hasRequestedVersion?'Replay Video Host':'Video transcripts')+'" border="0" style="border: 1px solid #ebebeb;"></div></td><td width="100%">'+(hasRequestedVersion?replayVideoHost:'')+videoTranscripts+'</td></tr></table>'+(hasRequestedVersion?'':'<p style="margin: 6px 6px 0px 6px;">'+reqFlashPlayer+'</p>');

if ( hasRequestedVersion ) {
	var hiddenFlash = '<a class="auraltext" href="#skipflash" onFocus="hover(this,\'show-tab\'); this.focus()" onblur="hover(this,\'auraltext\')">Skip Flash content</a><br>';
	hiddenFlash += '<object tabindex="0" onmousedown="if(document.getElementById(\'skipflash2\')) document.getElementById(\'skipflash2\').focus();" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="310" height="390" title="virtualhost" id="ShockwaveFlash1">';
	hiddenFlash += '<param name="movie" value="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/virtualhost.swf" />';
	hiddenFlash += '<param name="quality" value="high" />';
	hiddenFlash += '<param value="transparent" name="wmode" />';
	hiddenFlash += '<embed src="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/virtualhost.swf" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="310" height="390"></embed>';
	hiddenFlash += '</object>';
   document.write('<div id="flash_in" style="display: inline; width: auto; height: auto;">');
   document.write('</div>');
} else {
   document.write('<div style="position: relative; width: 152; height: 60;">');
   document.write(helpLinks); 
   document.write('</div>');
}
//-->
</script>
<noscript>
<% If playflash = "" Then %>
<div id="flash_in" style="position: absolute; display: inline; z-index: 200;">
<object tabindex="0" onmousedown="if(document.getElementById('skipflash2')) document.getElementById('skipflash2').focus();" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="310" height="390" title="virtualhost" id="ShockwaveFlash1">
  <param name="movie" value="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/virtualhost.swf" />
  <param name="quality" value="high" />
  <param name="wmode" value="transparent" />
  <embed src="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/virtualhost.swf" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="310" height="390"></embed>
</object>
</div>
<% Else %>
<table width="160" height="60" cellpadding="0" cellspacing="0" border="0" summary="" style="margin-top: 13px; background: #ebebeb; border-top: 1px solid #dadada; border-bottom: 1px solid #dadada;"><tr><td style="padding: 5px 11px 5px 12px;"><div style="border: 1px solid #dadada;"><img src="../images/piper.jpg" width="52" height="52" alt="Video transcripts" border="0" style="border: 1px solid #ebebeb;"></div></td><td width="100%"><p style="margin: 6px 0px 0px 0px;"><a href="<%=ada_href %>" title="Video transcripts" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Video<br>transcripts</a></p></td></tr></table>
<% End If %>
</noscript>
</div>
			</td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<H1 style="display: none;">Career Overview</H1>
<!-- #include file="../includes/pages/overview.asp" -->
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->