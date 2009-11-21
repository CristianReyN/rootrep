<%@ Page AutoEventWireup="true" CodeFile="jobsearch.aspx.cs" Inherits="_Default"
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
                                                        <asp:DropDownList id="areasoftalent" Cssclass="left"  style="width: 100%;z-index: auto;" runat="server" ToolTip="Areas Of Talent" TabIndex="1" AutoPostBack="False" OnSelectedIndexChanged="areasoftalent_SelectedIndexChanged">
                                                            <asp:ListItem>All Areas of Talent&#160;</asp:ListItem>
                                                        </asp:DropDownList><br />
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="locations">
                                                                    City</label></b></p>
                                                        <asp:DropDownList ID="City" runat="server" tooltip ="Select a City" CssClass="left" Style="width: 100%;
                                                            z-index: auto;" TabIndex="3">
                                                            <asp:ListItem>All Locations&#160;</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="jfamily">
                                                                    Job Family</label></b></p>
                                                        <asp:ListBox ID="jfamily" Cssclass="left" tooltip="Select Family" Style="width: 100%; z-index: auto;" runat="server" SelectionMode="Multiple" TabIndex="2" AutoPostBack="false">
                                                            <asp:ListItem>Job Family&#160;</asp:ListItem>
                                                        </asp:ListBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%;" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="locations">
                                                                    State</label></b></p>
                                                        <asp:DropDownList id="State" CssClass="left" tooltip="Select a State" style="width: 100%; z-index: auto;" runat="server" TabIndex="4">
                                                            <asp:ListItem>All Locations&#160;</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%;" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="keywords">
                                                                    Keywords</label></b></p>
                                                        <asp:TextBox ID="keywords" runat="server" CssClass="left" tooltip="Keywords" Style="width: 100%;size:20" TabIndex="5"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top">
                                                        <asp:Button id="brefine" cssclass="bodybtn" text="Refine Search" tabindex="6" runat="server"/>
                                                    </td>
                                                    <td align="right" valign="top">
                                                        <asp:Button id="bsearch" cssclass="bodybtn" text="Begin Search" tabindex="7" runat="server" PostBackUrl="searchresults.aspx"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 12px 0px 12px;">
                                                        &nbsp;</td>
                                                    <td align="right" valign="top">
                                                        <a class="sblnk" href="jobcart.aspx" title="View Job Cart" tabindex="8">View Job Cart</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                            class="sblnk" href="AdvanceSearch.aspx" title="Advanced Search" tabindex="9">Advanced Search</a>
                                                    </td>
                                                </tr>
                                            </table>
                                    </td>
                                </tr>
                            </table>
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </asp:Content>
                            