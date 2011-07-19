<%@ Page Title="Bank of America | Careers | Campus Recruiting | Opportunities | EMEA Associate & PhD Programs" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus-EMEA-associate-and-phd-programs.aspx.cs" Inherits="campus_EMEA_associate_and_phd_programs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

<div id="maincontent"> 
                <div id="article"> 
                  <h1>Associate and PhD Programmes</h1>
                  
                  <p class="back-to-previous"><a href="campus-EMEA-opportunities.aspx">Back to previous page</a></p>
                   
                  <h2 class="questions">Benefits</h2>
                  <ul>
                    <li>Competitive compensation and benefits package</li>
                    <li>World-class structured training and development programme</li>
                    <li>Buddy &amp; mentor system for support and guidance</li>
                    <li>Opportunity to build a global network</li>
                  </ul>
                  <h2 class="questions">Global Banking and Markets</h2>
                  <ul>
                    <li><a href="campusrecruiting/emeafs-global-corporate-investment-banking-associate-programme.asp">Global Corporate and Investment Banking Associate Programme</a></li>
                    <li><a href="campusrecruiting/emeafs-global-markets-associate-programme.asp">Global Markets Associate Programme</a></li>
                    <li><a href="campusrecruiting/emeafs-global-markets-quantitative-analytics-associate-programme.asp">Global 
                      Markets Quantitative Analytics Associate Programme</a></li>
                    <li><a href="campusrecruiting/emeafs-global-research-associate-programme.asp">Global 
                      Research Associate Programme</a></li>
                  </ul>
                </div>
                <div id="aside"> 
				<a href="campus-find-your-fit.aspx"><img src="images/campus/btn-careerfinder.jpg" width="179" height="76" alt="Find Your fit: Come as you are. We've got a career to fit." /></a> 
                  <a href="CampusEvents.aspx?region=2"><img src="images/campus/btn-campus-events.jpg" width="179" height="76" alt="Campus Events: Let's meet soon." /></a> 
                  <a href="campus-EMEA-graduate-profiles.aspx"><img src="images/campus/btn-our-people.jpg" width="179" height="76" alt="Our People: See and hear who's making a difference and how." /></a> 
                  
				  <div class="related-links">
					  <h2>Related Links:</h2>
					  <ul>
					    <li><a href="campus-EMEA-analyst-programs.aspx">EMEA analyst programmes</a></li>
                        <li><a href="campus-EMEA-internships.aspx">EMEA internships</a></li>
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

