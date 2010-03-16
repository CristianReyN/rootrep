<% If page_section <> "ADA" Then %>
<script language="JavaScript1.2" src="../../Includes/pages/mortgage/mortgage.js" type="text/javascript"></script>
<script language="JavaScript1.2" type="text/javascript">
function preloadThumb()
{
	MM_preloadImages('../Includes/pages/mortgage/thumbnails/mortgage_on.gif','../Includes/pages/mortgage/thumbnails/mortgage_off.gif');
}
var ada_href = "<%=ada_href %>";
action_script = true;
if ( hasRequestedVersion && mortgage_video ) {
	document.write('<H2 class="hidden">Mortgage Careers Video<\/H2>');
	document.write('<div id="mainvideo" style="display: none;"><a name="video"></a>');
	document.write(getVideo(mortgage_video,258,166,"javaflash",""));
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",258,22,true,true,true,true,true,true),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",mortgage_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb">');
	document.write('<a href="Javascript: vo_id();" onmouseover="MM_swapImage(\'dilstart\',\'\',\''+mortgage_video.thumb_on+'\',1);" onmouseout="MM_swapImgRestore();" onclick="playVideo(mortgage_video,true,true,true,true,true,true);" title="Play Mortgage Careers Video"><img name="dilstart" style="margin: 0px;" src="'+mortgage_video.thumb_off+'" alt="Play Mortgage Careers Video" border="0" align="absmiddle"></a>');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",258,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",mortgage_video.ada_anchor));
	document.write('</div>');
	document.write('<div id="videothumb_off" style="display: none;">');
	document.write('<img style="margin: 0px;" src="'+mortgage_video.thumb_off+'" alt="" border="0" align="absmiddle">');
	document.write(strReplace(strReplace(strReplace(strReplace(getHTMLControl("javaflash",258,22,false,false,false,true,false,false),"<text>","Video transcript"),"<title>","Video transcript"),"<href>",ada_href),"<anchor>",mortgage_video.ada_anchor));
	document.write('</div>');
} else {
	document.write(reqFlashPlayer+mortgage_video.thumb_on+reqFlashPlayer2);
}
</script>
<noscript>
<a name="video"></a><H2 class="hidden">Mortgage Careers Video</H2>
<object type="application/x-shockwave-flash"
data="../Includes/pages/rjp/flashplayer_xml20080308.swf" width="258" height="166" FlashVars="var1=../Includes/pages/mortgage/MORTGAGE.xml" id="javaflash" align="middle">
	<param name="wmode" value="transparent">
	<param name="allowScriptAccess" value="always" />
	<param name="movie" value="../Includes/pages/rjp/flashplayer_xml20080308.swf" />
	<param name="FlashVars" value="var1=../Includes/pages/mortgage/MORTGAGE.xml" />
	<param name="quality" value="high" />
	<param name="bgcolor" value="#ffffff" />
</object>
</noscript>
<% Else %>
<div class="transcript">
<a name="vt"></a><h2 class="h1" style="margin: 0px 0px 6px 0px; text-align: left;"><span>Video transcript</span></h2>
<p>
&gt;&gt;Alec Hansen, AVP Home Loan Manager.
<br><br>
Within the mortgage group of Bank&nbsp;of&nbsp;America, my role is Assistant Vice President Home Loan Manager.
<br><br>
I lead and help originate loans for the number one branch in Orange County.  I manage about 35 mortgage loan officers, and partner with a tremendous operations team to bring great results to the Orange County area and the customers of Bank&nbsp;of&nbsp;America.
<br><br>
I started as a receptionist, and I worked my way up to a production assistant for a top producer.  I learned a bunch of great skills, became a junior Loan Originator, a full-blown Mortgage Loan Officer, and now I&#39;m Assistant Vice President Home Loan Manager.
<br><br>
At Bank&nbsp;of&nbsp;America, the training opportunities are amazing.  It all starts with great local leadership in my opinion, but from there it goes deeper to tremendous web-based training programs and company initiatives that really drive home the basics to the field and help us serve our customers in the community.
<br><br>
Bank&nbsp;of&nbsp;America has always been an innovative leader when it comes to its mortgage banking unit.  It&#39;s a real exciting time to be here right now.  With our reputation and our strength and stability, we&#39;re in a unique position to help a lot of people and to revolutionize the industry for years to come.  
<br><br>
Our competitive product and pricing, right now, puts us in a place where we&#39;re going to be a financial leader for years to come.
<br><br>
As a front-line player for Bank&nbsp;of&nbsp;America in the mortgage division, I get the unique opportunity to be in both worlds.  I get to be in the field with top originators helping people that get their home financing situated.  At the same time, I get to be a part of the vision of the company &mdash; understand where the company is going as a financial leader.  And, having both those pieces makes my career all the more rewarding.
<br><br>
Bank&nbsp;of&nbsp;America is a corporation where opportunity is everywhere you look.  And unlike other competitors in our environment, its got a unique pay-for-performance model where you&#39;re compensated for what you do and how you do it.  
<br><br>
It&#39;s a tremendous place to build a career.  When I look around, it seems like opportunities are knocking everywhere.  I&#39;m just excited to be a part of it and make a home here.  
<br><br>
There&#39;s no better place for a Mortgage loan officer in the industry then at Bank&nbsp;of&nbsp;America.  With powerful brand recognition, innovative products, competitive pricing, it really positions loan officers to be successful and achieve their career goals.
</p>
<br>
<a href="<%= standart_href%>" title="Return to standard page with video" class="p" onfocus="this.className='p-over';" onblur="this.className='p';">Return to standard page with video</a>
</div>
<% End If %>