<%@ Page Title="Bank of America | Careers | Campus Recruiting | Meet Our People | Americas Intern Profiles" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-Americas-intern-profiles.aspx.cs" Inherits="campus_Americas_intern_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

<div id="main-profiles"> 
 
  <div id="article">
  <h1>Our Interns</h1>
   <p>An internship doesn’t have to mean starting at the bottom. If you’re ready to learn about the financial services industry from the perspective of the world’s leading financial institution, this is a great way to start. Through an internship role with us, you’ll find yourself tackling real business challenges that make a real impact on our company. You’ll grow your skills and build your network in a dynamic environment designed to support your long-term career objectives.</p>
<p class="learnlink"><a href="campus-Americas-internships.aspx">Learn more</a></p>

         <div class="profile-article">
            <img src="images/campus/icon-AlisaRoyal.jpg" width="50" height="80" alt="Alisa Royal" />
            <h2>Alissa</h2>
            <p class="profile-depart">Corporate &amp; Financial Institutions Debt Products</p>
            <p>I am an Analyst in the Power &amp; Utilities industry sector of Corporate Debt Products. </p>
            <p><a href="campus-profiles-Internship-Alissa.aspx">Read Profile</a></p>
        </div>
        
         <div class="profile-article">
            <img src="images/campus/icon-BhavinGhonda.jpg" width="50" height="80" alt="Bhavin Ghonda" />
            <h2>Bhavin</h2>
            <p class="profile-depart">Technology Analyst Program</p>
            <p>I am part of the Basel II Data Quality team at Bank of America.</p>
            <p><a href="campus-profiles-Internship-Bhavin.aspx">Read Profile</a></p>
        </div>
        
         <div class="profile-article">
            <img src="images/campus/icon-DevinFunk.jpg" width="50" height="80" alt="Devin Funk" />
            <h2>Devin</h2>
             <p class="profile-depart">Enterprise Technology &amp; Delivery Leadership Development</p>
            <p>I currently work on the Data Center Strategy team.</p>
            <p><a href="campus-profiles-Internship-Devin.aspx">Read Profile</a></p>
        </div>
       
         <div class="profile-article">
            <img src="images/campus/icon-JenniferAurbach.jpg" width="50" height="80" alt="Jennifer Aurbach" />
            <h2>Jennifer </h2>
            <p class="profile-depart">Global Wealth &amp; Investment Management Analyst Program</p>
            <p>I currently sit on the Listed Options Desk.</p>
            <p><a href="campus-profiles-Internship-Jennifer.aspx">Read Profile</a></p>
        </div>
         
         <div class="profile-article">
            <img src="images/campus/icon-JohnCowell.jpg" width="50" height="80" alt="John Cowell" />
            <h2>John </h2>
            <p class="profile-depart">Global Markets Operations/Middle Office Rotational Program</p>
            <p>Currently I am working to build a new team to provide valuations to our institutional clients.</p>
            <p><a href="campus-profiles-Internship-John.aspx">Read Profile</a></p>
        </div>
       
        <div class="profile-article">
            <img src="images/campus/icon-MattHinman.jpg" width="50" height="80" alt="Matt Hinman" />
            <h2>Matt</h2>
            <p class="profile-depart">Technology MBA Program</p>
            <p>Currently, I work for Vulnerability Management in the Enterprise Technology &amp; Delivery organization. </p>
            <p><a href="campus-profiles-Internship-Matt.aspx">Read Profile</a></p>
        </div>
        
        
          <div class="profile-article">
            <img src="images/campus/icon-MichaelSvitanik.jpg" width="50" height="80" alt="Michael Svitanik" />
            <h2>Michael </h2>
            <p class="profile-depart">Infrastructure Design &amp; Build Program</p>
            <p>My current role is in MQ Support under Mainframe Design and Build.</p>
            <p><a href="campus-profiles-Internship-Michael.aspx">Read Profile</a></p>
        </div>
      
         <div class="profile-article">
            <img src="images/campus/icon-PepeLopez-Gallo.jpg" width="50" height="80" alt="Pepe Lopez-Gallo" />
            <h2>Pepe</h2>
            <p class="profile-depart">Corporate and Investment Banking Associate Program</p>
            <p>I work as an associate in the Healthcare Investment Banking Group in New York, and my responsibilities include financial and market analyses. </p>
            <p><a href="campus-profiles-Internship-Pepe.aspx">Read Profile</a></p>
        </div>
       
       <div class="profile-article">
            <img src="images/campus/icon-TylerBak.jpg" width="50" height="80" alt="Tyler Bak" />
            <h2>Tyler</h2>
            <p class="profile-depart">Global Capital Markets Analyst Program</p>
            <p>I am an associate in the Equity Capital Markets group where I focus on the origination effort in the Healthcare and Transportation spaces.</p>
            <p><a href="campus-profiles-Internship-Tyler.aspx">Read Profile</a></p>
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

               <p><a href="campus-Americas-intern-profiles.aspx">View Nathan's Video</a>
               
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
		<td width="100%" height="22" align="center" nowrap><a href="campus-Americas-intern-profiles.aspx?vts=nathan" class="btn1">Video transcript</a></td>
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

               <p><a href="campus-Americas-intern-profiles.aspx">View Guan's Video</a>
               
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
		<td width="100%" height="22" align="center" nowrap><a href="campus-Americas-intern-profiles.aspx?vts=guan" class="btn1">Video transcript</a></td>
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
            
             <h3>Related Links:</h3>
        <ul>
          <li><a href="campus-AsiaPac-intern-profiles.aspx">Asia Pacific internship profiles</a></li>
          <li><a href="campus-EMEA-intern-profiles.aspx">EMEA internship profiles</a></li>
          <li><a href="campus-Americas-analyst-profiles.aspx">Analyst profiles</a></li>
          <li><a href="campus-Americas-associate-profiles.aspx">Associate profiles</a></li>
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

