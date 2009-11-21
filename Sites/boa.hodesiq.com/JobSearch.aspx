  <%@ Page AutoEventWireup="true" CodeFile="JobSearch.aspx.cs" Inherits="JobSearch"
      Language="C#" MasterPageFile="~/BOAmaster.master" Title="Job Search Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
	<h1 style="margin: 0px 0px 0px 12px; ">Guided Job Search</h1>
        <table border="0" cellpadding="0" cellspacing="0" summary=""
            width="578">
            <tr valign="top">
                <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
					<table border="0" cellpadding="1" cellspacing="1" summary="" width="100%">
                        <tr>
                            <td valign="top" colspan="2">To find a career suited to your skill set, begin by selecting a country from the list below. Then you may narrow your selection further by choosing additional search criteria and/or entering keywords.</td>
                            <br />                         
                        </tr>
						<tr>
							<td colspan="2" valign="top" align="left">&nbsp;
							</td>
						</tr></table>
							<table border="0" cellpadding="0" cellspacing="0" summary=""
                            width="289">
						<tr>
							<td  valign="top" style="width:50%; height:45;">
							    <div id="Div3" style="display: inline;">						
								    <asp:Label ID="lblCountry" runat="server" Text="Country" AssociatedControlID="State"></asp:Label><br />
								    <asp:DropDownList ID="Country" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								    ToolTip="Select a country" AutoPostBack="true" OnSelectedIndexChanged="Country_Click">								  
								    </asp:DropDownList></div>
							</td>
							</tr>
							</table>
							<asp:Panel ID="PnlFilter" runat="server" >
							<table border="0" cellpadding="0" cellspacing="0" summary=""
                            width="578">					
							<tr id="trInternationalLocation" runat="server"  visible="false">							
							<td  valign="top"  style="width:50%; height:45;">
							   <div id="Div1" style="display: inline;">
							    <asp:Label ID="LblInternationalCity" runat="server" Text="International City" Visible="true" AssociatedControlID="InternationalCity"></asp:Label><br />
								<asp:DropDownList ID="InternationalCity" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								ToolTip="Select a city" Visible="true" Enabled="true">
								<asp:ListItem>All cities&#160;</asp:ListItem>
								</asp:DropDownList>			</div>						
							</td>
						</tr>
						
						<tr id="trUsLocation" runat="server" >
							<td  valign="top" style="width:50%; height:45;">
							    <div id="d1" style="display: inline;">
								    <asp:Label ID="lblState" runat="server" Text="Location" AssociatedControlID="State"></asp:Label><br />
								    <asp:DropDownList ID="State" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								    ToolTip="Select a state" AutoPostBack="false" OnSelectedIndexChanged="brefine_Click">
								    <asp:ListItem Value="-1">All locations&#160;</asp:ListItem>
								    </asp:DropDownList>
								</div>
								
								<asp:HiddenField ID="Statehidden" runat="server" Value=""  />
							</td>
							<td  valign="top" style="width:50%; height:45;">
							    <asp:Label ID="lblCity" runat="server" Text="City" Visible="true" AssociatedControlID="City"></asp:Label><br />
								<asp:DropDownList ID="City" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								ToolTip="Select a city" Visible="true" Enabled="false">
								<asp:ListItem>All locations&#160;</asp:ListItem>
								</asp:DropDownList>								
							</td>
						</tr>
							<tr id="trJobFamily" runat="server" visible="false">
							<td valign="top" style="width:50%; height:45;">
							    <div id="Div2" style="display: inline;">
								<asp:Label ID="lblJobFamily" runat="server" Text="Job Family" Visible="true" AssociatedControlID="ddlJobFamily"></asp:Label><br />
								<asp:DropDownList ID="ddlJobFamily" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								ToolTip="Select a job family" Visible="true">
								</asp:DropDownList>
								</div>
							</td>
							</tr>
						<tr id="trJobAreaAndFullTimePartTime" runat="server">
							<td valign="top" style="width:50%; height:45;">
							    <div id="d2" style="display: inline;">
								<asp:Label ID="lblJobAreas" runat="server" Text="Job areas" Visible="true" AssociatedControlID="ddlJobAreas"></asp:Label><br />
								<asp:DropDownList ID="ddlJobAreas" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								ToolTip="Select a job area" Visible="true">
								</asp:DropDownList>
								</div>
							</td>
							<td  valign="top" style="width:50%; height:45;" runat="server" >
								<asp:Label ID="lblfullpart" runat="server" Text="Full/part time" AssociatedControlID="fullpart"></asp:Label><br />
								<asp:ListBox ID="fullpart" runat="server" CssClass="left" SelectionMode="Single"
								Style="width: 100%; z-index: auto;" ToolTip="Full/part time"  Rows="1">
								<asp:ListItem>All </asp:ListItem>
								</asp:ListBox>
							</td>
						</tr>
						<tr id="trDatepostedShifts" runat="server">
							<td  valign="top" style="width:50%; height:45;" >
							    <div id="d3"  style="display: inline;">
								    <asp:Label ID="lbldatepost" runat="server" Text="Date positions posted as of" AssociatedControlID="datepost"></asp:Label><br />
								    <asp:DropDownList ID="datepost" runat="server" CssClass="left" Style="width: 100%;
								    z-index: auto;" ToolTip="Date posted" >
								    <asp:ListItem Value="0">All</asp:ListItem>
								    <asp:ListItem Value="1">Today</asp:ListItem>
								    <asp:ListItem Value="2">Yesterday</asp:ListItem>
								    <asp:ListItem Value="3">Last 7 Days</asp:ListItem>
								    <asp:ListItem Value="4">Last 14 Days</asp:ListItem>
								    <asp:ListItem Value="5">Last 21 Days</asp:ListItem>
								    <asp:ListItem Value="6">Last 28 Days</asp:ListItem>
								    </asp:DropDownList>
								</div>
							</td>
							<td  valign="top" style="width:50%; height:45;" >
								<asp:Label ID="lblShift" runat="server" Text="Shift" AssociatedControlID="shift"></asp:Label>
								<asp:ListBox id="shift" tooltip="Shift" SelectionMode="Single" runat="server" Cssclass="left"  style="width: 100%; z-index: auto;"  Rows="1">
								<asp:ListItem>All shifts</asp:ListItem>
								</asp:ListBox>
							</td>
						</tr>
						<tr id="trTravel" runat="server">
							<td  valign="top" style="width:50%; height:45;" >
							    <div id="d4" style="display: inline;">
								    <asp:Label ID="lbltravel" runat="server" Text="Willingness to travel" AssociatedControlID="travel"></asp:Label>
								    <asp:DropDownList id="travel" tooltip="Travel" Cssclass="left" runat="server" style="width: 100%; z-index: auto;" >
								    <asp:ListItem>All travel</asp:ListItem>
								    </asp:DropDownList>
								</div>
							</td>
							<td  valign="top" style="width:50%; height:45;" >
								<asp:Label ID="lbllang" runat="server" Text="Language requirements" AssociatedControlID="lang" Visible="false"></asp:Label>
								<asp:ListBox ID="lang" SelectionMode="Single" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								ToolTip="Language requirements"  Rows="1" Visible="false">
								<asp:ListItem>All languages</asp:ListItem>
								</asp:ListBox>
							</td>
						</tr>
						<tr id="trKeywords" runat="server">
							<td  valign="top" style="width:50%; height:45;" >
							    <div id="d5" style="display: inline;">
								    <asp:Label ID="lblkeywords" runat="server" Text="Keywords or job number (if known)" AssociatedControlID="keywords"></asp:Label><br />
								    <asp:TextBox ID="keywords" runat="server" CssClass="left" Style="width: 100%; size: 20"
								    ToolTip="Keywords or job number" ></asp:TextBox>
								</div>
							</td>
							<td  valign="top" style="width:50%; height:45;" >&nbsp;
							</td>
						</tr>
						</table></asp:Panel>
						<table border="0" cellpadding="1" cellspacing="1" summary="" width="100%">
						<tr>
							<td valign="top" align="left" colspan="2">
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>	
										<td align="left" valign="top"> <asp:LinkButton ID="BtnBegin" runat="server" CssClass="ie-btn1" OnClick="display_filter" Width="80px" ToolTip=" Begin Search">Begin&nbsp;Search</asp:LinkButton> </td>
										<td align="left" valign="top"> <asp:LinkButton ID="BtnSearch" runat="server" CssClass="ie-btn1" OnClick="bsearch_Click" Width="40px" ToolTip=" Begin Search">Begin</asp:LinkButton> </td>
										<td width="10">&nbsp;</td>
										<td align="left" valign="top"><asp:HyperLink runat="server" ID="lnkJobCart" NavigateUrl="~/jobcart.aspx" Text="View job cart" CssClass="p" ToolTip="View job cart" Visible="false" /></td>
									</tr>
								</table>												
							</td>
						</tr>
						<tr><td colspan="2">&nbsp;</td></tr>
					</table>
					<br />
					<asp:Panel ID="PnlUSJobsContent" runat="server">					
					<a href="overview/manage_your_profile.asp" target="_blank" class="ritnavlinks" onblur="this.className='p';" onfocus="this.className='p-over';" >Manage Your Profile</a><BR/>
					Create or update your existing candidate profile.<br /><br />
					Bank of America associates should access the <a href="http://www.bankofamerica.com/careers/index.cfm?template=jobs_interstitial" id="ctl00_cphmain_lnkInternal" title="Internal Jobs Database" class="p" onblur="this.className='p';" onfocus="this.className='p-over';">internal jobs database</a><br /><br />					
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
                    <asp:GridView 
                    ID="GrdResults" 
                    runat="server"                     
                    AutoGenerateColumns="False" 
                    CellPadding="0" 
                    GridLines="None" 
                    ToolTip="Search Results "
                    summary="Search Results. The first column is the Job Title.  The second column is the Location.  The third column is the Date. " 
                    Width="554px"
                    Height="18"  
                    PageSize="12"    
                    AllowPaging="false" 
                    EmptyDataRowStyle-ForeColor="Red"
                    AllowSorting="True" OnSorting="GrdResults_OnSorting" 
                    >
                    
                        <HeaderStyle CssClass="pd"   BackColor="#EAF1F7" Height="24px"  />
                        <RowStyle CssClass="pd2"   BackColor="#CADCEB" Height="24px" />
                        <AlternatingRowStyle CssClass="pd2"  BackColor="#EAF1F7" Height="24px" />
                        
                        <Columns>
                        
                            <asp:HyperLinkField   
                                DataNavigateUrlFields="CountryID,JobsID,stateid,cityid,travelids,jfamily,langs,ftpt,shftid,pds,keywords,jobareas,feedname" 
                                DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=ASP&amp;CountryId={0}&amp;JobId={1}&amp;stateid={2}&amp;cityid={3}&amp;travel={4}&amp;jfamily={5}&amp;lang={6}&amp;fullpart={7}&amp;shift={8}&amp;datepost={9}&amp;keywords={10}&amp;jobareas={11}&amp;feedname={12}"
                                DataTextField="JobName"                                   
                                HeaderText="Job Title"                                  
                                SortExpression="JobName">                                
                                <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left" Width="50%" Height="24px"/>
                            </asp:HyperLinkField>                            
                           
                           <asp:TemplateField HeaderText="Location" SortExpression="Location">
                                <ItemTemplate>
                                    <asp:Literal ID="Lc" runat="server" Text='<%# Eval("Location") %>'></asp:Literal>
                                </ItemTemplate> 
                                <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left"  Width="25%" Height="24px"/>
                            </asp:TemplateField>   
                            
                            <asp:TemplateField HeaderText="Date" SortExpression="postdate">
                                <ItemTemplate>
                                    <asp:Literal ID="Dt" runat="server" Text='<%# Eval("postdate") %>'></asp:Literal>
                                </ItemTemplate> 
                                <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left"  Width="25%" Height="24px"/>
                            </asp:TemplateField>  
                             <asp:TemplateField HeaderText="Job Family" SortExpression="jfamily">
                                <ItemTemplate>
                                    <asp:Literal ID="ja" runat="server" Text='<%# Eval("jfamily") %>'></asp:Literal>
                                </ItemTemplate> 
                                <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left"  Width="25%" Height="24px"/>
                            </asp:TemplateField>    
                            
                        </Columns>
                        <PagerStyle CssClass="mh-link1" />
                        <EmptyDataTemplate>
                            <b>There are no matching records found</b>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
     
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
        </table></asp:Panel>
<asp:label id="lblMessage" runat="server"></asp:label>

  </asp:Content>