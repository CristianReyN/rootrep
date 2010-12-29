<%@ Page Title="Bank of America | Careers | Campus Recruiting | Graduate Profiles | EMEA Intern Profiles" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-EMEA-intern-profiles.aspx.cs" Inherits="campus_EMEA_intern_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

<div id="main-profiles"> 
 
  <div id="article">
  <h1>Our Interns</h1>
   <p>An internship doesn’t have to mean starting at the bottom. If you’re ready to learn about the financial services industry from the perspective of the world’s leading financial institution, this is a great way to start. Through an internship role with us, you’ll find yourself tackling real business challenges that make a real impact on our company. You’ll grow your skills and build your network in a dynamic environment designed to support your long-term career objectives.</p>

  
         <div class="profile-article">
            <img src="images/campus/icon-Christoph.jpg" width="50" height="80" alt="Christoph" />
            <h2>Christoph</h2>
             <p class="profile-depart-spec">Capital Markets Analyst</p>
            <p>I have responsibility for distribution strategy/pricing and execution across leveraged and investment grade syndicated loans.</p>
            <p><a href="campus-profiles-Internship-Christoph.aspx" title="Read Christoph's profile">Read <span class="hiddencontent">Christoph's</span> Profile</a></p>
        </div>

        <div class="profile-article">
            <img src="images/campus/icon-Gemma-1.jpg" width="50" height="80" alt="Gemma" />
            <h2>Gemma</h2>
             <p class="profile-depart-spec">Global Markets Technology<br />Analyst Programme</p>
            <p>My principle responsibilities are the development and support of internal applications for the middle office in EMEA, the U.S. and Asia.</p>
            <p><a href="campus-meet-our-people-profile-Gemma.aspx" title="Read Gemma's profile">Read <span class="hiddencontent">Gemma's</span> Profile</a></p>
        </div>

       <div class="profile-article">
            <img src="images/campus/icon-John-William.jpg" width="50" height="80" alt="John-William" />
            <h2>John-William </h2>
            <p class="profile-depart-jw">Global Wealth and Investment Management Analyst</p>
            <p>I am currently in the Global Wealth and Investment Management (GWIM) Graduate Programme.</p>
            <p><a href="campus-profiles-Internship-John-William.aspx" title="Read John-William's profile">Read <span class="hiddencontent">John-William's</span> Profile</a></p>
        </div>
        
         <div class="profile-article">
            <img src="images/campus/icon-Ken.jpg" width="50" height="80" alt="Ken" />
            <h2>Ken</h2>
            <p class="profile-depart">Sales and Trading Analyst Programme</p>
            <p>I work on the Equity Central Risk Desk and look after the index rebalancing product.</p>
            <p><a href="campus-profiles-Internship-Ken.aspx" title="Read Ken's profile">Read <span class="hiddencontent">Ken's</span> Profile</a></p>
        </div>
      
           <div class="profile-article">
            <img src="images/campus/icon-Rachna.jpg" width="50" height="80" alt="Rachna" />
            <h2>Rachna</h2>
            <p class="profile-depart">Research Quant Analyst Programme</p>
            <p>I currently work in Credit Derivatives Strategy, which is a global team covering the European and North American credit derivatives markets. </p>
            <p><a href="campus-profiles-Internship-Rachna.aspx" title="Read Rachna's profile">Read <span class="hiddencontent">Rachna's</span> Profile</a></p>
        </div>
        
         <div class="profile-article">
            <img src="images/campus/icon-Richard-1.jpg" width="50" height="80" alt="Richard" />
            <h2>Richard</h2>
            <p class="profile-depart">Investment Banking Associate Programme</p>
            <p>I am an Associate on the Corporate Finance team in Investment Banking.</p>
            <p><a href="campus-meet-our-people-profile-Richard.aspx" title="Read Richard's profile">Read <span class="hiddencontent">Richard's</span> Profile</a></p>
        </div>
        
        <div class="profile-article">
            <img src="images/campus/icon-Ross.jpg" width="50" height="80" alt="Ross" />
            <h2>Ross</h2>
            <p class="profile-depart">Treasury Management Analyst Programme</p>
            <p>As a sales analyst, I support two Treasury Sales Officers who each manage their own portfolio of clients.</p>
            <p><a href="campus-profiles-Internship-Ross.aspx" title="Read Ross's profile">Read <span class="hiddencontent">Ross's</span> Profile</a></p>
        </div>
    
    <p class="back-top"><a href="#profiles">Back to top</a></p>
  </div>
  <script src="Includes/_swfobject.js" type="text/javascript"></script>
            <script src="Includes/profile-control.js" type="text/javascript"></script>
  <div id="aside"> 
            
            <div id="video-content">
            <br />
           <% if (Request.QueryString["vts"]=="nathan") {%>

               <div class="transcript-content">
               <p>My current workplace environment is fantastic. I work on a world class team with bright people who love what they that are doing, they are passionate and best of all that are a lot of fun to work with. The team environment is truly something we exemplify here in the company I see that everyday when I come to work. Two most important aspects of working for a company, one that I have opportunities to grow and develop and Bank of America as a changing growing company offers that to me as an associate and also being a father I want a company that allows me to have good work/life balance. So I can come to work and I can work hard but I am also strongly encouraged to take the time that I need to do what I need to do in my personal life outside of the work place. I have learned that you have to be proactive in all that you do, think ahead. This is the type of environment where we are encouraged to do this we are not penalized for being proactive or even making mistakes. I have also learned that you need to reach out to your teams and leverage everyone on your team it's a great team environment. So reach out don't hesitate to ask other people what they are doing they will be more than happy to help you succeed.</p>

               <p><a href="campus-EMEA-intern-profiles.aspx">View Nathan's Video</a>
               
               </div>

            <%} else {%>
            <h2 class="hidden">Nathan's Associate Testimonial Video</h2>

	<div id="nathan" style="display: none;">

		<div id="nathanflash">
	
			<a href="http://get.adobe.com/flashplayer/" title="This video requires Adobe Flash Player version 8. Please download latest version."><img src="Includes/pages/camp/video/thumbnails/nathan_off.jpg" width="205" height="131" border="0" /></a>
	
		</div>
	
	</div>

	<img class="default-img" src="Includes/pages/camp/video/thumbnails/nathan_off.jpg" width="205" height="131" style="display: block;" onMouseOver="this.src='Includes/pages/camp/video/thumbnails/nathan_on.jpg'" onMouseOut="this.src='Includes/pages/camp/video/thumbnails/nathan_off.jpg'" onClick="this.style.display='none'; document.getElementById('nathan').style.display='block'; document.getElementById('nathan-left-control').style.display='block'; document.getElementById('nathan-right-control').style.display='block';" border="0" />

	<table width="205" border="0" cellspacing="0" cellpadding="0" bgcolor="#D4001A">
	<tr>
		<td nowrap>

			<div align="left" style="padding: 2px 5px;" id="nathan-left-control">

				<a href="#" title="Play Video" onClick="doPassVar('nathanflash','play'); return false;"><img width="14" height="18" border="0" alt="Play Video" src="Includes/pages/buttons/01btn.gif" name="btn01" /></a>
				
				<a href="#" title="Pause Video" onClick="doPassVar('nathanflash','pause'); return false;"><img width="13" height="18" border="0" alt="Pause Video" src="Includes/pages/buttons/02btn.gif" name="btn02" /></a>
				
				<a href="#" title="Stop Video" onClick="doPassVar('nathanflash','stop'); return false;"><img width="17" height="18" border="0" alt="Stop Video" src="Includes/pages/buttons/03btn.gif" name="btn03" /></a>

			</div>

		</td>
		<td width="100%" height="22" align="center" nowrap><a href="campus-EMEA-intern-profiles.aspx?vts=nathan" class="btn1">Video transcript</a></td>
		<td nowrap>

			<div align="right" style="padding: 2px 5px;" id="nathan-right-control">

				<a href="#" title="Mute Video" onClick="doPassVar('nathanflash','mute'); return false;"><img width="16" height="18" border="0" alt="Mute Video" src="Includes/pages/buttons/05btn.gif" name="btn05" /></a>
				
				<a href="#" title="Close Captions" onClick="doPassVar('nathanflash','ccoc'); return false;"><img width="21" height="18" border="0" alt="Close Captions" src="Includes/pages/buttons/06btn.gif" name="btn06" /></a>

			</div>

		</td>
	</tr>
	</table>

     <%}%> 
            
            <p>Nathan</p>
            <p class="padbot">Global Human Resources Consultant</p>
            
            
             <% if (Request.QueryString["vts"]=="guan") {%>

               <div class="transcript-content">
               <p>The culture at Bank of America is quite diverse depending upon which group you work the culture can be quite different. For example the current group I am working in is very academic because we hire a group of PhDs who do very complicated credit modeling. However, in my previous job because I was involved in a two year rotational program it was much more fast paced because we were on the trading floor and we were aiding the traders and measuring their risk.</p>

               <p><a href="campus-EMEA-intern-profiles.aspx">View Guan's Video</a>
               
               </div>

            <%} else {%>
            <h2 class="hidden">Guan's Associate Testimonial Video</h2>

	<div id="guan" style="display: none;">

		<div id="guanflash">
	
			<a href="http://get.adobe.com/flashplayer/" title="This video requires Adobe Flash Player version 8. Please download latest version."><img src="Includes/pages/camp/video/thumbnails/guan_off.jpg" width="205" height="131" border="0" /></a>
	
		</div>
	
	</div>

	<img class="default-img" src="Includes/pages/camp/video/thumbnails/guan_off.jpg" width="205" height="131" style="display: block;" onMouseOver="this.src='Includes/pages/camp/video/thumbnails/guan_on.jpg'" onMouseOut="this.src='Includes/pages/camp/video/thumbnails/guan_off.jpg'" onClick="this.style.display='none'; document.getElementById('guan').style.display='block'; document.getElementById('guan-left-control').style.display='block'; document.getElementById('guan-right-control').style.display='block';" border="0" />

	<table width="205" border="0" cellspacing="0" cellpadding="0" bgcolor="#D4001A">
	<tr>
		<td nowrap>

			<div align="left" style="padding: 2px 5px;" id="guan-left-control">

				<a href="#" title="Play Video" onClick="doPassVar('guanflash','play'); return false;"><img width="14" height="18" border="0" alt="Play Video" src="Includes/pages/buttons/01btn.gif" name="btn01" /></a>
				
				<a href="#" title="Pause Video" onClick="doPassVar('guanflash','pause'); return false;"><img width="13" height="18" border="0" alt="Pause Video" src="Includes/pages/buttons/02btn.gif" name="btn02" /></a>
				
				<a href="#" title="Stop Video" onClick="doPassVar('guanflash','stop'); return false;"><img width="17" height="18" border="0" alt="Stop Video" src="Includes/pages/buttons/03btn.gif" name="btn03" /></a>

			</div>

		</td>
		<td width="100%" height="22" align="center" nowrap><a href="campus-EMEA-intern-profiles.aspx?vts=guan" class="btn1">Video transcript</a></td>
		<td nowrap>

			<div align="right" style="padding: 2px 5px;" id="guan-right-control">

				<a href="#" title="Mute Video" onClick="doPassVar('guanflash','mute'); return false;"><img width="16" height="18" border="0" alt="Mute Video" src="Includes/pages/buttons/05btn.gif" name="btn05" /></a>
				
				<a href="#" title="Close Captions" onClick="doPassVar('guanflash','ccoc'); return false;"><img width="21" height="18" border="0" alt="Close Captions" src="Includes/pages/buttons/06btn.gif" name="btn06" /></a>

			</div>

		</td>
	</tr>
	</table>
 <%}%> 

            <p>Guan</p>
            <p class="padbot">Quantitative Management Associate</p>
            </div>
            
            <h2>Related Links:</h2>
        <ul>
        <li><a href="campus-Americas-intern-profiles.aspx">Americas intern profiles</a></li>
          <li><a href="campus-AsiaPac-intern-profiles.aspx">Asia Pacific intern profiles</a></li>
          <li><a href="campus-EMEA-analyst-profiles.aspx">Analyst profiles</a></li>
          <li><a href="campus-EMEA-associate-profiles.aspx">Associate profiles</a></li>
        </ul>
    
  </div>
  <div id="red-footer"> 
    <p>Set opportunity in motion.</p>
  </div>
</div>

<script type="text/javascript">

    var flashvars = {};
    var params = { menu: "false", wmode: "opaque" };
    var attributes = {};


    swfobject.embedSWF("includes/pages/college/guan.swf", "guanflash", "205", "131", "9.0.0", flashvars, params, attributes);
    swfobject.embedSWF("includes/pages/college/nathan.swf", "nathanflash", "205", "131", "9.0.0", flashvars, params, attributes);

	</script>

<script src="Includes/_google.js" type="text/javascript"></script>
</asp:Content>

