<%@ Page Title="Bank of America | Careers | Campus Recruiting | EMEA Graduate Profiles" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-EMEA-graduate-profiles.aspx.cs" Inherits="campus_EMEA_graduate_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

<div id="main-profiles">
                   <div id="article">
                   <h1>Meet Our People</h1>
  					 <p>Want the inside scoop on what it’s like to work with us? Below you can watch a few of our associates and analysts talk about what motivates them to reach higher and what excites them about working here. You’ll get an insider perspective on our approach to creating—and extending—the range of opportunities we offer our people.</p>

  
        <div class="featured-profile">
        <h2>Featured Analysts</h2>
        	
            <div class="mop-profile">
                <img src="images/campus/icon-mopHiraDiwan.jpg" width="40" height="40" alt="Hira Diwan" />
            <h2>Hira</h2>
            <p>Corporate &amp; Financial Institutions Debt Products Analyst</p>
            <p><a href="campus-meet-our-people-profile-Hira.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
                <img src="images/campus/icon-mopMelissaClarke.jpg" width="40" height="40" alt="Melissa Clarke" />
            <h2>Melissa </h2>
            <p>Corporate and Investment Banking Analyst Programme</p>
            <p><a href="campus-meet-our-people-profile-Melissa.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
              <img src="images/campus/icon-mopRomanSerper.jpg" width="40" height="40" alt="Roman Serper" />
            <h2>Roman</h2>
            <p>Technology Analyst Programme</p>
            <p><a href="campus-meet-our-people-profile-Roman.aspx">Read Profile</a></p>
            </div>
            
            <p class="learnlink"><a href="campus-EMEA-analyst-profiles.aspx">View all our analyst profiles</a></p>
        </div>
        
          <div class="featured-profile">
        <h2>Featured  Associates</h2>
        	
            <div class="mop-profile">
              <img src="images/campus/icon-mopIrinaDolgova.jpg" width="40" height="40" alt="Irina Dolgova" />
            <h2>Irina</h2>
            <p>Global Markets PhD Associate Programme</p>
            <p><a href="campus-meet-our-people-profile-Irina.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
                 <img src="images/campus/icon-mopPriyaSharma.jpg" width="40" height="40" alt="Priya Sharma" />
            <h2>Priya</h2>
            <p>Corporate and Investment Banking Associate Programme</p>
            <p><a href="campus-meet-our-people-profile-Priya.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
             <img src="images/campus/icon-mopRachnaRamachandran.jpg" width="40" height="40" alt="Rachna Ramachandran" />
            <h2>Rachna</h2>
            <p>Research Quant Analyst Programme</p>
            <p><a href="campus-meet-our-people-profile-Rachna.aspx">Read Profile</a></p>
            </div>
            
            <p class="learnlink"><a href="campus-EMEA-associate-profiles.aspx">View all our associates profiles</a></p>
        </div>
        
           <div class="featured-profile">
        <h2>Featured  Interns</h2>
        	
            <div class="mop-profile">
               <img src="images/campus/icon-mopDwayneGoode.jpg" width="40" height="40" alt="Dwayne Goode" />
            <h2>Dwayne</h2>
             <p>Enterprise Technology &amp; Delivery Analyst</p>
            <p><a href="campus-meet-our-people-profile-Dwayne.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
             <img src="images/campus/icon-mopJohn-William.jpg" width="40" height="40" alt="John-William" />
            <h2>John-William </h2>
            <p>Global Wealth and Investment Management Analyst</p>
            <p><a href="campus-meet-our-people-profile-John-William.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
              <img src="images/campus/icon-mopChristophHadrys.jpg" width="40" height="40" alt="Christoph Hadrys" />
            <h2>Christoph</h2>
             <p>Capital Markets Analyst</p>
            <p><a href="campus-meet-our-people-profile-Christoph.aspx">Read Profile</a></p>
            </div>
            
            <p class="learnlink"><a href="campus-EMEA-intern-profiles.aspx">View all our interns profiles</a></p>
        </div>
        
      
    <p class="back-top"><a href="#main-profiles"">Back to top</a></p>
  </div>
  
    <script src="Includes/_swfobject.js" type="text/javascript"></script>
            <script src="Includes/profile-control.js" type="text/javascript"></script>
  <div id="aside"> 
    
    		<div id="video-content">
    		<br />
             
            <% if (Request.QueryString["vts"]=="erin") {%>

             <div class="transcript-content">
             <p>I learned about my current position from a conference called NSHMBA and there I talked to a recruiter about the Global Consumer position that I currently have became very interested and pursued the position from there. What's important to me in my career is learning and growth and opportunity for advancement, Bank of America offers all of those things and I have really been looking forward to my future at Bank of America. Two things that stands out to me when I think of Global Consumer Business Bank is my exposure to executives and two is the focus on the customer.</p>

            <p><a href="campus-EMEA-graduate-profiles.aspx">View Erin's Video</a></p>
            </div>

            <%} else {%>
            
            <h2 class="hidden">Erin's Associate Testimonial Video</h2>

	<div id="erin" style="display: none;">

		<div id="erinflash">
	
			<a href="http://get.adobe.com/flashplayer/" title="This video requires Adobe Flash Player version 8. Please download latest version."><img src="Includes/pages/camp/video/thumbnails/erin_off.jpg" width="205" height="131" border="0" /></a>
	
		</div>
	
	</div>

	<img class="default-img" src="Includes/pages/camp/video/thumbnails/erin_off.jpg" width="205" height="131" style="display: block;" onMouseOver="this.src='Includes/pages/camp/video/thumbnails/erin_on.jpg'" onMouseOut="this.src='Includes/pages/camp/video/thumbnails/erin_off.jpg'" onClick="this.style.display='none'; document.getElementById('erin').style.display='block'; document.getElementById('erin-left-control').style.display='block'; document.getElementById('erin-right-control').style.display='block';" border="0">
	
	<table width="205" border="0" cellspacing="0" cellpadding="0" bgcolor="#D4001A">
	<tr>
		<td nowrap>

			<div align="left" style="padding: 2px 5px;" id="erin-left-control">

				<a href="#" title="Play Video" onClick="doPassVar('erinflash','play'); return false;"><img width="14" height="18" border="0" alt="Play Video" src="Includes/pages/buttons/01btn.gif" name="btn01" /></a>
				
				<a href="#" title="Pause Video" onClick="doPassVar('erinflash','pause'); return false;"><img width="13" height="18" border="0" alt="Pause Video" src="Includes/pages/buttons/02btn.gif" name="btn02" /></a>
				
				<a href="#" title="Stop Video" onClick="doPassVar('erinflash','stop'); return false;"><img width="17" height="18" border="0" alt="Stop Video" src="Includes/pages/buttons/03btn.gif" name="btn03" /></a>

			</div>

		</td>
		<td width="100%" height="22" align="center" nowrap><a href="campus-EMEA-graduate-profiles.aspx?vts=erin" class="btn1">Video transcript</a></td>
		<td nowrap>

			<div align="right" style="padding: 2px 5px;" id="erin-right-control">

				<a href="#" title="Mute Video" onClick="doPassVar('erinflash','mute'); return false;"><img width="16" height="18" border="0" alt="Mute Video" src="Includes/pages/buttons/05btn.gif" name="btn05" /></a>
				
				<a href="#" title="Close Captions" onClick="doPassVar('erinflash','ccoc'); return false;"><img width="21" height="18" border="0" alt="Close Captions" src="Includes/pages/buttons/06btn.gif" name="btn06" /></a>

			</div>

		</td>
	</tr>
	</table>

<%}%>

            <p>Erin</p>
            <p class="padbot">Global Consumer &amp; Small Business</p>
            
          <% if (Request.QueryString["vts"]=="guan") {%>

               <div class="transcript-content">
               <p>The culture at Bank of America is quite diverse depending upon which group you work the culture can be quite different. For example the current group I am working in is very academic because we hire a group of PhDs who do very complicated credit modeling. However, in my previous job because I was involved in a two year rotational program it was much more fast paced because we were on the trading floor and we were aiding the traders and measuring their risk.</p>

               <p><a href="campus-EMEA-graduate-profiles.aspx">View Guan's Video</a>
               
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
		<td width="100%" height="22" align="center" nowrap><a href="campus-EMEA-graduate-profiles.aspx?vts=guan" class="btn1">Video transcript</a></td>
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
              <li><a href="campus-Americas-meet-our-people.aspx">Americas Pacific profiles</a></li>
              <li><a href="campus-AsiaPac-meet-our-people.aspx">Asia Pacific profiles</a></li>
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

  
    swfobject.embedSWF("../includes/pages/college/erin.swf", "erinflash", "205", "131", "9.0.0", flashvars, params, attributes);
    swfobject.embedSWF("../includes/pages/college/guan.swf", "guanflash", "205", "131", "9.0.0", flashvars, params, attributes);
	</script>

<script src="Includes/_google.js" type="text/javascript"></script>
</asp:Content>

