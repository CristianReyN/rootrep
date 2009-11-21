  <%@ Page AutoEventWireup="true" CodeFile="AdvanceSearchTest.aspx.cs" Inherits="AdvanceSearchTest"
      Language="C#" MasterPageFile="~/BOAmaster.master" Title="Advance Search Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
	<h1 style="margin: 0px 0px 0px 12px; ">Advanced Search</h1>
        <table border="0" cellpadding="0" cellspacing="0" summary="For a more advanced search the user will be able to select the job family, full-time or part-time on positions, location, language requirement, date posted, shift, willingness to travel and begin search."
            width="578">
            <tr valign="top">
                <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
					<table border="0" cellpadding="1" cellspacing="1" summary="" width="100%">
                        <tr>
                            <td valign="top" colspan="2">To find a career suited to your skill set, select a job area from the list below. Then you may narrow your selection further by choosing additional search criteria and/or entering keywords. 
                            <br /><br />
                            <%--After you select your state from the Location field, click on the link ‘Select Cities’. The page will refresh. You will then be able to select your city from the ‘City’ field.--%>
                            <span class="auraltext">After you select your state from the Location field, click on the link ‘Select Cities’. The page will refresh. You will then be able to select your city from the ‘City’ field.</span> 
                            <br /><br />
                            Bank of America associates should access the <a href="http://www.bankofamerica.com/careers/index.cfm?template=jobs_interstitial" id="ctl00_cphmain_lnkInternal" title="Internal Jobs Database" class="p" onblur="this.className='p';" onfocus="this.className='p-over';">internal jobs database</a>.
                            </td>
                            <td>&nbsp;</td>
                        </tr>
						<tr>
							<td colspan="2" valign="top" align="left">&nbsp;
							</td>
						</tr>
						<tr>
							<td  valign="top" style="width:50%; height:45;">
							    <div id="d1" style="display: inline;">
								    <asp:Label ID="lblState" runat="server" Text="Location" AssociatedControlID="State"></asp:Label><br />
								    <asp:DropDownList ID="State" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								    ToolTip="Select a state" AutoPostBack="false" OnSelectedIndexChanged="brefine_Click">
								    <asp:ListItem Value="-1">All locations&#160;</asp:ListItem>
								    </asp:DropDownList>
								</div>
								<div>
								<noscript>
								<asp:ImageButton ID="brefine" runat="server" OnClick="brefine_Click" AlternateText="Show cities" Height="19" Width="77" ImageUrl="~/images/showcitylink.GIF" EnableViewState="false" />
								</noscript>
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
						<tr>
							<td valign="top" style="width:50%; height:45;">
							    <div id="d2" style="display: inline;">
								<asp:Label ID="lblJobAreas" runat="server" Text="Job areas" Visible="true" AssociatedControlID="ddlJobAreas"></asp:Label><br />
								<asp:DropDownList ID="ddlJobAreas" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								ToolTip="Select a job area" Visible="true">
								</asp:DropDownList>
								</div>
							</td>
							<td  valign="top" style="width:50%; height:45;" >
								<asp:Label ID="lblfullpart" runat="server" Text="Full/part time" AssociatedControlID="fullpart"></asp:Label><br />
								<asp:ListBox ID="fullpart" runat="server" CssClass="left" SelectionMode="Single"
								Style="width: 100%; z-index: auto;" ToolTip="Full/part time"  Rows="1">
								<asp:ListItem>All </asp:ListItem>
								</asp:ListBox>
							</td>
						</tr>
						<tr>
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
						<tr>
							<td  valign="top" style="width:50%; height:45;" >
							    <div id="d4" style="display: inline;">
								    <asp:Label ID="lbltravel" runat="server" Text="Willingness to travel" AssociatedControlID="travel"></asp:Label>
								    <asp:DropDownList id="travel" tooltip="Travel" Cssclass="left" runat="server" style="width: 100%; z-index: auto;" >
								    <asp:ListItem>All travel</asp:ListItem>
								    </asp:DropDownList>
								</div>
							</td>
							<td  valign="top" style="width:50%; height:45;" >
								<asp:Label ID="lbllang" runat="server" Text="Language requirements" AssociatedControlID="lang"></asp:Label><asp:ListBox ID="lang" SelectionMode="Single" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								ToolTip="Language requirements"  Rows="1">
								<asp:ListItem>All languages</asp:ListItem>
								</asp:ListBox>
							</td>
						</tr>
						<tr>
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
						<tr>
							<td valign="top" align="left" colspan="2">
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>	
										<td align="left" valign="top"><asp:PlaceHolder runat="server" ID="phSearch"></asp:PlaceHolder></td>
										<td width="10">&nbsp;</td>
										<td align="left" valign="top"><asp:HyperLink runat="server" ID="lnkBasicSearch" NavigateUrl="~/JobSearchTest.aspx" Text="Guided job search" CssClass="p" ToolTip="Guided job search" /></td>
										<td width="10">&nbsp;</td>
										<td align="left" valign="top"><asp:HyperLink runat="server" ID="lnkJobCart" NavigateUrl="~/jobcart.aspx" Text="View job cart" CssClass="p" ToolTip="View job cart" /></td>
									</tr>
								</table>												
							</td>
						</tr>
						<tr><td colspan="2">&nbsp;</td></tr>
					</table>
					
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
                    AllowSorting="false"
                    AutoGenerateColumns="False" 
                    CellPadding="0" 
                    GridLines="None" 
                    ToolTip="Search Results "
                    summary="Search Results " 
                    Width="554px" 
                    PageSize="12" 
                    AllowPaging="false" >
                        <RowStyle BackColor="#CADCEB" Height="10px" />
                        <AlternatingRowStyle BackColor="#EAF1F7" Height="10px" />
                        <HeaderStyle BackColor="#EAF1F7" Height="10px" />
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="JobsID,stateid,cityid,travelids,jfamily,langs,ftpt,shftid,pds,keywords,jobareas" DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=ASP&amp;JobId={0}&amp;stateid={1}&amp;cityid={2}&amp;travel={3}&amp;jfamily={4}&amp;lang={5}&amp;fullpart={6}&amp;shift={7}&amp;datepost={8}&amp;keywords={9}&amp;jobareas={10}"
                                DataTextField="JobName" HeaderText="Job Title" ControlStyle-CssClass="nv">
                                    <HeaderStyle HorizontalAlign="Left" Width="50%"/>
                            </asp:HyperLinkField>
                            <asp:BoundField DataField="Location" HeaderText="Location">
                                <HeaderStyle HorizontalAlign="Left"  Width="25%"/>
                            </asp:BoundField>
                            <asp:BoundField DataField="postdate" HeaderText="Date">
                                <HeaderStyle HorizontalAlign="Left"  Width="25%"/>
                            </asp:BoundField>
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
					<asp:PlaceHolder runat="server" ID="phPrevious"></asp:PlaceHolder>
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

<asp:label id="lblMessage" runat="server"></asp:label>
</asp:Content>