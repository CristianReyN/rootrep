<%@ Page Title="Bank of America | Careers | Campus Recruiting | Americas Meet Our People" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-Americas-meet-our-people.aspx.cs" Inherits="campus_Americas_meet_our_people" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

<div id="main-profiles">
                   <div id="article">
                   <h1>Meet Our People</h1>
  					 <p>Want the inside scoop on what it’s like to work with us? Below you can watch a few of our associates and analysts talk about what motivates them to reach higher and what excites them about working here. You’ll get an insider perspective on our approach to creating—and extending—the range of opportunities we offer our people.</p>

  
        <div class="featured-profile">
        <h2>Featured Analysts</h2>
        	
            <div class="mop-profile">
                <img src="images/campus/icon-mopAlisaRoyal.jpg" width="40" height="40" alt="Bryan Cook" />
                <h2>Alissa</h2>
            <p>Corporate &amp; Financial Institutions Debt Products</p>
            <p><a href="campus-meet-our-people-profile-Alissa.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
                <img src="images/campus/icon-mopAshleyClarke.jpg" width="40" height="40" alt="Ashley Clarke" />
            <h2>Ashley</h2> 
            <p>Finance Management Associate Program</p>
           
            <p><a href="campus-meet-our-people-profile-Ashley.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
                 <img src="images/campus/icon-mopBhavinGhonda.jpg" width="40" height="40" alt="Bhavin Ghonda" />
            <h2>Bhavin</h2>
            <p>Technology Analyst Program</p>
            <p><a href="campus-meet-our-people-profile-Bhavin.aspx">Read Profile</a></p>
            </div>
            
            <p class="learnlink"><a href="campus-Americas-analyst-profiles.aspx">View all our analyst profiles</a></p>
        </div>
        
          <div class="featured-profile">
        <h2>Featured  Associates</h2>
        	
            <div class="mop-profile">
                <img src="images/campus/icon-mopBryanCook.jpg" width="40" height="40" alt="Bryan Cook" />
            <h2>Bryan</h2>
            <p>Global Research Associate Program</p>
            <p><a href="campus-meet-our-people-profile-Bryan.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
                 <img src="images/campus/icon-mopNisheetPatel.jpg" width="40" height="40" alt="Nisheet Patel" />
            <h2>Nisheet</h2>
            <p>Global Wealth &amp; Investment Management Associate Program</p>
            <p><a href="campus-meet-our-people-profile-Nisheet.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
            <img src="images/campus/icon-mopMattHinman.jpg" width="40" height="40" alt="Matt Hinman" />
             <h2>Matt</h2>
            <p>Technology MBA Program</p>
            <p><a href="campus-meet-our-people-profile-Matt.aspx">Read Profile</a></p>
            </div>
            
            <p class="learnlink"><a href="campus-Americas-associate-profiles.aspx">View all our associates profiles</a></p>
        </div>
        
           <div class="featured-profile">
        <h2>Featured  Interns</h2>
        	
            <div class="mop-profile">
                <img src="images/campus/icon-mopDevinFunk.jpg" width="40" height="40" alt="Devin Funk" />
            <h2>Devin</h2>
             <p>Enterprise Technology &amp; Delivery Leadership Development</p>
            <p><a href="campus-meet-our-people-profile-Devin.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
             <img src="images/campus/icon-mopJenniferAurbach.jpg" width="40" height="40" alt="Jennifer Aurbach" />
             <h2>Jennifer </h2>
            <p>Global Wealth &amp; Investment Management Analyst Program</p>
            <p><a href="campus-meet-our-people-profile-Jennifer.aspx">Read Profile</a></p>
            </div>
            
             <div class="mop-profile">
                 <img src="images/campus/icon-mopJohnCowell.jpg" width="40" height="40" alt="John Cowell" />
            <h2>John </h2>
            <p>Global Markets Operations/Middle Office Rotational Program</p>
            <p><a href="campus-meet-our-people-profile-John.aspx">Read Profile</a></p>
            </div>
            
            <p class="learnlink"><a href="campus-Americas-intern-profiles.aspx">View all our interns profiles</a></p>
        </div>
        
      
    <p class="back-top"><a href="#main-profiles"">Back to top</a></p>
  </div>
  
            <script src="Includes/_swfobject.js" type="text/javascript"></script>
            <script src="Includes/profile-control.js" type="text/javascript"></script>
  <div id="aside"> 
    
    		<div id="video-content">
              <br />
              
              <% if (Request.QueryString["vts"]=="chris") {%>

               <div class="transcript-content">
               <p>I was attracted to come to work for Bank of America because I had two former classmates who joined the same group within the bank that I currently work for. They had a great experience and came back to campus and did a really great job of selling it to me and talking about the opportunities within a large company and how they were encouraged to pursue their various interests. The diversity of people they had gotten to work with really sounded like an appealing place to work for a young professional and I was hooked. One of the things that helped me prepare for my interview process with Bank of America is all the involvement I had with professional organizations during my graduate school program. Organizations specific to the discipline that you are interested in can be very helpful in providing resources and exposing you to professionals and some of the challenges they face in their careers.</p>

               <p><a href="campus-Americas-analyst-profiles.aspx">View Chris's Video</a>
               
               </div>

            <%} else {%>
            <h2 class="hidden">Chris's Associate Testimonial Video</h2>

	<div id="chris" style="display: none;">

		<div id="chrisflash">
	
			<a href="http://get.adobe.com/flashplayer/" title="This video requires Adobe Flash Player version 8. Please download latest version."><img src="Includes/pages/camp/video/thumbnails/chris_off.jpg" width="205" height="131" border="0" /></a>
	
		</div>
	
	</div>

	<img class="default-img" src="Includes/pages/camp/video/thumbnails/chris_off.jpg" width="205" height="131" style="display: block;" onMouseOver="this.src='Includes/pages/camp/video/thumbnails/chris_on.jpg'" onMouseOut="this.src='Includes/pages/camp/video/thumbnails/chris_off.jpg'" onClick="this.style.display='none'; document.getElementById('chris').style.display='block'; document.getElementById('chris-left-control').style.display='block'; document.getElementById('chris-right-control').style.display='block';" border="0" />

	<table width="205" border="0" cellspacing="0" cellpadding="0" bgcolor="#D4001A">
	<tr>
		<td nowrap>

			<div align="left" style="padding: 2px 5px;" id="chris-left-control">

				<a href="#" title="Play Video" onClick="doPassVar('chrisflash','play'); return false;"><img width="14" height="18" border="0" alt="Play Video" src="Includes/pages/buttons/01btn.gif" name="btn01" /></a>
				
				<a href="#" title="Pause Video" onClick="doPassVar('chrisflash','pause'); return false;"><img width="13" height="18" border="0" alt="Pause Video" src="Includes/pages/buttons/02btn.gif" name="btn02" /></a>
				
				<a href="#" title="Stop Video" onClick="doPassVar('chrisflash','stop'); return false;"><img width="17" height="18" border="0" alt="Stop Video" src="Includes/pages/buttons/03btn.gif" name="btn03" /></a>

			</div>

		</td>
		<td width="100%" height="22" align="center" nowrap><a href="campus-Americas-meet-our-people.aspx?vts=chris" class="btn1">Video transcript</a></td>
		<td nowrap>

			<div align="right" style="padding: 2px 5px;" id="chris-right-control">

				<a href="#" title="Mute Video" onClick="doPassVar('chrisflash','mute'); return false;"><img width="16" height="18" border="0" alt="Mute Video" src="Includes/pages/buttons/05btn.gif" name="btn05" /></a>
				
				<a href="#" title="Close Captions" onClick="doPassVar('chrisflash','ccoc'); return false;"><img width="21" height="18" border="0" alt="Close Captions" src="Includes/pages/buttons/06btn.gif" name="btn06" /></a>

			</div>

		</td>
	</tr>
	</table>
	
	<%}%> 

            <p>Chris</p>
            <p class="padbot">Corporate Workplace Change Consultant</p>
             
             
             <% if (Request.QueryString["vts"]=="tony") {%>

               <div class="transcript-content">
               <p>Though I have only been with the bank for five months now I have already been able to work on a Six Sigma project with several senior level managers and through that experience I networked with these individuals and learned from them how they do their jobs. I learned about the corporate treasury associate program through an on-campus recruiting event where several bank associates came down and spoke with students that were interested. After that we had a round of on-campus interviews which were followed by the final round which were up in Charlotte. We were actually able to visit the bank's headquarters and meet with the senior member executives as well as people we would be working with from day to day.</p>

               <p><a href="campus-Americas-associate-profiles.aspx">View Tony's Video</a>
               
               </div>

            <%} else {%>
               
           <h2 class="hidden">Tony's Associate Testimonial Video</h2>
	
	<div id="tony" style="display: none;">

		<div id="tonyflash">
	
			<a href="http://get.adobe.com/flashplayer/" title="This video requires Adobe Flash Player version 8. Please download latest version."><img src="../Includes/pages/camp/video/thumbnails/tony_off.jpg" width="205" height="131" border="0" /></a>
	
		</div>
	
	</div>

	<img class="default-img" src="Includes/pages/camp/video/thumbnails/tony_off.jpg" width="205" height="131" style="display: block;" onMouseOver="this.src='Includes/pages/camp/video/thumbnails/tony_on.jpg'" onMouseOut="this.src='Includes/pages/camp/video/thumbnails/tony_off.jpg'" onClick="this.style.display='none'; document.getElementById('tony').style.display='block'; document.getElementById('tony-left-control').style.display='block'; document.getElementById('tony-right-control').style.display='block';" border="0" />

	<table width="205" border="0" cellspacing="0" cellpadding="0" bgcolor="#D4001A">
	<tr>
		<td nowrap>

			<div align="left" style="padding: 2px 5px;" id="tony-left-control">

				<a href="#" title="Play Video" onClick="doPassVar('tonyflash','play'); return false;"><img width="14" height="18" border="0" alt="Play Video" src="Includes/pages/buttons/01btn.gif" name="btn01" /></a>
				
				<a href="#" title="Pause Video" onClick="doPassVar('tonyflash','pause'); return false;"><img width="13" height="18" border="0" alt="Pause Video" src="Includes/pages/buttons/02btn.gif" name="btn02" /></a>
				
				<a href="#" title="Stop Video" onClick="doPassVar('tonyflash','stop'); return false;"><img width="17" height="18" border="0" alt="Stop Video" src="Includes/pages/buttons/03btn.gif" name="btn03" /></a>

			</div>

		</td>
		<td width="100%" height="22" align="center" nowrap><a href="campus-Americas-meet-our-people.aspx?vts=tony" class="btn1">Video transcript</a></td>
		<td nowrap>

			<div align="right" style="padding: 2px 5px;" id="tony-right-control">

				<a href="#" title="Mute Video" onClick="doPassVar('tonyflash','mute'); return false;"><img width="16" height="18" border="0" alt="Mute Video" src="Includes/pages/buttons/05btn.gif" name="btn05" /></a>
				
				<a href="#" title="Close Captions" onClick="doPassVar('tonyflash','ccoc'); return false;"><img width="21" height="18" border="0" alt="Close Captions" src="Includes/pages/buttons/06btn.gif" name="btn06" /></a>

			</div>

		</td>
	</tr>
	</table>
	
	<%}%> 

            <p>Tony</p>
            <p class="padbot">Corporate Treasury Associate</p>
            </div>
            
            <h3>Related Links:</h3>
            <ul>
              <li><a href="campus-AsiaPac-meet-our-people.aspx">Asia Pacific profiles</a></li>
              <li><a href="campus-EMEA-graduate-profiles.aspx">EMEA profiles</a></li>
            </ul>
  </div>
  <div id="red-footer"> 
    <p>Set opportunity in motion.</p>
  </div>
</div>

<script type="text/javascript">

	var flashvars = {};
	var params = {menu: "false", wmode: "opaque"};
	var attributes = {};

	swfobject.embedSWF("includes/pages/college/tony.swf", "tonyflash", "205", "131", "9.0.0", flashvars, params, attributes);
	swfobject.embedSWF("includes/pages/college/chris.swf", "chrisflash", "205", "131", "9.0.0", flashvars, params, attributes);
	

	</script>

<script src="Includes/_google.js" type="text/javascript"></script>
</asp:Content>

