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
                <img src="images/campus/icon-mopLipJinLee.jpg" width="40" height="40" alt="Lip Jin Lee" />
            <h2>Lip Jin </h2>
            <p>Global Markets Analyst Program</p>
            <p><a href="campus-meet-our-people-profile-Lip-Jin.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
                 <img src="images/campus/icon-mopLouiseJiang.jpg" width="40" height="40" alt="Louise Jiang" />
            <h2>Louise</h2>
            <p>Chief Financial Office Analyst Program</p>
            <p><a href="campus-meet-our-people-profile-Louise.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
             <img src="images/campus/icon-mopScottChui.jpg" width="40" height="40" alt="Scott Chui" />
            <h2>Scott </h2>
            <p>Operations Analyst Program</p>
            <p><a href="campus-meet-our-people-profile-Scott.aspx">Read Profile</a></p>
            </div>
            
            <p class="learnlink"><a href="campus-AsiaPac-analyst-profiles.aspx">View all our analyst profiles</a></p>
        </div>
        
          <div class="featured-profile">
        <h2>Featured  Associates</h2>
        	
            <div class="mop-profile">
              <img src="images/campus/icon-mopDongLi.jpg" width="40" height="40" alt="Dong Li" />
            <h2>Dong</h2>
            <p>Corporate and Investment Banking Associate Program</p>
            <p><a href="campus-meet-our-people-profile-Dong.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
              <img src="images/campus/icon-mopRachnaRamachandran.jpg" width="40" height="40" alt="Rachna Ramachandran" />
            <h2>Rachna</h2>
            <p>Research Quant Analyst Programme</p>
            <p><a href="campus-meet-our-people-profile-Rachna.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
           <img src="images/campus/icon-mopPriyaSharma.jpg" width="40" height="40" alt="Priya Sharma" />
            <h2>Priya</h2>
            <p>Corporate and Investment Banking Associate Programme</p>
            <p><a href="campus-meet-our-people-profile-Priya.aspx">Read Profile</a></p>
            </div>
            
            <p class="learnlink"><a href="campus-AsiaPac-associate-profiles.aspx">View all our associates profiles</a></p>
        </div>
        
           <div class="featured-profile">
        <h2>Featured  Interns</h2>
        	
            <div class="mop-profile">
             <img src="images/campus/icon-mopDongLi.jpg" width="40" height="40" alt="Dong Li" />
            <h2>Dong</h2>
            <p>Corporate and Investment Banking Associate Program</p>
            <p><a href="campus-meet-our-people-profile-Dong.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
             <img src="images/campus/icon-mopGabrielNG.jpg" width="40" height="40" alt="Gabriel NG" />
            <h2>Gabriel</h2>
            <p>Corporate and Investment Banking Analyst Program</p>
            <p><a href="campus-meet-our-people-profile-Gabriel.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
              <img src="images/campus/icon-mopKenChung.jpg" width="40" height="40" alt="Ken Chung" />
            <h2>Ken</h2>
            <p>Sales and Trading Analyst Programme</p>
            <p><a href="campus-meet-our-people-profile-Ken.aspx">Read Profile</a></p>
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
            <% if (Request.QueryString["vts"]=="nathan") {%>

               <div class="transcript-content">
               <p>My current workplace environment is fantastic. I work on a world class team with bright people who love what they that are doing, they are passionate and best of all that are a lot of fun to work with. The team environment is truly something we exemplify here in the company I see that everyday when I come to work. Two most important aspects of working for a company, one that I have opportunities to grow and develop and Bank of America as a changing growing company offers that to me as an associate and also being a father I want a company that allows me to have good work/life balance. So I can come to work and I can work hard but I am also strongly encouraged to take the time that I need to do what I need to do in my personal life outside of the work place. I have learned that you have to be proactive in all that you do, think ahead. This is the type of environment where we are encouraged to do this we are not penalized for being proactive or even making mistakes. I have also learned that you need to reach out to your teams and leverage everyone on your team it's a great team environment. So reach out don't hesitate to ask other people what they are doing they will be more than happy to help you succeed.</p>

               <p><a href="campus-AsiaPac-meet-our-people.aspx">View Nathan's Video</a>
               
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
		<td width="100%" height="22" align="center" nowrap><a href="campus-AsiaPac-meet-our-people.aspx?vts=nathan" class="btn1">Video transcript</a></td>
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
            
            <h3>Related Links:</h3>
            <ul>
              <li><a href="campus-Americas-meet-our-people.aspx">Americas Pacific profiles</a></li>
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

