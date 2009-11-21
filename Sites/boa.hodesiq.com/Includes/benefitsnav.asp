	<%	href_pre = ""
		If page_section <> "ADA" Then href_pre = "../learnmore/" %>
<%	If tpage <> "insurance" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>insurance.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Insurance plans">Insurance plans</a>
</p>
<%	End If %>
<%	If tpage <> "reimbursement" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>reimbursement.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Reimbursement accounts">Reimbursement accounts</a>
</p>
<%	End If %>
<%	If tpage <> "retirement" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>retirement.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Retirement plans">Retirement plans</a>
</p>
<%	End If %>
<%	If tpage <> "homeloans" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>homeloans.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Home loans">Home loans</a>
</p>
<%	End If %>
<%	If tpage <> "volunteergrants" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>volgrantprog.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Volunteer grants program">Volunteer grants program</a>
</p>
<%	End If %>
<%	If tpage <> "metlifeautohomeinsurance" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>metlife_ahins.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="MetLife Auto & Home Insurance Program">MetLife Auto & Home Insurance Program</a>
</p>
<%	End If %>
<%	If tpage <> "rewarding" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>rewarding.asp" class="left2" onfocus="this.className='left2-over';" onblur="this.className='left2';" title="Rewarding Success">Rewarding Success</a>
</p>
<%	End If %>