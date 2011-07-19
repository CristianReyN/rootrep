<%@ Page Title="Bank of America | Careers | Campus Recruiting | Graduate Profiles | EMEA Associates Profiles" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-EMEA-associate-profiles.aspx.cs" Inherits="campus_EMEA_associate_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

<div id="main-profiles">
                   
					   <div id="article">
							<div class="article-bottom">
                   <h1>Our Associates</h1>
  					 <p>Our range of associate programmes allows you to build on your MBA or advanced degree, transforming your knowledge and experience into real-world opportunities.</p>

        <div class="profile-article">
		    <div class="profile-article-inside">
				
				<img src="images/campus/icon-IrinaDolgova.jpg" width="74" height="107" alt="Irina" />					
				<h2>Irina</h2>
				<p>Global Markets Quantitative Analytics Associate Programme</p>
				<p>I am an Equity exotics quantitative researcher.</p>
				<p class="profile-link"><a href="campus-meet-our-people-profile-Irina.aspx" title="View Irina's profile">View <span class="hiddencontent">Irina's</span> Profile</a></p>
				<img src="images/campus/ico-doucment.jpg" class="video-text-icon" width="33" height="33" alt="document icon" />								
										
			</div><!--.profile-article-inside -->
		</div><!--.profile-article -->
		
			<div class="profile-article">
		    <div class="profile-article-inside">
				
				<img src="images/campus/icon-Richard.jpg" width="74" height="107" alt="Richard" />						
				<h2>Richard</h2>
				<p>Global Corporate and Investment Banking Associate Programme</p>
				<p>I am an Associate on the Corporate Finance team in Investment Banking.</p>
				<p class="profile-link"><a href="campus-meet-our-people-profile-Richard.aspx" title="View Richard's profile">View <span class="hiddencontent">Richard's</span> Profile</a></p>
				<img src="images/campus/ico-doucment.jpg" class="video-text-icon" width="33" height="33" alt="document icon" />								
										
			</div><!--.profile-article-inside -->
		</div><!--.profile-article -->
		
		<div class="profile-article">
			<div class="profile-article-inside">
				<img src="images/campus/icon-Saumya.jpg" width="74" height="107" alt="Saumya" />
										
				<h2>Saumya</h2>
				<p>Global Research Associate Programme</p>
				<p>I work for the Oil and Gas Research Team.</p>
				<p class="profile-link"><a href="#" class="video-modal">View <span class="hiddencontent">Saumya's </span>Profile</a></p>
				<p class="mop-transcript"><a href="campusrecruiting/tanvi_transcript.html" class=transcript">View <span class="hiddencontent">Tanvi's </span>Transcript</a></p>						
				<img src="images/campus/ico-video.jpg" class="video-text-icon" width="33" height="33" alt="video icon" />									
										
			</div><!--.profile-article-inside -->
		</div><!--.profile-article -->
        
  </div><!--.article-bottom -->
  					</div> <!--#article -->
   
 <div id="aside"> 
					<p class="explore-video-profile"><a href="">Explore Our Video Library</a></p>
 					<div class="related-links">
					  <h2>Related Links:</h2>
					   <ul>
         				<li><a href="campus-Americas-associate-profiles.aspx">Americas associate profiles</a></li>
                        <li><a href="campus-AsiaPac-associate-profiles.aspx">Asia Pacific associate profiles</a></li>
                        <li><a href="campus-EMEA-analyst-profiles.aspx">EMEA analyst profiles</a></li>
                        <li><a href="campus-EMEA-intern-profiles.aspx">EMEA intern profiles</a></li>
					</ul>
				  </div>
				  <a href="http://twitter.com/#!/BofA_Careers" target="_blank"><img src="images/campus/btn-connect-twitter.jpg" width="179" height="64" alt="Stay Connected to Careers on Twitter" /></a>
				  <div class="shared-links">
				  	<h2>Shared this page:</h2>
				  
					  <ul>
					  <li id="linkedin"><a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=<%=Request.Url.ToString().ToLower()%>" target="_blank">LinkedIn</a></li>
					  <li id="facebook"><a href="http://www.facebook.com/sharer/sharer.php?u=<%=Request.Url.ToString().ToLower()%>" target="_blank">Facebook</a></li>
					  <li id="twitter"><a href="http://twitter.com/intent/tweet?source=webclient&amp;text=<%=Request.Url.ToString().ToLower()%>" target="_blank">Twitter</a></li>
					  </ul>
				  </div>
            </div><!-- #aside -->
	
  <div id="red-footer"> 
    <p>Set opportunity in motion.</p>
  </div>
</div>


<script src="Includes/_google.js" type="text/javascript"></script>
<script src="Includes/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="Includes/libs/jquery/ui/1.8.9/custom.min.js"></script>
<script src="Includes/_global.js"></script>

</asp:Content>

