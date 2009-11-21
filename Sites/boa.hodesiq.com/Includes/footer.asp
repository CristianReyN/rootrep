<div class="hs-footer">
<table width="749" border="0" cellspacing="0" cellpadding="0" summary="">
	<tr><td colspan="3" style="background: #000000;"><img src="../images/clear.gif" width="1" height="1" alt="" border="0" /></td></tr>
	<tr><td colspan="3"><img src="../images/clear.gif" width="1" height="3" alt="" border="0" /></td></tr>
	<tr valign="top">

		<td width="8"><img src="../images/clear.gif" width="8" height="1" alt="" border="0" /></td>
		<td valign="top"><a href="http://www.bankofamerica.com/privacy/" class="ftrlnk" onfocus="this.className='ftrlnk-over';" onblur="this.className='ftrlnk';" title="Privacy &amp; Security">Privacy &amp; Security</a>&nbsp;<span class="ftrtxt">|</span>&nbsp;<a href="http://www.bankofamerica.com/careers/" class="ftrlnk" onfocus="this.className='ftrlnk-over';" onblur="this.className='ftrlnk';" title="Careers">Careers</a>&nbsp;<span class="ftrtxt">|</span>&nbsp;<a href="http://www.bankofamerica.com/help/index.cfm?template=sitemap.cfm" class="ftrlnk" onfocus="this.className='ftrlnk-over';" onblur="this.className='ftrlnk';" title="Site Map">Site Map</a><br>
		<img src="../images/clear.gif" width="1" height="19" alt="" border="0" />
		<div class="ftrtxt2">Bank of America, N.A. Member FDIC.
		<a href="http://www.bankofamerica.com/help/equalhousing_popup.cfm" onclick="javascript:window.open('http://www.bankofamerica.com/help/equalhousing_popup.cfm','newwin','width=640,height=371,scrollbars=yes,resizable=yes,left=35,top=161'); return false;" target="_blank" class="ftrlnk" onfocus="this.className='ftrlnk-over';" onblur="this.className='ftrlnk';" title="Link opens Equal Housing Lender pop-up window">Equal Housing Lender</a><a href="http://www.bankofamerica.com/help/equalhousing_popup.cfm" onclick="javascript:window.open('http://www.bankofamerica.com/help/equalhousing_popup.cfm','newwin','width=640,height=371,scrollbars=yes,resizable=yes,left=35,top=161'); return false;" target="_blank" title="Link opens Equal Housing Lender pop-up window"><img src="../images/house.gif" width="14" height="9" hspace="3" alt="Link opens Equal Housing Lender pop-up window" border="0"></a><br>
		&copy; 2007 Bank of America Corporation. All rights reserved.</div><br></td>
		<td align="right" width="131"><a href="http://www.bankofamerica.com/sponsorships/" title="Official Sponsor 2004-2008 U.S. Olympic Teams"><img src="../images/foot_olympic.gif" alt="Official Sponsor 2004-2008 U.S. Olympic Teams" width="131" height="33" border="0" align="right" vspace="7"></a></td>
	</tr>
</table>
</div>
<script language="JavaScript1.2" type="text/javascript">
var isIE = document.all;

function startKeybordNav()
{
	if(!window.event) window.captureEvents(Event.ONKEYDOWN);// Netscape/Firefox/Opera
		
<%	if mpage <> "learnmore" then %>
	if(document.getElementById("learnmore"))
		document.getElementById("learnmore").onkeydown=setNextTabLearnmorePopup;
	if(document.getElementById("benefitsadv"))
		document.getElementById("benefitsadv").onkeydown=setNextTabLearnmoreShift;
	if(document.getElementById("investment"))
		document.getElementById("investment").onkeydown=setNextTabLearnmorePopupQuit;
<%	end if %>
	
<%	if mpage <> "areasoftalent" then %>
	if(document.getElementById("aroftalent"))
		document.getElementById("aroftalent").onkeydown=setNextTabAotPopup;
	if(document.getElementById("administration"))
		document.getElementById("administration").onkeydown=setNextTabAotShift;
	if(document.getElementById("consumerbanking"))
		document.getElementById("consumerbanking").onkeydown=setNextTabAotPopupQuit;
<%	end if %>
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

<%	if mpage <> "learnmore" then %>
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
<%	end if %>


<%	if mpage <> "areasoftalent" then %>
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
<%	end if %>
</script>
<%
	if mpage <> "areasoftalent" then
%>
<script language="JavaScript1.2" type="text/javascript">
function popAoT(show)
{var d=document; if(d.getElementById("tdtbnav")&&d.getElementById("tbnav")&&d.getElementById("tdnav")&&d.getElementById("anav")){if(show || aotPopupShow){d.getElementById("anav").style.visibility = "visible"; d.getElementById("anav").style.display = "block";d.getElementById("anav").style.left=d.getElementById("tdtbnav").offsetLeft+d.getElementById("tbnav").offsetLeft+d.getElementById("tdnav").offsetLeft+d.getElementById("tdnav").offsetWidth-3;d.getElementById("anav").style.top=d.getElementById("tdtbnav").offsetTop+d.getElementById("tbnav").offsetTop+d.getElementById("tdnav").offsetTop;}else{d.getElementById("anav").style.visibility = "hidden"; d.getElementById("anav").style.display = "none";}
} setTimeout("aotPopupShow = false;",500);}
</script>
<div id="anav" style="position: absolute; left: 0px; top: 0px; visibility: hidden; display: none; z-index: 100; border: 1px solid #7F99B2; font-size: 0.8em;" onmouseover="popAoT(true);" onmouseout="popAoT(false);">
<table width="160" cellpadding="0" cellspacing="0" border="0" summary="">
<%	call AreasOfTalentNav("#ffffff") %>
</table>
</div>
<%
	end if
%>
<%
	if mpage <> "learnmore" then
%>
<script language="JavaScript1.2" type="text/javascript">
function popLearnmore(show)
{var d=document; if(d.getElementById("tdtbnav")&&d.getElementById("tbnav")&&d.getElementById("tdnavr")&&d.getElementById("anavr")){if(show || learnmorePopupShow){d.getElementById("anavr").style.visibility = "visible"; d.getElementById("anavr").style.display = "block";d.getElementById("anavr").style.left=d.getElementById("tdtbnav").offsetLeft+d.getElementById("tbnav").offsetLeft+d.getElementById("tdnavr").offsetLeft+d.getElementById("tdnavr").offsetWidth-3;d.getElementById("anavr").style.top=d.getElementById("tdtbnav").offsetTop+d.getElementById("tbnav").offsetTop+d.getElementById("tdnavr").offsetTop;}else{d.getElementById("anavr").style.visibility = "hidden"; d.getElementById("anavr").style.display = "none";}
} setTimeout("learnmorePopupShow = false;",500);}
</script>
<div id="anavr" style="position: absolute; left: 0px; top: 0px; visibility: hidden; display: none; z-index: 100; border: 1px solid #7F99B2; font-size: 0.8em;" onmouseover="popLearnmore(true);" onmouseout="popLearnmore(false);">
<table width="160" cellpadding="0" cellspacing="0" border="0" summary="">
<%	call RelInfoNav("#ffffff") %>
</table>
</div>
<%
	end if
%>
<script type="text/javascript" src="../includes/fixit.js"></script>
</body>
</html>