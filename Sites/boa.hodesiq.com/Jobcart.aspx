<%@ Page AutoEventWireup="true" CodeFile="Jobcart.aspx.cs" Inherits="Jobcart" Language="C#"
    MasterPageFile="~/BOAmaster.master" Title="Untitled Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="ContentPlaceHolder1">
    
    <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
        
        
                                <tr valign="top">
                                    <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%" summary="">
                                            <tr>
                                                <td style="padding: 3px 0px 0px 0px; width: 70%" valign="top">
                                                    <h2 style="margin: 0px;">
                                                        Manage Your Job Cart</h2>
                                                </td>
                                                <td align="right" valign="top">
                                                    <asp:HyperLink ID="SearchReturn" runat="server" cssclass="sblnk" ToolTip="Return to Search">Return to Search</asp:HyperLink>
                                                    
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="padding: 3px 0px 0px 0px;" valign="top">
                                                    
                                                    <table border="0" cellpadding="0" cellspacing="0" summary="Job cart results table will contain the job title, location, button to apply for position and the option of selecting a job for it to be removed from the current job cart."
                                                        width="100%">
                                                        <asp:GridView ID="grdJobcart" runat="server" AutoGenerateColumns="false">
                                                            <RowStyle BackColor="#CADCEB" Height="10px" />
                                                            <AlternatingRowStyle BackColor="#EAF1F7" Height="10px" />
                                                            <HeaderStyle BackColor="#EAF1F7" Height="10px" />
                                                            <Columns>
                                                                <asp:HyperLinkField DataNavigateUrlFields="JobsID" DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=Sp&JobId={0}"
                                                                    DataTextField="JobTitle" HeaderText="JobName">
                                                                    <HeaderStyle HorizontalAlign="Left" />
                                                                </asp:HyperLinkField>
                                                                <asp:BoundField DataField="Location" HeaderText="Location">
                                                                    <HeaderStyle HorizontalAlign="Left" />
                                                                </asp:BoundField>
                                                                <asp:HyperLinkField DataNavigateUrlFields="JobsID" DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=Sp&JobId={0}"
                                                                    DataTextField="JobTitle" HeaderText="Apply">
                                                                    <HeaderStyle HorizontalAlign="Left" />
                                                                </asp:HyperLinkField>
                                                                <asp:TemplateField HeaderText="Remove">
                                                                    <ItemTemplate>
                                                                        <asp:CheckBox ID="ChkRemove" runat="server" Text="JobID"/></ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <PagerStyle CssClass="mh-link1" />
                                                            <EmptyDataTemplate>
                                                                <b>There are no matching records found</b>
                                                            </EmptyDataTemplate>
                                                        </asp:GridView>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td class="tbl" colspan="2" valign="top">
                                                    <img alt="" height="4" src="images/clear.gif" width="100%" /></td>
                                            </tr>
                                            <tr valign="top">
                                                <td align="right" class="tbl" colspan="2" valign="top">
                                                    <asp:Button cssclass="bodybtn" id="Remove" text="Remove Selected" runat="server" OnClick="Remove_Click"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
        
                            </table>
    
<asp:label id="lblMessage" runat="server"></asp:label>
</asp:Content>