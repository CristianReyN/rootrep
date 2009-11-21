<%@ Control Language="C#" AutoEventWireup="true" CodeFile="uc_JobSearch.ascx.cs" Inherits="uc_JobSearch" %>
<link href="../resources/style.css" rel="stylesheet" type="text/css" />
<table width="200" border="0" cellspacing="0" cellpadding="0" summary="">
                          <tr>
                            <td width="200" height="22" align="left" valign="middle" style="background-image:url(images/search_results_31.gif); background-position: right top; background-repeat:no-repeat;  "> <h2 class="g" style="margin: 0px;"><a name="jobsearch"></a>Guided Job Search</h2></td>
                          </tr>
                          <tr>
                            <td width="200"  valign="top" style="border:1px solid #e8e8e8;">
                                <table width="200" border="0" cellpadding="0" cellspacing="0" summary="Guided Job Search">
                                  <tr>
                                    <td width="200" align="left" valign="top"  style="padding:6px 6px 0px 6px;" >To find a career suited to your skill set, begin by selecting a country from the list below. Then you may narrow your selection further by choosing additional search criteria and/or entering keywords. 
     
       
                                         <br />
                                    <br /></td>
                                  </tr>
                                  <tr>
              
                                        <td height="1" align="left" valign="top" style="background-image:url(images/dotted.gif); background-position:left top; background-repeat:repeat-x;  "></td>
                                        </tr></td></table>
                                       <table width="190" border="0" align="center" cellpadding="0" cellspacing="0" summary="Guided Job Search">							
     
                                <tr align="center">
							            <td  valign="top"  style="width:193px; height:45;" align="center">
    							
								        <asp:Label ID="lblCountry" runat="server" Text="Country" AssociatedControlID="State"></asp:Label><br />
								        <asp:DropDownList ID="Country" runat="server" CssClass="center" Style="width: 100%; z-index: auto;"
								        ToolTip="Select a country" AutoPostBack="true" OnSelectedIndexChanged="Country_Click" >								  
								        </asp:DropDownList>																						
							    </td>
							    </tr>
							    </table>					 
							    <asp:Panel ID="PnlFilter" runat="server">
							 <table width="190" border="0" align="center" cellpadding="0" cellspacing="0" summary="Guided Job Search">							
							    <tr id="trInternationalLocation" runat="server"  visible="false">							
							    <td  valign="top" style="width:50%; height:45;">
							        <asp:Label ID="LblInternationalCity" runat="server" Text="City" Visible="true" AssociatedControlID="InternationalCity"></asp:Label><br />
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
						    </table></asp:Panel>
						 
						<table width="190" border="0" align="center" cellpadding="0" cellspacing="0" summary="Guided Job Search">							
						<tr>
							<td valign="top" align="left" colspan="2">
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>	
										<td align="left" valign="top"> <asp:LinkButton ID="BtnBegin" runat="server" CssClass="ie-btn1" OnClick="display_filter" Width="80px" ToolTip=" Begin Search">Begin&nbsp;Search</asp:LinkButton> </td>
										<td align="left" valign="top"> <asp:LinkButton ID="BtnSearch" runat="server" CssClass="ie-btn1" OnClick="bsearch_Click" Width="40px" ToolTip=" Begin Search">Search</asp:LinkButton> </td>
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
					<a href="../overview/manage_your_profile.asp" target="_blank" class="ritnavlinks" onblur="this.className='p';" onfocus="this.className='p-over';" >Manage Your Profile</a><BR/>
					Create or update your existing candidate profile.<br /><br />
					Bank of America associates should access the <a href="http://www.bankofamerica.com/careers/index.cfm?template=jobs_interstitial" id="ctl00_cphmain_lnkInternal" title="Internal Jobs Database" class="p" onblur="this.className='p';" onfocus="this.className='p-over';">internal jobs database</a><br /><br />					
					</asp:Panel></td></tr></table>