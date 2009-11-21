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
                                                    <a class="sblnk" href="jobsearch.aspx" title="Return to Search">Return to Search</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="padding: 3px 0px 0px 0px;" valign="top">
                                                    <asp:GridView ID="GridView1" runat="server">
                                                     <Columns>
                                                     
                                                     <asp:BoundField HeaderText="Job Title" DataField="JobTitle" />
                                                         <asp:BoundField DataField="Location" HeaderText="Location" />
                                                         <asp:ButtonField HeaderText="Apply" /> 
                                                         <asp:BoundField DataField="JobTitle" HeaderText="Remove" />                                                         
                                                    </Columns>  
                                                     
                                                    </asp:GridView>
                                                    <table border="0" cellpadding="0" cellspacing="0" summary="Job cart results table will contain the job title, location, button to apply for position and the option of selecting a job for it to be removed from the current job cart."
                                                        width="100%">
                                                        <tr>
                                                            <th align="left" scope="col">
                                                                <span class="tblH">#</span></th>
                                                            <th align="left" scope="col" style="width: 50%">
                                                                <span class="tblH">Job Title</span></th>
                                                            <th align="left" scope="col" style="width: 25%">
                                                                <span class="tblH">Location</span></th>
                                                            <th align="left" scope="col" style="width: 10%">
                                                                <span class="tblH">&nbsp;</span></th>
                                                            <th align="left" scope="col" style="width: 10%">
                                                                <span class="tblH">Remove</span></th>
                                                        </tr>
                                                        
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td class="tbl" colspan="2" valign="top">
                                                    <img alt="" height="4" src="images/clear.gif" width="100%" /></td>
                                            </tr>
                                            <tr valign="top">
                                                <td align="right" class="tbl" colspan="2" valign="top">
                                                    <asp:Button cssclass="bodybtn" id="Remove" text="Remove Selected" runat="server"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
        
                            </table>
    
<asp:label id="lblMessage" runat="server"></asp:label>
</asp:Content>