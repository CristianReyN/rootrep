<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../Includes/pages/associate/associate.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
if ( hasRequestedVersion ) {
	document.write(Price_video);
	document.write(strReplace(strReplace(strReplace(html_control,"<text>","Video transcript"),"<title>","Video transcript"),"<href>","<%=ada_href %>"));
} else {
	document.write(reqFlashPlayer+'price.jpg'+reqFlashPlayer2);
}
</script>
<noscript>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="259" height="166" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/associate/Price.swf"  />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
<embed src="../Includes/pages/associate/Price.swf" quality="high" bgcolor="#ffffff" width="259" height="166" alt="Video plays with information about the culture and work environment at Bank of America" name="javaflash" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent" swLiveConnect="true"></embed>
</object>
</noscript>
<% Else %>
<div class="transcript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px;"><span>Video trascript</span></h2>
<p>
>>Allen Price, GMRM Global Credit: My name is Allen Price.<br>
I am a Senior Vice President in the Global Corporate Investment Bank Risk Management Group.<br>
My responsibility is the risk management of and support of the Global Structure Finance Business line.<br>
My favorite part of kind of what I do on a daytoday basis is really working with my front office partners, the folks who are in the origination and structuring role as they think about how we can best bring value to our customers.<br>
I think one of the things that as a risk officer I am charged with keeping in the back of my mind or the front of my mind, I guess, is the risk reward equation.<br>
The folks who are going out and talking to the customers to sort of develop the business, if you will, they're focusing on the risk and reward, but with more emphasis toward reward.<br>
The risk officers we focus on the risk, but you have to keep that balance in place at all times.<br>
And so it's fun for me to sit down and think through structurally how can we add more value to our customer base, how can we help them with what they're trying to do and at the same time be appropriately compensated, reward, while managing and mitigating the risks associated with whatever the transaction is.<br>
So keeping that risk reward equation in constant balance is a challenge, and it's fun as well.
</p>
</div>
<% End If %>