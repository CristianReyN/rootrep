<%@ Page Title="Bank of America | Careers | Campus Recruiting | Explore Careers | Asia Pacific Associate & PhD Programs" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-AsiaPac-associate-profiles.aspx.cs" Inherits="campus_AsiaPac_associate_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

         <div id="main-profiles">
                   
					   <div id="article">
							<div class="article-bottom">
					   			<h1>Our Associates</h1>
								<p>Our range of associate programs allows you to build on your MBA or advanced degree, transforming your knowledge and experience into real-world opportunities.</p>
							
								<div class="profile-article">
									<div class="profile-article-inside">
									
									        <img src="images/campus/icon-DongLi.jpg" width="74" height="107" alt="Dong" />
											<h2>Dong</h2>
											<p>Global Investment Banking Associate Program</p>
											<p>My assignment is to help a China-based real estate company with a Hong Kong Stock Exchange-listed acquisition.</p>
											<p class="profile-link"><a href="campus-meet-our-people-profile-Dong.aspx" title="View Dong's Profile">View <span class="hiddencontent">Dong's</span> Profile</a></p>
										<img src="images/campus/ico-doucment.jpg" class="video-text-icon" width="33" height="33" alt="document icon" />								
										
									</div><!--.profile-article-inside -->
								</div><!--.profile-article -->
								
								<div class="profile-article">
									<div class="profile-article-inside">
										
										    <img src="images/campus/icon-Narinder.jpg" width="74" height="107" alt="Narinder" />
											<h2>Narinder</h2>
											<p>Global Markets Associate Program</p>
											<p>I’m a Global Markets Associate and I work on a trading desk.</p>
											<p class="profile-link"><a href="#" class="video-modal">View <span class="hiddencontent">Narinder's </span>Profile</a></p>
											<p class="mop-transcript"><a href="/campusrecruiting/narinder_transcript.html" class=transcript">View <span class="hiddencontent">Leonard's </span>Transcript</a></p>
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
                        <li><a href="campus-EMEA-associate-profiles.aspx">EMEA associate profiles</a></li>
                        <li><a href="campus-AsiaPac-analyst-profiles.aspx">Asia Pacific analyst Profiles</a></li>
                        <li><a href="campus-AsiaPac-intern-profiles.aspx">Asia Pacific intern Profiles</a></li>
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

