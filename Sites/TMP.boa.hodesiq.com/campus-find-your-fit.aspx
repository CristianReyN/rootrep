<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeFile="campus-find-your-fit.aspx.cs" Inherits="campus_find_your_fit" MasterPageFile="~/BOAmaster.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphmain" Runat="Server">
<!-- Body-->

    <script language="javascript" type="text/javascript">
        var infoSelect;
        function sel_responsible_options(bar, str_selectedID) {
            // function created in case we allowed top userAgent JavaScript for validation
            var checkboxtext;
            __doPostBack('clearCheckbox', bar);
        }
    </script>

    <style type="text/css">
   SELECT {
    width:300px;
    } 
   
   .find-your-fit {
	width: 578px !important;
	background: url(images/campus/bkg-findyourfit-content.jpg) top left no-repeat;
	margin-top: 8px;
	margin-left:1px;

	background-color: transparent;
    color: #333333;
    font-family: Verdana, Helvetica, Arial, sans-serif;
    font-size: 0.9em !Important;
    font-weight: normal;
    line-height: 1.3em;
    height:163px;
	}
	
	.find-your-fit h1 {
	margin: 0;
	padding: 0;
	font-weight: bold;
	padding: 25px 0 5px 12px;
	}
	
	.find-your-fit p {
	margin: 0;
	padding: 0;
	font-size: 11px;
	padding: 0 35px 10px 12px;
	}
	
	.find-your-fit-container p {
    padding: 0;
    margin: 0;
    padding: 5px 0 30px 0;
	}
	
	.MainHeadliner2 {
	padding: 0;
	margin: 0;
	height: 92px;
	}

    .find-your-fit-container2 {
        padding: 0;
        margin: 0;
        margin: -2px 0 40px 0;
        background: url(images/campus/bkg-findyourfit-form1.jpg) bottom left no-repeat;
        
        }
    
    .find-your-fit-container2 #results-container {
	    width: 510px;
	    margin: 0 0 0 30px;
	    padding: 20px 0 20px 0;
	   
	}

	
	.find-your-fit-container2 #results-container ul {
	margin-left: 20px; /*edited for NET version. Do not change!!*/
	padding: 0;
	list-style: none;
	padding: 25px 0 25px 150px;
	list-style-image: none !important;
	}
	
	#results-container li{
	padding-bottom: 9px;
	}
	
	.results-container p {
	padding: 0;
	padding: 0 0 15px 150px;
	/*width:400px !important;*/ /* edited for NET version. DO NOT CHANGE */
	}
	
	.find-your-fit-container2 #results-container li a {
	font-weight: bold;
	text-decoration: none;
	}
	
	.find-your-fit-container2 #results-container li a:hover {
	text-decoration: underline;
	}
	
	  #divResultData  {
        background: url(images/campus/ico-results-page.jpg) top left no-repeat;
       
      }
        
      #divResultData p a {
        text-decoration: none;
      }
      
       #divResultData p a:hover {
       text-decoration: underline;
      }
     
    
        .find-your-fit-container
        {        
            width: 560px;
           /* padding-left:15px; */
        }
        .mainFirstStep
        {
            background:url(images/campus/bkg-findyourfit-form1.jpg) bottom left no-repeat;
            width:577px;
            float: left;
            margin-top:-8px;
        }
        .mainSecondStep {
            background:url(images/campus/bkg-findyourfit-form1.jpg) bottom left no-repeat;
            width:577px;
            float: left;
            margin-top:-8px;
            padding-bottom: 30px;
        }

        .FirstSetaspDropDownLists {
            width:560px;
            margin-left:12px;
            float: left;
            margin-top: 20px;
        }

       
        .fyf-responsibilities {
            width: 400px ! important;
            float:left; 
            padding-bottom: 20px;
            
         }
        .fyf-interests {
            float: left; 
            width: 400px ! important;
            padding-bottom: 20px;
           
        }
        .fyf-titles {
            background: none repeat scroll 0 0 white;
            margin-left: 5px;
            position: relative;
            top: -10px;
            width: 340px;
            font-size:12px;
            font-weight:bold;
        }   

        .ErrorPanel {
            margin-right:60px;
            margin-bottom:5px; 
            margin-top:10px; 
            float:right;
            width:360px;
           }
        
        .errormsg-top {
	     background: transparent url(images/campus/bkg-top-error.gif) top left no-repeat;
	    }
	
	    .errormsg-bottom {
	        width: 360px;
	        padding: 10px 20px 0 50px;
	        background: transparent url(images/campus/bkg-bottom-error.gif) bottom left no-repeat;
	    }
	
	    .errormsg-top p {
	        margin: 0;
	        padding: 0;
	        color: ed1b2e;
	    }
    	
	    .errormsg-top ul {
	        margin: 0;
	        padding: 0;
	        padding: 8px 30px 10px 25px;
	    }
	    
	    .errormsg-top ul li{
	        margin: 0;
	        padding: 0;
	        padding: 0 40px 0 0;
	    }
        
        
      
      #ctl00_cphmain_sel_environment {
	    width: 360px;
	    }
	    
       .fyf-responsibilities table td input {
           float: left;
           margin: 0 0 20px 0;
       }
       
        .fyf-responsibilities table td label {
           display: block;
           padding: 5px 0 10px 25px;
       }
       
       .fyf-interests table td input {
           float: left;
           margin: 0 0 20px 0;
       }
       
       .fyf-interests table td label {
           display: block;
           padding: 3px 0 10px 25px;
       }
        
      .fyf-titles span {
            margin: 0;
            padding: 0;
            font-size: 10px;
        }
        
       
      
    </style>

    <link href="Includes/fitfinder_video.css"/>
    
	
    <table border="0" cellpadding="0" cellspacing="0" summary="" width="578" style="height: 770px;">
        <tr valign="top">
            <td width="100%" valign="top" id="Headline">
                <div id="Headerline" class="find-your-fit">
                
                    <h1>Find Your Fit</h1>
                    <p>As one of the world's largest financial services companies, we offer unparalleled access 
                    to career opportunities across the globe. Your challenge is to find where you best fit within our team. 
                    Our career fit tool is designed to help you match your interests, background and career goals with our offerings. 
                    Give it a try. You might be surprised to discover how far you can go here.</p>
                </div>

				<!-- space for content -->
				
	                <asp:HiddenField runat="server" ID="ISSubmited" Value=0 />
	                <asp:HiddenField runat="server" ID="ISValid" Value=0 />
                    <asp:Panel ID="CPHPanel1"  runat="server">
                            <div id="step1" class="find-your-fit-container">
                            <div id="Hedliner1" class="MainHeadliner"> 
                                <img src="images/campus/header-step1.jpg" alt="Step 1 of three steps" />
                             </div>
                        <div id="div1" class="mainFirstStep">
                            <div id="spacertop" style="clear:both; padding:1px;"> </div>
                            <div id="div2" class="FirstSetaspDropDownLists">
                                <div id="Div9" style="margin-left:-50px;">
                                <asp:Panel runat="server" ID="pnlErrorDisplay" Visible="false" class="ErrorPanel">
                                                                       
                                    <div id="message" class="errormsg-top">
                                        <div class="errormsg-bottom">
                                            <p>Some information is missing:</p>
                                            <ul>                                            
                                            <%=str_errors1 %>
                                            </ul>
                                        </div>
                                    </div>
                                                                                                
                                </asp:Panel>
                                </div>                            
                            <div id="Div10" style="height:1px; width:100%; clear:both; margin-bottom:1px;">&nbsp;</div>
                            <div style="float:left; clear:left; position:relative; top:10px;"><img src="images/campus/bkg-left_first.gif" /></div>                         
						        <asp:label associatedcontrolid="ddlsel_education" id="lbl_education" runat="server">I am a(n):</asp:label>
							        <p><asp:DropDownList id="ddlsel_education" class="fyf-education" name="sel_education" runat="server" Width="380px">
							            <asp:ListItem Text="" Value="0" >Please select level of education</asp:ListItem>  
								        <asp:ListItem value="1">Undergraduate student</asp:ListItem>
								        <asp:ListItem value="2">Graduate student with 0–5 years of work experience</asp:ListItem>
								        <asp:ListItem value="3">Graduate student with more than 5 years of work experience</asp:ListItem>
							        </asp:DropDownList>
                                    </p>
                                <asp:label associatedcontrolid="sel_employOpportunity" id="lbl_employOpportunity" runat="server">I am interested in:</asp:label><br />    
                                    <p><asp:DropDownList id="sel_employOpportunity"  runat="server" name="sel_employOpportunity" Width="380px">
                                        <asp:ListItem value="0">Please select level of employment opportunity</asp:ListItem>
                                        <asp:ListItem value="1">Full-time opportunities</asp:ListItem>
                                        <asp:ListItem value="2">Rotational opportunities </asp:ListItem>
                                        <asp:ListItem value="3">Internship opportunities</asp:ListItem>
                                    </asp:DropDownList></p>                            
                                <asp:label associatedcontrolid="sel_coursework" id="lbl_coursework" runat="server">I am also interested in (or have completed) coursework in:</asp:label><br />    
                                   <p> <asp:DropDownList id="sel_coursework"  runat="server" name="sel_coursework" Width="380px">
                                            <asp:ListItem value="0">Please select one</asp:ListItem>
                                            <asp:ListItem value="1">Six Sigma methodology</asp:ListItem>
                                            <asp:ListItem value="2">Accounting/financial certifications/securities trading</asp:ListItem>
                                            <asp:ListItem value="3">Computer programming languages</asp:ListItem>
                                            <asp:ListItem value="4">Real estate</asp:ListItem>
                                            <asp:ListItem value="5">Law</asp:ListItem>
                                            <asp:ListItem value="6">None of the above</asp:ListItem>
                                        </asp:DropDownList></p>                            
                                     <asp:label associatedcontrolid="sel_degree1" id="lbl_degree" runat="server">I will/have earn(ed) my degree in (my area <br />of concentration is):
                                     <span style="font-weight:normal;">(select up to three)</span> </asp:label>
							        <p style="margin-left:200px;"><asp:DropDownList id="sel_degree1"  runat="server" name="sel_degree1" Width="310px" OnSelectedIndexChanged="sel_degree1_SelectedIndexChanged">
								        <asp:ListItem value="0">Please select degree/area of concentration</asp:ListItem>
								        <asp:ListItem value="1">Finance</asp:ListItem>
                                        <asp:ListItem value="2">Accounting</asp:ListItem>
                                        <asp:ListItem value="3">Management</asp:ListItem>
                                        <asp:ListItem value="4">Statistics</asp:ListItem>
                                        <asp:ListItem value="5">Information systems</asp:ListItem>
                                        <asp:ListItem value="6"> Business administration</asp:ListItem>
                                        <asp:ListItem value="7">Supply chain management</asp:ListItem>
                                        <asp:ListItem value="8">Operations</asp:ListItem>
                                        <asp:ListItem value="9">Liberal arts</asp:ListItem>
                                        <asp:ListItem value="10">Mathematics</asp:ListItem>
                                        <asp:ListItem value="11">Criminal justice</asp:ListItem>
                                        <asp:ListItem value="12">International business</asp:ListItem>
                                        <asp:ListItem value="13">Computer science</asp:ListItem>
                                        <asp:ListItem value="14">Engineering</asp:ListItem>
                                        <asp:ListItem value="15">Marketing</asp:ListItem>
                                        <asp:ListItem value="16"> Communications</asp:ListItem>
                                        <asp:ListItem value="17">Human resources</asp:ListItem>
                                        <asp:ListItem value="18">Real estate</asp:ListItem>
							        </asp:DropDownList>
                                    <br />
                                    <asp:DropDownList id="sel_degree2"  runat="server" name="sel_degree2" Width="310px" OnSelectedIndexChanged="sel_degree2_SelectedIndexChanged">
								        <asp:ListItem value="0">Please select degree/area of concentration</asp:ListItem>
								        <asp:ListItem value="1">Finance</asp:ListItem>
                                        <asp:ListItem value="2">Accounting</asp:ListItem>
                                        <asp:ListItem value="3">Management</asp:ListItem>
                                        <asp:ListItem value="4">Statistics</asp:ListItem>
                                        <asp:ListItem value="5">Information systems</asp:ListItem>
                                        <asp:ListItem value="6"> Business administration</asp:ListItem>
                                        <asp:ListItem value="7">Supply chain management</asp:ListItem>
                                        <asp:ListItem value="8">Operations</asp:ListItem>
                                        <asp:ListItem value="9">Liberal arts</asp:ListItem>
                                        <asp:ListItem value="10">Mathematics</asp:ListItem>
                                        <asp:ListItem value="11">Criminal justice</asp:ListItem>
                                        <asp:ListItem value="12">International business</asp:ListItem>
                                        <asp:ListItem value="13">Computer science</asp:ListItem>
                                        <asp:ListItem value="14">Engineering</asp:ListItem>
                                        <asp:ListItem value="15">Marketing</asp:ListItem>
                                        <asp:ListItem value="16">Communications</asp:ListItem>
                                        <asp:ListItem value="17">Human resources</asp:ListItem>
                                        <asp:ListItem value="18">Real estate</asp:ListItem>
							        </asp:DropDownList>
                                    <br />
                                    <asp:DropDownList id="sel_degree3"  runat="server" name="sel_degree3" Width="310px" OnSelectedIndexChanged="sel_degree3_SelectedIndexChanged">
								        <asp:ListItem value="0">Please select degree/area of concentration</asp:ListItem>
								        <asp:ListItem value="1">Finance</asp:ListItem>
                                        <asp:ListItem value="2">Accounting</asp:ListItem>
                                        <asp:ListItem value="3">Management</asp:ListItem>
                                        <asp:ListItem value="4">Statistics</asp:ListItem>
                                        <asp:ListItem value="5">Information systems</asp:ListItem>
                                        <asp:ListItem value="6"> Business administration</asp:ListItem>
                                        <asp:ListItem value="7">Supply chain management</asp:ListItem>
                                        <asp:ListItem value="8">Operations</asp:ListItem>
                                        <asp:ListItem value="9">Liberal arts</asp:ListItem>
                                        <asp:ListItem value="10">Mathematics</asp:ListItem>
                                        <asp:ListItem value="11">Criminal justice</asp:ListItem>
                                        <asp:ListItem value="12">International business</asp:ListItem>
                                        <asp:ListItem value="13">Computer science</asp:ListItem>
                                        <asp:ListItem value="14">Engineering</asp:ListItem>
                                        <asp:ListItem value="15">Marketing</asp:ListItem>
                                        <asp:ListItem value="16"> Communications</asp:ListItem>
                                        <asp:ListItem value="17">Human resources</asp:ListItem>
                                        <asp:ListItem value="18">Real estate</asp:ListItem>
							        </asp:DropDownList><br></p>
                                    <asp:label associatedcontrolid="sel_environment" id="lbl_environment" runat="server">My preferred work environment is:</asp:label><br /><p>
							        <asp:DropDownList id="sel_environment"  runat="server" name="sel_environment" Width="380px">
								        <asp:ListItem value="0">Please select one</asp:ListItem>
								        <asp:ListItem value="1">Working with internal teams to optimize performance</asp:ListItem>
								        <asp:ListItem value="2">Building relationships with external customers (audiences)</asp:ListItem>
							        </asp:DropDownList>
                                    </p>
                                    <asp:label associatedcontrolid="sel_geographic" id="lbl_geographic" runat="server">I prefer to work in the following area:</asp:label><br /><p>
							        <asp:DropDownList id="sel_geographic"  runat="server" name="sel_geographic" Width="380px">
								        <asp:ListItem value="0">Please select one</asp:ListItem>
								        <asp:ListItem value="1">Southeast U.S.</asp:ListItem>
								        <asp:ListItem value="2">Northeast U.S.</asp:ListItem>
                                        <asp:ListItem value="3">West Coast U.S.</asp:ListItem>
								        <asp:ListItem value="4">Midwest U.S.</asp:ListItem>
                                        <asp:ListItem value="5">Southwest U.S.</asp:ListItem>
								        <asp:ListItem value="6">Central U.S.</asp:ListItem>
                                        <asp:ListItem value="7">Canada</asp:ListItem>
								        <asp:ListItem value="8">Europe, Middle East, Africa</asp:ListItem>
                                        <asp:ListItem value="9">Asia Pacific</asp:ListItem>
								        <asp:ListItem value="10">Geographically flexible</asp:ListItem>
							        </asp:DropDownList></p>                            
                                    <br />
                                     <p style="float:left; height:22px !important;">
                                    <asp:ImageButton ID="btnNext" runat="server" ImageUrl="images/campus/btn-next1.jpg" OnClick="btnNext_Click" /></p>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="CPHPanel2" Visible="false" runat="server">
                        <div id="Div3" class="MainHeadliner"> 
                            <img src="images/campus/header-step2.jpg" alt="Step 2 of three steps" />
                         </div>
                        <div id="div4" class="mainSecondStep">
                        <div id="Div5" style="clear:both; padding:1px; width:370px;">&nbsp; </div>
                        
                        <div id="ErrorReport" style="margin-left:30px;">
                            <asp:Panel runat="server" ID="pnlErrors" Visible="false"  class="ErrorPanel">                                                                 
                                    <div id=Message2 class="errormsg-top">
                                        <div class="errormsg-bottom">
                                            <p>Some information is missing:</p>
                                            <ul><%=str_errors1 %></ul>
                                        </div>    
                                    </div>                                                                 
                            </asp:Panel>
                            </div>
                            
                            
                        <div id="div6" class="FirstSetaspDropDownLists">
                       <div style="float:left; clear:left;margin-left:5px;"><img src="images/campus/bkg-left_second.jpg" /></div>          
                            <div id="fyf-interests" class="fyf-interests">                            
                                <span class="fyf-titles">My primary area of interest is: <br />
                                <span style="font-weight:normal;">(choose all that apply) </span></span>
                                <asp:CheckBoxList ID="ckb_interestoptions" runat="server"  style="margin-left:20px;" CellPadding="0" CellSpacing="0" Height="135px" RepeatDirection="Horizontal" RepeatColumns="2" Width="380px">
                                    <asp:ListItem ID="ckb_interestoptions_1" runat="server" Text="Risk and audit" />
                                    <asp:ListItem ID="ckb_interestoptions_2" runat="server" Text="Finance" />
                                    <asp:ListItem ID="ckb_interestoptions_3" runat="server" Text="Human resources" />
                                    <asp:ListItem ID="ckb_interestoptions_4" runat="server" Text="Operations" />
                                    <asp:ListItem ID="ckb_interestoptions_5" runat="server" Text="Technology" />
                                    <asp:ListItem ID="ckb_interestoptions_6" runat="server" Text="Consumer banking" />
                                    <asp:ListItem ID="ckb_interestoptions_7" runat="server" Text="Customer service" />
                                    <asp:ListItem ID="ckb_interestoptions_8" runat="server" Text="Asset management" />
                                    <asp:ListItem ID="ckb_interestoptions_9" runat="server" Text="Investment banking,<br>capital markets,<br>sales and trading" />
                                    <asp:ListItem ID="ckb_interestoptions_10" runat="server" Text="Research" />
                                    <asp:ListItem ID="ckb_interestoptions_11" runat="server" Text="Commercial banking" />
                                </asp:CheckBoxList>
                            </div>
                            <style type="text/css">
                            .CheckBoxTester
                            {
                                vertical-align:top;
                                font-weight:normal !important;
                            }
                            LABEL { font-size:1em;
                                    color: #666666;
                                    
                                }
                            </style>
                            <div id="fyf-responsiblities" class="fyf-responsibilities">                       
                                <span class="fyf-titles">I would like a job where I am responsible for:<br />
                                <span style="font-weight:normal;"> (select up to two) </span></span>                                      
                                    <asp:CheckBoxList ID="sel_responsible_options" AutoPostBack="true" CssClass="CheckBoxTester" runat="server" style="margin-left:20px;" CellPadding="0" CellSpacing="0" RepeatDirection="Horizontal" RepeatColumns="2" Width="380px">
                                    <asp:ListItem ID="ckb_responsoptions_1" name="ckb_responsoptions_1" runat="server"  Text="Analyzing data,<br>forecasting trends" OnClick="JavaScript:sel_responsible_options(1,'ckb_responsoptions_1');" Selected="False"  />
                                    <asp:ListItem ID="ckb_responsoptions_2" name="ckb_responsoptions_2" runat="server" Text="Devising modeling<br>and measuring<br>techniques" OnClick="JavaScript:sel_responsible_options(2,'ckb_responsoptions_2');" Selected="False"  />
                                    <asp:ListItem ID="ckb_responsoptions_3" name="ckb_responsoptions_3" runat="server" Text="Serving clients" OnClick="JavaScript:sel_responsible_options(3,'ckb_responsoptions_3');" Selected="False"  />
                                    <asp:ListItem ID="ckb_responsoptions_4" name="ckb_responsoptions_4" runat="server" Text="Problem solving" OnClick="JavaScript:sel_responsible_options(4,'ckb_responsoptions_4');"  Selected="False" />
                                    <asp:ListItem ID="ckb_responsoptions_5" name="ckb_responsoptions_5" runat="server" Text="Researching, writing,<br>presenting data" OnClick="JavaScript:sel_responsible_options(5,'ckb_responsoptions_5');"  Selected="False" />
                                    <asp:ListItem ID="ckb_responsoptions_6" name="ckb_responsoptions_6" runat="server" Text="Developing new<br>technologies<br> and business tools" OnClick="JavaScript:sel_responsible_options(6,'ckb_responsoptions_6');" Selected="False"  />
                                </asp:CheckBoxList>
                                <asp:HiddenField ID="int_sumofselect" runat="server" Value=0 />
                            </div>

                            <div id="fyf-opportunities" class="fyf-responsibilities">                                    
                                <span class="fyf-titles">To me, opportunity is all about: <br /><span style="font-weight:normal;">(select one) </span></span><br /> 
                                <asp:RadioButtonList ID="sel_opportunity_options" runat="server"  style="margin-left:20px;" CellPadding="0" CellSpacing="0" Height="120px" RepeatDirection="Horizontal" RepeatColumns="2" Width="380px"> 
                                    <asp:ListItem ID="rdb_opportoptions_1" runat="server" Text="Helping individuals" />
                                    <asp:ListItem ID="rdb_opportoptions_2" runat="server" Text="Helping small<br>businesses/companies" />
                                    <asp:ListItem ID="rdb_opportoptions_3" runat="server" Text="Working with<br>new technology" />
                                    <asp:ListItem ID="rdb_opportoptions_4" runat="server" Text="Shaping the<br>future of banking" />
                                    <asp:ListItem ID="rdb_opportoptions_5" runat="server" Text="Implementing<br>strategies<br> and procedures" />
                                </asp:RadioButtonList>
                            </div>
                            <div id="clearline" style="height:1px; width:100%; clear:both; margin-bottom:1px;">&nbsp;</div>
                            <p style="float:left; height:22px !important; margin-left:150px;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/campus/btn-next1.jpg" OnClick="btnGetResults_Click" /></p>                               
                             <!-- <p style="float:right; height:22px !important; margin-right:5px;">
                            <asp:ImageButton ID="btnClearResult" runat="server" ImageUrl="images/campus/btnClearResult.jpg" OnClick="btnClear_Click" /></p> -->

                        </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="CPHPanel3" Visible="false" runat="server">                    
                                           
                        <div id="Div7" class="MainHeadliner2" style="margin-top:20px;"> 
                            <img src="images/campus/header-results.jpg" alt="Results of the three steps" />
                        </div>
                        <div id="results">     
                        <div id="div8" class="find-your-fit-container2" style="margin-left: 0 !important;">  
                                
							    <div id="results-container" class="results-container">   
							            <div id="divResultData">							        
                                        
                                        <p>Based on your answers, you may find one of the following areas to be the best fit for you:</p>
                                       
                                        <ul>
								         <li><a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL1 %>"><%=str_result1 %>
								             </a></li>
								         <li><a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL2 %>"> 
								                <%=str_result2 %>
								             </a></li>
								         <li><a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL3 %>">
								                <%=str_result3 %>
								             </a></li>
								         <li><a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL4 %>">
								                <%=str_result4 %>
								             </a></li>
								         <li><a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL5 %>">
								                <%=str_result5 %>
								             </a></li>
								         <li><a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL6 %>">
								                <%=str_result6 %>
								             </a></li>
								          </ul>    			            
								     <p>Feel free to change your answers and try the <a href="campus-find-your-fit.aspx">Find Your Fit</a> tool again. 
								     You can also <a href="#">bookmark</a> your results after each attempt for later reference.
							    
                                        <p class="btn-tryagain">
                                        <asp:ImageButton ID="btnBack" runat="server" ImageUrl="images/campus/btnTryAgain.jpg" OnClick="btnBack_Click" /></p>
                                    </div>
							    </div><!--.results-container -->
                            </div>
                        </div>
	                </asp:Panel>

	          
                <!-- end of Body & content-->
                <!-- main footer -->
            </td>
        </tr>
    </table>



<!-- body ends here -->

</asp:Content>