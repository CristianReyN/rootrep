<%@ Page AutoEventWireup="true" CodeFile="JobSearch.aspx.cs" Inherits="JobSearch"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Search Page" %>

<asp:Content ID="Content1" Runat="Server" ContentPlaceHolderID="cphmain">
<h1 style="margin: 0px 0px 0px 12px; ">Guided Job Search</h1>
    <table summary="Job Search and Job List Page" border="0" cellpadding="0" cellspacing="0" width="578">
        <tr valign="top">
            <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
               <table border="0" cellpadding="1" cellspacing="0" summary="" width="100%">
                    <tr>
                        <td valign="top" colspan="2">To find a career suited to your skill set, select a job area from the list below. Then you may narrow your selection further by choosing a location and/or entering a keyword. <br />
                        <noscript><span class="auraltext">After you select your state from the Location field, click on the link ‘Select Cities’. The page will refresh. You will then be able to select your city from the ‘City’ field.</span></noscript> <br />
                        Bank of America associates should access the <a href="http://www.bankofamerica.com/careers/index.cfm?template=jobs_interstitial" id="ctl00_cphmain_lnkInternal" title="Internal Jobs Database" class="p" onblur="this.className='p';" onfocus="this.className='p-over';">internal jobs database</a>.
                        </td>
                        <td>&nbsp;</td>
                    </tr>
					<tr>
						<td colspan="2" valign="top" align="left">&nbsp;
						</td>
					</tr>                   
                    <tr>
						<td valign="top" colspan="2" style="width:100%">
							<asp:Label ID="lblJobAreas" runat="server" Text="Job areas" Visible="true" AssociatedControlID="ddlJobAreas"></asp:Label><br />
							<span id="d1" style="display: inline;">
								<asp:DropDownList ID="ddlJobAreas" runat="server" CssClass="left" Style="width: 50%; z-index: auto;"
								ToolTip="Select a job area" Visible="true">
								</asp:DropDownList>
							</span>
						</td>
						<td valign="top" colspan="1" style="height:40px; " >&nbsp;</td>
                    </tr>
                    <tr>
						<td  valign="top" colspan="2" style="width:100%">
							<asp:Label ID="lblState" runat="server" Text="Location" AssociatedControlID="ddlState"></asp:Label><br />
							<div id="d2" style="display: inline;">
							<asp:DropDownList ID="ddlState" runat="server" CssClass="left" Style="width: 50%; z-index: auto;"
								ToolTip="Select a state" AutoPostBack="false" OnSelectedIndexChanged="brefine_Click">
								<asp:ListItem>All Locations&#160;</asp:ListItem>
							</asp:DropDownList>
							</div>
							<div>
							<noscript>
							<asp:ImageButton ID="brefine" runat="server" OnClick="brefine_Click" AlternateText="Show Cities" Height="19" Width="77" ImageUrl="~/images/showcitylink.GIF"/>
							</noscript>
							</div>
						</td>
						<td valign="top" colspan="1" style="height:40px; ">&nbsp;</td>
                    </tr>
                    <tr>
						<td  valign="top" colspan="2" style="width:100%">
							<asp:Label ID="lblCity" runat="server" Text="City" Visible="true" AssociatedControlID="ddlCity"></asp:Label><br />
							<span id="d3" style="display: inline;">
								<asp:DropDownList ID="ddlCity" runat="server" CssClass="left" Style="width: 50%; z-index: auto;"
								ToolTip="Select a City" Visible="true" Enabled="false">
								<asp:ListItem>All Locations&#160;</asp:ListItem>
								</asp:DropDownList>
							</span>
						</td>
						<td valign="top" colspan="1" style="height:40px; ">&nbsp;</td>
                    </tr>
                    <tr><td colspan="3">&nbsp;</td></tr>
                    <tr>
						<td valign="top" colspan="3" >
							<asp:Label ID="lblKeywords" runat="server" Text="Keywords or job number (if known)" AssociatedControlID="keywords"></asp:Label><br />
							<asp:TextBox ID="keywords" runat="server" CssClass="left" Style="width: 50%; size: 20"
								ToolTip="Keywords">
							</asp:TextBox>
						</td>
                    </tr>
                    <tr><td colspan="3">&nbsp;</td></tr>
                    <tr>
						<td colspan="3">
							<table border="0" cellspacing="0" cellpadding="0">
								<tr>	
									<td align="left" valign="top"><asp:PlaceHolder runat="server" ID="phSearch"></asp:PlaceHolder></td>
									<td width="10">&nbsp;</td>
									<td align="left" valign="top"><asp:HyperLink runat="server" ID="lnkAdvanceSearch" NavigateUrl="~/AdvanceSearch.aspx" Text="Advanced search" CssClass="p" ToolTip="Advanced search" /></td>
									<td width="10">&nbsp;</td>
									<td align="left" valign="top"><asp:HyperLink runat="server" ID="lnkJobCart" NavigateUrl="~/jobcart.aspx" Text="View job cart" CssClass="p" ToolTip="View job cart" /></td>
								</tr>
							</table>
							
						</td>
                    </tr>
                    <tr><td colspan="3">&nbsp;</td></tr>
                </table>
                <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                    <tr>
                        <td style="padding: 0px 12px 0px 12px;" align="left">
                            <b><asp:Label ID="lblJobofJobs" runat="server" Text=""></asp:Label></b>&nbsp;</td>
                        <td align="left" valign="top">
                        </td>
                    </tr>
                </table>
                <asp:GridView 
                ID="GrdResults" 
                runat="server" 
                Width="554px" 
                AutoGenerateColumns="False" 
                CellPadding="0" 
                GridLines="None" 
                AllowSorting="True" 
                ToolTip="Search Results " 
                summary="Search Results " 
                EmptyDataRowStyle-ForeColor="Red">
                    <RowStyle BackColor="#CADCEB" Height="10px"/>
                    <AlternatingRowStyle BackColor="#EAF1F7" Height="10px" />
                    <HeaderStyle Height="10px" BackColor="#EAF1F7" />
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="JobsID,stateid,cityid,areaoftalent,jfamily,keywords" DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=Sp&amp;JobId={0}&amp;stateid={1}&amp;cityid={2}&amp;jobareas={3}|{4}&amp;keywords={5}"
                            DataTextField="JobName" HeaderText="Job Title" ControlStyle-CssClass="nv" ItemStyle-Width="50%">
                            <HeaderStyle HorizontalAlign="Left" Width="50%"/>
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="Location" HeaderText="Location" ItemStyle-Width="25%" >
                            <HeaderStyle HorizontalAlign="Left" Width="25%"/>
                        </asp:BoundField>
                        <asp:BoundField DataField="postdate" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" ItemStyle-Width="25%" >
                            <HeaderStyle HorizontalAlign="Left" Width="25%"/>
                        </asp:BoundField>
                    </Columns>
                    <PagerStyle CssClass="mh-link1" />
                    <EmptyDataTemplate>
                    <b style="color: red">There are no matching records found</b>
                    </EmptyDataTemplate>
                    <PagerSettings Mode="NextPrevious" NextPageText="Next" Position="TopAndBottom" PreviousPageText="Previous" />
                </asp:GridView><br />
                <br />
                <br />
            </td>
        </tr>
        </table>
		<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
		<tr><td colspan="2">&nbsp;</td></tr>
        <tr valign="top">
            <td valign="top" align="right" style="width: 50%;">&nbsp;
            <div id="divPrev" runat="server" style="display:none">
				<asp:PlaceHolder runat="server" ID="phPrevious"></asp:PlaceHolder>
			</div>
			</td>
			<td valign="top" align="left" style="width: 50%;">&nbsp;
			<div id="divNext" runat="server" style="display:none">
				<asp:PlaceHolder runat="server" ID="phNext"></asp:PlaceHolder>
             </div>
             </td>
         </tr>
		<tr><td colspan="2">&nbsp;</td></tr>
         <tr>
			<td colspan="2" align="center" valign="top">
				<br /><asp:Label ID="LblPageOfPages" runat="server"></asp:Label>    
			</td>
         </tr>
    </table>
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <div id="d4"></div>
</asp:Content>
                        