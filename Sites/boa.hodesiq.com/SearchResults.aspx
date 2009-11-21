<%@ Page AutoEventWireup="true" CodeFile="SearchResults.aspx.cs" Inherits="SearchResults"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Untitled Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="ContentPlaceHolder1">

    <table border="0" cellpadding="0" cellspacing="0" summary="" width="578">
                                <tr valign="top">
                                    <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
                                        <form id="jsearch" action="searchresults.aspx">
                                            <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                                                <tr>
                                                    <td valign="top">
                                                        <h2 style="margin: 0px;">
                                                            Guided Job Search</h2>
                                                    </td>
                                                    <td align="right" valign="top">
                                                        <a class="p" href="" title="Previous">Previous</a>&nbsp;&nbsp;<span class="ftrtxt">|</span>&nbsp;&nbsp;<a
                                                            class="p" href="" title="Next">Next</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="areasoftalent">
                                                                    Areas of Talent:</label></b></p>
                                                        <select id="areasoftalent" class="right" name="areasoftalent" style="width: 100%;
                                                            z-index: auto;">
                                                            <option value="">All Areas of Talent&nbsp;</option>
                                                        </select>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="jfamily">
                                                                    Job Family:</label></b></p>
                                                        <select id="jfamily" class="right" name="jfamily" style="width: 100%; z-index: auto;">
                                                            <option value="">Job Family&nbsp;</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left">
                                                            <b>
                                                                <label for="locations">
                                                                    Locations:</label></b></p>
                                                        <select id="locations" class="right" name="locations" style="width: 100%; z-index: auto;">
                                                            <option value="">All Locations&nbsp;</option>
                                                        </select>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%" valign="top">
                                                        <p style="margin: 0px;">
                                                            <b>
                                                                <label for="keywords">
                                                                    Keywords:</label></b></p>
                                                        <input id="keywords" class="right" size="20" style="width: 100%;" type="text" value="" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 12px 0px 12px;">
                                                        &nbsp;</td>
                                                    <td align="right" valign="top">
                                                        <asp:Button id="bsearch" cssclass="bodybtn"  text="Begin Search" runat="server"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 12px 0px 12px;">
                                                        &nbsp;</td>
                                                    <td align="right" valign="top">
                                                        <a class="sblnk" href="jobcart.aspx" title="View Job Cart">View Job Cart</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                            class="sblnk" href="AdvanceSearch.aspx" title="Advanced Search">Advanced Search</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="padding: 3px 0px 0px 0px;" valign="top">
                                                        <h2 style="margin: 0px;">
                                                            Search Result - <span style="font-weight: normal;">(<b>12</b>) results found</span></h2>
                                                    </td>
                                                </tr>
                                                <tr valign="top">
                                                    <td class="divb" colspan="2" valign="top">
                                                        <img alt="" height="4" src="images/clear.gif" width="100%" /></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="padding: 3px 0px 0px 0px;" valign="top">
                                                        <table border="0" cellpadding="0" cellspacing="0" summary="Job Search table will yield to the user list containing job title, location and date for each of the jobs. User can click on a job title in order to view detailed information pertaining to the job."
                                                            width="100%">
                                                            <tr>
                                                                <th align="left" scope="col">
                                                                    <p class="tblH">
                                                                        Job Title</p>
                                                                </th>
                                                                <th align="right" scope="col">
                                                                    <p class="tblH">
                                                                        Location</p>
                                                                </th>
                                                                <th align="right" scope="col">
                                                                    <p class="tblH">
                                                                        Date</p>
                                                                </th>
                                                            </tr>
                                                            <tr class="c1">
                                                                <td class="tbl" style="width: 50%">
                                                                    <a class="nv" href="jobdetails.aspx">Project Manager</a></td>
                                                                <td align="right" class="tbl">
                                                                    Nashville, TN</td>
                                                                <td align="right" class="tbl">
                                                                    04/11/06</td>
                                                            </tr>
                                                            <tr class="c2">
                                                                <td class="tbl" style="width: 50%">
                                                                    <a class="nv" href="jobdetails.aspx">Project Manager</a></td>
                                                                <td align="right" class="tbl">
                                                                    Nashville, TN</td>
                                                                <td align="right" class="tbl">
                                                                    04/11/06</td>
                                                            </tr>
                                                            <tr class="c1">
                                                                <td class="tbl" style="width: 50%">
                                                                    <a class="nv" href="jobdetails.aspx">Project Manager</a></td>
                                                                <td align="right" class="tbl">
                                                                    Nashville, TN</td>
                                                                <td align="right" class="tbl">
                                                                    04/11/06</td>
                                                            </tr>
                                                            <tr class="c2">
                                                                <td class="tbl" style="width: 50%">
                                                                    <a class="nv" href="jobdetails.aspx">Project Manager</a></td>
                                                                <td align="right" class="tbl">
                                                                    Nashville, TN</td>
                                                                <td align="right" class="tbl">
                                                                    04/11/06</td>
                                                            </tr>
                                                            <tr class="c1">
                                                                <td class="tbl" style="width: 50%">
                                                                    <a class="nv" href="jobdetails.aspx">Project Manager</a></td>
                                                                <td align="right" class="tbl">
                                                                    Nashville, TN</td>
                                                                <td align="right" class="tbl">
                                                                    04/11/06</td>
                                                            </tr>
                                                            <tr class="c2">
                                                                <td class="tbl" style="width: 50%">
                                                                    <a class="nv" href="jobdetails.aspx">Project Manager</a></td>
                                                                <td align="right" class="tbl">
                                                                    Nashville, TN</td>
                                                                <td align="right" class="tbl">
                                                                    04/11/06</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </form>
                                    </td>
                                </tr>
                            </table>
</asp:Content>
