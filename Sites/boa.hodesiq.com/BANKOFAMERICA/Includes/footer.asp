<div class="hs-footer">
<table width="749" border="0" cellspacing="0" cellpadding="0" summary="">
	<tr><td colspan="3" style="background: #000000;"><img src="../images/clear.gif" width="1" height="1" alt="" border="0" /></td></tr>
	<tr><td colspan="3"><img src="../images/clear.gif" width="1" height="3" alt="" border="0" /></td></tr>
	<tr valign="top">

		<td width="8"><img src="../images/clear.gif" width="8" height="1" alt="" border="0" /></td>
		<td valign="top"><a href="http://www.bankofamerica.com/privacy/" class="ftrlnk" title="Privacy &amp; Security">Privacy &amp; Security</a>&nbsp;<span class="ftrtxt">|</span>&nbsp;<a href="http://www.bankofamerica.com/careers/" class="ftrlnk" title="Careers">Careers</a>&nbsp;<span class="ftrtxt">|</span>&nbsp;<a href="http://www.bankofamerica.com/help/index.cfm?template=sitemap.cfm" class="ftrlnk" title="Site Map">Site Map</a><br>
		<img src="../images/clear.gif" width="1" height="19" alt="" border="0" />
		<div class="ftrtxt2">Bank of America, N.A. Member FDIC.
		<a href="http://www.bankofamerica.com/help/equalhousing_popup.cfm" onclick="javascript:window.open('http://www.bankofamerica.com/help/equalhousing_popup.cfm','newwin','width=640,height=371,scrollbars=yes,resizable=yes,left=35,top=161'); return false;" target="_blank" class="sblnk" title="Link opens Equal Housing Lender pop-up window">Equal Housing Lender</a><a href="http://www.bankofamerica.com/help/equalhousing_popup.cfm" onclick="javascript:window.open('http://www.bankofamerica.com/help/equalhousing_popup.cfm','newwin','width=640,height=371,scrollbars=yes,resizable=yes,left=35,top=161'); return false;" target="_blank" title="Link opens Equal Housing Lender pop-up window"><img src="../images/house.gif" width="14" height="9" hspace="3" alt="Link opens Equal Housing Lender pop-up window" border="0"></a><br>
		&copy; 2006 Bank of America Corporation. All rights reserved.</div><br></td>
		<td align="right" width="131"><a href="http://www.bankofamerica.com/sponsorships/" title="Official Sponsor 2004-2008 U.S. Olympic Teams"><img src="../images/foot_olympic.gif" alt="Official Sponsor 2004-2008 U.S. Olympic Teams" width="131" height="33" border="0" align="right" vspace="7"></a></td>
	</tr>
</table>
</div>
<script language="JavaScript1.2" type="text/javascript">
function startKeybordNav()
{
	if(!window.event) window.captureEvents(Event.ONKEYDOWN);// Netscape/Firefox/Opera
	//alert("startKeybordNav: " + document.getElementById("learnmore"));
	if(document.getElementById("overview"))
		document.getElementById("overview").onkeydown=setNextTabRel;
<%	if mpage <> "learnmore" then %>
	if(document.getElementById("learnmore"))
		document.getElementById("learnmore").onkeydown=setNextTabAnavr;
	if(document.getElementById("benefitsadv"))
		document.getElementById("benefitsadv").onkeydown=setNextTabOvr;
<%	else %>
	if(document.getElementById("learnmore"))
		document.getElementById("learnmore").onkeydown=setNextTabBen;
	if(document.getElementById("benefitsadv"))
		document.getElementById("benefitsadv").onkeydown=setNextTabOvr;
<%	end if %>
	if(document.getElementById("investment"))
		document.getElementById("investment").onkeydown=setNextTabAoT;
	
<%	if mpage <> "areasoftalent" then %>
	if(document.getElementById("areasoftalent"))
		document.getElementById("areasoftalent").onkeydown=setNextTabAnav;
	if(document.getElementById("administration"))
		document.getElementById("administration").onkeydown=setNextTabATt;
<%	else %>
	if(document.getElementById("areasoftalent"))
		document.getElementById("areasoftalent").onkeydown=setNextTabAdm;
	if(document.getElementById("administration"))
		document.getElementById("administration").onkeydown=setNextTabATl;
<%	end if %>
	if(document.getElementById("consumerbanking"))
		document.getElementById("consumerbanking").onkeydown=setNextTabJobS;
	
	if(document.getElementById("jsearch"))
		document.getElementById("jsearch").onkeydown=setNextTabArT;
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

var anavrShow, anavShow;

function setNextTabRel(ev)
{	if(transferFocus(ev) && !isShiftKey(ev) && document.getElementById("overviewm"))
		document.getElementById("overviewm").focus();
}
<%	if mpage <> "learnmore" then %>
function setNextTabAnavr(ev)
{	if(isShiftKey(ev) && transferFocus(ev)
		&& document.getElementById("overviewm")) document.getElementById("overviewm").focus();
	else if(transferFocus(ev) && document.getElementById("anavrd"))
	{<%if mpage <> "learnmore" then %>anavrShow = true; popnavr(true);<%end if%>
		document.getElementById("anavrd").focus();
}}
<%	else %>
function setNextTabBen(ev)
{	if(transferFocus(ev) && !isShiftKey(ev) && document.getElementById("anavrd"))
		document.getElementById("anavrd").focus();
	else if(transferFocus(ev) && isShiftKey(ev) && document.getElementById("overviewm"))
		document.getElementById("overviewm").focus();
}
<%	end if %>
function setNextTabOvr(ev)
{	if(transferFocus(ev) && isShiftKey(ev) && document.getElementById("anavrm"))
		document.getElementById("anavrm").focus();
}
function setNextTabAoT(ev)
{	if(transferFocus(ev) && !isShiftKey(ev) && document.getElementById("anavm"))
	{<%if mpage <> "learnmore" then %>anavrShow = false; popnavr(false);<%end if%>
	<%if mpage <> "areasoftalent" then %>anavShow = true; popnav(true);<%end if%>
		document.getElementById("anavm").focus();
	}
}

<%	if mpage <> "areasoftalent" then %>
function setNextTabAnav(ev)
{	if(isShiftKey(ev) && transferFocus(ev))
	{<%if mpage = "learnmore" then %>
		if(document.getElementById("anavm")) document.getElementById("anavm").focus();<%else%>
		if(document.getElementById("anavrm")) document.getElementById("anavrm").focus();<%end if%>
	}
	else if(transferFocus(ev) && document.getElementById("anavd"))
	{<%if mpage <> "areasoftalent" then %>anavShow = true; popnav(true);<%end if%>
		document.getElementById("anavd").focus();
	}
}
function setNextTabATt(ev)
{	if(transferFocus(ev) && isShiftKey(ev) && document.getElementById("jsearchd"))
		document.getElementById("jsearchd").focus();
}
<%	else %>
function setNextTabAdm(ev)
{	if(transferFocus(ev))
		if(!isShiftKey(ev) && document.getElementById("anavd"))
			document.getElementById("anavd").focus();
		else if(document.getElementById("anavrm"))
			document.getElementById("anavrm").focus();
}
function setNextTabATl(ev)
{	if(transferFocus(ev) && isShiftKey(ev) && document.getElementById("anavd"))
		document.getElementById("anavd").focus();
}
<%	end if %>
function setNextTabJobS(ev)
{	if(transferFocus(ev)&& !isShiftKey(ev) && document.getElementById("jsearchd"))
	{<%if mpage <> "learnmore" then %>anavrShow = false; popnavr(false);<%end if%>
	<%if mpage <> "areasoftalent" then %>anavShow = false; popnav(false);<%end if%>
		document.getElementById("jsearchd").focus();
}}
function setNextTabArT(ev)
{	if(transferFocus(ev) && isShiftKey(ev) && document.getElementById("jsearchd"))
		document.getElementById("jsearchd").focus();
}
</script>
<%
	if mpage <> "areasoftalent" then
%>
<script language="JavaScript1.2" type="text/javascript">
function popnav(show)
{var d=document; if(d.getElementById("tdtbnav")&&d.getElementById("tbnav")&&d.getElementById("tdnav")&&d.getElementById("anav")){if(show || anavShow){d.getElementById("anav").style.visibility = "visible"; d.getElementById("anav").style.display = "block";d.getElementById("anav").style.left=d.getElementById("tdtbnav").offsetLeft+d.getElementById("tbnav").offsetLeft+d.getElementById("tdnav").offsetLeft+d.getElementById("tdnav").offsetWidth-3;d.getElementById("anav").style.top=d.getElementById("tdtbnav").offsetTop+d.getElementById("tbnav").offsetTop+d.getElementById("tdnav").offsetTop;}else{d.getElementById("anav").style.visibility = "hidden"; d.getElementById("anav").style.display = "none";}
} setTimeout("anavShow = false;",500);}
</script>
<div id="anav" style="position: absolute; left: 0px; top: 0px; visibility: hidden; display: none; z-index: 100; border: 1px solid #cccccc; font-size: 0.8em;" onmouseover="popnav(true);" onmouseout="popnav(false);">
<table width="160" cellpadding="0" cellspacing="0" border="0" summary="Areas of Talent Navigation">
<%	call AreasOfTalentNav("#cccccc") %>
</table>
</div>
<%
	end if
%>
<%
	if mpage <> "learnmore" then
%>
<script language="JavaScript1.2" type="text/javascript">
function popnavr(show)
{var d=document; if(d.getElementById("tdtbnav")&&d.getElementById("tbnav")&&d.getElementById("tdnavr")&&d.getElementById("anavr")){if(show || anavrShow){d.getElementById("anavr").style.visibility = "visible"; d.getElementById("anavr").style.display = "block";d.getElementById("anavr").style.left=d.getElementById("tdtbnav").offsetLeft+d.getElementById("tbnav").offsetLeft+d.getElementById("tdnavr").offsetLeft+d.getElementById("tdnavr").offsetWidth-3;d.getElementById("anavr").style.top=d.getElementById("tdtbnav").offsetTop+d.getElementById("tbnav").offsetTop+d.getElementById("tdnavr").offsetTop;}else{d.getElementById("anavr").style.visibility = "hidden"; d.getElementById("anavr").style.display = "none";}
} setTimeout("anavrShow = false;",500);}
</script>
<div id="anavr" style="position: absolute; left: 0px; top: 0px; visibility: hidden; display: none; z-index: 100; border: 1px solid #cccccc; font-size: 0.8em;" onmouseover="popnavr(true);" onmouseout="popnavr(false);">
<table width="160" cellpadding="0" cellspacing="0" border="0" summary="Related Information Navigation">
<%	call RelInfoNav("#cccccc") %>
</table>
</div>
<%
	end if
%>
</body>
</html>