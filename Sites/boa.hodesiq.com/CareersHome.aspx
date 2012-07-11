<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CareersHome.aspx.cs" Inherits="CareersHome" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Bank of America | Careers | Home</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta NAME="description" CONTENT="Main page of the Bank of America careers site. From this page you can click to more links about benefits, diversity, military, corporate information, student programs and global locations.  You can also do a keyword search to find available opportunities.">
    <meta NAME="keywords" CONTENT="Bank of America, Merrill Lynch, U.S. TRUST, Career, Job, Global, Campus, Students">
        	    
    <script type="text/javascript" src="homepage-redesign/scripts/jquery.min.js"></script>     
    <script type="text/javascript" src="homepage-redesign/scripts/jquery-latest.js"></script>
    <link rel="stylesheet" type="text/css" href="homepage-redesign/styles/jkmegamenu.css" />
    <script type="text/javascript" src="homepage-redesign/scripts/jkmegamenu.js"></script>
    <script language="JavaScript1.2" src="includes/ps.js" type="text/javascript"></script>
    <script language="JavaScript1.2" src="includes/fixit.js" type="text/javascript"></script>
    <link href="homepage-redesign/styles/boaMain.css" type="text/css" rel="stylesheet" />
    <!--<link href="http://jobmatcher.stg.hodesiq.com/clients/boa/sjm-plugin.css" rel="stylesheet" type="text/css" />-->

    <!--[if lte IE 7]><link href="homepage-redesign/styles/ie7.css" type="text/css" rel="stylesheet" /><![endif]--> 
    <!--[if lte IE 9]><link href="homepage-redesign/styles/ie9.css" type="text/css" rel="stylesheet" /><![endif]--> 
            
    <script type="text/javascript">

        var intval = null;
        var cindex = 0;
        var slideno = 1;
        var rflag = 0;

        function theRotator() {
                //Set the opacity of all images to 0
                $('div#rotator ul li').css({ opacity: 0.0 });
                //Get the first image and display it (gets set to full opacity)
                $('div#rotator ul li:first').css({ opacity: 1.0 });
                if ($('div#pagination div')) {
                    $('div#pagination div').each(function (bindex) {
                        if ($(this).hasClass('prev')) $(this).animate({ opacity: 0.0 }, 10);
                        else if ($(this).hasClass('next')) $(this).animate({ opacity: 1.0 }, 10);
                        else if ($('div#rotator ul li:first').attr('btn') && $('div#rotator ul li:first').attr('btn') == bindex) $(this).addClass('curr');
                    });
                }
                //Call the rotator function to run the slideshow, 6000 = change to next image after 6 seconds
                displaytext(slideno);
                intval = setInterval('rotate()', 11000);
        }

        function rotate(ne_xt) {
            //Get the first image
            var current = ($('div#rotator ul li.show') ? $('div#rotator ul li.show') : $('div#rotator ul li:first'));
            slideno = slideno + 1;

            if (slideno > 5) {
                slideno = 1;               
                window.clearInterval(intval)
                intval = null;
            }
            cindex = slideno;
            displaytext(slideno);
            rflag = 1;

                //Get next image, when it reaches the end, rotate it back to the first image
                var next = ne_xt ? ne_xt :
	    ((current.next().length) ? ((current.next().hasClass('show')) ? $('div#rotator ul li:first') : current.next()) : $('div#rotator ul li:first'));
                //Set the fade in effect for the next image, the show class has higher z-index
                next.css({ opacity: 0.0 })
    .addClass('show')
    .animate({ opacity: 1.0 }, 500);
                //Hide the current image
                current.animate({ opacity: 0.0 }, 500)
    .removeClass('show');

                if ($('div#pagination div')) {
                    $('div#pagination div').each(function (bindex) {
                        if ($(this).hasClass('prev')) {
                            if (next.prev() && next.prev().get(0)) $(this).animate({ opacity: 1.0 }, 10);
                            else $(this).animate({ opacity: 0.0 }, 10);
                        }
                        else if ($(this).hasClass('next')) {
                            if (next.next() && next.next().get(0)) $(this).animate({ opacity: 1.0 }, 10);
                            else $(this).animate({ opacity: 0.0 }, 10);
                        }
                        else if (next.attr('btn') && next.attr('btn') == bindex) $(this).addClass('curr');
                        else $(this).removeClass('curr');
                    });
                }
                else {
                    if ($('div#pagination div')) {
                        $('div#pagination div').each(function (bindex) {
                            if ($(this).hasClass('prev')) {
                                if (next.prev() && next.prev().get(0)) $(this).animate({ opacity: 1.0 }, 10);
                                else $(this).animate({ opacity: 0.0 }, 10);
                            }
                            else if ($(this).hasClass('next')) {
                                if (next.next() && next.next().get(0)) $(this).animate({ opacity: 1.0 }, 10);
                                else $(this).animate({ opacity: 0.0 }, 10);
                            }
                            else if (next.attr('btn') && next.attr('btn') == bindex) $(this).addClass('curr');
                            else $(this).removeClass('curr');
                        });
                    }
                }
           // }
        };

        $(document).ready(function () {
            $('div#rotator ul li').each(function (lindex) {
                var btn = _button(lindex);
                //alert(btn.toString());
                if (btn) $(this).attr('btn', btn);
            });

            $('#pagination div').each(function (index) {
                if ($(this).hasClass('prev')) {
                    $(this).click(function () {
                        var current = ($('div#rotator ul li.show') ? $('div#rotator ul li.show') : $('div#rotator ul li:first'));
                        if (current.prev().length) _switch(current.prev());
                    });
                }
                else if ($(this).hasClass('next')) {
                    $(this).click(function () {
                        var current = ($('div#rotator ul li.show') ? $('div#rotator ul li.show') : $('div#rotator ul li:first'));
                        if (current.next().length) _switch(current.next());
                    });
                }
                else {
                    $(this).click(function () {
                        if ($('div#rotator ul li')) {
                            $('div#rotator ul li').each(function (lindex) {
                                if (lindex == (index - 1)) {
                                    if (cindex != lindex) {
                                        _switch($(this));
                                        cindex = lindex;
                                        displaytext(index);
                                    }
                                }
                            });
                        }
                    });
                }
            });

            //Load the slideshow
            theRotator();

        });

        function _switch(to) {
            if (to) {
                window.clearInterval(intval)  //Pause rotation
                intval = null;
                rotate(to);
            } 
        }

        function _button(lindex) {
            if ($('div#pagination div')) {
                var btn = 0;
                $('div#pagination div').each(function (bindex) {
                    if (lindex == (bindex - 1)) btn = bindex;
                });
            }
            return btn;
        }

        function _tiggle(btnid) {
            if (btnid == 1) {
                window.clearInterval(intval)
                intval = null;
                document.getElementById("pause").style.display = "none";
                document.getElementById("play").style.display = "inline";
            }
            else {
                window.clearInterval(intval)
                intval = null;
                intval = setInterval('rotate()', 8000);
                document.getElementById("pause").style.display = "inline";
                document.getElementById("play").style.display = "none";
            }
        }
        function validateKeyword(f, flg, val) {
            switch (flg) {
                case 0: if (document.getElementById(f).value == val) { document.getElementById(f).value = ''; } break;
                case 1: if (document.getElementById(f).value == '') { document.getElementById(f).value = val; } break;
            }
        }


        //Coremetrics implementation for content card links
        function cmRedirect1()
        {
           cmCreateManualLinkClickTag('areasoftalent/areasoftalent.asp','Explore_our_Job_Areas_now','career:Tool:Home');
           window.location='areasoftalent/areasoftalent.asp';
        }
        
        function cmRedirect2()
        {
           cmCreateManualLinkClickTag('financialadvisor/','Join_our_team_learn_more_about_Financial_Advisors','career:Tool:Home');
           window.location='financialadvisor/';
        }

        function cmRedirect3()
        {
           cmCreateManualLinkClickTag('campus.aspx','Join_our_team_learn_more_about_Student_programs','career:Tool:Home');
           window.location='campus.aspx';
        }

        function cmRedirect4()
        {
           cmCreateManualLinkClickTag('locations/','Learn_about_our_locations','career:Tool:Home');
           window.location='locations/';
        }

        function cmRedirect5()
        {
           cmCreateManualLinkClickTag('military/','Discover_why_veterans_consider_us_military_friendly','career:Tool:Home');
           window.location='military/';
        }
        
        //global variables for displaytext() and keycheck()
        var item152 = '<p><img src="homepage-redesign/images/slide/ttl1.png" alt="" /><br />If you want to work with consumers, investors or institutions, in a career that goes from customer care, sales and finance to HR, technology or risk management &mdash; a career with Bank of America may set opportunity in motion for you. <a onClick="cmRedirect1();" href="javascript:void(0);" id="item152" tabindex="52" title="Explore our Job Areas now" name="Explore our Job Areas now"><span class="hidden">Explore our Job Areas now.</span>Explore our Job Areas now.</a></p>';
        var item153 = '<p><img src="homepage-redesign/images/slide/ttl2.png" alt="" /><br />Opportunity awaits those who seek constant challenge, and remarkable rewards. <a onClick="cmRedirect2();" href="javascript:void(0);" id="item153" tabindex="53" title="Join our team, learn more about Financial Advisors" name="Join our team, learn more about Financial Advisors"><span class="hidden">Join our team, learn more about Financial Advisors</span>Join our team</a> of Financial Advisors at Bank of America, developing and delivering sophisticated solutions that help our affluent clients simplify, manage and maximize their financial goals.</p>';
        var item154 = '<p><img src="homepage-redesign/images/slide/ttl3.png" alt="" /><br /><a onClick="cmRedirect3();" href="javascript:void(0);" id="item154" tabindex="54" title="Join our team, learn more about Student programs" name="Join our team, learn more about Student programs"><span class="hidden">Join our team, learn more about Student programs</span>Join our team<span> learn more about Student programs </span></a>&nbsp;and we&rsquo;ll open your career path and give you new opportunities to take the possible and make it real. You&rsquo;ll receive training, mentorship and support to boost your aspirations to a global level. And, as part of the world&rsquo;s leading financial institution, you can create the kind of opportunity that generates greater opportunity and bigger impact than you ever imagined.</p>';
        var item155 = '<p><img src="homepage-redesign/images/slide/ttl4.png" alt="" /><br />With positions available across the Americas, Europe, Middle East, Africa (EMEA) and Asia&mdash;Pacific, there is literally a world of opportunity with us. More than 250,000 employees worldwide have already discovered their ideal career at Bank of America. We invite you to <a onClick="cmRedirect4();" href="javascript:void(0);" id="item155" tabindex="55" title="Learn about our locations" name="Learn about our locations"><span class="hidden">Learn about our locations</span>learn more about us.<span> Learn about our locations. </span></a></p>';
        var item156 = '<p><img src="homepage-redesign/images/slide/ttl5.png" alt="" /><br />Bring your skills to a place where teamwork, trust and accountability mean as much to us as they do to you.  Bank of America is proud to be regularly recognized by GI Jobs, Military Edge, and others, as a top &ldquo;military-friendly&rdquo; employer. Join thousands of other veterans here, and <a onClick="cmRedirect5();" href="javascript:void(0);" id="item156" tabindex="56" title="Discover why veterans consider us military-friendly" name="Discover why veterans consider us military-friendly"><span class="hidden">Discover why veterans consider us military-friendly</span>discover why.<span> veterans consider us military-friendly .</span></a></p>';
        
        function displaytext(sno) {
            var container = document.getElementById('slide-number');
            var oNewP = document.createElement("p");
            switch (sno) {
                case 1:
                    container.innerHTML = item152;
                    break;
                case 2:
                    container.innerHTML = item153;
                    break;
                case 3:
                    container.innerHTML = item154;
                    break;
                case 4:
                    container.innerHTML = item155;
                    break;
                case 5:
                    container.innerHTML = item156;
                    break;
                default:
                    container.innerHTML = item152;
                    break;
            }
        }       
        
    //document.onkeyup = KeyCheck;

    //check for tab event and activate content card links
    function KeyCheck()
    {
        var KeyID = event.keyCode;
        if (KeyID == 9)
        {
            
            var currObj = document.activeElement;
            var container = document.getElementById('slide-number');
            
            if (currObj.tabIndex == 52)            
            {
                container.innerHTML = item152;
                //document.getElementById("item152").setActive();
                $('#item152').focus();
            }

            if (currObj.tabIndex == 53)            
            {
                container.innerHTML = item153;
                //document.getElementById("item153").setActive();
                $('#item153').focus();
            }
            if (currObj.tabIndex == 54)            
            {
                container.innerHTML = item154;
                //document.getElementById("item154").setActive();
                $('#item154').focus();
            }
            if (currObj.tabIndex == 55)            
            {
                container.innerHTML = item155;
                //document.getElementById("item155").setActive();
                $('#item155').focus();
            }
            if (currObj.tabIndex == 56)            
            {
                container.innerHTML = item156;
                //document.getElementById("item156").setActive();
                $('#item156').focus();
            }
        }
        
    } 
    </script> 
    <script language="javascript" type="text/javascript">
    

        //$(document).ready(function() {reset();});  
      

        $(function () {
            $('#slide1').keyup(function () { rotate(); });
            $('#slide2').keyup(function () { rotate(); });
            $('#slide3').keyup(function () { rotate(); });
            $('#slide4').keyup(function () { rotate(); });
            $('#slide5').keyup(function () { rotate(); });
        });      
    </script>   
     <noscript>This page uses Javascript. Your browser either doesn't support Javascript or you have it turned off. To see this page properly please use a Javascript enabled browser.</noscript>

</head>
<body>
<asp:Literal ID="ltrlCorremetrixScripts" runat="server" Text="" ></asp:Literal>
    <div id="wrapper">
        <div id="header">
            <div id="header-top">

<a style="width: 1px; height: 1px; display: inline-block; position:absolute" title="Skip To Main Content." href="#skipmaincontent" name="Skip_To_Main_Content">
<img width="10" height="69" border="0" alt="Skip To Main Content." src="http://careers.bankofamerica.com/images/clear.gif">
</a>
                <img src="homepage-redesign/images/bg-header-top.jpg" alt="Bank of America logo, Careers" name="Bank_of_America_log_header" border="0" vspace="0" hspace="0" usemap="#map" />
                <map name="map"><area shape="rect" coords="45,26,303,63" href="https://www.bankofamerica.com/" alt="Bank of America logo" title="Bank of America logo" name="Bank_of_America_logo_header" tabindex="1" />
                <!--<area shape="rect" coords="326,26,435,63" alt="Careers" title="Careers">-->
                </map>
                <!--<div id="skipnav" style="display:block;"><a href="#skipcontent" style="width: 1px; height: 69px; display: inline-block;" title="Skip To Main Content." name="Skip_Main_Content_header" tabindex="2" onclick="_nexttab();"><img src="images/clear.gif" width="1" height="69" alt="Skip to main content." border="0" /></a></div>-->               
            </div>
            <div id="header-mid">
                    <div id="search">
                        <table width="908" border="0" cellpadding="0" cellspacing="0" style="margin-left:30px;" summary="This table contains the controls of search box.">
                            <tr>
                                <td>
                                    <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-top:3px; font-family:Verdana; font-size:14px; font-weight:bold; color:#fff;" summary="This table contains the controls of search box.">
                                        <tr>
                                            <td width="100"><img src="homepage-redesign/images/search-jobs.png" alt="" /></td>
                                            <td width="220">
<form id="form1" action="JobSearchConsolidated.aspx" method="post" runat="server">
<input type="hidden" name="isFirstTime" value="1" />
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <label for=”txtJobSearch”> <span class="hidden"> search</span> </label>
    <asp:TextBox ID="txtJobSearch" runat="server" Text="Type to search..." ToolTip="Type to search..." class="txtJobSearch" tabindex="3" Enabled="true" OnClick="this.value=''" Height="16px" Width="234px"></asp:TextBox>
    <asp:AutoCompleteExtender ID="txtJobSearch_AutoCompleteExtender" runat="server" 
        DelimiterCharacters=""  EnableCaching="False" Enabled="True" ServiceMethod="GetCompletionList" 
        ServicePath="" TargetControlID="txtJobSearch" UseContextKey="True" CompletionInterval="0" MinimumPrefixLength="3" 
    CompletionSetCount="10"
    CompletionListCssClass="list2"
CompletionListItemCssClass="listitem2"
CompletionListHighlightedItemCssClass="hoverlistitem2"
    >
    </asp:AutoCompleteExtender>
    </form>
</td>
                                            <td width="40" align="left"><input type="image" name="submit" src="homepage-redesign/images/btn-search.png" style="margin:3px 0 0 2px;" tabindex="4" alt="Search for jobs" title="Search for jobs" onclick="document.forms['form1'].submit();"/></td>  
                                            <td width="210" align="left"><a href="jobsearch.aspx" title="Follow to Advance Search" tabindex="5"><img src="homepage-redesign/images/btn-advanced-search.jpg"  alt="Follow to Advance Search" style="margin:3px 0 0 2px;"/></a></td>
                                            <td width="410" align="right">
                                           <!-- <div id="sjm-root" align="center"></div>
                                              <script type="text/javascript">
                                                  (function () {
                                                      var plugin = document.createElement('script'); plugin.async = true;
                                                      plugin.src = 'http://jobmatcher.stg.hodesiq.com/clients/boa/js/sjm-plugin.js';
                                                      (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(plugin);
                                                  } ());
                                              </script>  
                                              -->
                                            
                                            </td>
                                                                                                                       
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td><a class="asst" href="appl_with_disabilities.aspx" tabindex="6">Assistance for Applicants with Disabilities</a></td>
                                            <td></td><td></td>
                                        </tr>
                                    </table>
                                </td>                                
                            </tr>
                        </table>
                    </div>
                </div>

<span class="hidden">To navigate to a specific topic, begin by tabbing through the navigation menus.  There are 5 main categories of information, which are Locations, Businesses, Job Areas, Culture & Work Environment and Topics.  You can tab through all of the topics underneath a category, and then use the enter key to go to the specific page for that topic.</span>
<div id="topmenu">
<ul>
    <!--<li><span id="learnabout">Learn About</span></li>-->
    <li id ="megaanchor1" style="padding-right:10px;"><a href="#" id="locations" tabindex="8" title="Hover or click to expand the menu for Locations">LOCATIONS</a></li>
    <li id ="megaanchor2" style="padding-right:10px;"><a href="#" id="business" tabindex="13" title="Hover or click to expand the menu for Businesses">BUSINESSES</a></li>
    <li id ="megaanchor3" style="padding-right:10px;"><a href="#" id="jobareas" tabindex="23" title="Hover or click to expand the menu for Job Areas">JOB AREAS</a></li>   
    <li id ="megaanchor4" style="padding-right:10px;"><a href="#" id="culture" tabindex="35" title="Hover or click to expand the menu for Culture & Work Environment">CULTURE &AMP; WORK ENVIRONMENT</a></li>
    <li id ="megaanchor5"><a href="#" id="topics"  tabindex="44" title="Hover or click to expand the menu for Topics">TOPICS</a></li>        
    
</ul> 
</div>   
<div id="megamenu1" class="megamenu">
    <div class="top255">
        <div class="column" id="column01">
	        <ul>
	            <li><a href="asia_pacific.aspx" tabindex="9" id="item1" name="asia_pacific_topnav"><span class="hidden">Locations </span>Asia Pacific</a></li>
	            <li><a href="canada.aspx" tabindex="10" id="item2" name="canada_topnav"><span class="hidden">Locations </span>Canada</a></li>
	            <li><a href="emea.aspx" tabindex="11" id="item3" name="europe_middle_east_africa_topnav"><span class="hidden">Locations </span>Europe, Middle East and Africa</a></li>
                <li><a href="latin_america.aspx" tabindex="11" id="item3b" name="latin_america_topnav"><span class="hidden">Locations </span>Latin America</a></li>
	            <li><a href="learnmore/learnmore.asp" tabindex="12" id="item4" name="united_states_topnav"><span class="hidden">Locations </span>United States</a></li>
	        </ul>
        </div>
    </div>
    <div class="bottom255"></div>
</div>
<div id="megamenu2" class="megamenu">
    <div class="top365">
        <div class="column" id="column02">
	    <ul>
	        <li><a href="learnmore/bams.asp" tabindex="14" id="item13" name="boa_merchant_services_topnav"><span class="hidden">Businesses </span>Banc of America Merchant Services, LLC</a></li>
            <li><a href="learnmore/lobcss.asp" tabindex="15" id="item11" name="corporate_staff_support_topnav"><span class="hidden">Businesses </span>Corporate Staff &amp; Support</a></li>
            <li><a href="financialadvisor/" tabindex="16" id="item9" name="financial_advisor_topnav"><span class="hidden">Businesses </span>Financial Advisor</a></li>
            <li><a href="gcib/" tabindex="17" id="item6" name="global_banking_markets_topnav"><span class="hidden">Businesses </span>Global Banking &amp; Markets</a></li>
            <li><a href="globalcommercialbanking/" tabindex="18" id="item7" name="global_commercial_banking_topnav"><span class="hidden">Businesses </span>Global Commercial Banking</a></li>	        
            <li><a href="learnmore/lobgcsbb.asp" tabindex="19" id="item5" name="global_consumer_small_business_banking_topnav"><span class="hidden">Businesses </span>Global Consumer &amp; Small Business Banking</a></li>
	        <li><a href="technology/" tabindex="20" id="item10" name="global_technology_operations_topnav"><span class="hidden">Businesses </span>Global Technology &amp; Operations</a></li>
	        <li><a href="wealthmanagement/" tabindex="21" id="item8" name="global_wealth_investment_management_topnav"><span class="hidden">Businesses </span>Global Wealth &amp; Investment Management</a></li>	        
	        <li><a href="mortgage/" tabindex="22" id="item12" name="mortgage_topnav"><span class="hidden">Businesses </span>Mortgage</a></li>	        
	        
	    </ul>
    </div>
    </div>
    <div class="bottom365"></div>
</div>
<div id="megamenu3" class="megamenu">
    <div class="top325">
        <div class="column" id="column03">
	    <ul>
	        <li><a href="areasoftalent/areasoftalent.asp" tabindex="24" id="item14" name="job_areas_overview_topnav">Job Areas Overview</a></li>
	        <li><a href="learnmore/bams.asp" tabindex="25" id="item15" name="job_areas_boa_merchant_services_topnav"><span class="hidden">Job Areas </span>Banc of America Merchant Services, LLC</a></li>
	        <li><a href="finance/" tabindex="26" id="item16" name="cfo_group_topnav"><span class="hidden">Job Areas </span>CFO Group/Finance</a></li>
	        <li><a href="consumerbank/" tabindex="27" id="item17" name="consumer_banking_topnav"><span class="hidden">Job Areas </span>Consumer Banking</a></li>
            <li><a href="corporateaudit/" tabindex="27" id="item17b" name="corporate_audit_topnav"><span class="hidden">Job Areas </span>Corporate Audit</a></li>
	        <li><a href="customercare/" tabindex="28" id="item18" name="customer_care_topnav"><span class="hidden">Job Areas </span>Customer Care</a></li>	        
            <li><a href="globalcompliance/" tabindex="28" id="item18b" name="global_compliance_topnav"><span class="hidden">Job Areas </span>Global Compliance</a></li>
            <li><a href="marketing/" tabindex="28" id="item18c" name="global_marketing_corporate_affairs_topnav"><span class="hidden">Job Areas </span>Global Marketing & Corporate Affairs</a></li>
	        <li><a href="hr/" tabindex="29" id="item19" name="human_resources_topnav"><span class="hidden">Job Areas </span>Human Resources</a></li>	        
            <li><a href="legal/" tabindex="29" id="item19b" name="legal_topnav"><span class="hidden">Job Areas </span>Legal</a></li>	        
	        <li><a href="mortgagecareers/" tabindex="30" id="item20" name="job_areas_mortgage_topnav"><span class="hidden">Job Areas </span>Mortgage</a></li>	        
	        <li><a href="operations/" tabindex="31" id="item21" name="operations_topnav"><span class="hidden">Job Areas </span>Operations</a></li>	        
	        <li><a href="riskevaluation/" tabindex="32" id="item22" name="risk_management_topnav"><span class="hidden">Job Areas </span>Risk Management</a></li>	        
	        <li><a href="sales/" tabindex="33" id="item23" name="sales_topnav"><span class="hidden">Job Areas </span>Sales</a></li>	        
	        <li><a href="tech/" tabindex="34" id="item24" name="technology_topnav"><span class="hidden">Job Areas </span>Technology</a></li>
	    </ul>
    </div>
    </div>
    <div class="bottom325"></div>
</div>
<div id="megamenu4" class="megamenu">
     <div class="top325">
        <div class="column" id="column04">
	        <ul>
	            <li><a href="asia_culture.aspx"  tabindex="36" id="item26" name="culture_asia_pacific_boa_merrill_lynch_topnav"><span class="hidden">Culture &AMP; Work Environment </span>Asia Pacific Bank of America Merrill Lynch</a></li>
                <li><a href="bacs_culture.aspx" tabindex="37" id="item27" name="ba_continuum_india_topnav"><span class="hidden">Culture &AMP; Work Environment </span>BA Continuum India</a></li>
	            <li><a href="bacp_culture.aspx" tabindex="38" id="item28" name="ba_continuum_philippines_topnav"><span class="hidden">Culture &AMP; Work Environment </span>BA Continuum Philippines</a></li>
	            <li><a href="canada_culture.aspx" tabindex="39" id="item29" name="culture_canada_topnav"><span class="hidden">Culture &AMP; Work Environment </span>Canada</a></li>	        
                <li><a href="emea_culture.aspx" tabindex="40" id="item32" name="culture_europe_middle_east_africa_topnav"><span class="hidden">Culture &AMP; Work Environment </span>Europe, Middle East and Africa</a></li>
	            <li><a href="latin_america_bac_benefits_culture.aspx#CultureAndWork" tabindex="41" id="item31" name="latin_america_ba_continuum_topnav"><span class="hidden">Culture &AMP; Work Environment </span>Latin America BA Continuum</a></li>
                <li><a href="latin_america_ml_benefits_culture.aspx#CultureAndWork" tabindex="42" id="item30" name="latin_america_merrill_lynch_topnav"><span class="hidden">Culture &AMP; Work Environment </span>Latin America Merrill Lynch</a></li>
                <li><a href="learnmore/flexible_wa.asp"  tabindex="43" id="item25" name="culture_united_states_topnav"><span class="hidden">Culture &AMP; Work Environment </span>United States</a></li>
	        </ul>
        </div>
    </div>
    <div class="bottom325"></div>
</div>
<div id="megamenu5" class="megamenu">
     <div class="top325">
        <div class="column" id="column05">
	        <ul>
	            <li><a href="appl_with_disabilities.aspx" tabindex="45" id="item33" name="applicants_with_disabilities_topnav"><span class="hidden">Topics </span>Applicants with Disabilities</a></li>
	            <li><a href="learnmore/bams.asp" tabindex="46" id="item34" name="topics_boa_merchant_services_topnav"><span class="hidden">Topics </span>Banc of America Merchant Services, LLC</a></li>
	            <li><a href="learnmore/corpinfo.asp" tabindex="47" id="item35" name="corporate_information_topnav"><span class="hidden">Topics </span>Corporate Information</a></li>
	            <li><a href="learnmore/diversity.asp" tabindex="48" id="item36" name="diversity_inclusion_topnav"><span class="hidden">Topics </span>Diversity and Inclusion</a></li>
	            <li><a href="faq/faq.asp"  tabindex="49" id="item37" name="faqs_topnav"><span class="hidden">Topics </span>Frequently Asked Questions</a></li>
	            <li><a href="military/" tabindex="50" id="item38" name="military_veteran_recruiting_topnav"><span class="hidden">Topics </span>Military &amp; Veteran Recruiting</a></li>
	            <li><a href="staffingevents/staffingevents.asp"  tabindex="51" id="item39" onblur="trnsfrfocus();" onmouseup="trnsfrfocus();" name="staffing_events_topnav"><span class="hidden">Topics </span>Staffing Events</a></li>
	        </ul>
        </div>
    </div>
    <div class="bottom325"></div>
</div>
<script type="text/javascript">
    jkmegamenu.definemenu("megaanchor1", "megamenu1", "mouseover")
    jkmegamenu.definemenu("megaanchor2", "megamenu2", "mouseover")
    jkmegamenu.definemenu("megaanchor3", "megamenu3", "mouseover")
    jkmegamenu.definemenu("megaanchor4", "megamenu4", "mouseover")
    jkmegamenu.definemenu("megaanchor5", "megamenu5", "mouseover")
</script>
<script type="text/javascript">
    $(function () {

        $('#learnabout').focus(function () { reset(); });
        $('#learnabout').mouseenter(function () { reset(); });
        $('#learnabout').mouseover(function () { reset(); });

        $('#emptyspc').focus(function () { reset(); });
        $('#emptyspc').mouseenter(function () { reset(); });
        $('#emptyspc').mouseover(function () { reset(); });

        $('#search').focus(function () { reset(); });
        $('#search').mouseenter(function () { reset(); });
        $('#search').mouseover(function () { reset(); });

        $('#contents').focus(function () { reset(); });
        $('#contents').mouseenter(function () { reset(); });
        $('#contents').mouseover(function () { reset(); });

        $('#rotator').focus(function () { reset(); });
        $('#rotator').mouseenter(function () { reset(); });
        $('#rotator').mouseover(function () { reset(); });

        $('#side1').focus(function () { reset(); });
        $('#side1').mouseenter(function () { reset(); });
        $('#side1').mouseover(function () { reset(); });

        $('#side2').focus(function () { reset(); });
        $('#side2').mouseenter(function () { reset(); });
        $('#side2').mouseover(function () { reset(); });

        $('#side3').focus(function () { reset(); });
        $('#side3').mouseenter(function () { reset(); });
        $('#side3').mouseover(function () { reset(); });

        $('#side4').focus(function () { reset(); });
        $('#side4').mouseenter(function () { reset(); });
        $('#side4').mouseover(function () { reset(); });

        $('#side5').focus(function () { reset(); });
        $('#side5').mouseenter(function () { reset(); });
        $('#side5').mouseover(function () { reset(); });

        $('#locations').focus(function () {
            reset();
            var offset = $('#locations').offset();
            $('#megamenu1').css("left", offset.left);
            $('#megamenu1').css("top", offset.top + 44);
            $('#megamenu1').css("display", 'block');
            $('#megaanchor1').css("background", '#ffffff');
            $('#locations').css("color", '#000000');
        });

        $('#locations').mouseenter(function () {
            reset();
            var offset = $('#locations').offset();
            $('#megamenu1').css("left", offset.left);
            $('#megamenu1').css("top", offset.top + 44);
            $('#megamenu1').css("display", 'block');
            $('#megaanchor1').css("background", '#ffffff');
            $('#locations').css("color", '#000000');
        });

        $('#megamenu1').mouseleave(function () {
            reset();
        });

        $('#business').focus(function () {
            reset();
            var offset = $('#business').offset();
            $('#megamenu2').css("left", offset.left);
            $('#megamenu2').css("top", offset.top + 44);
            $('#megamenu2').css("display", 'block');
            $('#megaanchor2').css("background", '#ffffff');
            $('#business').css("color", '#000000');
        });

        $('#business').mouseenter(function () {
            reset();
            var offset = $('#business').offset();
            $('#megamenu2').css("left", offset.left);
            $('#megamenu2').css("top", offset.top + 44);
            $('#megamenu2').css("display", 'block');
            $('#megaanchor2').css("background", '#ffffff');
            $('#business').css("color", '#000000');
        });
        $('#megamenu2').mouseleave(function () {
            reset();
        });

        $('#jobareas').focus(function () {
            reset();
            var offset = $('#jobareas').offset();
            $('#megamenu3').css("left", offset.left);
            $('#megamenu3').css("top", offset.top + 44);
            $('#megamenu3').css("display", 'block');
            $('#megaanchor3').css("background", '#ffffff');
            $('#jobareas').css("color", '#000000');
        });

        $('#jobareas').mouseenter(function () {
            reset();
            var offset = $('#jobareas').offset();
            $('#megamenu3').css("left", offset.left);
            $('#megamenu3').css("top", offset.top + 44);
            $('#megamenu3').css("display", 'block');
            $('#megaanchor3').css("background", '#ffffff');
            $('#jobareas').css("color", '#000000');
        });

        $('#megamenu3').mouseleave(function () {
            reset();
        });

        $('#culture').focus(function () {
            reset();
            var offset = $('#culture').offset();
            $('#megamenu4').css("left", offset.left);
            $('#megamenu4').css("top", offset.top + 44);
            $('#megamenu4').css("display", 'block');
            $('#megaanchor4').css("background", '#ffffff');
            $('#culture').css("color", '#000000');
        });

        $('#culture').mouseenter(function () {
            reset();
            var offset = $('#culture').offset();
            $('#megamenu4').css("left", offset.left);
            $('#megamenu4').css("top", offset.top + 44);
            $('#megamenu4').css("display", 'block');
            $('#megaanchor4').css("background", '#ffffff');
            $('#culture').css("color", '#000000');
        });

        $('#megamenu4').mouseleave(function () {
            reset();
        });

        $('#topics').focus(function () {
            var marLeft = 234;
            if ($.browser.msie && parseFloat($.browser.version) < 9) { marLeft = 235; }
            reset();
            var offset = $('#topics').offset();
            $('#megamenu5').css("left", offset.left - marLeft);
            $('#megamenu5').css("top", offset.top + 44);
            $('#megamenu5').css("display", 'block');
            $('#megaanchor5').css("background", '#ffffff');
            $('#topics').css("color", '#000000');
        });

        $('#topics').mouseenter(function () {
            var marLeft = 234;
            if ($.browser.msie && parseFloat($.browser.version) < 9) { marLeft = 235; }
            reset();
            var offset = $('#topics').offset();
            $('#megamenu5').css("left", offset.left - marLeft);
            $('#megamenu5').css("top", offset.top + 44);
            $('#megamenu5').css("display", 'block');
            $('#megaanchor5').css("background", '#ffffff');
            $('#topics').css("color", '#000000');
        });

        $('#megamenu5').mouseleave(function () {
            reset();
        });
    });
</script>
<script type="text/javascript">
    function reset() {
        document.getElementById('megamenu1').style.display = 'none';
        document.getElementById('megaanchor1').style.background = 'none';
        document.getElementById('locations').style.color = '#ffffff';
        document.getElementById('megamenu2').style.display = 'none';
        document.getElementById('megaanchor2').style.background = 'none';
        document.getElementById('business').style.color = '#ffffff';
        document.getElementById('megamenu3').style.display = 'none';
        document.getElementById('megaanchor3').style.background = 'none';
        document.getElementById('jobareas').style.color = '#ffffff';
        document.getElementById('megamenu4').style.display = 'none';
        document.getElementById('megaanchor4').style.background = 'none';
        document.getElementById('culture').style.color = '#ffffff';
        document.getElementById('megamenu5').style.display = 'none';
        document.getElementById('megaanchor5').style.background = 'none';
        document.getElementById('topics').style.color = '#ffffff';
    }
    function trnsfrfocus() {
        reset();
        window.clearInterval(intval)
        intval = null;
    }
    function _nexttab() { document.getElementById('item157').focus(); }
</script>
        
            <a name="skipmaincontent"></a>
            <H1 class="hidden">Bank of America Careers Home</H1>            <div id="slidearea">
                <div id="rotator"> 
                <ul>
                    <li id="slide1" tabindex="52" class="show" style="background: url(homepage-redesign/images/slide/p1.jpg) top left no-repeat;"><a href="#"><span class="hidden">Slide 1 Job Areas</span></a></li>
                    <li id="slide2" tabindex="53" style="background: url(homepage-redesign/images/slide/p2.jpg) top left no-repeat;"><a href="#"><span class="hidden">Slide 2 Financial Advisors</span></a></li>
                    <li id="slide3" tabindex="54" style="background: url(homepage-redesign/images/slide/p3.jpg) top left no-repeat;"><a href="#"><span class="hidden">Slide 3 Students</span></a></li>
                    <li id="slide4" tabindex="55" style="background: url(homepage-redesign/images/slide/p4.jpg) top left no-repeat;"><a href="#"><span class="hidden">Slide 4 Locations</span></a></li>
                    <li id="slide5" tabindex="56" style="background: url(homepage-redesign/images/slide/p5.jpg) top left no-repeat;"><a href="#"><span class="hidden">Slide 5 Military</span></a></li>
                </ul>
                <div>
                    <div id="slide-number"></div>
                    <div class="slide-controls">
                        <div id="pagination">
                            <div class="prev" style="display: none;"></div><div id="ctrl1" name="button1">&nbsp;&nbsp;</div><div id="ctrl2" name="button2">&nbsp;&nbsp;</div><div id="ctrl3" name="button3">&nbsp;&nbsp;</div><div id="ctrl4" name="button4">&nbsp;&nbsp;</div><div id="ctrl5" name="button5">&nbsp;&nbsp;</div><div class="next" style="display:none;"></div>
                         <script language="javascript" type="text/javascript">

                            //DO NOT REMOVE!!!!!!! - Coremetrics implementation for slide carousel buttons - DO NOT REMOVE!!!!!!!
                             var ctrl1 = document.getElementById("ctrl1");
                             var ctrl2 = document.getElementById("ctrl2");
                             var ctrl3 = document.getElementById("ctrl3");
                             var ctrl4 = document.getElementById("ctrl4");
                             var ctrl5 = document.getElementById("ctrl5");

                             ctrl1.onclick = function () {
                                 cmCreateManualLinkClickTag('careershome.aspx','button1_job_areas','career:Tool:Home');
                             }
                             ctrl2.onclick = function () {
                                 cmCreateManualLinkClickTag('careershome.aspx','button2_financial_advisors','career:Tool:Home');
                             }
                             ctrl3.onclick = function () {
                                 cmCreateManualLinkClickTag('careershome.aspx','button3_students','career:Tool:Home');
                             }
                             ctrl4.onclick = function () {
                                 cmCreateManualLinkClickTag('careershome.aspx','button4_locations','career:Tool:Home');
                             }
                             ctrl5.onclick = function () {
                                 cmCreateManualLinkClickTag('careershome.aspx','button5_military','career:Tool:Home');
                             }
                             //DO NOT REMOVE!!!!!!! - Coremetrics implementation for slide carousel buttons - DO NOT REMOVE!!!!!!!

                         </script>
                        
                        </div>
                    </div>          
                </div>        
            </div>
            </div>
        </div>
        <div id="contents">            
            <div id="body-area">
                <div class="share"></div>
                <div class="calls-out">
                    <div class="left">
                        <table width="560" border="0" cellpadding="0" cellspacing="0" style="font-family:Verdana; font-size:10.5px; font-weight:normal; color:#686868; line-height:14px;" summary="This table holds body contents.">
                            <tr>
                                <td width="60">
            
                                    <div id="feedback" style="background: none;"><img src="images/clear.gif" alt="" id="item157" tabindex="57"/>
							<div id="feedback-wrap"></div>
							<script language="javascript" type="text/javascript" src="homepage-redesign/onlineopinionF3cS/oo_engine.js"></script>
							<script language="javascript" type="text/javascript" src="homepage-redesign/onlineopinionF3cS/oo_conf_en-US.js"></script>
							<script language="javascript" type="text/javascript">
							    jQuery.fn.outerHTML = function () {
							        return $($('<div></div>').html(this.clone())).html();
							    }
							    $(document).ready(function () {
							        if ($('#O_o') && $('#O_o').length > 0 && $('#O_c') && $('#O_c').length > 0) {
							            //$('#O_o').css('position', 'relative').css('z-index', '1000000').css('left', '0px').css('top', '0px');
							            $('#O_o').hide();
							            $('#O_c').hide();
							            $('#feedback br').hide();
							            $('#O_o table tbody tr td a').each(function (index) {
							                if (index == 0) {
							                    $(this).html('<img tabindex="57" id="item157" alt="" src="homepage-redesign/images/btn-feedback.png" title="Feedback" alt="Feedback">');
							                    $('#feedback-wrap').html($(this).outerHTML());
							                    $('#feedback-wrap').bind('click', function (event) {
							                        $(this).hide();
							                    });
							                }
							            });
							        }
							        else {
							            $('#feedback-wrap').html('<img tabindex="57" id="item157" alt="" src="images/clear.gif">');
							        }
							    });
							</script>
                                    </div>
                                </td>
                                <td><h1><span style="color:#d10f00; font-size:24px; font-weight:normal; font-stretch:narrower; line-height:26px; z-index:1;">Set opportunity in motion</span></h1><p style="margin-top:10px; padding:0;">
                                    Around the corner, across the country, or across the globe; a career with Bank of America can take you as far as your talent and ambition will go.<br /><br />                                    Our heritage spans more than 200 years of investing in the people, industries and communities we serve. And every day, we&rsquo;re creating a larger opportunity that makes our future &mdash; and yours &mdash; even more promising.</p>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="right">
                        <div class="follow">
                            <!-- <p style="margin-top:27px;">
                           
                            <a href="http://social.bankofamerica.com/#linkedin" tabindex="65" title="Follow us on LinkedIn"><img src="homepage-redesign/images/follow-linkedin.jpg" alt="Follow us on LinkedIn" /></a><br />
                            <a href="https://www.facebook.com/BankofAmerica" tabindex="66" title="Follow us on Facebook"><img style="margin:5px 0 5px 0;" src="homepage-redesign/images/follow-facebook.jpg" alt="Follow us on Facebook" /></a><br />
                            <a href="http://social.bankofamerica.com/#twitter" tabindex="67" title="Follow us on Twitter"><img src="homepage-redesign/images/follow-twitter.jpg" alt="Follow us on Twitter" /></a>
                             </p>
                            -->
                           
                            <img id="Img1" src="homepage-redesign/images/follow-us.png" usemap="#Image-Maps_8201206251234197" border="0" width="138" height="131" alt="" />
                            <map id="Map1" name="Image-Maps_8201206251234197">
                            <area shape="rect" coords="10,48,128,65" href="http://social.bankofamerica.com/#linkedin" tabindex="65" alt="Follow us on LinkedIn" title="Follow us on LinkedIn"/>
                            <area shape="rect" coords="8,74,128,96" href="https://www.facebook.com/BankofAmerica" tabindex="66" alt="Follow us on Facebook" title="Follow us on Facebook"    />
                            <area shape="rect" coords="9,99,129,121" href="http://social.bankofamerica.com/#twitter" tabindex="67" alt="Follow us on Twitter" title="Folow us on Twitter"    />
                            </map>
                        </div>
                        <div class="students">
                            <table width="260" border="0" cellpadding="0" cellspacing="0" style="height:86px;" summary="This table holds student image.">
                                <tr><td><a href="/campus.aspx" title="Students, make the most of your talents – and your career – with us.  Learn more" tabindex="68"><img src="homepage-redesign/images/students-spotlight2.png" alt="Students, make the most of your talents – and your career – with us.  Learn more >" /></a></td></tr>                                
                            </table>
                        </div>
                    </div>
                </div>                
            </div>
        </div> 
        <div id="footer">
            <div class="footer-contents">
                <div id="footerNavTop">
                    <ul>   
                        <li><a href="https://www.bankofamerica.com/privacy/index.jsp" title="Privacy Policy" tabindex="69" name="privacy_policy_footernav">Privacy Policy</a></li>
                        <li><a href="http://www.bankofamerica.com/state.cgi?section=help&update=&cookiecheck=yes&template=sitemap.cfm&lob=" title="Site Map" tabindex="70" name="site_map_footernav">Site Map</a></li>
                        <li style="background:none;" title="About Us"><a href="http://about.bankofamerica.com" tabindex="72" name="about_us_footernav">About Us</a></li>
                    </ul>
                </div>
                <div id="footer-mid">
                    <div id="footerNavMidLeft">
                        <img id="Image-Maps_4201206181254445" usemap="#Image-Maps_4201206181254445" style="padding-left:1px;" src="homepage-redesign/images/footer/multi-brand_footer_rgb.jpg" />
                        <map id="_Image-Maps_4201206181254445" name="Image-Maps_4201206181254445">
                        <area shape="rect" coords="9,2,143,26" href="http://about.bankofamerica.com" title="Bank of America Corporation Logo" tabindex="73" name="boa_corporation_footernav"/>
                        <area shape="rect" coords="154,2,254,26" href="http://www.bankofamerica.com" title="Bank of America Logo" tabindex="74" alt="Bank of America Logo" name="boa_foternav"/>
                        <area shape="rect" coords="267,2,349,26" href="http://ml.com/index.asp?id=7695_15125" title="Merrill Lynch Wealth Management logo" tabindex="75" name="merrill_lynch_wealth_management_footernav"/>
                        <area shape="rect" coords="364,2,458,26" href="http://www.ustrust.com/ust/pages/index.aspx" title="U.S. TRUST logo" tabindex="76" name="us_trust_footernav" alt="U.S. TRUST logo"/>
                        <area shape="rect" coords="473,0,568,26" href="http://corp.bankofamerica.com/" title="Bank of America Merrill Lynch logo" tabindex="77" name="boa_merrill_lynch_footernav" alt="Bank of America Merrill Lynch logo"/>
                        </map>
                    </div>
                    <div id="footerNavMidRight"><p>Bank of America, N.A. Member FDIC. <a href="http://www.bankofamerica.com/help/equalhousing.cfm" tabindex="78">Equal Housing Lender</a><br /> &copy;2012 Bank of America Corporation. All rights reserved.</p></div>
                </div>
           </div>
        </div>       
    </div>
    <script language='javascript1.1' type='text/javascript'>
    //<!—

    cmCreatePageviewTag('career:Tool:Home;careershome', null, null, 'career:Tool:Home', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);

    //-->
</script> 
</body>
</html>

 