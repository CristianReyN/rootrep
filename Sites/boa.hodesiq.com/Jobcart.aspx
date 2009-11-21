<%@ Page AutoEventWireup="true" CodeFile="Jobcart.aspx.cs" Inherits="Jobcart" Language="C#" 
    MasterPageFile="~/BOAmaster.master" Title="Jobcart Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
	<h1 style="margin: 0px 0px 0px 12px; ">Manage Your Job Cart</h1>
	
<span class='auraltext'>
<h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
You are encouraged to complete the online application, however if you have difficulty, you should:
<li /> Email your resume to <a href="mailto:bac@resume.bankofamerica.com">bac@resume.bankofamerica.com</a>
<li /> In the Subject Line of your email, include "Bank of America Careers/Bank of America Careers" and the specific position number found at the top of the job posting
</span>
          
    <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
        <tr valign="top">
            <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
                <table cellpadding="0" cellspacing="0" style="width: 100%" summary="">
                    <tr>
                        <td style="padding: 3px 0px 0px 0px; width: 70%" valign="top">
                        </td>
                        <td align="right" valign="top">
                            <asp:HyperLink ID="SearchReturn" runat="server" CssClass="sblnk" ToolTip="Return to search" NavigateUrl="JobSearch.aspx">Return to search</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
						<td colspan="2"><br /><asp:Label runat="server" ID="lblNoResults" Visible="false" Text="Your job cart is empty." Font-Bold="true"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="padding: 3px 0px 0px 0px;" valign="top">
                            <asp:GridView 
                            ID="grdJobcart" 
                            runat="server"          
                            AutoGenerateColumns="false" 
                            Width="554px"
                            BorderStyle="none" 
                            AlternatingRowStyle-BorderStyle="None" 
                            RowStyle-BorderStyle="None"
                            AllowSorting="True" 
                            OnRowDataBound="grdJobcart_RowDataBound" 
                            BorderWidth="0px" 
                            EmptyDataText="Your job cart is empty." 
                            ToolTip="Job cart results" 
                            summary="Job cart results. The first two columns are job name and job location. The third column allows you to apply now for the job. The fourth column contains a checkbox to remove the job from the cart.">
                                <RowStyle CssClass="C1" BorderStyle="None" />
                                <AlternatingRowStyle CssClass="C2" BorderStyle="None" />
                                <HeaderStyle BackColor="#EAF1F7" />
                                <Columns>
                                    <asp:HyperLinkField DataNavigateUrlFields="JobsID" DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=Sp&amp;JobId={0}"
                                        DataTextField="JobTitle" HeaderText="Job name">
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:HyperLinkField>
                                    
                                    <asp:BoundField DataField="Location" HeaderText="Location">
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    
<%--                                <asp:HyperLinkField DataNavigateUrlFields="APPLY_ONLINE_URL" 
                                        HeaderText="Apply" Text="Apply now"  AccessibleHeaderText="Apply now" Target="_blank" >
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:HyperLinkField>--%>
                                    
                                    <asp:TemplateField HeaderText="Apply" ItemStyle-HorizontalAlign="Left" >
                                    <HeaderStyle HorizontalAlign="Left" />
                                        <ItemTemplate>
                                           <asp:HyperLink ID="hlnkApply" NavigateUrl="" runat="server" Target="_blank"  />                                    
                                        </ItemTemplate>
                                    </asp:TemplateField>                                                                         
                                    
                                    <asp:TemplateField HeaderText="Remove" ItemStyle-HorizontalAlign="Center" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblCheckBox" AssociatedControlID="ChkRemove" runat="server" /> 
                                            <asp:CheckBox ID="ChkRemove"  runat="server" />
                                            <asp:HiddenField ID="JobsID" runat="server"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
<%--                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>
                                    
                                </Columns>
                                <EmptyDataTemplate>
                                    <b><span id="ctl00_cphmain_lblNoResults">Your job cart is empty.</span></b>
                                </EmptyDataTemplate>
								<EmptyDataRowStyle BorderColor="White" />
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
