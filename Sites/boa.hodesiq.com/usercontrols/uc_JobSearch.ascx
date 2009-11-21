<%@ Control Language="C#" AutoEventWireup="true" CodeFile="uc_JobSearch.ascx.cs" Inherits="uc_JobSearch" %>
 <table border="0" cellpadding="0" cellspacing="0" summary=""
            width="200">
            <tr valign="top">
                <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
					<table border="0" cellpadding="1" cellspacing="1" summary="" width="100%">
                        
						
						<tr>
							<td  valign="top" style="width:50%; height:45;">
							
								    <asp:Label ID="lblCountry" runat="server" Text="Country" AssociatedControlID="State"></asp:Label><br />
								    <asp:DropDownList ID="Country" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								    ToolTip="Select a country" AutoPostBack="true" OnSelectedIndexChanged="Country_Click" >								  
								    </asp:DropDownList>																						
							</td>
							</tr>
							<tr id="trCanadaJobs" runat="server" visible="false">
							<td>
							 <a href="http://globalcareers.bankofamerica.com" id="A1" title="Canada Job Search" class="p" onblur="this.className='p';" onfocus="this.className='p-over';">Canada Job Search .</a>
							</td>
							</tr>
							<tr id="trInternationalLocation" runat="server"  visible="false">							
							<td  valign="top" style="width:50%; height:45;">
							    <asp:Label ID="LblInternationalCity" runat="server" Text="International City" Visible="true" AssociatedControlID="InternationalCity"></asp:Label><br />
								<asp:DropDownList ID="InternationalCity" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								ToolTip="Select a city" Visible="true" Enabled="true">
								<asp:ListItem>All cities&#160;</asp:ListItem>
								</asp:DropDownList>								
							</td>
						</tr>
						
						<tr id="trState" runat="server" >
							<td  valign="top" style="width:50%; height:45;">
							    <div id="d1" style="display: inline;">
								    <asp:Label ID="lblState" runat="server" Text="Location" AssociatedControlID="State"></asp:Label><br />
								    <asp:DropDownList ID="State" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								    ToolTip="Select a state" AutoPostBack="true" OnSelectedIndexChanged="brefine_Click">
								    <asp:ListItem Value="-1">All locations&#160;</asp:ListItem>
								    </asp:DropDownList>
								</div>
								
							
							</td></tr>
							</tr>
							<tr  id="trCity" runat="server" >
							<td  valign="top" style="width:50%; height:45;">
							    <asp:Label ID="lblCity" runat="server" Text="City" Visible="true" AssociatedControlID="City"></asp:Label><br />
								<asp:DropDownList ID="City" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								ToolTip="Select a city" Visible="true"  Enabled="false">
								<asp:ListItem>All cities&#160;</asp:ListItem>
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
								<tr id="trJobArea" runat="server">
							<td valign="top" style="width:50%; height:45;">
							    <div id="d2" style="display: inline;">
								<asp:Label ID="lblJobAreas" runat="server" Text="Job areas" Visible="true" AssociatedControlID="ddlJobAreas"></asp:Label><br />
								<asp:DropDownList ID="ddlJobAreas" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								ToolTip="Select a job area" Visible="true">
								</asp:DropDownList>
								</div>
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

						</tr>
						<tr>
						<td align="left" valign="top"><asp:PlaceHolder runat="server" ID="phSearch"></asp:PlaceHolder></td>
						</tr>
						<tr>
						<td><a href="http://www.bankofamerica.com/careers/index.cfm?template=jobs_interstitial" id="ctl00_cphmain_lnkInternal" title="Internal Jobs Database" class="p" onblur="this.className='p';" onfocus="this.className='p-over';">internal jobs database</a>.
						</td>
						</tr>
						<tr>						
						<td><a href="overview/manage_your_profile.asp" target="_blank" class="p" onblur="this.className='p';" onfocus="this.className='p-over';" >Manage Your Profile</a>
    						</td></tr>
						</table>