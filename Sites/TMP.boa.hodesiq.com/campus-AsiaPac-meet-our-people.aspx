<%@ Page Title="Bank of America | Careers | Campus Recruiting | Asia Pacific Meet Our People" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-AsiaPac-meet-our-people.aspx.cs" Inherits="campus_AsiaPac_meet_our_people" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

 <div id="main-profiles">
                   <div id="article">
                   <h1>Meet Our People</h1>
  					 <p>Want the inside scoop on what it’s like to work with us? Below you can watch a few of our associates and analysts talk about what motivates them to reach higher and what excites them about working here. You’ll get an insider perspective on our approach to creating—and extending—the range of opportunities we offer our people.</p>

  
        <div class="featured-profile">
        <h2>Featured Analysts</h2>
        	
            <div class="mop-profile">
                <img src="images/campus/icon-mopLipJin.jpg" width="40" height="40" alt="Lip Jin " />
            <h3>Lip Jin </h3>
            <p>Global Markets Analyst Program</p>
            <p><a href="campus-meet-our-people-profile-Lip-Jin.aspx" title="Read Lip Jin's profile">Read <span class="hiddencontent">Lip Jin's</span> Profile</a></p>
            </div>
            
             <div class="mop-profile">
                 <img src="images/campus/icon-mopLouise.jpg" width="40" height="40" alt="Louise" />
            <h3>Louise</h3>
            <p>Chief Financial Office Analyst Program</p>
            <p><a href="campus-meet-our-people-profile-Louise.aspx" title="Read Louise's profile">Read <span class="hiddencontent">Louise's</span> Profile</a></p>
            </div>
            
             <div class="mop-profile">
             <img src="images/campus/icon-mopScott.jpg" width="40" height="40" alt="Scott" />
            <h3>Scott </h3>
            <p>Operations Analyst Program</p>
            <p><a href="campus-meet-our-people-profile-Scott.aspx" title="Read Scott's profile">Read <span class="hiddencontent">Scott's</span> Profile</a></p>
            </div>
            
            <p class="learnlink"><a href="campus-AsiaPac-analyst-profiles.aspx">View all our analyst profiles</a></p>
        </div>
        
          <div class="featured-profile">
        <h2>Featured  Associates</h2>
        	
            <div class="mop-profile">
              <img src="images/campus/icon-mopDong.jpg" width="40" height="40" alt="Dong" />
            <h3>Dong</h3>
            <p>Corporate and Investment Banking Associate Program</p>
            <p><a href="campus-meet-our-people-profile-Dong.aspx" title="Read Dong's profile">Read <span class="hiddencontent">Dong's</span> Profile</a></p>
            </div>
         
            <p class="learnlink"><a href="campus-AsiaPac-associate-profiles.aspx">View all our associates profiles</a></p>
        </div>
        
           <div class="featured-profile">
        <h2>Featured  Interns</h2>
        	
            <div class="mop-profile">
             <img src="images/campus/icon-mopDong.jpg" width="40" height="40" alt="Dong" />
            <h3>Dong</h3>
            <p>Corporate and Investment Banking Associate Program</p>
            <p><a href="campus-meet-our-people-profile-Dong.aspx" title="Read Dong's profile">Read <span class="hiddencontent">Dong's</span> Profile</a></p>
            </div>
            
             <div class="mop-profile">
             <img src="images/campus/icon-mopGabrielNG.jpg" width="40" height="40" alt="Gabriel" />
            <h3>Gabriel</h3>
            <p>Corporate and Investment Banking Analyst Program</p>
            <p><a href="campus-meet-our-people-profile-Gabriel.aspx" title="Read Gabriel's profile">Read <span class="hiddencontent">Gabriel's</span> Profile</a></p>
            </div>
            
             <div class="mop-profile">
              <img src="images/campus/icon-mopStanley.jpg" width="40" height="40" alt="Stanley" />
            <h3>Stanley</h3>
            <p>Technology Analyst Program</p>
            <p><a href="campus-profiles-Internship-Stanley.aspx"title="Read Stanley's profile">Read <span class="hiddencontent">Stanley's</span> Profile</a></p>
            </div>
            
            <p class="learnlink"><a href="campus-AsiaPac-intern-profiles.aspx">View all our intern profiles</a></p>
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

               <p><a href="campus-AsiaPac-meet-our-people.aspx">View Guan's Video</a>
               
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
		<td width="100%" height="22" align="center" nowrap><a href="campus-AsiaPac-meet-our-people.aspx?vts=guan" class="btn1">Video transcript</a></td>
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
              <li><a href="campus-Americas-meet-our-people.aspx">Americas profiles</a></li>
              <li><a href="campus-EMEA-graduate-profiles.aspx">EMEA profiles</a></li>
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

