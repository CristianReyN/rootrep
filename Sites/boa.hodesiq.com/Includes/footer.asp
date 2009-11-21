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
<%
	if mpage <> "areasoftalent" then
%>
<script language="JavaScript1.2" type="text/javascript">
function popnav(show)
{var d=document; if(d.getElementById("tdtbnav")&&d.getElementById("tbnav")&&d.getElementById("tdnav")&&d.getElementById("anav")){if(show){d.getElementById("anav").style.visibility = "visible"; d.getElementById("anav").style.display = "block";d.getElementById("anav").style.left=d.getElementById("tdtbnav").offsetLeft+d.getElementById("tbnav").offsetLeft+d.getElementById("tdnav").offsetLeft+d.getElementById("tdnav").offsetWidth-3;d.getElementById("anav").style.top=d.getElementById("tdtbnav").offsetTop+d.getElementById("tbnav").offsetTop+d.getElementById("tdnav").offsetTop;}else{d.getElementById("anav").style.visibility = "hidden"; d.getElementById("anav").style.display = "none";}
}}
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
{var d=document; if(d.getElementById("tdtbnav")&&d.getElementById("tbnav")&&d.getElementById("tdnavr")&&d.getElementById("anavr")){if(show){d.getElementById("anavr").style.visibility = "visible"; d.getElementById("anavr").style.display = "block";d.getElementById("anavr").style.left=d.getElementById("tdtbnav").offsetLeft+d.getElementById("tbnav").offsetLeft+d.getElementById("tdnavr").offsetLeft+d.getElementById("tdnavr").offsetWidth-3;d.getElementById("anavr").style.top=d.getElementById("tdtbnav").offsetTop+d.getElementById("tbnav").offsetTop+d.getElementById("tdnavr").offsetTop;}else{d.getElementById("anavr").style.visibility = "hidden"; d.getElementById("anavr").style.display = "none";}
}}
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