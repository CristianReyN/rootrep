<%@ Page AutoEventWireup="true" CodeFile="JobDetails.aspx.cs" Inherits="JobDetails"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Job Details Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
	<h1 style="margin: 0px 0px 0px 12px; " runat="server" id="lblJobTitle">Advanced Search</h1>



    <table border="0" cellpadding="0" cellspacing="0" summary="" width="578px">  
        <tr valign="top">
            <td  style="padding: 6px 0px 0px 12px; height:100%" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                    <tr>
                    <td  valign="top"  width="100%" colspan=2 >
                    <table width="100%">
                    <tr>
                    <td valign="top" align="left" width="50%" ></br>
                                <h2 style="margin: 0px;">
                                <asp:Label ID="lblLocation" runat="server"></asp:Label>&nbsp;</h2>
                     </td> 
                     <td align="right" width="50%">
                    				<div style="text-align: right; margin: 11px 0px 0px 0px; padding: 0px;" >
	                                    <a href="http://twitter.com/BofA_Careers" title="Stay connected to Careers on twitter @BofA_Careers.  Link opens a new window." target="_blank"><img src="../images/Twitter-Ad-for-Careers_03.gif" width="187" height="105" alt="Stay connected to Careers on twitter @BofA_Careers.  Link opens a new window." border="0" align="top"></a><br clear="all">
                                    </div>
                            </td>
                        </tr></table></td></tr>
                    
                    <tr>
                        <td style="padding: 18px 6px 0px 0px;" valign="top"  width="70%">
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
                        <td  style="padding: 18px 0px 0px 6px;" valign="top" align="center"   width="30%">
                            <asp:Button runat="server" ID="bttnAddToJobCart" OnClick="bttnAddToJobCart_Click" Text="Add to job cart" ToolTip="Add to job cart" CssClass="btnlink"/>
                            <asp:Button runat="server" ID="bttnRemoveFromJobCart" OnClick="bttnRemoveFromJobCart_Click" Text="Remove from job cart" ToolTip="Remove from job cart" CssClass="btnlink"/><br />
                            <asp:Button runat="server" ID="bsearchTop" OnClick="bsearch_Click" Text="View job cart" ToolTip="View job cart" CssClass="btnlink"/><br /><br />
                            <asp:HiddenField runat="server" ID="hApplyNow" />
                            <asp:PlaceHolder ID="phApply1" runat="server" Visible="true"></asp:PlaceHolder>
                            <%--<asp:HyperLink ID="applylnk" CssClass="p" runat="server" NavigateUrl="" Target="_blank" ><img src="images/apply_now.gif" alt="Apply Now" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></asp:HyperLink>--%>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="padding: 18px 6px 0px 0px;" valign="top"  width="75%">
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
                                    <td style="width:50%" align="left">
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
                        <td style="padding: 18px 6px 0px 0px;" valign="top"  width="75%">
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
                        <td style="padding: 18px 6px 0px 0px; height: 156px;" valign="top"  width="70%">
                        <asp:HyperLink ID="TellaFriend" runat="server" CssClass="p" ToolTip="Send this job to a friend" >Send this job to a friend</asp:HyperLink><br /><br />
                        <asp:HyperLink ID="returntoJobsearch" runat="server" CssClass="p" ToolTip="Return to job list" Visible="false">Return to job list</asp:HyperLink><br />
                           
                        </td>
                        <td style="height: 156px"  width="30%" align="center" >
                            <asp:Button runat="server" ID="btnAddToCart" OnClick="bttnAddToJobCart_Click"  Text="Add to job cart" ToolTip="Add to job cart" CssClass="btnlink"/>
                            <asp:Button runat="server" ID="btnRemoveFromCart" OnClick="bttnRemoveFromJobCart_Click" Text="Remove from job cart" ToolTip="Remove from job cart" CssClass="btnlink"/><br />
                            <asp:Button runat="server" ID="bsearch" OnClick="bsearch_Click" Text="View job cart" ToolTip="View job cart" CssClass="btnlink"/><br /><br />
                            <asp:PlaceHolder ID="phApply2" runat="server" Visible="true"></asp:PlaceHolder>
                            <%--<asp:HyperLink ID="applylink" CssClass="p" runat="server" NavigateUrl="" Target="_blank" ><img src="images/apply_now.gif" alt="Apply Now" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></asp:HyperLink>--%>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <span id="BOAFeedUSA" visible="false" runat="server" class='auraltext'>
<h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
<li /> Email your resume to <a href="mailto:bac@resume.bankofamerica.com">bac@resume.bankofamerica.com</a>
<li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position number found at the top of the job posting.
</span>
<span id="BOAFeedEuropeMBNA" visible="false" runat="server" class='auraltext'>
<h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
<li /> For positions located in Ireland, email your resume to <a href="mailto:recruitment.ireland@bankofamerica.com">recruitment.ireland@bankofamerica.com</a>
<li /> For positions located in Chester, UK, email your resume to <a href="mailto:recruitment.chester@bankofamerica.com">recruitment.chester@bankofamerica.com</a> 
<li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
</span>
<span id="BOAFeedAsia" visible="false" runat="server" class='auraltext'>
<h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
<li /> Email your resume to <a href="mailto:apr_recruit@hk.ml.com">apr_recruit@hk.ml.com</a>
<li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
</span>
<span id="BoaFeedIndia" visible="false" runat="server" class='auraltext'>
<h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
<li /> Email your resume to <a href="mailto:bacs.grow@bankofamerica.com">bacs.grow@bankofamerica.com </a>
<li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
</span>
<span id="BOAFeedCanada" visible="false" runat="server" class='auraltext'>
<h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
<li /> Email your resume to <a href="mailto:canadacareers@bankofamerica.com">canadacareers@bankofamerica.com</a>
<li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
</span>
<span id="BOAFeedCanadaFrench" visible="false" runat="server" class='auraltext'>
<h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
<li /> Email your resume to <a href="mailto:canadacareers@bankofamerica.com">canadacareers@bankofamerica.com</a>
<li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
</span>
<span id="BOAFeedEurope" visible="false" runat="server" class='auraltext'>
<h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
<li /> Email your resume to <a href="mailto:emeacareers@bankofamerica.com">emeacareers@bankofamerica.com</a>
<li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
</span>
<asp:label id="lblMessage" runat="server"></asp:label>
<script type="text/javascript">
<asp:literal runat="server" id="ltScript"></asp:literal>
</script>
</asp:Content>

