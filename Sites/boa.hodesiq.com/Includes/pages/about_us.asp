<% href_pre = ""
	if page_section <> "ADA" then href_pre = "../learnmore/" %>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top">
<img src="../images/banners/aboutus.jpg" width="578" height="166" alt="About Us. Bank of America." title="About Us. Bank of America." border="0">
				</td>
			</tr>
			<tr valign="top"><td colspan="2" valign="top" class="divb"><img src="../images/clear.gif" width="100%" height="4" alt="" border="0"></td></tr>
		</table>
		<img src="../images/clear.gif" width="100%" height="<%=top_content_padding_bottom%>" alt="" border="0"><br />
		<a name="skipmaincontent"></a><H1 class="hidden">About Us</H1>
		<table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top">
				<td width="373" height="100%" valign="top" style="padding: 0px <%=right_margin%>px 0px <%=left_margin_0%>px;">
<p class="bac" style="margin-top: 0px;">At Bank of America, we make opportunity possible for customers and clients at every stage of their financial lives. This purpose defines and unites us. Every day, we are focused on delivering value, convenience, expertise and innovation for the individuals, businesses and institutional investors we serve worldwide.</p>

<p class="bac">Our people make it happen, and we are committed to attracting and retaining top talent across the globe to ensure our continued success. Along with taking care of our customers, we want to be the best place for people to work and are intent on creating a work environment where all employees have the opportunity to achieve their goals.</p>

<p class="bac"><a href="<% Response.write href_pre %>corpinfo.asp" class="bacb" title="Learn more about our company">Learn more about our company</a><br>
Learn about some of the ways Bank of America is making a difference in the communities we serve.</p>

<p class="bac"><a href="<% Response.write href_pre %>diversity.asp" class="bacb" title="Diversity and inclusion">Diversity and inclusion</a><br>
Each employee brings unique skills, backgrounds and opinions. We see diversity as our platform for innovation and a key component in our success.</p>

<p class="bac"><a href="<% Response.write href_pre %>values.asp" class="bacb" title="Our values">Our values</a><br>
Learn about our five values that represent what we believe in.</p>
				</td>
				<td width="205" height="100%" valign="top">
<div style="border: 1px solid #e8e8e9; margin: 0px 0px 12px 0px; padding: 0px 0px 6px 0px;">
	<H2 class="g" style="margin: 0px 0px 0px 0px;"><%=JOB_SEARCH_TITLE%></H2>
	<img src="../images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 1px 0px 6px 0px; background: #e8e8e9;" align="top"><br clear="all">
<!-- #include file="../jobsearch.asp" -->
</div><% twitter_standalone = true %>
<div style="text-align: center; margin: 0px; padding: 0px;">
<!-- #include file="../twitter.asp" -->
</div>
<br><br>
				</td>
			</tr>
		</table>