		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td valign="top"><img src="../images/clear.gif" width="100%" height="10" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" height="26" style="background: #d3d5d6;">
<a name="skipmaincontent"></a><H1 class="rjp">Diversity <span style="color: #D40019;">&amp;</span> Inclusion Film</H1>
				</td>
			</tr>
			<tr valign="top"><td valign="top"><img src="../images/clear.gif" width="100%" height="2" alt="" border="0"></td></tr>
			<tr valign="top"><td valign="top" style="background: #d3d5d6;"><img src="../images/clear.gif" width="100%" height="2" alt="" border="0"></td></tr>
		</table>
		<img src="../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="100%" valign="top">
					<div align="center" style="margin: 0px 0px 0px 0px; padding: 0px; width: 100%;"><div style="margin: 0px; padding: 0px;">
<!-- #include file="diversity_inclusion/diversity_inclusion_video.asp" -->
<a href="#video" class="hlink">Diversity and Inclusion Film</a>
					</div></div>
<%
	mg = Request("mg")
	If mg <> "" Then
%>
<p style="margin: 12px <%=right_margin_split%>px 0px <%=left_margin_0%>px; width: 100%; text-align: center;">
<a href="<% If page_section = "ADA" Then %><% Else  %>../overview/<% End If  %>media_gallery.asp?mg=<%=mg%>" title="Return to Media Galery page" class="bacb">Return to Media Galery page</a>
</p>
<%
	End If
%>
<br><br>
				</td>
			</tr>
<% If page_section = "ADA" Then %>
			<tr valign="top"><td valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
<% End If %>
		</table>