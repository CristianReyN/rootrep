<%@ Page AutoEventWireup="true" CodeFile="JobDetails.aspx.cs" Inherits="BOA.JobDetails" Language="C#" MasterPageFile="~/BOAmaster.master"  ValidateRequest="false" EnableEventValidation="false"%>
<%@ MasterType VirtualPath="~/BOAmaster.master" %>
<%@ Register Assembly="CareerSiteWebControls" Namespace="CareerSiteWebControls" TagPrefix="cswc" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
<script type="text/javascript" src="https://utility.bankofamerica.com/uet/social_share2.js"></script>
<script type="text/javascript" src="https://utility.bankofamerica.com/uet/bookmark2.js"></script>
<script type="text/javascript" src="https://utility.bankofamerica.com/uet/print2.js"></script>
<script type="text/javascript" src="https://utility.bankofamerica.com/uet/sourcepoint2.js"></script>
    <h1 style="margin: 0px 0px 0px 12px; " runat="server" id="lblJobTitle">Advanced Search</h1>
    <cswc:JobDetail ID="jobDetails1" runat="server">
        <DataTemplate>
            <asp:HiddenField ID="hdnJobTitle" Value="<%# Container.Title %>" runat="server" />
            <asp:HiddenField ID="hdnApplyURL" Value="<%# Container.Url %>" runat="server" />
            <asp:HiddenField ID="hdnReqNo" Value="<%# Container.JobCode %>" runat="server" />
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
                                        <asp:Label ID="lblLocation" Text='<%# String.Format("{0}-{1}-{2}", Container.Country.ToUpper(), Container.State.ToUpper(), Container.City) %>' runat="server"></asp:Label>&nbsp;</h2>
                             </td> 
                     
                                </tr></table></td></tr>
                            <tr>
                                <td style="padding: 18px 6px 0px 0px;" valign="top"  width="70%">
                                <%if(CountryId.Equals("1"))
                                  { %>
                                    <h2 style="margin: 0px;">
                                        Description</h2>
                                        <%} %>
                                    <p>
                                        <asp:Label ID="lblDescripton" runat="server" Text="<%# Container.Description %>" Width="406px"></asp:Label>&nbsp;</p>
                                      <%if(CountryId.Equals("1"))
                                        { %>
                                    <h2 style="margin: 0px; margin-top: 18px;">
                                        Qualifications:</h2>
                                        <%} %>
                                    <p style="margin-top: 18px;">
                                        <asp:Label ID="lblQualification" Text="<%# Container.AdditionalRequirements %>" runat="server"></asp:Label>&nbsp;</p>
                                    <p style="margin-top: 18px">
                                        <br/>
                                        &nbsp;</p>
                                </td>
                                <td  style="padding: 18px 0px 0px 6px;" valign="top" align="center"   width="30%">
                                    </br></br><asp:Button runat="server" ID="btnAddToJobCart" OnClick="btnAddToJobCart_Click" Text="Add to job cart" ToolTip="Add to job cart" CssClass="btnlink"/>
                                    <asp:Button runat="server" ID="btnRemoveFromJobCart" OnClick="btnRemoveFromJobCart_Click" Text="Remove from job cart" ToolTip="Remove from job cart" CssClass="btnlink"/><br />
                                    <asp:Button runat="server" ID="bsearchTop" OnClick="bsearch_Click" Text="View job cart" ToolTip="View job cart" CssClass="btnlink"/><br /><br />
                                    <asp:HiddenField runat="server" ID="hApplyNow" />
                                    <asp:PlaceHolder ID="phApply1" runat="server" Visible="true"></asp:PlaceHolder>
                                    <%--<asp:HyperLink ID="applylnk" CssClass="p" runat="server" NavigateUrl="" Target="_blank" ><img src="images/apply_now.gif" alt="Apply Now" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></asp:HyperLink>--%>
                                   <div align="center"><br />
                                           <table width="140px">
                                           <tr>
                                            <td colspan="2" align="center" valign="top" >     <b>Share this job</b></br></br></td>
                                           </tr>
                                           <tr>
                                           <td valign="top" align="right" width="40px">
                                           <script language="javascript" type="text/javascript">
                                               var cmdpageVariable = "career:Prod:Job_Search;JobDetails_" + "<%=hdnJobId.Value%>";
                                               document.write(displayIcon("1", "", "", "1", "", "", "", "", "", "", "", cmdpageVariable, "", ""));                                      
                                           </script> 
                                                                                                           
                                 

                                           </td>
                                           <td width="100px" align="left"><b>&nbsp;&nbsp;&nbsp;Facebook</b></br></br> </td> 
                                          </tr>   
                                
                                           <tr>
                                           <td valign="top" align="right" width="40px">
                                           <script language="javascript" type="text/javascript">
                                               var twitterStatusDescription = "<%=hdnTwitterTitle.Value%>"
                                               var cmdpageVariable = "career:Prod:Job_Search;JobDetails_" + "<%=hdnJobId.Value%>";
                                               document.write(displayIcon("2", "", "", "1", "", "", "", twitterStatusDescription, "", "", "", cmdpageVariable, "", ""));
                                      
                                           </script>                                                                         



                                           </td>
                                           <td width="100px" align="left"><b>&nbsp;&nbsp;&nbsp;Twitter</b></br></br> </td> 
                                          </tr>  
                                  
         <tr>
                                           <td valign="top" align="right" width="40px">
                                           <script language="javascript" type="text/javascript">
                                               var LinkedInTitle = "<%=hdnLinkedInTitle.Value%>"
                                               var LinkedInSummary = "<%=hdnLinkedInJobDescription.Value %>"
                                               var url = "<%=hdnJobDetailURL.Value%>"
                                               var cmdpageVariable = "career:Prod:Job_Search;JobDetails_" + <%= JobId %>;
                                               document.write(displayIcon("3", LinkedInTitle, url, "1", "", "", "", "", "", LinkedInSummary, "", cmdpageVariable, "", ""));                                       
                                           </script>                                                                         



                                           </td>
                                           <td width="100px" align="left"><b>&nbsp;&nbsp;&nbsp;LinkedIn</b></br></br> </td> 
                                          </tr>  
                                                                                                                                                                                                                                                      
                                         <tr>
                                        <td colspan=3 align="center"><b>Stay Connected</b></br></br>
                                        </td>
                                        </tr>                               
                                       <tr>
                                        <td colspan=3 align="center">
                                
                            
                    				
	                                            <a href="http://twitter.com/BofA_Careers" name="Stay_Connected_to_Careers_on_Twitter_BofA_Careers" title="Stay connected to Careers on twitter @BofA_Careers.  Link opens a new window." target="_blank"><img src="../images/Twitter-Ad-for-Careers_03-1_REV.gif" width="135px" height="105px" alt="Stay connected to Careers on twitter @BofA_Careers.  Link opens a new window." border="0" align="top"></a><br clear="all">
                                             </td></tr> 
                                            </table>                          
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="padding: 18px 6px 0px 0px;" valign="top"  width="75%">
                                    <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                                        <tr>
                                            <td valign="top" style="width:50%">
                                                <b>Location:</b> 
                                                <asp:Label ID="lblLocationFooter" Text='<%# String.Format("{0}-{1}-{2}", Container.Country.ToUpper(), Container.State.ToUpper(), Container.City) %>' runat="server"></asp:Label><br/>
                                                <b>Job Family:</b> 
                                                <asp:Label ID="lblJobFamily" runat="server" Text='<%# GetCustomFieldValue(Container.CustomFields, "JobFamily") %>'></asp:Label><br/>
                                                <%if(CountryId.Equals("1"))
                                                  { %>
                                                <b>Language:</b> 
                                                <asp:Label ID="lblLanguage" runat="server" Text='<%# GetCustomFieldValue(Container.CustomFields, "Language") %>'></asp:Label><br/>
                                        
                                                <b>Travel:</b> 
                                                <asp:Label ID="lblTravel" runat="server" Text='<%# GetCustomFieldValue(Container.CustomFields, "Travel") %>'></asp:Label><br/><%} %>
                                            </td>
                                            <td style="width:50%" align="left">
                                                <b>Posting Date:</b> 
                                                <asp:Label ID="lblPostingDate" Text='<%# Container.PostDate.ToString("MMM dd yyyy") %>' runat="server"></asp:Label><br />
                                                <%if(CountryId.Equals("1"))
                                                  { %>
                                                <b>Unposting Date:</b> 
                                                <%} %>
                                                <asp:Label ID="lblUnpostingDate" runat="server" Text='<%# GetCustomFieldValue(Container.CustomFields, "UnpostDate")%>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding: 18px 6px 0px 0px;" valign="top"  width="75%">                        
                                <%if (CountryId.Equals("1"))
                                  { %>
                                    <p class="H3" style="margin: 0px;">
                                        Hours Per Week:<asp:Label ID="lblHoursPerWeek" Text='<%# GetCustomFieldValue(Container.CustomFields, "HoursPerWeek") %>' runat="server"></asp:Label>
                                    </p>
                                <%} %>
                                    <p class="H3" style="margin: 0px">
                                        Full / Part-time: 
                                        <asp:Label ID="lblPartTimeFullTime" runat="server" Text='<%# GetCustomFieldValue(Container.CustomFields, "FTPT") %>'></asp:Label></p>
                                    <p class="H3" style="margin: 0px;">
                                <%if(CountryId.Equals("1"))
                                  { %>
                                    Shift: 
                                    <asp:Label ID="lblShift" runat="server" Text='<%# GetCustomFieldValue(Container.CustomFields, "Shift") %>'></asp:Label><span style="font-weight: normal;"></span></p>
                                <%} %>
                                <%if(CountryId.Equals("1"))
                                  { %>
                                    <p class="H3" style="margin: 0px;"  runat="server" id="Weekly">
                                        Weekly Schedule:<asp:Label ID="lblSchedule" runat="server" Text='<%# GetCustomFieldValue(Container.CustomFields, "WeeklySchedule") %>'></asp:Label>
                                    </p>
                                <%} %>
                                </td>
                                <td style="padding: 0px 0px 0px 6px;" valign="top">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="padding: 18px 6px 0px 0px; height: 156px;" valign="top"  width="70%">
                                <asp:HyperLink ID="TellaFriend" runat="server" CssClass="p" ToolTip="Send this job to a friend" >Send this job to a friend</asp:HyperLink><br /><br />
                                <asp:HyperLink ID="returntoJobsearch" runat="server" CssClass="p" ToolTip="Return to job list" Visible="false">Return to job list</asp:HyperLink><br />
                           
                                </td>
                                <td style="height: 156px"  width="30%" align="center" >
                                    <asp:Button runat="server" ID="btnAddToCart" OnClick="btnAddToJobCart_Click"  Text="Add to job cart" ToolTip="Add to job cart" CssClass="btnlink"/>
                                    <asp:Button runat="server" ID="btnRemoveFromCart" OnClick="btnRemoveFromJobCart_Click" Text="Remove from job cart" ToolTip="Remove from job cart" CssClass="btnlink"/><br />
                                    <asp:Button runat="server" ID="bsearch" OnClick="bsearch_Click" Text="View job cart" ToolTip="View job cart" CssClass="btnlink"/><br /><br />
                                    <asp:PlaceHolder ID="phApply2" runat="server" Visible="true"></asp:PlaceHolder>
                                    <%--<asp:HyperLink ID="applylink" CssClass="p" runat="server" NavigateUrl="" Target="_blank" ><img src="images/apply_now.gif" alt="Apply Now" style="border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" /></asp:HyperLink>--%>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </DataTemplate>
    </cswc:JobDetail>
    <asp:HiddenField ID="hdnTwitterTitle" runat="server" Value="" />
    <asp:HiddenField ID="hdnLinkedInTitle" runat="server" Value="" />
    <asp:HiddenField ID="hdnJobId" runat="server" Value="" />
    <asp:HiddenField ID="hdnJobDetailURL" runat="server" Value="" />  
    <asp:HiddenField ID="hdnLinkedInJobDescription" runat="server" Value="" />      
    <span id="BOAFeedUSA" visible="false" runat="server" class='auraltext'>
        <h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
        Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
        <li /> Email your resume to <a href="mailto:bac@resume.bankofamerica.com">bac@resume.bankofamerica.com</a>
        <li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position number found at the top of the job posting.
        </span>
        <span id="BOAFeedEuropeMBNA" visible="false" runat="server" class='auraltext'>
        <h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
        Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
        <li /> For positions located in Ireland, email your resume to <a href="mailto:InternationalStaffingOperations@bankofamerica.com">InternationalStaffingOperations@bankofamerica.com</a>
        <li /> For positions located in Chester, UK, email your resume to <a href="mailto:InternationalStaffingOperations@bankofamerica.com">recruitment.chester@bankofamerica.com</a> 
        <li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
        </span>
        <span id="BOAFeedAsia" visible="false" runat="server" class='auraltext'>
        <h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
        Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
        <li /> Email your resume to <a href="mailto:InternationalStaffingOperations@bankofamerica.com">InternationalStaffingOperations@bankofamerica.com</a>
        <li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
        </span>
        <span id="BoaFeedIndia" visible="false" runat="server" class='auraltext'>
        <h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
        Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
        <li /> Email your resume to <a href="mailto:InternationalStaffingOperations@bankofamerica.com">InternationalStaffingOperations@bankofamerica.com </a>
        <li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
        </span>
        <span id="BOAFeedCanada" visible="false" runat="server" class='auraltext'>
        <h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
        Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
        <li /> Email your resume to <a href="mailto:InternationalStaffingOperations@bankofamerica.com">InternationalStaffingOperations@bankofamerica.com</a>
        <li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
        </span>
        <span id="BOAFeedCanadaFrench" visible="false" runat="server" class='auraltext'>
        <h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
        Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
        <li /> Email your resume to <a href="mailto:InternationalStaffingOperations@bankofamerica.com">InternationalStaffingOperations@bankofamerica.com</a>
        <li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
        </span>
        <span id="BOAFeedEurope" visible="false" runat="server" class='auraltext'>
        <h2 style="margin: 0px 0px 0px 12px; ">Important information on applying for positions</h2>
        Apply Now. You are encouraged to complete this online application, however if you have difficulty, you should:
        <li /> Email your resume to <a href="mailto:InternationalStaffingOperations@bankofamerica.com">InternationalStaffingOperations@bankofamerica.com</a>
        <li /> In the Subject Line of your email, include "Source = Bank of America Careers" and the specific position title found at the top of the job posting.
    </span>
    <asp:label id="lblMessage" runat="server"></asp:label>

    <script type="text/javascript">
    <asp:literal runat="server" id="ltScript"></asp:literal>
    </script>

    <asp:Literal ID="ltrlCorremetrixProductTag" runat="server" Text="" ></asp:Literal>

</asp:Content>