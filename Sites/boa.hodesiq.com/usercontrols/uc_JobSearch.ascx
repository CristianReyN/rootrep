<%@ Control Language="C#" AutoEventWireup="true" CodeFile="uc_JobSearch.ascx.cs" Inherits="uc_JobSearch" %>
<link href="../resources/style.css" rel="stylesheet" type="text/css" />
<table width="200" border="0" cellspacing="0" cellpadding="0" summary="">
                          <tr>
                            <td width="200" height="22" align="left" valign="middle" style="background-image:url(images/search_results_31.gif); background-position: right top; background-repeat:no-repeat;  "> <h2 class="g-bold" style="margin: 0px;"><a name="jobsearch"></a>Guided Job Search</h2></td>
                          </tr>
                          <tr>
                                <td width="200"  valign="top" style="border:1px solid #e8e8e8;">
                                    <table width="200" border="0" cellpadding="0" cellspacing="0" summary="Guided Job Search">
                                        <tr><td>    <p><span class='auraltext'>
                                            After you select a country from the country field, the page will refresh. For the United States, you can then pick a state.  After you select a state from the 'State" field, the page will refresh.  You will then be able to select a city from the 'City' field.  For all other countries, after you select a country other than the United States from the country field, the page will refresh and you can then select a city from the 'City' field.
                                            </span></p></td></tr>
                                        <tr>
                                            <td width="200" align="left" valign="top"  style="padding:6px 6px 0px 6px;" ><p style="margin: 0px;">To find a career suited to your skill set, begin by selecting a country from the list below. Then you may narrow your selection further by choosing additional search criteria and/or entering keywords.</p> <br /> </td></tr>
                                        <tr>
              
                                            <td height="1" align="left" valign="top" style="background-image:url(images/dotted.gif); background-position:left top; background-repeat:repeat-x;  "></td>
                                        </tr>
                                    </table></br>
                                    <table width="190" border="0" align="center" cellpadding="0" cellspacing="0" summary="Guided Job Search">							     
                                        <tr align="left">
							                    <td  valign="top"  style="width:193px;height:38;" align="left">
            							
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
							            <td valign="top" style="width:50%;height:38;">
							                <asp:Label ID="LblInternationalCity" runat="server" Text="City" Visible="true" AssociatedControlID="InternationalCity"></asp:Label><br />
								            <asp:DropDownList ID="InternationalCity" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								            ToolTip="Select a city" Visible="true" Enabled="true">
								            <asp:ListItem>All cities&#160;</asp:ListItem>
								            </asp:DropDownList>								
							            </td>
						            </tr>
    						
						            <tr id="trState" runat="server" >
							            <td  valign="top" style="width:50%;height:38;">
							                <div id="d1" style="display: inline;">
								                <asp:Label ID="lblState" runat="server" Text="Location" AssociatedControlID="State"></asp:Label><br />
								                <asp:DropDownList ID="State" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								                ToolTip="Select a state" AutoPostBack="true" OnSelectedIndexChanged="brefine_Click">
								                <asp:ListItem Value="-1">All locations&#160;</asp:ListItem>
								                </asp:DropDownList>
								            </div>
            								
            							
							            </td></tr>							 
							            <tr  id="trCity" runat="server" >
							            <td  valign="top" style="width:50%;height:38;">
							                <asp:Label ID="lblCity" runat="server" Text="City" Visible="true" AssociatedControlID="City"></asp:Label><br />
								            <asp:DropDownList ID="City" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								            ToolTip="Select a city" Visible="true"  Enabled="false">
								            <asp:ListItem>All cities&#160;</asp:ListItem>
								            </asp:DropDownList>								
							            </td>
						            </tr>
							        <tr id="trJobFamily" runat="server" visible="false">
							                <td valign="top" style="width:50%;height:38;">
							                    <div id="Div2" style="display: inline;">
								                <asp:Label ID="lblJobFamily" runat="server" Text="Job Family" Visible="true" AssociatedControlID="ddlJobFamily"></asp:Label><br />
								                <asp:DropDownList ID="ddlJobFamily" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								                ToolTip="Select a job family" Visible="true">
								                </asp:DropDownList>
								                </div>
							                </td>
							        </tr>	
								    <tr id="trJobArea" runat="server">
							            <td valign="top" style="width:50%;height:38;">
							                <div id="d2" style="display: inline;">
								            <asp:Label ID="lblJobAreas" runat="server" Text="Job areas" Visible="true" AssociatedControlID="ddlJobAreas"></asp:Label><br />
								            <asp:DropDownList ID="ddlJobAreas" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								            ToolTip="Select a job area" Visible="true">
								            </asp:DropDownList>
								            </div>
							            </td>
							        </tr>					
						            <tr id="trKeywords" runat="server">
							            <td  valign="top" style="width:50%;height:45;" >
							                <div id="d5" style="display: inline;">
								                <asp:Label ID="lblkeywords" runat="server" Text="Keywords or job number (if known)" AssociatedControlID="keywords"></asp:Label><br />
								                <asp:TextBox ID="keywords" runat="server" CssClass="left" Style="width: 100%; size: 20"
								                ToolTip="Keywords or job number" ></asp:TextBox>
								            </div>
							            </td>

						            </tr>
						    </table></asp:Panel><br />
						 
						<table width="190" border="0" align="center" cellpadding="0" cellspacing="0" summary="Guided Job Search">							
						<tr>
							<td valign="top" align="left" colspan="2">
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>	
										<td align="center" valign="top"  style="padding: 6px 0px 0px 0px;"> 
										<asp:LinkButton ID="BtnBegin" runat="server" CssClass="ie-btn1" OnClick="display_filter" Width="40px" ToolTip=" Begin">Begin</asp:LinkButton> </td>
										<td align="center" valign="top"> <asp:LinkButton ID="BtnSearch" runat="server" CssClass="ie-btn1" OnClick="bsearch_Click" Width="80px" ToolTip=" Begin Search">Begin Search</asp:LinkButton> </td>
										<td width="10">&nbsp;</td>
										<td align="left" valign="top"><asp:HyperLink runat="server" ID="lnkJobCart" NavigateUrl="~/jobcart.aspx" Text="View job cart" CssClass="p" ToolTip="View job cart" Visible="false" /></td>
									</tr>	</table><br />
																			
							</td>
						</tr>
					
						<tr id="TrUsJobs1" runat="server">						
					    <td height="14" align="left" valign="bottom" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">
						    </br><a href="../overview/manage_your_profile.asp" target="_blank" class="p" onblur="this.className='p';" onfocus="this.className='p-over';"  title="Manage your profile">Manage Your Profile</a>
						</td>
						</tr>
						<tr id="TrUsJobs2" runat="server" valign="top">
						<td><p style="margin: 0px 0px 0px 0px;">Create or update your existing candidate profile.</p></br>
						</td></tr>																	
						<tr id="TrUsJobs3" runat="server" valign="top">
						<td height="26" align="left" valign="bottom" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">                      
						</br><p style="margin: 0px 0px 0px 0px;">Bank of America associates should access the <a href="http://www.bankofamerica.com/careers/index.cfm?template=jobs_interstitial" id="A1" title="Internal Jobs Database" class="p" onblur="this.className='p';" onfocus="this.className='p-over';">internal jobs database.</a></p></br></td>
						</tr>
					</table></td></tr></table>
						
					
					