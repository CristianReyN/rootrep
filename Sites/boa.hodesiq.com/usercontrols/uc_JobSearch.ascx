<%@ Control Language="C#" AutoEventWireup="true" CodeFile="uc_JobSearch.ascx.cs" Inherits="uc_JobSearch" %>
<link href="../resources/style.css" rel="stylesheet" type="text/css" />
<table width="205" border="0" cellspacing="0" cellpadding="0" summary="">
                       <tr>
<td width="205" height="100%" valign="top">
    <div style="border: 1px solid #e8e8e9; margin: 0px 0px 12px 0px; padding: 0px 0px 6px 0px;">
	<H2 class="g-bold" style="margin: 0px 0px 0px 0px;">Guided Job Search</H2>
	<img src="images/clear.gif" width="100%" height="1" alt="" border="0" style="margin: 1px 0px 6px 0px; background: #e8e8e9;" align="top"/></br">

    <table width="192" cellpadding="0" cellspacing="0" border="0" summary="" style="margin: 0px 5px 0px 4px">
	<tr>
			<td style="padding: 0px 0px 0px 0px;">
                <p style="margin: 0px;"><asp:Label ID="tdInstructions" runat="server"></asp:Label></p>
                <p class="ada-label">After you select a country from the country field, the page will refresh. For the United States, you can then pick a state.  After you select a state from the 'State' field, the page will refresh.  You will then be able to select a city from the 'City' field.  For all other countries, after you select a country other than the United States from the country field, the page will refresh and you can then select a city from the 'City' field.</p>
                <img class="dotdiv" src="images/clear.gif" width="100%" height="1" alt="" border="0"/>
	

                                    <table width="190" border="0" align="center" cellpadding="0" cellspacing="0" summary="Guided Job Search">							     
                                        <tr align="left">
							                    <td  valign="top"  style="width:193px;height:38;" align="left">
            							
								                <asp:Label ID="lblCountry" runat="server"  Text="Country" AssociatedControlID="Country"></asp:Label><br />
								                <asp:DropDownList  ID="Country" runat="server" CssClass="center" Style="width: 100%; z-index: auto;"
								                ToolTip="Select a country" AutoPostBack="true" OnSelectedIndexChanged="Country_Click" >								  
								                </asp:DropDownList>																						
							                    <asp:HiddenField ID="CountryHidden" Value="" runat="server"/>
							                    </td>
							            </tr>
							        </table>	
	                        <asp:Panel ID="PnlCanada" runat="server" Visible="false" >	                          	           
	                                       <p style="margin: 3px 0px 3px 0px;">
	                       <img class="dotdiv" src="images/clear.gif" width="100%" height="1" alt="" border="0">
	          
                                &nbsp;&nbsp;<a href="http://ig12.i-grasp.com/fe/tpl_bankofamerica06.asp" target="_blank" class="p" onfocus="this.className='p-over';" onblur="this.className='p';" style="margin: 0px 0px 0px 0px;" >Search and apply<span class="hidden">Search and apply for jobs in Canada. Link opens a new window.</span></a> for jobs in &nbsp;&nbsp;Canada.</asp:Panel>
							
							        <asp:Panel ID="PnlFilter" runat="server">
							        <table width="192" border="0" align="center" cellpadding="0" cellspacing="0" summary="Guided Job Search">							
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
								                <asp:Label ID="lblState" runat="server" Text="State" AssociatedControlID="State"></asp:Label><br />
								                <asp:DropDownList ID="State" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
								                ToolTip="Select a state" AutoPostBack="true" OnSelectedIndexChanged="brefine_Click">
								                <asp:ListItem Value="-1">All state&#160;</asp:ListItem>
								                </asp:DropDownList>
								                <asp:HiddenField ID="StateHidden" Value="" runat="server"/>
								            </div>
            								
            							
							            </td></tr>							 
							            <tr  id="trCity" runat="server" >
							            <td  valign="top" style="width:50%;height:38;">
							                <asp:Label ID="lblCity" runat="server" Text="City" Visible="true" AssociatedControlID="City"></asp:Label><br /><asp:HyperLink runat="server"  NavigateUrl="#"   Target="_blank" onclick="javascript:w= window.open('overview/chelp.html','mywin','left=200px,top=180px,width=625,height=345,resizable=0');return false;" ID="HylCityNote" Font-Bold="true" Visible="true" AssociatedControlID="City" CssClass="p">How do I use the city search?<span class="hidden"> Link opens a new window</span></asp:HyperLink><br />
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
						   </table></asp:Panel>  	
						 
						<table id="tblButtons" runat="server" width="192" border="0" align="center" cellpadding="0" cellspacing="0" summary="Guided Job Search">							
						
						<tr>
										<td width="192" valign="bottom">

								        <table>
									<tr>	
										<td align="center" valign="top" style="padding:3px 0px 0px 0px"> 
								
										<asp:LinkButton ID="BtnBegin" runat="server" CssClass="ie-btn1" OnClick="display_filter" Width="40px" ToolTip=" Begin">Begin</asp:LinkButton> 
										<asp:LinkButton ID="BtnSearch" runat="server" CssClass="ie-btn1" OnClick="bsearch_Click" Width="80px" ToolTip=" Begin Search">Begin Search</asp:LinkButton> </td>										
										
									</tr>	</table> 
																			
							</td>
						</tr>
					
						<tr id="TrUsJobs1" runat="server">	
						<td>					
					    <img class="dotdiv" src="images/clear.gif" width="100%" height="1" alt="" border="0"/>
                               <a id="ManageYourProfile" runat="server" class="p" onblur="this.className='p';" onfocus="this.className='p-over';"  title="Manage your profile">Manage Your Profile</a><p style="margin: 6px 0px 6px 0px;" />

						</td>
						</tr>
						<tr id="TrUsJobs2" runat="server" valign="top">
						<td><p style="margin: 0px 0px 0px 0px;">Create or update your existing candidate profile.</p></br>
						</td></tr>																	
						<tr id="TrUsJobs3" runat="server" valign="top">
						<td height="26" align="left" valign="bottom" style="background-image: url(images/dotted.gif);
                                    background-position: left top; background-repeat: repeat-x;">                      
						</br><p style="margin: 0px 0px 0px 0px;">Bank of America associates should access the <a href="http://myhrtools.bankofamerica.com/" id="A1" title="Internal Jobs Database" class="p" onblur="this.className='p';" onfocus="this.className='p-over';">internal jobs database.</a></p></td>
						</tr>
					</table> </td></tr></table></div></td</tr></table>
						
					
					