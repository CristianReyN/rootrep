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
    
.find-your-fit-container2 {
    margin: 15px 0 40px 0;
    background: url(images/campus/bkg-findyourfit-formresult.jpg) left bottom no-repeat;
   
        position:relative;
        top:0px;
        height:692px !important;
        margin-top:-20px;
    
	}
html>/**/body .find-your-fit-container2 {height:697px !important;width:577px;position: relative;
    top: 91px !important;}
    
        .find-your-fit-container
        {        
            width: 560px;
           /* padding-left:15px; */
        }
        .mainFirstStep
        {
            background:url(images/campus/bkg-findyourfit-form1.jpg) top no-repeat;
            width:577px;
            height:835px;
            float: left;
            margin-top:-8px;
        }
        .mainSecondStep
        {
            background:url(images/campus/bkg-findyourfit-form1.jpg) top no-repeat;
            width:577px;
            height:835px;
            float: left;
            margin-top:-8px;
        }

        .FirstSetaspDropDownLists
        {
            width:560px;
            height:550px;
            margin-left:12px;
            float: left;
            margin-top: 20px;
        }

        .errormsg-top
        {
            padding: 5px 5px 5px 5px;
        }
        .fyf-responsibilities
        {
            /* border:solid 1px black; */
            width: 400px ! important;
            float:left; 
            height:135px;
            margin-bottom:20px;
        }
        .fyf-interests
        {
            /* border:solid 1px black; */
            float: left; 
            width: 400px ! important;
            margin-bottom:20px;
            height:218px;
        }
        .fyf-titles
        {
            background: none repeat scroll 0 0 white;
            margin-left: 5px;
            position: relative;
            top: -10px;
            width: 340px;
            text-align:center;
            font-size:12px;
            font-weight:bold;
        }   

        .ErrorPanel
        {
            margin-right:60px;
            border:solid 1px red;
            margin-bottom:5px; 
            margin-top:10px; 
            float:right;
            width:355px;
        }
       

    </style>

    <link rel="stylesheet" href="../includes/fitfinder_video.css"/>
	
    <table border="0" cellpadding="0" cellspacing="0" summary="" width="578" style="height: 770px;">
        <tr valign="top">
            <td width="100%" valign="top" id="Headline">
    
				<!-- space for content -->
				
	                <asp:HiddenField runat="server" ID="ISSubmited" Value=0 />
	                <asp:HiddenField runat="server" ID="ISValid" Value=0 />
                    <asp:Panel ID="CPHPanel1"  runat="server">
                            <div id="Headerline">
                                <h1>Find Your Fit</h1>
                                <p>As one of the world's largest financial services companies, we offer unparalleled access to career opportunities across the globe. 
                                Your challenge is to find where you best fit within our team. Our career fit tool is designed to help you match your interests, 
                                background and career goals with our offerings. Give it a try. You might be surprised to discover how far you can go here.</p>
                            </div>
                            <div id="step1" class="find-your-fit-container">
                            <div id="Hedliner1" class="MainHeadliner"> 
                                <img src="images/campus/header-step1.jpg" />
                             </div>
                        <div id="div1" class="mainFirstStep">
                            <div id="spacertop" style="clear:both; padding:1px;"> </div>
                            <div id="div2" class="FirstSetaspDropDownLists">
                                <div id="Div9" style="margin-left:-50px;">
                                <asp:Panel runat="server" ID="pnlErrorDisplay" Visible="false" class="ErrorPanel">
                                    <p><img src="images/campus/sign_attention.gif" style="float:left; margin:0 10px 0 10px;" />                                    
                                    <div id=message style="width:300px;float:right; color:Red;">Some information is missing:<br /><%=str_errors1 %></div>
                                    </p>                                                              
                                </asp:Panel>
                                </div>                            
                            <div id="Div10" style="height:1px; width:100%; clear:both; margin-bottom:1px;">&nbsp;</div>
                            <div style="float:left; clear:left; position:relative; top:10px;"><img src="images/campus/bkg-left_first.gif" /></div>                         
						        <label for="sel_education" id="lbl_education" >I am a(n):</label><br />
							        <p><asp:DropDownList id="ddlsel_education" class="fyf-education" name="sel_education" runat="server" Width="320px">
							            <asp:ListItem Text="" Value="0" >Please select level of education</asp:ListItem>  
								        <asp:ListItem value="1">Undergraduate student</asp:ListItem>
								        <asp:ListItem value="2">Graduate student with 0–5 years of work experience</asp:ListItem>
								        <asp:ListItem value="3">Graduate student with more than 5 years of work experience</asp:ListItem>
							        </asp:DropDownList>
                                    </p>
                                <label for="sel_employOpportunity" id="lbl_employOpportunity" >I am interested in:</label><br />    
                                    <p><asp:DropDownList id="sel_employOpportunity"  runat="server" name="sel_employOpportunity">
                                        <asp:ListItem value="0">Please select level of employment opportunity</asp:ListItem>
                                        <asp:ListItem value="1">Full-time opportunities</asp:ListItem>
                                        <asp:ListItem value="2" title="A structured program that moves you through different positions within a group">Rotational opportunities</asp:ListItem>
                                        <asp:ListItem value="3">Internship opportunities</asp:ListItem>
                                    </asp:DropDownList></p>                            
                                <label for="sel_coursework" id="lbl_coursework" >I am also interested in (or have completed) coursework in:</label><br />    
                                   <p> <asp:DropDownList id="sel_coursework"  runat="server" name="sel_coursework">
                                            <asp:ListItem value="0">Please select one</asp:ListItem>
                                            <asp:ListItem value="1">Six Sigma methodology</asp:ListItem>
                                            <asp:ListItem value="2">Accounting/financial certifications/securities trading</asp:ListItem>
                                            <asp:ListItem value="3">Computer programming languages</asp:ListItem>
                                            <asp:ListItem value="4">Real estate</asp:ListItem>
                                            <asp:ListItem value="5">Law</asp:ListItem>
                                            <asp:ListItem value="6">None of the above</asp:ListItem>
                                        </asp:DropDownList></p>                            
                                     <label for="sel_degree1" id="lbl_degree">I will/have earn(ed) my degree in (my area of concentration is):<br /> 
                                     <span style="font-weight:normal;">(select up to three)</span> </label>
							        <p style="margin-left:200px;"><asp:DropDownList id="sel_degree1"  runat="server" name="sel_degree1" OnSelectedIndexChanged="sel_degree1_SelectedIndexChanged">
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
                                    <asp:DropDownList id="sel_degree2"  runat="server" name="sel_degree2" OnSelectedIndexChanged="sel_degree2_SelectedIndexChanged">
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
                                    <asp:DropDownList id="sel_degree3"  runat="server" name="sel_degree3" OnSelectedIndexChanged="sel_degree3_SelectedIndexChanged">
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
                                    <label for="sel_environment" id="lbl_environment">My preferred work environment is:</label><br /><p>
							        <asp:DropDownList id="sel_environment"  runat="server" name="sel_environment">
								        <asp:ListItem value="0">Please select one</asp:ListItem>
								        <asp:ListItem value="1">Working with internal teams to optimize performance</asp:ListItem>
								        <asp:ListItem value="2">Accounting/financial certifications/securities trading</asp:ListItem>
							        </asp:DropDownList>
                                    </p>
                                      <label for="sel_geographic" id="lbl_geographic">I prefer to work in the following area:</label><br /><p>
							        <asp:DropDownList id="sel_geographic"  runat="server" name="sel_geographic">
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
                            <img src="images/campus/header-step2.jpg" />
                         </div>
                        <div id="div4" class="mainSecondStep">
                        <div id="Div5" style="clear:both; padding:1px; width:370px;">&nbsp; </div>
                        <div id="ErrorReport" style="margin-left:30px;">
                            <asp:Panel runat="server" ID="pnlErrors" Visible="false"  class="ErrorPanel">
                                <p><img src="images/campus/sign_attention.gif" style="float:left; margin:0 10px 0 10px;" />                                    
                                    <div id=Message2 style="width:300px;float:right; color:Red;">Some information is missing:<br /><%=str_errors1 %></div>                                                                 
                            </asp:Panel>
                            </div>
                        <div id="div6" class="FirstSetaspDropDownLists">
                       <div style="float:left; clear:left;margin-left:5px;"><img src="images/campus/bkg-left_second.jpg" /></div>          
                            <div id="fyf-interests" class="fyf-interests">                            
                                <span class="fyf-titles">&nbsp;&nbsp;My primary area of interest is: <br /><span style="font-weight:normal;">(choose all that apply) </span></span><br />
                                <asp:CheckBoxList ID="ckb_interestoptions" runat="server"  style="margin-left:20px;" CellPadding="0" CellSpacing="0" Height="135px" RepeatDirection="Horizontal" RepeatColumns="2" Width="380px">
                                    <asp:ListItem ID="ckb_interestoptions_1" runat="server" Text="Risk and audit" />
                                    <asp:ListItem ID="ckb_interestoptions_2" runat="server" Text="Finance" />
                                    <asp:ListItem ID="ckb_interestoptions_3" runat="server" Text="Human resources" />
                                    <asp:ListItem ID="ckb_interestoptions_4" runat="server" Text="Operations" />
                                    <asp:ListItem ID="ckb_interestoptions_5" runat="server" Text="Technology" />
                                    <asp:ListItem ID="ckb_interestoptions_6" runat="server" Text="Consumer banking" />
                                    <asp:ListItem ID="ckb_interestoptions_7" runat="server" Text="Customer service" />
                                    <asp:ListItem ID="ckb_interestoptions_8" runat="server" Text="Asset management" />
                                    <asp:ListItem ID="ckb_interestoptions_9" runat="server" Text="Investment banking,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;capital markets,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sales and trading" />
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
                            LABEL {
                                    color: silver;
                                    margin-left: 5px;
                                    margin-top: -10px;
                                    vertical-align: top;
                                }
                            </style>
                            <div id="fyf-responsiblities" class="fyf-responsibilities">                       
                                <span class="fyf-titles">&nbsp;&nbsp;I would like a job where I am responsible for:<br /><span style="font-weight:normal;"> (select up to two) </span></span><br />                                      
                                    <asp:CheckBoxList ID="sel_responsible_options" AutoPostBack="true" CssClass="CheckBoxTester" runat="server" style="margin-left:20px;" CellPadding="0" CellSpacing="0" RepeatDirection="Horizontal" RepeatColumns="2" Width="380px">
                                    <asp:ListItem ID="ckb_responsoptions_1" name="ckb_responsoptions_1" runat="server"  Text="Analyzing date,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;forecasting trends" OnClick="JavaScript:sel_responsible_options(1,'ckb_responsoptions_1');" Selected="False"  />
                                    <asp:ListItem ID="ckb_responsoptions_2" name="ckb_responsoptions_2" runat="server" Text="Devising modeling<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;and measuring<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;techniques" OnClick="JavaScript:sel_responsible_options(2,'ckb_responsoptions_2');" Selected="False"  />
                                    <asp:ListItem ID="ckb_responsoptions_3" name="ckb_responsoptions_3" runat="server" Text="Serving clients" OnClick="JavaScript:sel_responsible_options(3,'ckb_responsoptions_3');" Selected="False"  />
                                    <asp:ListItem ID="ckb_responsoptions_4" name="ckb_responsoptions_4" runat="server" Text="Problem solving" OnClick="JavaScript:sel_responsible_options(4,'ckb_responsoptions_4');"  Selected="False" />
                                    <asp:ListItem ID="ckb_responsoptions_5" name="ckb_responsoptions_5" runat="server" Text="Researching, writing,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;presenting data" OnClick="JavaScript:sel_responsible_options(5,'ckb_responsoptions_5');"  Selected="False" />
                                    <asp:ListItem ID="ckb_responsoptions_6" name="ckb_responsoptions_6" runat="server" Text="Developing new<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;technologies<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;and business tools" OnClick="JavaScript:sel_responsible_options(6,'ckb_responsoptions_6');" Selected="False"  />
                                </asp:CheckBoxList>
                                <asp:HiddenField ID="int_sumofselect" runat="server" Value=0 />
                            </div>

                            <div id="fyf-opportunities" class="fyf-responsibilities">                                    
                                <span class="fyf-titles">&nbsp;&nbsp;To me, opportunity is all about: <br /><span style="font-weight:normal;">(select one) </span></span><br /> 
                                <asp:RadioButtonList ID="sel_opportunity_options" runat="server"  style="margin-left:20px;" CellPadding="0" CellSpacing="0" Height="120px" RepeatDirection="Horizontal" RepeatColumns="2" Width="380px"> 
                                    <asp:ListItem ID="rdb_opportoptions_1" runat="server" Text="Helping individuals" />
                                    <asp:ListItem ID="rdb_opportoptions_2" runat="server" Text="Helping small<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;businesses/companies" />
                                    <asp:ListItem ID="rdb_opportoptions_3" runat="server" Text="Working with<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new technology" />
                                    <asp:ListItem ID="rdb_opportoptions_4" runat="server" Text="Shaping the <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;future of banking" />
                                    <asp:ListItem ID="rdb_opportoptions_5" runat="server" Text="Implementing<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;strategies<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;and procedures" />
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
                            <img src="images/campus/header-results.jpg" />
                        </div>
                        <div id="results" style="position:relative; top:20px; height:660px; margin-top:-10px;">     
                        <div id="div8" class="find-your-fit-container2" style="margin-left: 0 !important;">  
                                <div id="empty" style="width:145px; float:left; padding:0;margin:0;"></div>
							    <div id="results-container" class="results-container" style="width:555px !important; float:left;  margin-top: -120px; *margin:0 !important;">   
							    <div id="divResultData"  style="width: 410px !important; display:block; float:right;">							        
                                        <h2 style="height:25px; width:250px !important;">&nbsp;</h2>
                                        Based on your answers, you may find one of the following areas to be the best fit for you:
                                        <h2 style="height:15px; width:250px !important;">&nbsp;</h2>
                                        <p>
								               <a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL1 %>"><%=str_result1 %>
								             </a></p>
								         <p><a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL2 %>"> 
								                <%=str_result2 %>
								             </a></p>
								         <p><a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL3 %>">
								                <%=str_result3 %>
								             </a></p>
								         <p><a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL4 %>">
								                <%=str_result4 %>
								             </a></p>
								         <p><a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL5 %>">
								                <%=str_result5 %>
								             </a></p>
								         <p><a href="http://careers.bankofamerica.com/campusrecruiting<%=str_URL6 %>">
								                <%=str_result6 %>
								             </a></p>
								              <h2 style="height:15px; width:250px !important;">&nbsp;</h2>			            
								     <p>Feel free to change your answers and try the <a href="campus-find-your-fit.aspx">Find Your Fit</a> tool again. 
								     You can also <a href="#">bookmark</a> your results after each attempt for later reference.
							    
                                <p style="float:right; height:22px !important;">
                                <asp:ImageButton ID="btnBack" runat="server" ImageUrl="images/campus/btnStartOver.jpg" OnClick="btnBack_Click" /></p>
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