<%@ Page AutoEventWireup="true" CodeFile="JobDetails.aspx.cs" Inherits="JobDetails"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Job Details Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="ContentPlaceHolder1">
    <table border="0" cellpadding="0" cellspacing="0" summary="" width="578">
        <tr valign="top">
            <td  style="padding: 6px 12px 0px 12px; height:100%" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                    <tr>
                        <td valign="top" style="width:100%">
                            <h3 style="margin: 0px; color: #d4001a;">
                                <asp:Label ID="lblJobTitle" runat="server" Width="130px"></asp:Label>&nbsp;</h3>
                            <h2 style="margin: 0px;">
                                <asp:Label ID="lblLocation" runat="server"></asp:Label>&nbsp;</h2>
                        </td>
                        <td align="right"  valign="top">
                            <a class="p" href="" title="Previous">Previous</a>&nbsp;&nbsp;<span class="ftrtxt">|</span>&nbsp;&nbsp;<a
                                class="p" href="" title="Next">Next</a></td>
                    </tr>
                    <tr>
                        <td style="padding: 18px 6px 0px 0px;" valign="top">
                            <h2 style="margin: 0px;">
                                Description</h2>
                            <p>
                                <asp:Label ID="lblDescripton" runat="server" Width="406px"></asp:Label>&nbsp;</p>
                            <h2 style="margin: 0px; margin-top: 18px;">
                                Qualifications</h2>
                            <p style="margin-top: 18px;">
                                <asp:Label ID="lblQualification" runat="server"></asp:Label>&nbsp;</p>
                            <p style="margin-top: 18px">
                                <br/>
                                &nbsp;</p>
                        </td>
                        <td  style="padding: 18px 0px 0px 6px;" valign="top">
                            <a class="sblnk" href="jobcart.aspx" title="Add to Job Cart">Add to Job Cart</a><br/>
                            <asp:button runat="server" cssclass="bodybtn" id="bsearchTop" text="View Job Cart" OnClick="bsearchTop_Click"/><br/>
                            <asp:button cssclass="bodybtn" runat="server" id="applyTop" text="Apply Now"/>
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
                            <a class="p" href="" title="Send this job to a friend">Send this job to a friend</a><br/>
                            <br/>
                            <a class="p" href="" title="Return to Job List">Return to Job List</a>
                        </td>
                        <td style="height: 156px">
                            <a class="sblnk" href="jobcart.aspx" title="Add to Job Cart">Add to Job Cart</a><br/>
                            <asp:Button  runat="server" cssclass="bodybtn" id="bsearch" text="View Job Cart"/><br/>
                            <asp:Button runat="server" cssclass="bodybtn" id="apply" text="Apply Now"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
<asp:label id="lblMessage" runat="server"></asp:label>
</asp:Content>