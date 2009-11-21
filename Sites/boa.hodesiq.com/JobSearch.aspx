<%@ Page AutoEventWireup="true" CodeFile="JobSearch.aspx.cs" Inherits="JobSearch"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Search Page" %>

                            <asp:Content ID="Content1" Runat="Server" ContentPlaceHolderID="cphmain">
                                
                                <table summary="Job Search and Job List Page" border="0" cellpadding="0" cellspacing="0" width="578">
                                    <tr valign="top">
                                        <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
                                           <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                                                <tr>
                                                    <td valign="top" colspan="3">
                                                        <h1 style="margin: 0px 0px 0px 0px; ">
                                                            Basic Search</h1>
                                                    </td>
                                                </tr>
                                                <tr>
													<td  valign="top" colspan="3" >
														<asp:Label ID="lblState" runat="server" Text="Location" AssociatedControlID="ddlState"></asp:Label><br />
														<div id="d2" style="display: inline;">
														<asp:DropDownList ID="ddlState" runat="server" CssClass="left" Style="width: 50%; z-index: auto;"
															ToolTip="Select a State" AutoPostBack="true" OnSelectedIndexChanged="brefine_Click">
															<asp:ListItem>All Locations&#160;</asp:ListItem>
														</asp:DropDownList>
														</div>
														<div>
														<noscript><asp:Button ID="brefine" runat="server" CssClass="bodybtn"  Text="Show Cities" OnClick="brefine_Click" /></noscript>
														</div>
													</td>
                                                </tr>
                                                <tr>
													<td  valign="top" colspan="3" >
														<asp:Label ID="lblCity" runat="server" Text="City" Visible="false" AssociatedControlID="ddlCity"></asp:Label><br />
														<span id="d3" style="display: inline;">
															<asp:DropDownList ID="ddlCity" runat="server" CssClass="left" Style="width: 50%; z-index: auto;"
															ToolTip="Select a City" Visible="false">
															<asp:ListItem>All Locations&#160;</asp:ListItem>
															</asp:DropDownList>
														</span>
													</td>
                                                </tr>
                                                <tr>
													<td valign="top" colspan="3" >
														<asp:Label ID="lblJobAreas" runat="server" Text="Job Areas" Visible="true" AssociatedControlID="ddlJobAreas"></asp:Label><br />
														<span id="d1" style="display: inline;">
															<asp:DropDownList ID="ddlJobAreas" runat="server" CssClass="left" Style="width: 50%; z-index: auto;"
															ToolTip="Select a Job Area" Visible="true">
															</asp:DropDownList>
														</span>
													</td>
                                                </tr>
                                                <tr><td colspan="3">&nbsp;</td></tr>
                                                <tr>
													<td valign="top" colspan="3" >
														<asp:Label ID="lblKeywords" runat="server" Text="Keywords or Job Number (if known)" AssociatedControlID="keywords"></asp:Label><br />
														<asp:TextBox ID="keywords" runat="server" CssClass="left" Style="width: 50%; size: 20"
															ToolTip="Keywords">
														</asp:TextBox>
													</td>
                                                </tr>
                                                <tr>
													<td>
														<div id="dsubmit" runat="server"><asp:LinkButton runat="server" OnClick="bsearch_Click" ID="lsearch" Text="search me"></asp:LinkButton></div>
														<noscript><asp:Button ID="bsearch" runat="server" CssClass="bodybtn"  Text="Search" OnClick="bsearch_Click" /></noscript>
													</td>
													<td>
														
													</td>
													<td>
														
													</td>
                                                </tr>
                                            </table>
                                            <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
                                                <tr>
                                                    <td style="padding: 0px 12px 0px 12px;" align="left">
                                                        <b><asp:Label ID="lblJobofJobs" runat="server" Text=""></asp:Label></b>&nbsp;</td>
                                                    <td align="left" valign="top">
														<asp:HyperLink runat="server" ID="lnkJobCart" NavigateUrl="~/jobcart.aspx" Text="View Job Cart" />&nbsp;&nbsp;&nbsp;&nbsp;
														<asp:HyperLink runat="server" ID="lnkAdvanceSearch" NavigateUrl="~/AdvanceSearch.aspx" Text="Advanced Search" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <asp:GridView ID="GrdResults" runat="server" Width="554px" AutoGenerateColumns="False" CellPadding="0" GridLines="None" AllowSorting="True" ToolTip="Search Results ">
                                                <RowStyle BackColor="#CADCEB" Height="10px"/>
                                                <AlternatingRowStyle BackColor="#EAF1F7" Height="10px" />
                                                <HeaderStyle Height="10px" BackColor="#EAF1F7" />
                                                <Columns>
                                                    <asp:HyperLinkField DataNavigateUrlFields="JobsID,stateid,cityid,areaoftalent,jfamily,keywords" DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=Sp&amp;JobId={0}&amp;stateid={1}&amp;cityid={2}&amp;areasoftalent={3}&amp;jfamily={4}&amp;keywords={5}"
                                                        DataTextField="JobName" HeaderText="Job Title" ControlStyle-CssClass="nv">
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                    </asp:HyperLinkField>
                                                    <asp:BoundField DataField="Location" HeaderText="Location" >
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="postdate" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false">
                                                        <HeaderStyle HorizontalAlign="Left" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <PagerStyle CssClass="mh-link1" />
                                                <EmptyDataTemplate>
                                                <b>There are no matching records found</b>
                                                </EmptyDataTemplate>
                                                <PagerSettings Mode="NextPrevious" NextPageText="Next" Position="TopAndBottom" PreviousPageText="Previous" />
                                            </asp:GridView><br />
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top" align="center">
                                       <asp:Button ID="LnkPrvs" runat="server" CssClass="bodybtn" OnClick="LnkPrvs_Click"
                                            Text="Previous" Visible="false" />&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="LnkNxt" runat="server" CssClass="bodybtn" OnClick="LnkNxt_Click"
                                            Text="Next" Visible="false" />&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="LblPageOfPages" runat="server"></asp:Label>    
                                         </td>
                                     </tr>
                                </table>
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                <div id="d4"></div>
                                <input type="hidden" name="hiddenid" id="hiddenid" value=""/>
<script language="JavaScript" type="text/javascript">
<!--
var hiddenid;
function submit_search(n,v)
{
	var hidden = document.getElementById(hiddenid?hiddenid:"hiddenid");
	if(hidden)
	{
		hidden.id = n;
		hidden.name = n;
		hidden.value = v;
	}
	document.aspnetForm.submit();
}
function reset_form(n,v)
{
	var hidden = document.getElementById(hiddenid?hiddenid:"hiddenid");
	if(hidden)
	{
		hidden.id = n;
		hidden.name = n;
		hidden.value = v;
	}
	document.aspnetForm.reset();
}
//-->
</script>
<asp:Literal runat="server" ID="litScript"></asp:Literal>
                            </asp:Content>
                        