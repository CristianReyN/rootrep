<%	href_pre = ""
		If page_section <> "ADA" Then href_pre = "../learnmore/" %>
<p style="margin: 24px 0px 24px 0px;"><span style="font-size: 0.9em; line-height: 0.9em;">
Not all associates are eligible to participate in all benefit programs. The terms and conditions of the benefits described above may be governed by written benefit plans and/or other documents. The above stated description of benefits is intended as a summary and for informational purposes only; this document does not create a contract between the company and any associate or potential associate. All programs and benefits are subject to change at any time.
</span></p>
<%	If tpage <> "insurance" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>insurance.asp" class="left2" title="Health &amp; Insurance Benefits">Health &amp; Insurance Benefits</a>
</p>
<%	End If %>
<%	If tpage <> "lifemanagement" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>lifemanagement.asp" class="left2" title="Life Management Benefits">Life Management Benefits</a>
</p>
<%	End If %>
<%	If tpage <> "retirement" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>retirement.asp" class="left2" title="Retirement Benefits">Retirement Benefits</a>
</p>
<%	End If %>
<%	If tpage <> "otherprograms" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>otherprograms.asp" class="left2" title="Other Programs: Your Finances, Community Commitments, and Education">Other Programs: Your Finances, Community Commitments, and Education</a>
</p>
<%	End If %>




