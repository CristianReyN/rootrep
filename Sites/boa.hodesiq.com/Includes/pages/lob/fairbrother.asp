<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/lob/lob.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && fairbrother_video ) {
	document.write('<H2 class="hidden">Jonathan Fairbrother&acute;s Associate Testimonial Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(fairbrother_video,259,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",fairbrother_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+fairbrother_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(fairbrother_video,true,true,true,true,true,true);"><img name="dilstart" style="margin: 0px;" src="'+fairbrother_video.thumb_off+'" alt="" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",jeremy_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+fairbrother_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",259,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",jeremy_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+fairbrother_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Jonathan Fairbrother&acute;s Associate Testimonial Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/associate/Fairbrother.swf" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Fairbrother.swf"  />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
</object>
<table border="0" cellspacing="0" cellpadding="0" bgcolor="#d4001a" width="100%">
	<tr>
		<td nowrap align="center" height="18" width="100%">
			<a href="<%=ada_href %>#vt" title="Video transcript" class="btn1">Video transcript</a>
		</td>
	</tr>
</table>
</noscript>
<% Else %>
<div class="transcript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px;"><span>Video transcript</span></h2>
<p>
>>Jonathan Fairbrother, Customer Service Team Manager: My name is Jonathan Fairbrother.<br>
I'm a Deposit Contact Service Team Manager in East Providence, Rhode Island.<br>
I represent the Global Consumer and Small Business Banking line of business.<br>
I've been with Bank of America just about two years now.<br>
Some benefits that Bank of America offers to all associates are not only worldclass health benefits with dental and eye as well as medical, but we also have the ability to be in a 401(k), a pension plan.<br>
An additional benefit that we offer to prospective associates is the idea of tuition reimbursement.<br>
As a former college student as well, I was able to take advantage of the tuition reimbursement and be able to work full time and go to school at night and have the bank assist me in paying for my classes.<br>
As a new associate, it can be overwhelming as far as having to deal with our customers initially, but we do provide you a terrific training program within the company.<br>
We make sure that you are ready for success before you even take a phone call.<br>
We give you the classroom training where it's about 12 days worth of classroom training.<br>
You're learning every bit of what you're going to apply on the phone, and then we offer you about five weeks worth of onthejob training where you are learning and growing with a computer and a customer as well.<br>
We provide support in the form OnTheJob Training Coaches, or also known as OJT Coaches.<br>
We allow you the opportunity to come out onto the production floor and participate in pod visioning, where you sit with an associate that is currently exceeding expectations and assists you in your development and you actually take calls and you're able to develop your skills at that point and have the guidance on a oneonone basis. 
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>