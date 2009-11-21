<%@ Page AutoEventWireup="true" CodeFile="JobDetails.aspx.cs" Inherits="JobDetails"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Job Details Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
	<h1 style="margin: 0px 0px 0px 12px; " runat="server" id="lblJobTitle">Advanced Search</h1>
    <table border="0" cellpadding="0" cellspacing="0" summary="" width="578">
        <tr valign="top">
            <td  style="padding: 6px 12px 0px 12px; height:100%" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                    <tr>
                        <td colspan="2">
                        <table>
                        <tr>
                        <td valign="top" style="width:100%">
                            <h2 style="margin: 0px;">
                                <asp:Label ID="lblLocation" runat="server"></asp:Label>&nbsp;</h2>
                        </td>
                        
                        </tr>
                        </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 18px 6px 0px 0px;" valign="top">
                            <h2 style="margin: 0px;">
                                Description</h2>
                            <p>
                                <asp:Label ID="lblDescripton" runat="server" ToolTip="Job Description" Width="406px"></asp:Label>&nbsp;</p>
                            <h2 style="margin: 0px; margin-top: 18px;">
                                Qualifications</h2>
                            <p style="margin-top: 18px;">
                                <asp:Label ID="lblQualification" runat="server"></asp:Label>&nbsp;</p>
                            <p style="margin-top: 18px">
                                <br/>
                                &nbsp;</p>
                        </td>
                        <td  style="padding: 18px 0px 0px 6px;" valign="top">
                            <asp:Button runat="server" ID="bttnAddToJobCart" OnClick="bttnAddToJobCart_Click" Text="Add to job cart" CssClass="btnlink"/>
                            <asp:Button runat="server" ID="bttnRemoveFromJobCart" OnClick="bttnRemoveFromJobCart_Click" Text="Remove job cart" CssClass="btnlink"/><br />
                            <asp:Button runat="server" ID="bsearchTop" OnClick="bsearch_Click" Text="View job cart" CssClass="btnlink"/><br /><br />

                            <asp:HyperLink ID="applylnk" CssClass="p" runat="server" NavigateUrl="" Target="_blank" ><img src="images/apply_now.gif" alt="Apply Now" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="padding: 18px 6px 0px 0px;" valign="top">
                            <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                                <tr>
                                    <td valign="top" style="width:50%">
                                        <b>Location:</b> 
                                        <asp:Label ID="lblLocationFooter" runat="server"></asp:Label><br/>
                                        <b>Job Family:</b> 
                                        <asp:Label ID="lblJobFamily" runat="server"></asp:Label><br/>
                                        <b>Language:</b> 
                                        <asp:Label ID="lblLanguage" runat="server"></asp:Label><br/>
                                        <b>Travel:</b> 
                                        <asp:Label ID="lblTravel" runat="server"></asp:Label><br/>
                                    </td>
                                    <td style="width:50%">
                                        <b>Posting Date:</b> 
                                        <asp:Label ID="lblPostingDate" runat="server"></asp:Label><br />
                                        <b>Unposting Date:</b> 
                                        <asp:Label ID="lblUnpostingDate" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 18px 6px 0px 0px;" valign="top">
                            <p class="H3" style="margin: 0px;">
                                Hours Per Week:<asp:Label ID="lblHoursPerWeek" runat="server"></asp:Label>
                            </p>
                            <p class="H3" style="margin: 0px">
                                Full / Part-time: 
                                <asp:Label ID="lblPartTimeFullTime" runat="server" Text="Label"></asp:Label></p>
                            <p class="H3" style="margin: 0px;">
                                Shift: 
                                <asp:Label ID="lblShift" runat="server" Text="Label"></asp:Label><span style="font-weight: normal;"></span></p>
                            <p class="H3" style="margin: 0px;">
                                Weekly Schedule:<asp:Label ID="lblSchedule" runat="server" Text="Label"></asp:Label>
                            </p>
                        </td>
                        <td style="padding: 0px 0px 0px 6px;" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="padding: 18px 6px 0px 0px; height: 156px;" valign="top">
                        <asp:HyperLink ID="returntoJobsearch" runat="server" CssClass="p" ToolTip="Return to job list" Visible="false">Return to job list</asp:HyperLink><br />
                           
                        </td>
                        <td style="height: 156px">
                            <asp:Button runat="server" ID="btnAddToCart" OnClick="bttnAddToJobCart_Click" Text="Add to job cart" CssClass="btnlink"/>
                            <asp:Button runat="server" ID="btnRemoveFromCart" OnClick="bttnRemoveFromJobCart_Click" Text="Remove job cart" CssClass="btnlink"/><br />
                            <asp:Button runat="server" ID="bsearch" OnClick="bsearch_Click" Text="View job cart" CssClass="btnlink"/><br /><br />
                            <asp:HyperLink ID="applylink" CssClass="p" runat="server" NavigateUrl="" Target="_blank" ><img src="images/apply_now.gif" alt="Apply Now" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
<asp:label id="lblMessage" runat="server"></asp:label>
</asp:Content>