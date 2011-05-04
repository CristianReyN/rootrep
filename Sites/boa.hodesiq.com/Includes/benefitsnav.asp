<%	href_pre = ""
		If page_section <> "ADA" Then href_pre = "../learnmore/" %>
<p style="margin: 24px 0px 24px 0px;"><span style="font-size: 0.9em; line-height: 0.9em;">
Not all employees are eligible to participate in all benefit programs. The terms and conditions of the benefits described above may be governed by written benefit plans and/or other documents. The above stated description of benefits is intended as a summary and for informational purposes only; this document does not create a contract between the company and any employee or potential employee. All programs and benefits are subject to change at any time.
</span></p>
<%	If fpage = "insurance" Or fpage = "lifemanagement" Or fpage = "retirement" Or fpage = "otherprograms" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>benefits.asp" class="bacb" title="Benefits and Other Programs">Benefits and Other Programs</a>
</p>
<%	End If %>
<%	If fpage <> "insurance" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>insurance.asp" class="bacb" title="Health &amp; Insurance Benefits">Health &amp; Insurance Benefits</a>
</p>
<%	End If %>
<%	If fpage <> "lifemanagement" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>lifemanagement.asp" class="bacb" title="Life Management Benefits">Life Management Benefits</a>
</p>
<%	End If %>
<%	If fpage <> "retirement" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>retirement.asp" class="bacb" title="Retirement Benefits">Retirement Benefits</a>
</p>
<%	End If %>
<%	If fpage <> "otherprograms" Then %>
<p style="margin: 12px 0px 0px 0px;">
<a href="<%Response.write href_pre%>otherprograms.asp" class="bacb" title="Other Programs: Your Finances, Community Commitments, and Education">Other Programs: Your Finances, Community Commitments, and Education</a>
</p>
<%	End If %>




