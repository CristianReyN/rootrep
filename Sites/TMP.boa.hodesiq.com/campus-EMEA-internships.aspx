<%@ Page Title="Bank of America | Careers | Campus Recruiting | Opportunities | Internships" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-EMEA-internships.aspx.cs" Inherits="campus_EMEA_internships" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

 <div id="maincontent"> 
                <div id="article"> 
                  <h1>Internships</h1>
                  
                  <p class="back-to-previous"><a href="campus-EMEA-opportunities.aspx">Back to previous page</a></p>
                  
                  <p>Our internship programmes typically attract students in their penultimate year of study.</p>
                  <ul>
                    <li><a href="campus-EMEA-analyst-associate-internships.aspx">Analyst and Associate internships </a></li>
                  </ul>
               
                  <h2 class="questions">Summer Internships</h2>
                  <p>Bank of America Merrill Lynch’s summer internship programme is the ideal opportunity to gain an introduction into the world of banking. The nine-week programme runs from the end of June and begins with an induction week covering core skills. Training and mentoring continue throughout the duration of your internship.</p>

                    <h2 class="questions">Off-Cycle Internships (Fixed Term Placements)</h2>
                    <p>Fixed Term Placements are available throughout the year, varying from three to six months, depending on the business need. Locations vary, but the majority of opportunities are in London, Frankfurt, Madrid, Moscow and Paris within the Investment Banking and Global Markets divisions.</p> 

                    <h2 class="questions">Industrial Placements</h2>
                    <p>Six- and 12-month fixed term placements are available within the Technology division.</p>

                </div>
                
              <div id="aside"> 
				<a href="campus-find-your-fit.aspx"><img src="images/campus/btn-careerfinder.jpg" width="179" height="76" alt="Find Your fit: Come as you are. We've got a career to fit." /></a> 
                  <a href="CampusEvents.aspx?region=2"><img src="images/campus/btn-campus-events.jpg" width="179" height="76" alt="Campus Events: Let's meet soon." /></a> 
                  <a href="campus-EMEA-graduate-profiles.aspx"><img src="images/campus/btn-our-people.jpg" width="179" height="76" alt="Our People: See and hear who's making a difference and how." /></a> 
                  
				  <div class="related-links">
					  <h2>Related Links:</h2>
					  <ul>
					    <li><a href="campus-EMEA-analyst-programs.aspx">EMEA analyst programmes</a></li>
                        <li><a href="campus-EMEA-associate-and-phd-programs.aspx">EMEA associate programmes</a></li>
                        <li><a href="campus-EMEA-pre-university.aspx">EMEA pre-university</a></li>
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
      
                </div>
                
                <div id="red-footer"> 
                  <p>Set opportunity in motion.</p>
                </div>
              </div>
              
<script src="Includes/_google.js" type="text/javascript"></script>

</asp:Content>

