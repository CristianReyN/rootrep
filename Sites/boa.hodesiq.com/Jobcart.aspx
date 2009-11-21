<%@ Page AutoEventWireup="true" CodeFile="Jobcart.aspx.cs" Inherits="Jobcart" Language="C#"
    MasterPageFile="~/BOAmaster.master" Title="Jobcart Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
    <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
        <tr valign="top">
            <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
                <table cellpadding="0" cellspacing="0" style="width: 100%" summary="">
                    <tr>
                        <td style="padding: 3px 0px 0px 0px; width: 70%" valign="top">
                            <h2 style="margin: 0px;">
                                Manage Your Job Cart</h2>
                        </td>
                        <td align="right" valign="top">
                            <asp:HyperLink ID="SearchReturn" runat="server" CssClass="sblnk" ToolTip="Return to Search" NavigateUrl="JobSearch.aspx">Return to Search</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="padding: 3px 0px 0px 0px;" valign="top">
                            <asp:GridView ID="grdJobcart" runat="server" AutoGenerateColumns="false" Width="554px"
                                BorderStyle="none" AlternatingRowStyle-BorderStyle="None" RowStyle-BorderStyle="None"
                                AllowSorting="True" OnRowDataBound="grdJobcart_RowDataBound" >
                                <RowStyle CssClass="C1" />
                                <AlternatingRowStyle CssClass="C2" />
                                <HeaderStyle BackColor="#EAF1F7" />
                                <Columns>
                                    <asp:HyperLinkField DataNavigateUrlFields="JobsID" DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=Sp&amp;JobId={0}"
                                        DataTextField="JobTitle" HeaderText="JobName">
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:HyperLinkField>
                                    <asp:BoundField DataField="Location" HeaderText="Location">
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:HyperLinkField DataNavigateUrlFields="JobsID" DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=Sp&amp;JobId={0}"
                                        HeaderText="Apply" Text="Apply">
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:HyperLinkField>
                                    <asp:TemplateField HeaderText="Remove">
                                        <ItemTemplate>
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="ChkRemove" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:HiddenField ID="JobsID" runat="server"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <b>There are no matching records found</b>
                                </EmptyDataTemplate>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="tbl" colspan="2" valign="top">
                            <img alt="" height="4" src="images/clear.gif" width="100%" /></td>
                    </tr>
                
                    <tr valign="top" align="center">
                        <td align="right" class="tbl" colspan="2" valign="top">
							<asp:PlaceHolder ID="phRemove" runat="server" Visible="false"></asp:PlaceHolder>
						</td>
                    </tr>
                
                </table>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
</asp:Content>
