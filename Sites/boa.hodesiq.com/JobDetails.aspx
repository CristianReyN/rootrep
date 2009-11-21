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
                                Assistant Manager Associate - 0600065831</h3>
                            <h2 style="margin: 0px;">
                                Clearwater, FL</h2>
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
                                Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                                laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
                                architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas
                                sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
                                voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor
                                sit amet, consectetur, adipisci velit, sed quia non.</p>
                            <h2 style="margin: 0px; margin-top: 18px;">
                                Qualifications</h2>
                            <p style="margin-top: 18px;">
                                Sed ut perspiciatis unde omnis iste natus error
                                <br/>
                                <br/>
                                Unde omnis iste natus error
                            </p>
                        </td>
                        <td  style="padding: 18px 0px 0px 6px;" valign="top">
                            <a class="sblnk" href="jobcart.aspx" title="Add to Job Cart">Add to Job Cart</a><br/>
                            <asp:button runat="server" cssclass="bodybtn" id="bsearchTop" text="View Job Cart"/><br/>
                            <asp:button cssclass="bodybtn" runat="server" id="applyTop" text="Apply Now"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="padding: 18px 6px 0px 0px;" valign="top">
                            <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                                <tr>
                                    <td valign="top" style="width:50%">
                                        <b>Location:</b> Clearwater, FL<br/>
                                        <b>Job Family:</b> Consumer Banking<br/>
                                        <b>Language:</b> English, Spanish<br/>
                                        <b>Travel:</b> 3 weeks per year.<br/>
                                    </td>
                                    <td style="width:50%">
                                        <b>Posting Date:</b> September 26, 2006 <b>Unposting Date:</b> October 15, 2006
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 18px 6px 0px 0px;" valign="top">
                            <p class="H3" style="margin: 0px;">
                                Hours Per Week: <span style="font-weight: normal;">40</span></p>
                            <p class="H3" style="margin: 0px;">
                                Full / Part-time: <span style="font-weight: normal;">Full</span></p>
                            <p class="H3" style="margin: 0px;">
                                Shift: <span style="font-weight: normal;">1st- Shift</span></p>
                            <p class="H3" style="margin: 0px;">
                                Weekly Schedule: <span style="font-weight: normal;">n/a</span></p>
                        </td>
                        <td style="padding: 0px 0px 0px 6px;" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="padding: 18px 6px 0px 0px;" valign="top">
                            <a class="p" href="" title="Send this job to a friend">Send this job to a friend</a><br/>
                            <br/>
                            <a class="p" href="" title="Return to Job List">Return to Job List</a>
                        </td>
                        <td>
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