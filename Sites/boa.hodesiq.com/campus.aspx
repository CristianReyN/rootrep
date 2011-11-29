<%@ Page Title="" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus.aspx.cs" Inherits="campus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

<div id="global-gateway">
				  
					<h1>Bank of America</h1>
					<h2><a href="../campus-Americas.aspx" name="Campus_Americas">Americas</a></h2> 
					<ul>
					<li><a href="campus-Americas-explore-careers.aspx" name="Campus_Americas_Explore_Careers">Explore careers</a></li>             
					<li><a href="CampusEvents.aspx?region=1" name="Campus_Events">Campus events</a></li>           
					<li><a href="campus-Americas-meet-our-people.aspx" name="Campus_Americas_Meet_Our_People">Meet our people</a></li>
					<li><a href="campus-Americas-our-culture.aspx" name="Campus_Americas_Our_Culture">Our Culture</a></li>  
					<li><a href="campus-Americas-how-to-apply.aspx" name="Campus_Americas_Apply_Now">Apply Now</a></li>
					</ul> 
	
					<h2><a href="campus-EMEA.aspx" name="Campus_EMEA">EMEA</a></h2> 
					<ul>
					<li><a href="campus-EMEA-our-culture.aspx" name="Campus_EMEA_Opportunities">Opportunities</a></li>                        
					<li><a href="CampusEvents.aspx?region=2" name="Campus_Events">Campus events</a></li>             
					<li><a href="campus-EMEA-our-culture.aspx" name="Campus_EMEA_Our_Culture">Our Culture</a></li>                   
					<li><a href="campus-EMEA-how-to-apply.aspx" name="Campus_EMEA_Apply_Now">Apply Now</a></li>
					</ul>                     

					<h2><a href="../campus-AsiaPac.aspx" name="Campus_Asia_Pac">Asia & Pac</a></h2>   
					<ul>
					<li><a href="CampusEvents.aspx?region=3" name="Campus_Events">Campus events</a></li>          
					<li><a href="campus-AsiaPac-our-culture.aspx" name="Campus_AsiaPac_OurCulture">Our Culture</a></li>                  
					<li><a href="http://www.japan.ml.com/campusrecruiting/" name="Campus_Japan">Japan</a></li>                       
					<li><a href="campus-AsiaPac-how-to-apply.aspx" name="Campus_AsiaPac_Apply_Now">Apply Now</a></li>
					</ul>  


                 </div>
				 
				 <script type="text/javascript" src="Includes/_swfobject.js"></script>
					<script type="text/javascript">

				  
				    var flashvars = false;
				    var params = { menu: "false", wmode: "opaque"};
				    var attributes = false;

				    swfobject.embedSWF("Includes/BAC011_GlobalGate_v5.swf", "global-gateway", "568", "474", "9", "Includes/_expressinstall.swf", flashvars, params, attributes);
	
					</script>
                 
<script src="Includes/_google.js" type="text/javascript"></script>

<script language='javascript1.1' type='text/javascript'>
    //<!—
    cmCreatePageviewTag('career:Content:Campus_Recruiting;campus', null, null, 'career:Content:Campus_Recruiting', false, false, null, false, false, null, null, null,null,null,null,null,null,null,null,null,null);
    //-->
</script>



</asp:Content>

