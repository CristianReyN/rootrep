<%@ Page Title="Bank of America | Careers | Campus Recruiting | Meet Our People | Asia Pacific Analysts Profiles" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-AsiaPac-analyst-profiles.aspx.cs" Inherits="campus_AsiaPac_analyst_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

 <div id="main-profiles"> 
 
  <div id="article">
  <h1>Our Analysts</h1>
  <p>As an analyst, you’ll learn from the best and brightest minds in the
industry. You’ll participate in a comprehensive training program
combining instructor-led and web-based classes with on-the-job
training and networking. We’ll trust you with important work, giving
you the opportunity to create real impact right out of the gate.</p>

  
     
         <div class="profile-article">
            <img src="images/campus/icon-Gabriel.jpg" width="50" height="80" alt="Gabriel" />
            <h2>Gabriel</h2>
            <p class="profile-depart">Corporate and Investment Banking Analyst Program</p>
            <p>I am an analyst in the Mergers and Acquisitions Group in Hong Kong.</p>
            <p><a href="campus-meet-our-people-profile-Gabriel.aspx" title="Read Gabriel's profile">Read <span class="hiddencontent">Gabriel's</span> Profile</a></p>
        </div>
       
         <div class="profile-article">
            <img src="images/campus/icon-LipJin.jpg" width="50" height="80" alt="Lip Jin" />
            <h2>Lip Jin </h2>
            <p class="profile-depart">Global Markets Analyst Program</p>
            <p>I am the primary market maker for HG corporates/banks in Singapore.</p>
            <p><a href="campus-meet-our-people-profile-Lip-Jin.aspx" title="Read Lip Jin's profile">Read <span class="hiddencontent">Lip Jin's</span> Profile</a></p>
        </div>
        
        <div class="profile-article">
            <img src="images/campus/icon-Louise.jpg" width="50" height="80" alt="Louise" />
            <h2>Louise</h2>
            <p class="profile-depart">Chief Financial Office Analyst Program</p>
            <p>Product controller for Strategic Investment Group desk. </p>
            <p><a href="campus-meet-our-people-profile-Louise.aspx" title="Read Louise's profile">Read <span class="hiddencontent">Louise's</span> Profile</a></p>
        </div>
        
        <div class="profile-article">
            <img src="images/campus/icon-Scott.jpg" width="50" height="80" alt="Scott" />
            <h2>Scott </h2>
            <p class="profile-depart">Operations Analyst Program</p>
            <p>I work on the MLX team, in charge of providing client service support for various e-commerce platforms within the company.</p>
            <p><a href="campus-meet-our-people-profile-Scott.aspx" title="Read Scott's profile">Read <span class="hiddencontent">Scott's</span> Profile</a></p>
        </div> 
       
        <div class="profile-article">
            <img src="images/campus/icon-Stanley.jpg" width="50" height="80" alt="Stanley" />
            <h2>Stanley</h2>
            <p class="profile-depart">Technology Analyst Program &ndash; GMRT</p>
            <p>It is indisputable Bank of America is a global leading financial company providing lots of opportunities. </p>
            <p><a href="campus-meet-our-people-profile-Stanley.aspx" title="Read Stanley's profile">Read <span class="hiddencontent">Stanley's</span> Profile</a></p>
        </div>
        
        <div class="profile-article">
            <img src="images/campus/icon-Suke.jpg" width="50" height="80" alt="Suke" />
            <h2>Suke</h2>
            <p class="profile-depart">Technology Analyst Program &ndash; ET&amp;D</p>
            <p>I work in Market Data Services in the Enterprise Technology &amp; Delivery Group.</p>
            <p><a href="campus-meet-our-people-profile-Suke.aspx" title="Read Suke's profile">Read <span class="hiddencontent">Suke's</span> Profile</a></p>
        </div>                                                                            
     
    <p class="back-top"><a href="#main-profiles">Back to top</a></p>
  </div>
  <script src="Includes/_swfobject.js" type="text/javascript"></script>
            <script src="Includes/profile-control.js" type="text/javascript"></script>
  
  <div id="aside"> 
        
            <div id="video-content">
            <br />
            <% if (Request.QueryString["vts"]=="chris") {%>

               <div class="transcript-content">
               <p>I was attracted to come to work for Bank of America because I had two former classmates who joined the same group within the bank that I currently work for. They had a great experience and came back to campus and did a really great job of selling it to me and talking about the opportunities within a large company and how they were encouraged to pursue their various interests. The diversity of people they had gotten to work with really sounded like an appealing place to work for a young professional and I was hooked. One of the things that helped me prepare for my interview process with Bank of America is all the involvement I had with professional organizations during my graduate school program. Organizations specific to the discipline that you are interested in can be very helpful in providing resources and exposing you to professionals and some of the challenges they face in their careers.</p>

               <p><a href="campus-AsiaPac-analyst-profiles.aspx">View Chris's Video</a>
               
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
		<td width="100%" height="22" align="center" nowrap><a href="campus-AsiaPac-analyst-profiles.aspx?vts=chris" class="btn1">Video transcript</a></td>
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
            
            
            <% if (Request.QueryString["vts"]=="erin") {%>

             <div class="transcript-content">
             <p>I learned about my current position from a conference called NSHMBA and there I talked to a recruiter about the Global Consumer position that I currently have became very interested and pursued the position from there. What's important to me in my career is learning and growth and opportunity for advancement, Bank of America offers all of those things and I have really been looking forward to my future at Bank of America. Two things that stands out to me when I think of Global Consumer Business Bank is my exposure to executives and two is the focus on the customer.</p>

            <p><a href="campus-AsiaPac-analyst-profiles.aspx">View Erin's Video</a></p>
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
		<td width="100%" height="22" align="center" nowrap><a href="campus-AsiaPac-analyst-profiles.aspx?vts=erin" class="btn1">Video transcript</a></td>
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
            </div>
            
            <h2>Related Links:</h2>
        <ul>
          <li><a href="campus-Americas-analyst-profiles.aspx">Americas analyst profiles</a></li>
          <li><a href="campus-EMEA-analyst-profiles.aspx">EMEA analyst profiles</a></li>
          <li><a href="campus-AsiaPac-associate-profiles.aspx">Associate profiles</a></li>
          <li><a href="campus-AsiaPac-intern-profiles.aspx">Internship profiles</a></li>
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
 
    swfobject.embedSWF("includes/pages/college/chris.swf", "chrisflash", "205", "131", "9.0.0", flashvars, params, attributes);
    swfobject.embedSWF("includes/pages/college/erin.swf", "erinflash", "205", "131", "9.0.0", flashvars, params, attributes);
   
	</script>

<script src="Includes/_google.js" type="text/javascript"></script>
</asp:Content>

