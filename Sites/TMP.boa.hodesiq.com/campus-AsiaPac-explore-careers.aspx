<%@ Page Title="Bank of America | Careers | Campus Recruiting | Asia Pacific Explore Careers" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-AsiaPac-explore-careers.aspx.cs" Inherits="campus_AsiaPac_explore_careers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

 <div id="maincontent"> 
               <div id="article" class="explore-americas"> 
                   <h1>Explore a World of Career Opportunities</h1>
                    
                    <p>You know how to harness your talent and seize every opportunity, evolving it into even greater success. Here at Bank of America, you’ll discover a range of exciting programs to capitalize on your momentum and enable you to reach even further. Join us and find out why Bank of America is a great place to begin your career.</p>
                     <div id="programs">
						 <ul class="nav-programs">
						 <li id="nav-analyst"><a href="#analyst">Analyst</a></li>
						 <li id="nav-associate"><a href="#associate">Associate &amp; Ph.D.</a></li>
						 <li id="nav-internships"><a href="#internships">Internships</a></li>
						 </ul>
                     
                         <div id="analyst" class="programs-content">
                         
                         <h2>Analyst Programs</h2>
                         
                         <p>When you join us as a college or university graduate, you’ll learn from the best and brightest minds in the industry. You’ll participate in a comprehensive training program that combines instructor-led and web-based classes with on-the-job training and networking. We’ll trust you with important work, giving you the opportunity to create real impact right out of the gate.</p>
                       
                         <p class="learnmore-button"><a href="campus-AsiaPac-analyst-programs.aspx" title="Learn more about our analyst programs">Learn more <span class="hiddencontent">about our analyst programs</span></a></p>
    
                         </div><!--.programs-content-->
                         
                          <div id="associate" class="programs-content ui-tabs-hide">
                         
                        <h2>Associate &amp; PhD Programs</h2>

                        <h3 class="pad-top">Associate Programs</h3>
                        <p>Our range of associate programs allows you to build on your MBA or advanced degree, transforming your knowledge and experience into real-world opportunities. </p> 
                         <p class="learnmore-button"><a href="campus-AsiaPac-associate-and-phd-programs.aspx" title="Learn more about our assoiciates programs">Learn more <span class="hiddencontent">about our assoiciates programs</span></a></p>
                        
                        <h3>PhD Programs</h3>
                        <p>Pursuing a doctoral degree with a quantitative focus? Then this is the opportunity for you. Our Ph.D. programs enable doctoral students with high-level technical skills to put their intellect and ambition to work in a fast-paced, exciting environment that will challenge and reward a rigorous approach.</p> 
                        
                        <p class="learnmore-button"><a href="campus-AsiaPac-associate-and-phd-programs.aspx" title="Learn more about our assoiciates programs">Learn more <span class="hiddencontent">about our assoiciates programs</span></a></p>

                         </div><!--.programs-content-->
                         
                          <div id="internships" class="programs-content ui-tabs-hide">
                         
                         <h2>Internships</h2>
						
						<p>An internship doesn't have to mean starting at the bottom. If you're ready to learn about the financial services industry from the perspective of the world's leading financial institution, this is a great way to start. Through an internship role with us, you'll find yourself tackling real business challenges that make a real impact on our company. You'll grow your skills and build your network in a dynamic environment designed to support your long-term career objectives. </p> 
						
						<p class="learnmore-button"><a href="campus-AsiaPac-internships.aspx" title="Learn more about our internships">Learn more</a></p>
				
    
                         </div><!--.programs-content-->
                     
                     </div> <!--#programs -->
                </div>
                <div id="aside"> 
					<a href="campus-find-your-fit.aspx"><img src="images/campus/btn-careerfinder.jpg" width="179" height="76" alt="Find Your fit: Come as you are. We've got a career to fit." /></a> 
                  <a href="CampusEvents.aspx?region=3"><img src="images/campus/btn-campus-events.jpg" width="179" height="76" alt="Campus Events: Let's meet soon." /></a> 
                 <a href="campus-AsiaPac-meet-our-people.aspx"><img src="images/campus/btn-our-people.jpg" width="179" height="76" alt="Our People: See and hear who's making a difference and how." /></a> 
				  
				  <a href="http://twitter.com/#!/BofA_Careers" target="_blank" title="Twitter. Link opens a new window"><img src="images/campus/btn-connect-twitter.jpg" width="179" height="76" alt="Stay Connected to Careers on Twitter" /></a> 
				  
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
<script src="Includes/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="Includes/libs/jquery/ui/1.8.9/custom.min.js"></script>
<script src="Includes/_global.js"></script>

</asp:Content>

