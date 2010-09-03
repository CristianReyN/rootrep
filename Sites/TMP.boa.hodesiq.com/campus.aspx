<%@ Page Title="" Language="C#" MasterPageFile="~/BOAmaster.master" AutoEventWireup="true" CodeFile="campus.aspx.cs" Inherits="campus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">

<link href="Includes/campus.css" type="text/css" rel="stylesheet" />

<div id="global-gateway">
				  
					<h1>Bank of America</h1>
					<h2><a href="../campus-Americas.aspx">Americas</a></h2> 
					<ul>
					<li><a href="campus-Americas-explore-careers.aspx">Explore careers</a></li>             
					<li><a href="CampusEvents.aspx?region=1">Campus events</a></li>           
					<li><a href="campus-Americas-meet-our-people.aspx">Meet our people</a></li>
					<li><a href="campus-Americas-our-culture.aspx">Our Culture</a></li>  
					<li><a href="campus-Americas-how-to-apply.aspx">Apply Now</a></li>
					</ul> 
	
					<h2><a href="campus-EMEA.aspx">EMEA</a></h2> 
					<ul>
					<li><a href="campus-EMEA-our-culture.aspx">Opportunities</a></li>                        
					<li><a href="CampusEvents.aspx?region=2">Campus events</a></li>             
					<li><a href="campus-EMEA-our-culture.aspx">Our Culture</a></li>                   
					<li><a href="campus-EMEA-how-to-apply.aspx">Apply Now</a></li>
					</ul>                     

					<h2><a href="../campus-AsiaPac.aspx">Asia Pac</a></h2>   
					<ul>
					<li><a href="CampusEvents.aspx?region=3">Campus events</a></li>          
					<li><a href="campus-AsiaPac-our-culture.aspx">Our Culture</a></li>                  
					<li><a href="http://www.japan.ml.com/campusrecruiting/">Japan</a></li>                       
					<li><a href="campus-AsiaPac-how-to-apply.aspx">Apply Now</a></li>
					</ul>  


                 </div>
				 
				 <script type="text/javascript" src="Includes/_swfobject.js" ></script>
					<script type="text/javascript">

				    //var baseURL = window.location.hostname;
				    //baseURL = "baseurl=http://" + baseURL;
				    var flashvars = false;
				    var params = { menu: "false", wmode: "opaque"};
				    var attributes = false;

				    swfobject.embedSWF("http://http.vitalstreamcdn.com/hodesgroup_vitalstream_com/BOA/BAC011_GlobalGate_v6.swf", "global-gateway", "568", "474", "9", "images/campus/flash/_expressinstall.swf", flashvars, params, attributes);
	
					</script>
                 
<script src="Includes/_google.js" type="text/javascript"></script>
</asp:Content>

