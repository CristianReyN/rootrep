﻿<%@ Page AutoEventWireup="true" CodeFile="JobSearch.aspx.cs" Inherits="JobSearch"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Untitled Page" %>

                            <asp:Content ID="Content1" Runat="Server" ContentPlaceHolderID="ContentPlaceHolder1">
                                
                                <table border="0" cellpadding="0" cellspacing="0" summary="" width="578">
                                    <tr valign="top">
                                        <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
                                            <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                                                <tr>
                                                    <td valign="top">
                                                        <h2 style="margin: 0px;">
                                                            Guided Job Search</h2>
                                                    </td>
                                                    <td align="right" valign="top">
                                                        <a class="p" href="" title="Previous">Previous</a>&nbsp;&nbsp;<span class="ftrtxt">|</span>&nbsp;&nbsp;<a
                                                            class="p" href="" title="Next">Next</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="areasoftalent">
                                                                    Areas of Talent</label></b></p>
                                                        <asp:DropDownList ID="areasoftalent" runat="server" CssClass="left" Style="width: 100%;
                                                            z-index: auto;" TabIndex="1" ToolTip="Areas Of Talent">
                                                            <asp:ListItem>All Areas of Talent&#160;</asp:ListItem>
                                                        </asp:DropDownList><br />
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="locations">
                                                                    State</label></b></p>
                                                        <asp:DropDownList ID="State" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
                                                            TabIndex="4" ToolTip="Select a State">
                                                            <asp:ListItem>All Locations&#160;</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="jfamily">
                                                                    Job Family</label></b></p>
                                                        <asp:ListBox ID="jfamily" runat="server" CssClass="left" SelectionMode="Multiple"
                                                            Style="width: 100%; z-index: auto;" TabIndex="2" ToolTip="Select Family">
                                                            <asp:ListItem>Job Family&#160;</asp:ListItem>
                                                        </asp:ListBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%;" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="locations">
                                                                    City</label></b></p>
                                                        <asp:DropDownList ID="City" runat="server" CssClass="left" Style="width: 100%; z-index: auto;"
                                                            TabIndex="3" ToolTip="Select a City">
                                                            <asp:ListItem>All Locations&#160;</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%;" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="keywords">
                                                                    Keywords</label></b></p>
                                                        <asp:TextBox ID="keywords" runat="server" CssClass="left" Style="width: 100%; size: 20"
                                                            TabIndex="5" ToolTip="Keywords">
                                                        </asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top">
                                                        <asp:Button ID="brefine" runat="server" CssClass="bodybtn" TabIndex="6" Text="Refine Search" OnClick="brefine_Click" />
                                                    </td>
                                                    <td align="right" valign="top">
                                                        <asp:Button ID="bsearch" runat="server" CssClass="bodybtn" TabIndex="7" Text="Begin Search" OnClick="bsearch_Click" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 12px 0px 12px;">
                                                        &nbsp;</td>
                                                    <td align="right" valign="top">
                                                        <a class="sblnk" href="jobcart.aspx" tabindex="8" title="View Job Cart">View Job Cart</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                            class="sblnk" href="AdvanceSearch.aspx" tabindex="9" title="Advanced Search">Advanced
                                                            Search</a>
                                                    </td>
                                                </tr>
                                            </table>
                                            <asp:GridView ID="GrdResults" runat="server" Height="119px" Width="554px" AutoGenerateColumns="False" CellPadding="0" GridLines="None" AllowPaging="True" AllowSorting="True" ToolTip="Search Results ">
                                                <RowStyle BackColor="#CADCEB" Height="10px" />
                                                <AlternatingRowStyle BackColor="#EAF1F7" Height="10px" />
                                                <HeaderStyle Height="10px" BackColor="#EAF1F7" />
                                                <Columns>
                                                    <asp:HyperLinkField DataNavigateUrlFields="JobID" DataNavigateUrlFormatString="JobDetails.aspx?JobId={0}"  DataTextField="JobName" HeaderText="JobName">
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                    </asp:HyperLinkField>
                                                    <asp:BoundField DataField="Location" HeaderText="Location" >
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <PagerStyle CssClass="mh-link1" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                
                            </asp:Content>
                            