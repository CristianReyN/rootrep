<%@ Page AutoEventWireup="true" CodeFile="JobDetails.aspx.cs" Inherits="JobDetails"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Job Details Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
    <table border="0" cellpadding="0" cellspacing="0" summary="" width="578">
        <tr valign="top">
            <td  style="padding: 6px 12px 0px 12px; height:100%" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                    <tr>
                        <td colspan="2">
                        <table>
                        <tr>
                        <td valign="top" style="width:100%">
                            <h3 style="margin: 0px; color: #d4001a;">
                                <asp:Label ID="lblJobTitle" runat="server" Width="100%"></asp:Label>&nbsp;</h3>
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
                            <asp:HyperLink ID="JobcartTop" runat="server" CssClass="p" ToolTip="Add to Job Cart" Visible="false">Add to Job Cart</asp:HyperLink>
                            <asp:ImageButton runat="server" id="bttnAddToJobCart" Height="23" Width="101" OnClick="bttnAddToJobCart_Click" AlternateText="Add to Job Cart" ImageUrl="~/images/jobcartaddto.GIF"/>
                            <asp:ImageButton runat="server" id="bttnRemoveFromJobCart" Height="23" Width="143" OnClick="bttnRemoveFromJobCart_Click" AlternateText="Remove from Job Cart" ImageUrl="~/images/jobcartremovefrom.GIF"/>
                            &nbsp;<asp:ImageButton runat="server" id="bsearchTop" Height="23" Width="87" OnClick="bsearchTop_Click" AlternateText="View Job Cart" ImageUrl="~/images/jobcartview.GIF"/>
                            &nbsp;<asp:HyperLink ID="applylnk" CssClass="p" runat="server" NavigateUrl="" Target="_blank" ><img src="images/apply_now.gif" alt="Apply Now" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></asp:HyperLink>
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
                        <asp:ImageButton runat="server" id="bttnTellAFriend" Height="23" Width="146" OnClick="bttnTellAFriend_Click" AlternateText="Send this Job to a Friend" ImageUrl="~/images/tellafriend.GIF"/><br />
                        &nbsp;<asp:ImageButton runat="server" id="bttnJobList" Height="23" Width="102" OnClick="bttnJobList_Click" AlternateText="Return to Job List" ImageUrl="~/images/joblistreturn.GIF"/><br />
                           <!-- 
                            <asp:HyperLink ID="TellaFriend" runat="server" CssClass="p" ToolTip="Send this job to a friend">Send this job to a friend</asp:HyperLink><br />
                            <br />
                            <asp:HyperLink cssclass="p" ID="returntoJobsearch" runat="server" ToolTip="Return To Search Page">Return to Job List</asp:HyperLink><br/>
                            -->
                        </td>
                        <td style="height: 156px">
                            <!--<asp:LinkButton ID="LnkRemoveFromJobCart_bottom" runat="server" CssClass="p" Text="Remove from Job Cart" OnClick="LnkRemoveJobCart_OnClick"></asp:LinkButton>
                            <asp:LinkButton ID="LnkAddJobCart_bottom" runat="server" CssClass="p" Text="Add to Job Cart" OnClick="LnkAddJobCart_OnClick"></asp:LinkButton>
                            -->
                            <asp:HyperLink ID="Jobcart" runat="server" CssClass="p" ToolTip="Add to Job Cart" Visible="false">Add to Job Cart</asp:HyperLink><br />
                            <br />
                            <asp:ImageButton runat="server" id="bttnAddToJobCart_bottom" Height="23" Width="101" OnClick="bttnAddToJobCart_Click" AlternateText="Add to Job Cart" ImageUrl="~/images/jobcartaddto.GIF"/>
                            <asp:ImageButton runat="server" id="bttnRemoveFromJobCart_bottom" Height="23" Width="143" OnClick="bttnRemoveFromJobCart_Click" AlternateText="Remove from Job Cart" ImageUrl="~/images/jobcartremovefrom.GIF"/><br />
                            &nbsp;<asp:ImageButton runat="server" id="bsearch" Height="23" Width="87" OnClick="bsearch_Click" AlternateText="View Job Cart" ImageUrl="~/images/jobcartview.GIF"/>
                            <!--<asp:button runat="server" cssclass="bodybtn" id="bttnApplyNow_bottom" width="150" text="Apply Now" OnClick="bttnApplyNow_Click"/><br/>-->
                            &nbsp;<asp:HyperLink ID="applylink" CssClass="p" runat="server" NavigateUrl="" Target="_blank" ><img src="images/apply_now.gif" alt="Apply Now" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
<asp:label id="lblMessage" runat="server"></asp:label>
</asp:Content>