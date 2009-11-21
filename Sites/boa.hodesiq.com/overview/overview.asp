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
hide_flash_title2 = "Stop Bank of Opportunity Audio"
sccess_flash_title = "Access the Why Choose Bank of America video"
Metatag="Main page of the careers site. From this page you can listen to a video host who gives a quick tour to point in the direction of either engaging information, job search information or more in-depth information about employment with Bank of America. From this page you can job search to find if there is an opportunity available. You can click to more links about benefits, diversity, corporate information, college information, global locations and to Investment Banking Careers."
playflash = Request.Cookies("PFOT")
If playflash = "" Then
'Response.write "playflash 1: " & playflash & "<br>"
	Response.Cookies("PFOT") = "2"
	Response.Cookies("PFOT").Expires = "January 1,2038"
Else
'Response.write "playflash 2: " & playflash & "<br>"
	If playflash = "2" Then
'Response.write "playflash 3: " & playflash & "<br>"
		Response.Cookies("PFOT") = "1"
		Response.Cookies("PFOT").Expires = "January 1,2038"
		playflash = "1"
	End If
End If
'Response.write "playflash 4: " & playflash & "<br>"
If playflash = "1" Then flashPage = false
'Response.write "flashPage: " & flashPage & "<br>"
%>
<!-- #include file="../includes/header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="../includes/lnav.asp" -->
<!-- Left Nav -->
<% If playflash = "" Then %>
			<tr id="vtm1" valign="top"><td valign="middle" style="background: #cadceb; padding: 0.35em 6px 0.35em 6px;"><a class="g" href="../ada/overview.asp" id="videotranscripts" title="Video transcripts" onfocus="this.className='g-over';" onblur="this.className='g';" style="line-height: 1.1em;">Video Transcripts</a></td></tr>
			<tr id="vtm2" valign="top" style="background: #ffffff;"><td><img src="../images/white.gif" width="154" height="1" alt="" border="0"></td></tr>
<% End If %>
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

var textOnlyVersion = "<%=textonly_version %>";
var stopVHAudio = "<%=hide_flash_title%>";
var stopWABAudio = "<%=hide_flash_title2%>";

var replayVideoHost = '<p style="margin: 0px;"><a href="Javascript: replayVirtualHost();" title="Replay Video Host" class="p" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';">Replay<br>video host<\/a><\/p>';
var videoTranscripts = '<p style="margin: 6px 0px 0px 0px;"><a href="<%=ada_href %>" title="Video transcripts" class="p" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';">Video<br>transcripts<\/a><\/p>';
function createStopAudio(fo_r)
{
	if(document.body.firstChild)
	{
		var new_a = document.createElement("a");
		new_a.href = "JavaScript: if(window.hideFlash) hideFlash();";
		new_a.innerHTML = fo_r;
		new_a.title = fo_r;
		new_a.className = "hlink";
		//new_a.onfocus=function(){hover(this,'show-tab'); this.style.fontSize = "0.56em";}
		//new_a.onblur=function(){hover(this,'auraltext');}
		document.body.insertBefore(new_a,document.body.firstChild);
	}
	else if (document.all)
	{
		if(!document.getElementById("stopaudio"))
			document.body.insertAdjacentHTML("afterBegin",'<div id="stopaudio"></div>');
		document.getElementById("stopaudio").innerHTML = '<a href="JavaScript: if(window.hideFlash) hideFlash();" class="hlink"'/*+' onfocus="hover(this,\'show-tab\'); this.style.fontSize = \'0.56em\';" onblur="hover(this,\'auraltext\');"'*/+' title="'+fo_r+'">'+fo_r+'</a>';
		document.getElementById("stopaudio").style.display = "inline";
	}
	
}

function removeStopAudio()
{
	if(document.body.firstChild)
	{
		document.body.removeChild(document.body.firstChild);
	}
	else if (document.all)
	{
		if(document.getElementById("stopaudio"))
		{
			document.getElementById("stopaudio").innerHTML = '';
			document.getElementById("stopaudio").style.display = "none";
		}
	}
}
		
function loadVideoHost()
{
	if(document.getElementById("flash_in")){
	var playflash = getCookie("PFOT");
	if(!playflash || playflash != "1")
	{
		document.getElementById("flash_in").innerHTML = hiddenFlash;
		createStopAudio(stopVHAudio);
		setCookie("PFOT",1,10000);
	}
	else
	{
		document.getElementById("flash_in").innerHTML = helpLinks;
		removeStopAudio();
	}
}
if(document.getElementById("vtm1"))document.getElementById("vtm1").style.display = "none";
if(document.getElementById("vtm2"))document.getElementById("vtm2").style.display = "none";}

requiredMajorVersion = 8;
requiredVersion = 8;
hasRequestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);
var reqFlashPlayer = '<a href="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" title="This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version." class="p" onfocus="this.className=\'p-over\';" onblur="this.className=\'p\';">This video requires Adobe Flash Player version '+requiredMajorVersion+'. Please download latest version.<\/a>';
var helpLinks = '<table width="160" height="60" cellpadding="0" cellspacing="0" border="0" summary="" style="margin-top: 13px; background: #ebebeb; border-top: 1px solid #dadada; border-bottom: 1px solid #dadada;"><tr><td style="padding: 5px 11px 5px 12px;"><div style="border: 1px solid #dadada;"><img src="../images/piper.jpg" width="52" height="52" alt="'+(hasRequestedVersion?'Replay Video Host':'Video transcripts')+'" border="0" style="border: 1px solid #ebebeb;"><\/div><\/td><td width="100%">'+(hasRequestedVersion?replayVideoHost:'')+videoTranscripts+'<\/td><\/tr><\/table>'+(hasRequestedVersion?'':'<p style="margin: 6px 6px 0px 6px;">'+reqFlashPlayer+'<\/p>');

if ( hasRequestedVersion ) {
   document.write('<div id="flash_in" style="display: inline; width: auto; height: auto;">');
   document.write('<\/div>');
} else {
   document.write('<div style="position: relative; width: 152; height: 60;">');
   document.write(helpLinks); 
   document.write('<\/div>');
}
//-->
</script>
<noscript>
<% If playflash = "" Then %>
<div id="flash_in" style="position: absolute; display: inline; z-index: 200;">
<object tabindex="0" type="application/x-shockwave-flash" data="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/virtualhost.swf" width="310" height="390" title="virtualhost" id="ShockwaveFlash1">
  <param name="movie" value="http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/virtualhost.swf" />
  <param name="quality" value="high" />
  <param name="wmode" value="transparent" />
  <param name="allowScriptAccess" value="always" />
</object>
</div>
<% Else %>
<table width="160" cellpadding="0" cellspacing="0" border="0" summary="" style="margin-top: 13px; background: #ebebeb; border-top: 1px solid #dadada; border-bottom: 1px solid #dadada;"><tr><td height="60" style="padding: 5px 11px 5px 12px;"><div style="border: 1px solid #dadada;"><img src="../images/piper.jpg" width="52" height="52" alt="Video transcripts" border="0" style="border: 1px solid #ebebeb;"></div></td><td width="100%"><p style="margin: 6px 0px 0px 0px;"><a href="<%=ada_href %>" title="Video transcripts" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Video<br>transcripts</a></p></td></tr></table>
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
<H1 class="hidden">Career Overview</H1>
<!-- #include file="../includes/pages/overview.asp" -->
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="../includes/footer.asp" -->
<!-- Footer -->