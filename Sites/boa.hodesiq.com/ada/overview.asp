<% Response.Buffer=True 
Dim title, mpage, spage, ada_href, ada_title, job_search_action,page_section, Metatag%>
<!-- #include file="../includes/breadcrumb.asp" -->
<% title = breadcrumb & "Overview"
mpage = "overview"
spage = ""
standart_href = "../overview/overview.asp"
job_search_action = "../jobsearch/searchresult.asp"
Metatag="Main page of the careers site. From this page you can listen to a video host who gives a quick tour to point in the direction of either engaging information, job search information or more in-depth information about employment with Bank of America. From this page you can job search to find if there is an opportunity available. You can click to more links about benefits, diversity, corporate information, college information, global locations and to Investment Banking Careers."
page_self = "../ada/overview.asp" 
page_section="ADA"
Dim flashPage
flashPage = false
%>
<!-- Header -->
<!-- #include file="header.asp" -->
<!-- Header -->
<!-- Left Nav -->
<!-- #include file="lnav.asp" -->
<!-- Left Nav -->
			<tr valign="top"><td height="50" valign="bottom" style="background: #cadceb;">
<H1 class="hidden">Career Overview</H1>
<a name="vht"></a>
<H2 class="h1" style="margin: 12px 12px 0px 13px;">Video Host<br><span>Transcript</span></H2>
<p class="s" style="margin: 12px 12px 12px 13px;">
Welcome to Bank of America. Our global corporation offers talented and motivated individuals the opportunity to excel in many different areas.</p>

<p class="s" style="margin: 12px 12px 0px 13px;">
The "Why Choose Bank of America" banner at the top of the page launches a video with information about the culture and work environment at Bank of America.</p>

<p class="s" style="margin: 12px 12px 0px 13px;">
If you already know that we're a good fit and you're ready to learn about our current opportunities, go to the <a href="../jobsearch.aspx" style="line-height: 1.1em;" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">"Job Search"</a> section to get started.</p>

<p class="s" style="margin: 12px 12px 0px 13px;">
If you want to learn more about what Bank of America has to offer, you'll find a wealth of valuable information on everything from benefits to policies and procedures in the "Related Information" section.</p>

<p class="s" style="margin: 12px 12px 12px 13px;">
Thank you for your interest in Bank of America!</p>
			</td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
			<tr valign="top"><td height="50"><img src="../images/clear.gif" width="154" height="1" alt="" border="0"></td></tr>
		</table>
	</td>
	<td width="12"><img src="../images/clear.gif" width="12" height="1" alt="" border="0"></td>
	<td valign="top" width="578" height="100%">
<!-- Body-->
<img src="../images/clear.gif" width="15" height="4" alt="" border="0"><br>
<!-- #include file="../includes/pages/overview.asp" -->
<!-- Body-->
	</td>
</tr>
</table>
<!-- Footer -->
<!-- #include file="footer.asp" -->
<!-- Footer -->

