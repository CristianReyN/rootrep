<%@ Page AutoEventWireup="true" CodeFile="JobDetails.aspx.cs" Inherits="JobDetails"
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
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="areasoftalent">
                                                                    Areas of Talent</label></b></p>
                                                        <select id="areasoftalent" class="left" name="areasoftalent" style="width: 100%;
                                                            z-index: auto;">
                                                            <option value="">All Areas of Talent&nbsp;</option>
                                                        </select>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="jfamily">
                                                                    Job Family</label></b></p>
                                                        <select id="jfamily" class="left" name="jfamily" style="width: 100%; z-index: auto;">
                                                            <option value="">Job Family&nbsp;</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 6px 0px 0px; width: 50%;" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="locations">
                                                                    Locations</label></b></p>
                                                        <select id="locations" class="left" name="locations" style="width: 100%; z-index: auto;">
                                                            <option value="">All Locations&nbsp;</option>
                                                        </select>
                                                    </td>
                                                    <td style="padding: 0px 0px 0px 6px; width: 50%;" valign="top">
                                                        <p style="margin: 0px; text-align: left;">
                                                            <b>
                                                                <label for="keywords">
                                                                    Keywords</label></b></p>
                                                        <input id="keywords" class="left" name="keywords" size="20" style="width: 100%;"
                                                            type="text" value="" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px 12px 0px 12px;">
                                                        &nbsp;</td>
                                                    <td align="right" valign="top">
                                                        <input id="bsearch" class="bodybtn" type="submit" value="Begin Search" />
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
                                            </table>
                                        </form>
                                    </td>
                                </tr>
                            </table>
<asp:label id="lblMessage" runat="server"></asp:label>
</asp:Content>