<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CampusEvents.aspx.cs" Inherits="CampusEvents" MasterPageFile="~/BOAmaster.master" Title="Campus Events" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
    <table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
        <tr>
        <td><table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="images/clear.gif" width="578" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top"><img src="images/camp/campusevents.jpg" width="578" height="166" alt="Explore Campus Events." title="Explore Campus Events." border="0"></td>
			</tr>
			<tr valign="top">
			<td colspan="2" valign="top" class="divb"><img src="images/clear.gif" width="550" height="4" alt="" border="0"></td>
			</tr>
		    </table>
		    <img src="images/clear.gif" width="550" height="15" alt="" border="0"><br />
		    <h1 class="hidden">Campus Events</h1>
		    <table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			    <tr valign="top">
				<td colspan="2" valign="top">
                    <h2 class="bach">It's nice to meet you.</h2>
                    <p class="bac">
                    
                    As great as you look on paper, you're undoubtedly even more impressive in person. Check here for an updated list of recruiting events to find out when our recruiters are coming to your campus. We'd love to meet you there.
                    </p>
                </td>
                </tr>
             </table>
             <img src="images/clear.gif" width="550" height="12" alt="" border="0"><br />


        </td>
        </tr>
        <tr>
        <td valign="top">
		    <table width="578" cellpadding="0" cellspacing="0" border="0" summary="Campus Events. The first tab displays all campus events in the US, the second tab displays all campus events in EMEA, and the third tab displays all campus events in Asia.  You can narrow the search results for each region by selecting a degree level and/or school.">
			    <tr>
				<td valign="bottom">
					<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CampusEvents.aspx?region=1" ImageUrl="~/images/camp/t1.gif" ToolTip="Campus events Americas - includes  U.S. and Canada" alt="Campus events Americas - includes  U.S. and Canada"></asp:HyperLink></td>
				<td valign="bottom">
					<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CampusEvents.aspx?region=2" ImageUrl="~/images/camp/t2a.gif" ToolTip="Campus events in EMEA" alt="Campus events in EMEA"></asp:HyperLink></td>
				<td valign="bottom">
					<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/CampusEvents.aspx?region=3" ImageUrl="~/images/camp/t3a.gif" ToolTip="Campus events in Asia Pacific" alt="Campus events in Asia Pacific"></asp:HyperLink></td>
				<td width="100%" background="images/camp/trtb.gif" valign="bottom" align="right"><img src="images/camp/trt.gif" border="0" alt="" /></td>
			    </tr>
		    </table>
	    </td>
        </tr>
        <tr>
	    <td valign="top">
		    <table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			    <tr>
				<td style="background:url(images/camp/tl.gif) repeat-y;" valign="top">
					<img src="images/camp/tl.gif" width="6" height="<%=contentHeight %>" border="0" alt="" />
				</td>
				<td  valign="top">
                    <table width="100%" summary="" cellpadding="0" cellspacing="0" border="0">
                        <tr>
                        <td colspan="4">
                            <table width="100%" class="eventBody" cellpadding="0" cellspacing="0" border="0" summary="">
                                <tr>			
			                        <td colspan="4" style="height: 15px">&nbsp;</td>
		                        </tr>
		                        
		                        
		                        <%if (!"2".Equals(GetRegionId()))
                            { %>
		                        <tr>			
			                        <td colspan="4" style="height: 15px">
		                        
		                        <table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
                                
		                        
		                        
		                        
                                <tr>
                                    <td align="right"  width="20%">
                            <asp:Label ID="Label1" AssociatedControlID="DegreeLevelList" runat="server" Text="Degree Level:"></asp:Label>
                                    </td>
                                    <td align="left" colspan="3" width="80%">
                            <asp:DropDownList ID="DegreeLevelList" ToolTip="Select a degree level" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                                    </td>
                            </tr>
                            <tr>
                            <td align="right"  width="20%">
                            <asp:Label ID="Label2" runat="server" AssociatedControlID="SchoolList" Text="School: "></asp:Label>
                            </td>
                                    <td align="left" colspan="3" width="80%">
                            <asp:DropDownList ID="SchoolList" ToolTip="Select a school" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            </asp:DropDownList>
                                </td>
                                </tr>
                                </table>
                                </td>
                                </tr>
                                <%} %>
                                <tr>
                                <td align="left" colspan="2" style="height: 15px">
                                </td>
                                <td align="right" colspan="2" style="height: 15px">
                                </td>
                                </tr>
                                
                                <tr>
                                
                                
                                <td colspan="4" style="height: 15px">
		                        
		                        <table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
                                
		                        
		                        
		                        
                                
                     <%if("2".Equals(GetRegionId())){ %>
                     <tr>
                     <td>
                     Selecting the button below allows for searching and registering for Campus Events in the EMEA region.
                     </td>
                     </tr>
                     <tr>
                                
                                
                     <td colspan="4" style="height: 15px"></td>
                     </tr>
                     <tr>
                     <td align="left" valign="bottom">
                     <a href="javascript:openWindow('https://static.wcn.co.uk/company/ml/event_search.html')"><img src="images/camp/Search&Register.jpg" border="0" alt="Search & Register, link opens in a new window." /></a>
                     </td>
                     </tr>
                     <%}else{ %>
                     <tr class="trEvtTop">           
                     <td align="left" width="35%" class="pagingHeader"> <asp:label ID="lblCounter" runat="server"></asp:label> of <asp:Label ID="lblGetTotalCount" runat="server"></asp:Label></td><td align="right" width="65%" class="pagingHeader">

                    <%if (pager.HasPreviousPage())
                      { %>
                    <asp:LinkButton ID="LinkButton1" ToolTip="View previous page" runat="server" OnClick="LinkButton1_Click" PostBackUrl="" CssClass = "linkPagingRight">&#171; Previous</asp:LinkButton>
                    <%} %> Page <%=pager.GetPageIndex()%> of <%=pager.GetTotalPages()%>
                    <%if (pager.HasNextPage())
                      {%>
                    <asp:LinkButton ID="LinkButton2" ToolTip="View next page" runat="server" OnClick="LinkButton2_Click" PostBackUrl="" CssClass = "linkPagingLeft"> Next &#187;</asp:LinkButton>
                    <%}%></td>
                    </tr>
                    <%} %>
                    </table>
                    </td>
                </tr>
                
                                <tr> <td colspan="4"> &nbsp;</td></tr>
                                <%if(!"2".Equals(GetRegionId())){ %>
                                <tr> <td colspan="4">
                                
                                <asp:Table ID="Table1" width="560" runat="server" summary="For each region, the first column is the date.  The second column is the school.  The third column is the event.  The fourth column is the business.">
                                    <asp:TableRow ID="HeaderRow" runat="server" Visible="true">
                                        <asp:TableCell ID="DateHeader" Scope="column" runat="server" Width="25%" CssClass = "tdHeader">
                                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Visible="true" CssClass = "tdHeader" ToolTip="Sort by date in either ascending or descending order">Date <img src="images/camp/<%=up %>Arrow.gif" style="display:<%=sortDate %>" border="0" alt="" /></asp:LinkButton>
                                        </asp:TableCell>
                                        <asp:TableCell ID="SchoolHeader" scope="column" runat="server" Width="25%" CssClass = "tdHeader">
                                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Visible="true" CssClass = "tdHeader" ToolTip="Sort by school in either ascending or descending order">School <img src="images/camp/<%=up %>Arrow.gif" style="display:<%=sortSchool %>" border="0" alt="" /></asp:LinkButton>
                                        </asp:TableCell>
                                        <asp:TableCell ID="EventHeader" scope="column" runat="server" Width="25%" CssClass = "tdHeader">
                                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Visible="true" CssClass = "tdHeader" ToolTip="Sort by event in either ascending or descending order">Event <img src="images/camp/<%=up %>Arrow.gif" style="display:<%=sortEvent %>" border="0" alt="" /></asp:LinkButton>
                                        </asp:TableCell>
                                        <asp:TableCell ID="BusinessHeader" scope="column" runat="server" Width="25%" CssClass = "tdHeader">
                                        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Visible="true" CssClass = "tdHeader" ToolTip="Sort by business in either ascending or descending order">Business <img src="images/camp/<%=up %>Arrow.gif" style="display:<%=sortBusiness %>" border="0" alt="" /></asp:LinkButton>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                                <asp:Table ID="Table2" runat="server" Visible="false" CssClass="errorBody" summary="No events found">
                                    <asp:TableRow ID="TableRow1" runat="server">
                                    <asp:TableCell ID="TableCell1" runat="server" Width="15%" CssClass="warningImage"><img src="images/camp/warning.gif" border="0" alt="Information" />
                                    </asp:TableCell>
                                    <asp:TableCell ID="TableCell2" runat="server" Width="85%" CssClass="warningCopy">No Events Found.
                                    </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="TableRow2" runat="server">
                                    <asp:TableCell ID="TableCell3" runat="server" Width="15%" CssClass="warningImage">&nbsp;
                                    </asp:TableCell>
                                    <asp:TableCell ID="TableCell4" runat="server" Width="85%" CssClass="warningCopyTab">We’re sorry, we currently do not have any events scheduled at your school. Please be sure to check back periodically for updates. You're also welcome to <a href="campusrecruiting/how_to_apply.asp" title="submit a profile" class="noUnderLine">submit a profile</a> online right now.         
                                    </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                                </td></tr>
                                <tr class="trEvtBot">
                                    <td align="left" colspan="4">&nbsp;
                                    </td>
                                    </tr>
                                    <tr>
                                    <td align="right" colspan="4" style="height: 15px">
                                    <%if (pager.HasPreviousPage())
                                      { %>
                                    <asp:LinkButton ID="LinkButton7" ToolTip="View previous page" runat="server" OnClick="LinkButton7_Click" PostBackUrl="" CssClass = "linkPagingRight">&#171; Previous</asp:LinkButton>
                                    <%} %> Page <%=pager.GetPageIndex()%> of <%=pager.GetTotalPages()%>
                                    <%if (pager.HasNextPage())
                                      {%>
                                    <asp:LinkButton ID="LinkButton8" ToolTip="View next page" runat="server" OnClick="LinkButton8_Click" PostBackUrl="" CssClass = "linkPagingLeft"> Next &#187;</asp:LinkButton>
                                    <%} %>
                                    </td>
                                </tr>
                                <%} %>
                            </table>                
                        <asp:HiddenField ID="regionElem" runat="server">
                        </asp:HiddenField>
                    </tr> 
                               
                    </table>
                
                </td>
				<td background="images/camp/tr.gif" valign="top">
					<img src="images/camp/tr.gif" width="6" height="4" border="0" alt="" /></td>
			    </tr>
                <tr>
				<td valign="top">
					<img src="images/camp/tlb.gif" border="0" alt="" /></td>
				<td  valign="top">
					<img src="images/camp/tb.gif" height="6" width="100%"  border="0" alt="" /></td>
				<td valign="top">
					<img src="images/camp/trb.gif" border="0" alt="" /></td>
			    </tr>
		    </table>
		    
		   </td>
		   </tr>
		   </table>
		    
		    
		    
<script language="javascript" type="text/javascript">
//<!--
function openWindow(theUrl) 
{ 
    window.open(theUrl); 
}

//-->
</script>		    
		    
		    
            
		        
   
</asp:Content>

  
