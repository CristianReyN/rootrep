<%@ Page Title="Bank of America | Careers | Campus Recruiting | Graduate Profiles | EMEA Associates Profiles" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-EMEA-associate-profiles.aspx.cs" Inherits="campus_EMEA_associate_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

<div id="main-profiles">
                   <div id="article">
                   <h1>Our Associates</h1>
  					 <p>Our range of associate programs allows you to build on your MBA or advanced degree, transforming your knowledge and experience into real-world opportunities.</p>

        <div class="profile-article">
            <img src="images/campus/icon-Irina.jpg" width="50" height="80" alt="Irina" />
            <h2>Irina</h2>
            <p class="profile-depart">Global Markets PhD Associate Programme</p>
            <p>I am an Equity exotics quantitative researcher.</p>
            <p><a href="campus-meet-our-people-profile-Irina.aspx" title="Read Irina's profile">Read <span class="hiddencontent">Irina's</span> Profile</a></p>
        </div>
    
         <div class="profile-article">
            <img src="images/campus/icon-Rachna.jpg" width="50" height="80" alt="Rachna" />
            <h2>Rachna</h2>
            <p class="profile-depart">Research Quant Analyst Programme</p>
            <p>I currently work in Credit Derivatives Strategy, which is a global team covering the European and North American credit derivatives markets. </p>
            <p><a href="campus-meet-our-people-profile-Rachna.aspx" title="Read Rachna's profile">Read <span class="hiddencontent">Rachna's</span> Profile</a></p>
        </div>
        
        <div class="profile-article">
            <img src="images/campus/icon-Richard-1.jpg" width="50" height="80" alt="Richard" />
            <h2>Richard</h2>
            <p class="profile-depart">Investment Banking Associate Programme</p>
            <p>I am an Associate on the Corporate Finance team in Investment Banking.</p>
            <p><a href="campus-meet-our-people-profile-Richard.aspx" title="Read Richard's profile">Read <span class="hiddencontent">Richard's</span> Profile</a></p>
        </div>
   
  </div>
   <script src="Includes/_swfobject.js" type="text/javascript"></script>
            <script src="Includes/profile-control.js" type="text/javascript"></script>
  <div id="aside"> 
       
             <div id="video-content">
             <br />
            <% if (Request.QueryString["vts"]=="tony") {%>

               <div class="transcript-content">
               <p>Though I have only been with the bank for five months now I have already been able to work on a Six Sigma project with several senior level managers and through that experience I networked with these individuals and learned from them how they do their jobs. I learned about the corporate treasury associate program through an on-campus recruiting event where several bank associates came down and spoke with students that were interested. After that we had a round of on-campus interviews which were followed by the final round which were up in Charlotte. We were actually able to visit the bank's headquarters and meet with the senior member executives as well as people we would be working with from day to day.</p>

               <p><a href="campus-EMEA-associate-profiles.aspx">View Tony's Video</a>
               
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
		<td width="100%" height="22" align="center" nowrap><a href="campus-EMEA-associate-profiles.aspx?vts=tony" class="btn1">Video transcript</a></td>
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
            
             <% if (Request.QueryString["vts"]=="anne") {%>

               <div class="transcript-content">
               <p>What attracted me most about working at Bank of America was their focus on improving their processes to really was to help their customers and ensure their customers have a great experience and I have a passion for that. I really like what Quality & Productivity does their use of Six Sigma, Lean and other tools and it was important for me to find a position where I was able to do that. While I was in grad school I was doing a research project on Bank of America and that started my interest in the company. I attended a conference for the women's MBA while I was in Boston which led to my employment with the company.</p>

               <p><a href="campus-EMEA-associate-profiles.aspx">View Anne's Video</a>
               
               </div>

            <%} else {%>
            
          <h2 class="hidden">Anne's Associate Testimonial Video</h2>

	<div id="anne" style="display: none;">

		<div id="anneflash">
	
			<a href="http://get.adobe.com/flashplayer/" title="This video requires Adobe Flash Player version 8. Please download latest version."><img src="Includes/pages/camp/video/thumbnails/anne_off.jpg" width="205" height="131" border="0" /></a>
	
		</div>
	
	</div>

	<img class="default-img" src="Includes/pages/camp/video/thumbnails/anne_off.jpg" width="205" height="131" style="display: block;" onMouseOver="this.src='Includes/pages/camp/video/thumbnails/anne_on.jpg'" onMouseOut="this.src='Includes/pages/camp/video/thumbnails/anne_off.jpg'" onClick="this.style.display='none'; document.getElementById('anne').style.display='block'; document.getElementById('anne-left-control').style.display='block'; document.getElementById('anne-right-control').style.display='block';" border="0" />

	<table width="205" border="0" cellspacing="0" cellpadding="0" bgcolor="#D4001A">
	<tr>
		<td nowrap>

			<div align="left" style="padding: 2px 5px;" id="anne-left-control">

				<a href="#" title="Play Video" onClick="doPassVar('anneflash','play'); return false;"><img width="14" height="18" border="0" alt="Play Video" src="Includes/pages/buttons/01btn.gif" name="btn01" /></a>
				
				<a href="#" title="Pause Video" onClick="doPassVar('anneflash','pause'); return false;"><img width="13" height="18" border="0" alt="Pause Video" src="Includes/pages/buttons/02btn.gif" name="btn02" /></a>
				
				<a href="#" title="Stop Video" onClick="doPassVar('anneflash','stop'); return false;"><img width="17" height="18" border="0" alt="Stop Video" src="Includes/pages/buttons/03btn.gif" name="btn03" /></a>

			</div>

		</td>
		<td width="100%" height="22" align="center" nowrap><a href="campus-EMEA-associate-profiles.aspx?vts=anne" class="btn1">Video transcript</a></td>
		<td nowrap>

			<div align="right" style="padding: 2px 5px;" id="anne-right-control">

				<a href="#" title="Mute Video" onClick="doPassVar('anneflash','mute'); return false;"><img width="16" height="18" border="0" alt="Mute Video" src="Includes/pages/buttons/05btn.gif" name="btn05" /></a>
				
				<a href="#" title="Close Captions" onClick="doPassVar('anneflash','ccoc'); return false;"><img width="21" height="18" border="0" alt="Close Captions" src="Includes/pages/buttons/06btn.gif" name="btn06" /></a>

			</div>

		</td>
	</tr>
	</table>
     <%}%> 
            <p>Anne</p>
            <p class="padbot">Quality and Productivity Consultant</p>
            </div>
            
             <h2>Related Links:</h2>
        <ul>
          <li><a href="campus-Americas-associate-profiles.aspx">Americas associate profiles</a></li>
          <li><a href="campus-AsiaPac-associate-profiles.aspx">Asia Pacific associate profiles</a></li>
          <li><a href="campus-EMEA-analyst-profiles.aspx">Analyst profiles</a></li>
          <li><a href="campus-EMEA-intern-profiles.aspx">Intern profiles</a></li>
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

    swfobject.embedSWF("includes/pages/college/tony.swf", "tonyflash", "205", "131", "9.0.0", flashvars, params, attributes);
    swfobject.embedSWF("includes/pages/college/anne.swf", "anneflash", "205", "131", "9.0.0", flashvars, params, attributes);
   
	</script>

<script src="Includes/_google.js" type="text/javascript"></script>

</asp:Content>

