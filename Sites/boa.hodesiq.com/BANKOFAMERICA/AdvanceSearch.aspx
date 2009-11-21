  <%@ Page AutoEventWireup="true" CodeFile="advancesearch.aspx.cs" Inherits="AdvanceSearch"
      Language="C#" MasterPageFile="~/BOAmaster.master" Title="Advance Search Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="ContentPlaceHolder1">
                            <table border="0" cellpadding="0" cellspacing="0" summary="For a more advanced search the user will be able to select the job family, full-time or part-time on positions, location, language requirement, date posted, shift, willingness to travel and begin search."
                                width="578">
                                <tr valign="top">
                                    <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
                                        
                                            <table border="0" cellpadding="0" cellspacing="0" summary="Table containing Advanced job search form."
                                                width="100%">
                                                <tr>
                                                    <td valign="top">
                                                        <h2 style="margin: 0px;">
                                                            Advanced Search</h2>
                                                    </td>
                                                    <td align="right" valign="top">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="jfamily">
                                                                    Job Family</label></b></p>
                                                        <asp:ListBox ID="jfamily" runat="server" CssClass="left" SelectionMode="Multiple"
                                                            Style="width: 100%; z-index: auto;" ToolTip="Select Family" TabIndex="1">
                                                            <asp:ListItem>Job Family&#160;</asp:ListItem>
                                                        </asp:ListBox>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="fullpart">
                                                                    Full / Part Time</label></b></p>
                                                        <asp:ListBox ID="fullpart" runat="server" CssClass="left" SelectionMode="Multiple"
                                                            Style="width: 100%; z-index: auto;" ToolTip="Full/ Part Time" TabIndex="2">
                                                            <asp:ListItem>All </asp:ListItem>
                                                        </asp:ListBox><br />
                                                        
                                                           
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="locations">
                                                                    City</label></b></p>
                                                        <asp:ListBox ID="City" runat="server"  selectionMode="Multiple" Style="width: 100%;
                                                            z-index: auto;" ToolTip="Select a City" TabIndex="3">
                                                            <asp:ListItem>All Locations&#160;</asp:ListItem>
                                                        </asp:ListBox>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="lang">
                                                                    State</label></b></p>
                                                        <asp:ListBox ID="State" runat="server" CssClass="left" SelectionMode="Multiple" Style="width: 100%;
                                                            z-index: auto;" ToolTip="Select a State" TabIndex="4">
                                                            <asp:ListItem>All Locations&#160;</asp:ListItem>
                                                        </asp:ListBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="lang">
                                                                    Language Requirements</label></b></p>
                                                        <asp:ListBox ID="lang" SelectionMode="multiple" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
                                                            ToolTip="Language Requirements" TabIndex="5">
                                                            <asp:ListItem>All Languages</asp:ListItem>
                                                        </asp:ListBox>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="shift">
                                                                    Shift</label></b></p>
                                                        <asp:ListBox id="shift" tooltip="Shift" SelectionMode="Multiple" runat="server" Cssclass="left"  style="width: 100%; z-index: auto;" TabIndex="6">
                                                            <asp:ListItem>All</asp:ListItem>
                                                        </asp:ListBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="travel">
                                                                    Willingness to Travel</label></b></p>
                                                        <asp:DropDownList id="travel" tooltip="Travel" Cssclass="left" runat="server" style="width: 100%; z-index: auto;" TabIndex="7">
                                                            <asp:ListItem>All</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="datepost">
                                                                    Date Posted</label></b></p>
                                                        <asp:DropDownList ID="datepost" runat="server" CssClass="left" Style="width: 100%;
                                                            z-index: auto;" ToolTip="Date Posted" TabIndex="8">
                                                            <asp:ListItem Value="0">All</asp:ListItem>
                                                            <asp:ListItem Value="1">Today</asp:ListItem>
                                                            <asp:ListItem Value="2">Yesterday</asp:ListItem>
                                                            <asp:ListItem Value="3">Last 7 Days</asp:ListItem>
                                                            <asp:ListItem Value="4">Last 14 Days</asp:ListItem>
                                                            <asp:ListItem Value="5">Last 21 Days</asp:ListItem>
                                                            <asp:ListItem Value="6">Last 28 Days</asp:ListItem>
                                                            
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%" valign="top" colspan="1">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="keywords">
                                                                    Keywords</label></b></p>
                                                        <asp:TextBox ID="keywords" runat="server" CssClass="left" Style="width: 100%; size: 20"
                                                            ToolTip="Keywords" TabIndex="9"></asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 12px 0px 12px; height: 23px;">
                                                        &nbsp;</td>
                                                    <td align="right" valign="top" style="height: 23px">
                                                        <a class="sblnk" href="jobcart.aspx" title="View Job Cart" tabindex="10">View Job Cart</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Button cssclass="bodybtn" id="bsearch"  text="Begin Search" tabindex="11" runat="server" OnClick="bsearch_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        <asp:GridView ID="GrdResults" runat="server" AllowSorting="True"
                                            AutoGenerateColumns="False" CellPadding="0" GridLines="None" ToolTip="Search Results "
                                            Width="554px" PageSize="12">
                                            <RowStyle BackColor="#CADCEB" Height="10px" />
                                            <AlternatingRowStyle BackColor="#EAF1F7" Height="10px" />
                                            <HeaderStyle BackColor="#EAF1F7" Height="10px" />
                                            <Columns>
                                                <asp:HyperLinkField DataNavigateUrlFields="JobsID" DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=ASP&amp;JobId={0}"
                                                    DataTextField="JobName" HeaderText="JobName">
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                </asp:HyperLinkField>
                                                <asp:BoundField DataField="Location" HeaderText="Location">
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Date" HeaderText="Date">
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                </asp:BoundField>
                                            </Columns>
                                            <PagerStyle CssClass="mh-link1" />
                                            <EmptyDataTemplate>
                                                <b>There are no matching records found</b>
                                            </EmptyDataTemplate>
                                        </asp:GridView>
                                        <br />
                                        <br />
                                        <br />
                                        <center>
                                            <asp:Button ID="LnkPrvs" runat="server"  CssClass="bodybtn"
                                                OnClick="LnkPrvs_Click" Text="Previous" Visible="false" />&nbsp;&nbsp;
                                            <asp:Button ID="LnkNxt" runat="server"  CssClass="bodybtn"
                                                OnClick="LnkNxt_Click" Text="Next" Visible="false" /></center>
                                    </td>
                                </tr>
                            </table>
<asp:label id="lblMessage" runat="server"></asp:label>
</asp:Content>