<%@ Page AutoEventWireup="true" CodeFile="JobSearch.aspx.cs" Inherits="JobSearch"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Search Page" %>

                            <asp:Content ID="Content1" Runat="Server" ContentPlaceHolderID="cphmain">
                                
                                <table summary="Job Search and Job List Page" border="0" cellpadding="0" cellspacing="0" width="578">
                                    <tr valign="top">
                                        <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
                                            <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                                                <tr>
                                                    <td valign="top" >
                                                        <h1 style="margin: 0px 0px 0px 0px; ">
                                                            Basic Search</h1>
                                                    </td>
                                                    <td align="right" valign="top">
                                                        &nbsp;
                                                    </td>
                                                    
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b><asp:Label ID="lblAreaOfTalent" runat="server" Text="Areas of Talent" AssociatedControlID="areasoftalent"></asp:Label>
                                                                </b></p>
                                                        <asp:DropDownList ID="areasoftalent" runat="server" CssClass="left" Style="width: 100%;
                                                            z-index: auto;" TabIndex="1" ToolTip="Areas Of Talent">
                                                        </asp:DropDownList><br />
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b><asp:Label ID="lblState" runat="server" Text="State" AssociatedControlID="State"></asp:Label>
                                                                </b></p>
                                                        <asp:DropDownList ID="State" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
                                                            TabIndex="4" ToolTip="Select a State">
                                                            <asp:ListItem>All Locations&#160;</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b><asp:Label ID="lblJFamily" runat="server" Text="Job Family" AssociatedControlID="jfamily"></asp:Label>
                                                                </b></p>
                                                        <asp:ListBox ID="jfamily" runat="server" CssClass="left" SelectionMode="single"
                                                            Style="width: 100%; z-index: auto;" TabIndex="2" ToolTip="Select Family">
                                                            <asp:ListItem>Job Family&#160;</asp:ListItem>
                                                        </asp:ListBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%;" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <asp:Label ID="LblCity" runat="server" Text="City" Visible="false" AssociatedControlID="City"></asp:Label>
                                                                </b></p>
                                                        <asp:DropDownList ID="City" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
                                                            TabIndex="3" ToolTip="Select a City" Visible="false">
                                                            <asp:ListItem>All Locations&#160;</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%;" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b><asp:Label ID="lblKeywords" runat="server" Text="Keywords or Job Number (if known)" AssociatedControlID="keywords"></asp:Label>
                                                                </b></p>
                                                        <asp:TextBox ID="keywords" runat="server" CssClass="left" Style="width: 100%; size: 20"
                                                            TabIndex="5" ToolTip="Keywords">
                                                        </asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr><td align="left" valign="top" colspan="2">To specify a particular Job Family, choose an Area of Talent you are interested in, and then click the Refine Search button to select a specific Job Family. Same process applies for selecting a specific city within a state.</td></tr>
                                                <tr>
                                                    <td align="right" valign="top">
                                                        <input id="btnReset" type="reset" value="Reset Search" tabindex="6" class="bodybtn"/>&nbsp;</td>
                                                    <td align="right" valign="top"><asp:Button ID="brefine" runat="server" CssClass="bodybtn" TabIndex="6" Text="Refine Search" OnClick="brefine_Click" />&nbsp;
                                                        <asp:Button ID="bsearch" runat="server" CssClass="bodybtn" TabIndex="7" Text="Begin Search" OnClick="bsearch_Click" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 12px 0px 12px;" align="left">
                                                        <b><asp:Label ID="lblJobofJobs" runat="server" Text=""></asp:Label></b>&nbsp;</td>
                                                    <td align="right" valign="top">
                                                        <a class="sblnk" href="jobcart.aspx" tabindex="8" title="View Job Cart">View Job Cart</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                            class="sblnk" href="AdvanceSearch.aspx" tabindex="9" title="Advanced Search">Advanced
                                                            Search</a>
                                                    </td>
                                                </tr>
                                            </table>
                                            <asp:GridView ID="GrdResults" runat="server" Width="554px" AutoGenerateColumns="False" CellPadding="0" GridLines="None" AllowSorting="True" ToolTip="Search Results ">
                                                <RowStyle BackColor="#CADCEB" Height="10px"/>
                                                <AlternatingRowStyle BackColor="#EAF1F7" Height="10px" />
                                                <HeaderStyle Height="10px" BackColor="#EAF1F7" />
                                                <Columns>
                                                    <asp:HyperLinkField DataNavigateUrlFields="JobsID,stateid,cityid,areaoftalent,jfamily,keywords" DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=Sp&amp;JobId={0}&amp;stateid={1}&amp;cityid={2}&amp;areasoftalent={3}&amp;jfamily={4}&amp;keywords={5}"
                                                        DataTextField="JobName" HeaderText="Job Title">
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                    </asp:HyperLinkField>
                                                    <asp:BoundField DataField="Location" HeaderText="Location" >
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="postdate" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false">
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <PagerStyle CssClass="mh-link1" />
                                                <EmptyDataTemplate>
                                                <b>There are no matching records found</b>
                                                </EmptyDataTemplate>
                                                <PagerSettings Mode="NextPrevious" NextPageText="Next" Position="TopAndBottom" PreviousPageText="Previous" />
                                            </asp:GridView><br />
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top" align="center">
                                       <asp:Button ID="LnkPrvs" runat="server" CssClass="bodybtn" OnClick="LnkPrvs_Click"
                                            Text="Previous" Visible="false" />&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="LnkNxt" runat="server" CssClass="bodybtn" OnClick="LnkNxt_Click"
                                            Text="Next" Visible="false" />&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="LblPageOfPages" runat="server"></asp:Label>    
                                         </td>
                                     </tr>
                                </table>
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                
                            </asp:Content>
                            