  <%@ Page AutoEventWireup="true" CodeFile="JobSearch.aspx.cs" Inherits="BOA.JobSearch"
      Language="C#" MasterPageFile="~/BOAmaster.master" ValidateRequest="false" EnableEventValidation="false" EnableViewState="true" %>
      <%@ Register Assembly="CareerSiteWebControls" Namespace="CareerSiteWebControls" TagPrefix="cswc" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">  
<table border="0" cellpadding="0" cellspacing="0" summary="" width="578"><tr><td valign="top"><h1 style="margin: 0px 0px 0px 12px; ">Guided Job Search</h1></td><td align="right">
<SCRIPT language=Javascript>
       <!--
    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode;
        if (charCode != 46 && charCode > 31
            && (charCode < 48 || charCode > 57))
            return false;

        return true;
    }
       //-->
    </SCRIPT>

<div id="banc2" runat="server"><a id="ImgMerchantServices2" runat="server" style="display:block;float:right;" name="Stay_Connected_to_Careers_on_Twitter_BofA_Careers" target="_blank" href="http://twitter.com/BofA_Careers"><img src="../images/Twitter_Ad_for_Careers4.jpg" alt="Stay connected to Careers on twitter @BofA_Careers.  Link opens a new window." border="0" align="top"></a></div>
<div id="banc" runat="server"><a id="ImgMerchantServices" runat="server" style="display:block;float:right;"></a></div>	</td></tr> 

        <span class='auraltext'>
         After you select a country from the country field, the page will refresh. For the United States, you can then pick a state.  After you select a state from the 'State" field, the page will refresh.  You will then be able to select a city from the 'City' field.  For all other countries, after you select a country other than the United States from the country field, the page will refresh and you can then select a city from the 'City' field.
        </span>
        <table border="0" cellpadding="0" cellspacing="0" summary="" width="578">
            <tr valign="top">
                <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
					<table border="0" cellpadding="1" cellspacing="1" summary="" width="100%" >
                        <tr>
                            <td valign="top"  colspan="2"><asp:Label ID="tdInstructions" runat="server"></asp:Label></td>
                            </br>                         
                        </tr>
                        
						<tr>
							<td colspan="2" valign="top" align="left">&nbsp;
							</td>
						</tr></table>
							<table border="0" cellpadding="0" cellspacing="0" summary=""
                            width="100%">
						<tr id="trCountry" runat="server">
							<td  valign="top" style="width:48%; height:45;">
							    <div id="Div3" style="display: inline;">						
								    <asp:Label ID="lblCountry" runat="server" Text="Country" AssociatedControlID="Country"></asp:Label><br />
								    
                                    <asp:DropDownList ID="Country" runat="server" CssClass="left" Style="width:90%; z-index: auto;"
								    ToolTip="Select a country" AutoPostBack="true" OnSelectedIndexChanged="Country_Click">								  
								    </asp:DropDownList>
                                    
                                    <!--
                                    <cswc:CountryListBox ID="Country2" runat="server" CssClass="left" Style="width:90%; z-index: auto;"
								    ToolTip="Select a country" AutoPostBack="true" OnSelectedIndexChanged="Country_Click"
                                        ControlType="DropDownList" showActiveJobsOnly="false">
                                    </cswc:CountryListBox>
                                    -->
                                    </div>

							</td>
                            <td  valign="middle" style="width:48%; height:45;">
							    <div id="Div4" style="display: inline;">	
                            <asp:HyperLink runat="server"  NavigateUrl="#" ID="HylCityNote" onclick="javascript:w= window.open('overview/chelp.html','mywin','left=200px,top=180px,width=625,height=345,resizable=0');return false;" Visible="true" Font-Bold="true" CssClass="p" AssociatedControlID="City" style="width:80%;">How do I use the city/zip code search?<span class="hidden"> Link opens a new window</span></asp:HyperLink>
							</div>
							</td>
                            </tr>
							</table>
							<asp:Panel ID="PnlCanada" runat="server" Visible="false">
							  </br><a href="http://ig12.i-grasp.com/fe/tpl_bankofamerica06.asp" target="_blank" class="p" onfocus="this.className='p-over'; "onblur="this.className='p';" style="margin: 0px 0px 0px 0px;" >Search and apply<span class="hidden">Search and apply for jobs in Canada. Link opens a new window.</span></a> for jobs in Canada.</br></br></asp:Panel>
							<asp:Panel ID="PnlFilter" runat="server" >
							
							<table border="0" cellpadding="0" cellspacing="0" summary=""
                            width="550px">					
							<tr id="trInternationalLocation" runat="server"  visible="false">							
							<td  valign="top"  style="width:50%; height:45;">
							   <div id="Div1" style="display: inline;">
							    <asp:Label ID="LblInternationalCity" runat="server" Text="City" Visible="true" AssociatedControlID="InternationalCity"></asp:Label><br />
								<asp:DropDownList ID="InternationalCity" runat="server" CssClass="left" Style="width: 90%; z-index: auto;"
								ToolTip="Select a city" Visible="true" Enabled="true">
								<asp:ListItem>All cities&#160;</asp:ListItem>
								</asp:DropDownList>			</div>						
							</td>
						</tr>


                        
						
						<tr id="trUsLocation" runat="server" >
							<td  valign="top" style="width:48%; height:45;">
							    <div id="d1" style="display: inline;">
								    <asp:Label ID="lblState" runat="server" Text="State" AssociatedControlID="State"></asp:Label><br />
								    <asp:DropDownList ID="State" runat="server" CssClass="left" Style="width: 90%; z-index: auto;"
								    ToolTip="Select a state" AutoPostBack="false" OnSelectedIndexChanged="brefine_Click">
								    <asp:ListItem Value="-1">All states&#160;</asp:ListItem>
								    </asp:DropDownList>
                                    <!--
                                    <cswc:StateListBox ID="State2" runat="server"
                                        ControlType="DropDownList">
                                    </cswc:StateListBox>
                                    -->
								</div>
								
								<asp:HiddenField ID="Statehidden" runat="server" Value=""  />
							</td>					
												
							<td  valign="top" style="width:48%; height:45;">
							    <asp:Label ID="lblCity" runat="server" Text="City" Visible="true" AssociatedControlID="City"></asp:Label> &nbsp; &nbsp; &nbsp;<br />
								<asp:DropDownList ID="City" runat="server" CssClass="left" Style="width: 90%; z-index: auto; background-color:White; color:DarkGray"
								ToolTip="Select a city" Visible="true" Enabled="false">
								<asp:ListItem>All cities&#160;</asp:ListItem>
								</asp:DropDownList>	
                                <!--
                                <cswc:CityListBox ID="City2" runat="server"
                                    ControlType="DropDownList">
                                </cswc:CityListBox>
							-->
							</td>
						</tr>
							<tr id="trJobFamily" runat="server" visible="false">
							<td valign="top" style="width:50%; height:45;">
							    <div id="Div2" style="display: inline;">
								<asp:Label ID="lblJobFamily" runat="server" Text="Job Family" Visible="true" AssociatedControlID="ddlJobFamily"></asp:Label><br />
								<asp:DropDownList ID="ddlJobFamily" runat="server" CssClass="left" Style="width: 90%; z-index: auto;"
								ToolTip="Select a job family" Visible="true">
								</asp:DropDownList>
								</div>
							</td>
							</tr>
						<tr id="trJobAreaAndFullTimePartTime" runat="server">
							<td valign="top" style="width:50%; height:45;">
							    <div id="d2" style="display: inline;">
								<asp:Label ID="lblJobAreas" runat="server" Text="Job areas" Visible="true" AssociatedControlID="ddlJobAreas"></asp:Label><br />
								<asp:DropDownList ID="ddlJobAreas" runat="server" CssClass="left" Style="width: 90%; z-index: auto;"
								ToolTip="Select a job area" Visible="true">
								</asp:DropDownList>


								</div>
							</td>
							<td id="Td1"  valign="top" style="width:50%; height:45;" runat="server" >
                                <asp:Label ID="lblZipCode" runat="server" Text="Zip Code" AssociatedControlID="txtZipCode"></asp:Label><br />
								<asp:TextBox ID="txtZipCode" runat="server" CssClass="left" Style="width: 90%; size: 20"
								    ToolTip="Zip Code" maxlength="5" onkeypress="return isNumberKey(event)"></asp:TextBox>
							</td>
						</tr>
						<tr id="trDatepostedShifts" runat="server">
							<td  valign="top" style="width:50%; height:45;" >
							    <div id="d3"  style="display: inline;">
								    <asp:Label ID="lbldatepost" runat="server" Text="Date positions posted as of" AssociatedControlID="datepost"></asp:Label><br />
                                    <asp:DropDownList ID="datepost" runat="server" CssClass="left" Style="width: 90%;
								    z-index: auto;" ToolTip="Date posted" >
								    <asp:ListItem Value="365">All</asp:ListItem>
								    <asp:ListItem Value="0">Today</asp:ListItem>
								    <asp:ListItem Value="1">Yesterday</asp:ListItem>
								    <asp:ListItem Value="7">Last 7 Days</asp:ListItem>
								    <asp:ListItem Value="14">Last 14 Days</asp:ListItem>
								    <asp:ListItem Value="21">Last 21 Days</asp:ListItem>
								    <asp:ListItem Value="28">Last 28 Days</asp:ListItem>
								    </asp:DropDownList>
								</div>
							</td>
							<td  valign="top" style="width:50%; height:45;" >
								<asp:Label ID="lblRadius" runat="server" Text="Distance (miles) from Zip Code" AssociatedControlID="ddlRadius"></asp:Label><br />
								<asp:ListBox ID="ddlRadius" runat="server" CssClass="left" SelectionMode="Single"
								Style="width: 90%; z-index: auto;" ToolTip="Distance (miles) from Zip Code"  Rows="1">
								    <asp:ListItem Value="-1">Select the distance </asp:ListItem>
                                    <asp:ListItem Value="5">5</asp:ListItem>
								    <asp:ListItem Value="10">10</asp:ListItem>
								    <asp:ListItem Value="20">20</asp:ListItem>
								    <asp:ListItem Value="50">50</asp:ListItem>
                                    <asp:ListItem Value="70">75</asp:ListItem>
                                    <asp:ListItem Value="100">100</asp:ListItem>
								</asp:ListBox>
							</td>
						</tr>
						<tr id="trTravel" runat="server">
							<td  valign="top" style="width:50%; height:45;" >
							    <div id="d4" style="display: inline;">
								    <asp:Label ID="lbltravel" runat="server" Text="Willingness to travel" AssociatedControlID="travel"></asp:Label>
                                    <cswc:AnswerListBox 
                                        ID="travel" 
                                        runat="server"
                                        ControlType="DropDownList" 
                                        Style="width: 90%; z-index: auto;" 
                                        ToolTip="Willingness to Travel">
                                    </cswc:AnswerListBox>

								</div>
							</td>
							<td  valign="top" style="width:50%; height:45;">
								<asp:Label ID="lbllang" runat="server" Text="Language requirements" AssociatedControlID="lang" Visible="false"></asp:Label>
								<asp:ListBox ID="lang" SelectionMode="Single" runat="server" CssClass="left" Style="width: 90%; z-index: auto;"
								ToolTip="Language requirements"  Rows="1" Visible="false">
								<asp:ListItem>All languages</asp:ListItem>
								</asp:ListBox>
                                <asp:Label ID="lblfullpart" runat="server" Text="Full/part time" AssociatedControlID="fullpart"></asp:Label><br />


                                <cswc:AnswerListBox 
                                        ID="fullpart" 
                                        runat="server"
                                        ControlType="DropDownList" 
                                        Style="width: 90%; z-index: auto;" 
                                        ToolTip="Full/part time">
                                    </cswc:AnswerListBox>
							</td>
						</tr>
						<tr id="trKeywords" runat="server">
							<td  valign="top" style="width:50%; height:45;" >
							    <div id="d5" style="display: inline;">
								    <asp:Label ID="lblkeywords" runat="server" Text="Keywords or job number (if known)" AssociatedControlID="keywords"></asp:Label><br />
								    <asp:TextBox ID="keywords" runat="server" CssClass="left" Style="width: 90%; size: 20"
								    ToolTip="Keywords or job number" ></asp:TextBox>
								</div>
							</td>
							<td  valign="top" style="width:50%; height:45;" id="tdShift" runat="server">&nbsp;
                            <asp:Label ID="lblShift" runat="server" Text="Shift" AssociatedControlID="shift"></asp:Label>
                                <cswc:AnswerListBox 
                                        ID="shift" 
                                        runat="server"
                                        ControlType="DropDownList" 
                                        Style="width: 90%; z-index: auto;" 
                                        ToolTip="Shift">
                                    </cswc:AnswerListBox>
							</td>
						</tr>
						</table></asp:Panel>
						<table border="0" cellpadding="1" cellspacing="1" summary="" width="100%">
						<tr>
							<td valign="top" align="left" colspan="2">
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>	
										<td align="center" valign="top"> <asp:LinkButton ID="BtnBegin" runat="server" CssClass="ie-btn1" OnClick="display_filter" Width="40px" ToolTip=" Begin Search">Begin</asp:LinkButton> </td>
										<td align="center" valign="top"> <asp:LinkButton ID="BtnSearch" runat="server" CssClass="ie-btn1" OnClick="bsearch_Click" Width="80px" ToolTip=" Begin Search">Begin&nbsp;Search</asp:LinkButton> 
                                        <asp:Label ID="lblValidation" runat="server" Text="" AssociatedControlID=""></asp:Label><br />
                                        </td>
										<td width="10">&nbsp;</td>
										<td align="left" valign="top"><asp:HyperLink runat="server" ID="lnkJobCart" NavigateUrl="~/jobcart.aspx" Text="View job cart" CssClass="p" ToolTip="View job cart" Visible="false" /></td>
									</tr>
								</table>												
							</td>
						</tr>
						<tr><td colspan="2">&nbsp;</td></tr>
					</table>
					<asp:Panel ID="PnlUSJobsContent" runat="server">					
					<a  id="ManageYourProfile" runat="server"  class="p" onblur="this.className='p';" onfocus="this.className='p-over';" >Manage Your Profile</a><BR/>
					Create or update your existing candidate profile.<br /><br />
					Bank of America associates should access the <a href="http://myhrtools.bankofamerica.com/" id="ctl00_cphmain_lnkInternal" title="Internal Jobs Database" class="p" onblur="this.className='p';" onfocus="this.className='p-over';">internal jobs database</a>.<br /><br />					
					</asp:Panel>
					<asp:Panel ID="PnlResults" runat="server">
					<table border="0" cellpadding="0" cellspacing="0" summary="Table containing Advanced job search form."
					width="100%">
						<tr>
							<td style="padding: 0px 12px 0px 12px;" align="left">
								<b><asp:Label ID="lblJobofJobs" runat="server" Text=""></asp:Label></b>&nbsp;</td>
							<td align="right" valign="top">
							</td>
						</tr>
					</table>

                        <cswc:JobListCustomFieldsMultiLocZipCodeRadiusGridView visible="false"
                            ID="zcrGridView1"
                            AllowSorting="true"
                            OrderByColumn="PostDate"
                            OrderByDirection="Descending"
                            AllowPaging="false"
                            runat="server">
                        </cswc:JobListCustomFieldsMultiLocZipCodeRadiusGridView>

                        <!-- Location Search Control -->
                        <cswc:JobListCustomFieldsMultiLocGridView visible="false"
                            ID="jobListGridView1"
                            AllowSorting="true"
                            OrderByColumn="PostDate"
                            OrderByDirection="Descending"
                            AllowPaging="false"
                            runat="server">
                        </cswc:JobListCustomFieldsMultiLocGridView>

                        <!-- Location Search Control -->
                        <cswc:JobListCustomFieldsMultiLocGridView visible="false"
                            ID="jobListGridView2"
                            AllowSorting="true"
                            OrderByColumn="PostDate"
                            OrderByDirection="Descending"
                            AllowPaging="false"
                            runat="server">
                        </cswc:JobListCustomFieldsMultiLocGridView>

                        <asp:Label ID="StatusMsg" Text="" runat="server" />
                        
                        <div ID="JobListPaging" class="JobListPaging" runat="server">
                            <div class="JobListPagingLinks">

                                <asp:LinkButton 
                                    ID="previous_page"
                                    Text="&#9668; Previous Page"
                                    OnClick="previous_page_Click"
                                    CausesValidation="False" 
                                    runat="server" />

                                <asp:Literal ID="paging_text" Text="" runat="server" />
            
                                <asp:LinkButton 
                                    ID="next_page"
                                    Text="Next Page &#9658;"
                                    OnClick="next_page_Click"
                                    CausesValidation="False" 
                                    runat="server" />
                            </div>
                        </div>

                    <asp:GridView 
                    ID="GrdResultsUS" 
                    runat="server"                     
                    AutoGenerateColumns="False" 
                    CellPadding="6" 
                    GridLines="None" 
                    ToolTip="Search Results "
                    summary="Search Results. The first column is the Job Title.  The second column is the Location.  The third column is the Date. " 
                    Width="554px"
                    Height="18"  
                    PageSize="12"    
                    AllowPaging="false" 
                    EmptyDataRowStyle-ForeColor="Red"
                    AllowSorting="True" OnSorting="gv_Sorting" 
                    >
                    
                        <HeaderStyle CssClass="pd"   BackColor="#EAF1F7" Height="24px"  />
                        <RowStyle CssClass="pd2"   BackColor="#CADCEB" Height="24px" />
                        <AlternatingRowStyle CssClass="pd2"  BackColor="#EAF1F7" Height="24px" />
                        
                        <Columns>
                        
                            <asp:TemplateField HeaderText="Title" Visible="true"  SortExpression="Title">
                                <ItemTemplate>
                                    <a title="click for job details" href="JobDetails.aspx?SearchPage=ASP&FromJobDetails=1&currPageIndex=<%= _currPageIndex%>&CountryId=<%= _country%>&JobId=<%# Eval("JobId").ToString()%>&stateid=<%= _state%>&cityid=<%= _city%>&travel=<%= _travel%>&jfamily=<%= _jobFamily%>&lang=&fullpart=<%= _jobType%>&shift=<%= _jobShift%>&datepost=<%= _daterange%>&keywords=<%= _keyword%>&jobareas=<%= _ddlJobArea%>&txtZipCode=<%= _zipcode%>&ddlRadius=<%= _distance%>&feedname=BOAFEEDUSA&BOAFeedName=&jobfamilyid=<%= _jobFamily%>&internationalcity=&LocationID=0">
                                        <%# Eval("Title").ToString()%>
                                    </a>
                                    <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left" Width="50%" Height="24px"/>
                                </ItemTemplate>
                            </asp:TemplateField>                           
                           
                           <asp:TemplateField HeaderText="Location" SortExpression="Location">
                                <ItemTemplate>
                                    <asp:Literal ID="Lc" runat="server" Text='<%# Eval("Location") %>'></asp:Literal>
                                </ItemTemplate> 
                                <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left"  Width="25%" Height="24px"/>
                            </asp:TemplateField>   
                            
                            <asp:TemplateField HeaderText="Date" SortExpression="postdate">
                                <ItemTemplate>
                                    <asp:Literal ID="Dt" runat="server" Text='<%# formatDate(Eval("PostDate").ToString(), "{0:MMM dd yyyy}")%>'></asp:Literal>
                                </ItemTemplate> 
                                <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left"  Width="25%" Height="24px"/>
                            </asp:TemplateField>  
                        </Columns>
                        <PagerStyle CssClass="mh-link1" />
                        <EmptyDataTemplate>
                          
                        </EmptyDataTemplate>
                    </asp:GridView>


                    <asp:GridView 
                    ID="GrdResultsGlobal" 
                    runat="server"                     
                    AutoGenerateColumns="False" 
                    CellPadding="6" 
                    GridLines="None" 
                    ToolTip="Search Results "
                    summary="Search Results. The first column is the Job Title.  The second column is the Location.  The third column is the Date. " 
                    Width="554px"
                    Height="18"  
                    PageSize="12"    
                    AllowPaging="false" 
                    EmptyDataRowStyle-ForeColor="Red"
                    AllowSorting="True" OnSorting="gv_SortingGlobal" 
                    >
                    
                        <HeaderStyle CssClass="pd"   BackColor="#EAF1F7" Height="24px"  />
                        <RowStyle CssClass="pd2"   BackColor="#CADCEB" Height="24px" />
                        <AlternatingRowStyle CssClass="pd2"  BackColor="#EAF1F7" Height="24px" />
                        
                        <Columns>
                        
                            <asp:TemplateField HeaderText="Title" Visible="true"  SortExpression="Title">
                                <ItemTemplate>
                                    <a title="click for job details" href="JobDetails.aspx?SearchPage=ASP&FromJobDetails=1&currPageIndex=<%= _currPageIndexGlobal%>&CountryId=<%= _country%>&JobId=<%# Eval("JobId").ToString()%>&stateid=<%= _state%>&cityid=<%= _city%>&travel=<%= _travel%>&jfamily=<%= _jobFamily%>&lang=&fullpart=<%= _jobType%>&shift=<%= _jobShift%>&datepost=<%= _daterange%>&keywords=<%= _keyword%>&jobareas=<%= _ddlJobArea%>&feedname=BOAFEEDUSA&BOAFeedName=&jobfamilyid=<%= _jobFamily%>&internationalcity=&LocationID=0">
                                        <%# Eval("Title").ToString()%>
                                    </a>
                                    <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left" Width="50%" Height="24px"/>
                                </ItemTemplate>
                            </asp:TemplateField>                           
                           
                           <asp:TemplateField HeaderText="Location" SortExpression="Location">
                                <ItemTemplate>
                                    <asp:Literal ID="Lc" runat="server" Text='<%# Eval("Location") %>'></asp:Literal>
                                </ItemTemplate> 
                                <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left"  Width="25%" Height="24px"/>
                            </asp:TemplateField>   
                            
                            <asp:TemplateField HeaderText="Date" SortExpression="postdate">
                                <ItemTemplate>
                                    <asp:Literal ID="Dt" runat="server" Text='<%# formatDate(Eval("PostDate").ToString(), "{0:MMM dd yyyy}")%>'></asp:Literal>
                                </ItemTemplate> 
                                <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left"  Width="25%" Height="24px"/>
                            </asp:TemplateField>  
                        </Columns>
                        <PagerStyle CssClass="mh-link1" />
                        <EmptyDataTemplate>
                          
                        </EmptyDataTemplate>
                    </asp:GridView>
                   
                    <br />
                    <br />

                <div ID="JobListPaging2" class="JobListPaging2" runat="server">
                            <div class="JobListPagingLinks">

                                <asp:LinkButton 
                                    ID="previous_page2"
                                    Text="&#9668; Previous Page"
                                    OnClick="previous_page_Click"
                                    CausesValidation="False" 
                                    runat="server" />

                                <asp:Literal ID="paging_text2" Text="" runat="server" />
            
                                <asp:LinkButton 
                                    ID="next_page2"
                                    Text="Next Page &#9658;"
                                    OnClick="next_page_Click"
                                    CausesValidation="False" 
                                    runat="server" />
                            </div>
                        </div>

		<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
			<tr><td colspan="3">&nbsp;</td></tr>
            <tr valign="top">
                <td valign="top" align="right" style="width: 50%;">&nbsp;
                <div id="divPrev" runat="server" style="display:none">
					<asp:PlaceHolder  runat="server" ID="phPrevious"></asp:PlaceHolder>
				</div>
				</td>
				<td style="width: 15px;">&nbsp;</td>
				<td valign="top" align="left" style="width: 50%;">&nbsp;
				<div id="divNext" runat="server" style="display:none">
					<asp:PlaceHolder runat="server" ID="phNext"></asp:PlaceHolder>
                 </div>
                 </td>
             </tr>
			<tr><td colspan="3">&nbsp;</td></tr>
             <tr>
				<td colspan="3" align="center" valign="top">
					<br /><asp:Label ID="LblPageOfPages" runat="server"></asp:Label>    
				</td>
             </tr>
        </table>
<asp:label id="lblMessage" runat="server"></asp:label></asp:Panel>
           </td> </tr>
        </table>
        
     
<script language='javascript1.1' type='text/javascript'>
    //<!—


    var isReload = getCookie("isReload");

    if (isReload != null && isReload != "") {
        //reload
        cmCreatePageviewTag('career:Tool:Job_Search;jobsearch_reload', null, null, 'career:Tool:Job_Search', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);
    }
    else {
        //new
        setCookie("isReload", "isReload");
        cmCreatePageviewTag('career:Tool:Job_Search;jobsearch', null, null, 'career:Tool:Job_Search', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);

    }

    function setCookie(c_name, value) {
        document.cookie = c_name + "=" + value;
    }

    function getCookie(c_name) {
        var i, x, y, ARRcookies = document.cookie.split(";");
        for (i = 0; i < ARRcookies.length; i++) {
            x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
            y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);
            x = x.replace(/^\s+|\s+$/g, "");
            if (x == c_name) {
                return unescape(y);
            }
        }
    }


    function ValidateForm() {
        if (ValidZipCode()) {
            _submit();
        }
    }

    function ValidZipCode() {

        if (document.getElementById("ddlRadius").SelectedIndex > 0) {

            if (document.getElementById("txtZipCode").value == "") {
                alert("Zip Code cannot be empty if you are searching by radius/distance.");
                document.getElementById("txtZipCode").focus();
                return false;
            }
            //return true;
        }
        if (document.getElementById("txtZipCode").value != "") {

            if (document.getElementById("ddlRadius").SelectedIndex == 0) {
                alert("Please select a distance (miles) from Zip Code value.");
                document.getElementById("ddlRadius").focus();
                return false;
            }
            if (document.getElementById("txtZipCode").value.length < 5) {
                alert("Zip Code cannot be less than five digits.");
                document.getElementById("txtZipCode").focus();
                return false;
            }
            //return true;

        }
        return true;

    }

    function onlyNumbers(evt) {
        var e = event || evt; // for trans-browser compatibility
        var charCode = e.which || e.keyCode;

        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

        return true;

    }


    //-->
</script> 
  </asp:Content>
