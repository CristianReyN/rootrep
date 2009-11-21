<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CampusEvents.aspx.cs" Inherits="CampusEvents" MasterPageFile="~/BOAmaster.master" Title="Campus Events" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
    <table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
        <tr>
        <td><table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			<tr valign="top"><td colspan="2" valign="top" class="divt"><img src="<%=imagePath %>/images/clear.gif" width="578" height="4" alt="" border="0"></td></tr>
			<tr valign="top">
				<td width="100%" colspan="2" valign="top"><img src="<%=imagePath %>/images/camp/campusevents.jpg" width="578" height="166" alt="Explore Campus Events." title="Explore Campus Events." border="0"></td>
			</tr>
			<tr valign="top">
			<td colspan="2" valign="top" class="divb"><img src="<%=imagePath %>/images/clear.gif" width="550" height="4" alt="" border="0"></td>
			</tr>
		    </table>
		    <img src="<%=imagePath %>/images/clear.gif" width="550" height="15" alt="" border="0"><br />
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
             <img src="<%=imagePath %>/images/clear.gif" width="550" height="12" alt="" border="0"><br />


        </td>
        </tr>
        <tr>
        <td valign="top">
		    <table width="578" cellpadding="0" cellspacing="0" border="0" summary="">
			    <tr>
				<td valign="bottom">
					<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CampusEvents.aspx?region=U.S." ImageUrl="~/images/camp/t1.gif"></asp:HyperLink></td>
				<td valign="bottom">
					<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CampusEvents.aspx?region=EMEA" ImageUrl="~/images/camp/t2a.gif"></asp:HyperLink></td>
				<td valign="bottom">
					<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/CampusEvents.aspx?region=Asia" ImageUrl="~/images/camp/t3a.gif"></asp:HyperLink></td>
				<td width="100%" background="<%=imagePath %>/images/camp/trtb.gif" valign="bottom" align="right"><img src="<%=imagePath %>/images/camp/trt.gif" border="0" alt="" /></td>
			    </tr>
		    </table>
	    </td>
        </tr>
        <tr>
	    <td valign="top">
		    <table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
			    <tr>
				<td style="background:url(<%=imagePath %>/images/camp/tl.gif) repeat-y;" valign="top">
					<img src="<%=imagePath %>/images/camp/tl.gif" width="6" height="595" border="0" alt="" />
				</td>
				<td  valign="top">
                    <table width="100%" summary="" cellpadding="0" cellspacing="0" border="0">
                        <tr>
                        <td colspan="4">
                            <table width="100%" class="eventBody" cellpadding="0" cellspacing="0" border="0" summary="">
                                <tr>			
			                        <td colspan="4" style="height: 15px">&nbsp;</td>
		                        </tr>
		                        
		                        
		                        
		                        <tr>			
			                        <td colspan="4" style="height: 15px">
		                        
		                        <table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
                                
		                        
		                        
		                        
                                <tr>
                                    <td align="right"  width="20%">
                            <asp:Label ID="Label1" runat="server" Text="Degree Level:"></asp:Label>
                                    </td>
                                    <td align="left" colspan="3" width="80%">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                                    </td>
                            </tr>
                            <tr>
                            <td align="right"  width="20%">
                            <asp:Label ID="Label2" runat="server" Text="School: "></asp:Label>
                            </td>
                                    <td align="left" colspan="3" width="80%">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            </asp:DropDownList>
                                </td>
                                </tr>
                                </table>
                                </td>
                                </tr>
                                
                                <tr>
                                <td align="left" colspan="2" style="height: 15px">
                                </td>
                                <td align="right" colspan="2" style="height: 15px">
                                </td>
                                </tr>
                                
                                <tr>
                                
                                
                                <td colspan="4" style="height: 15px">
		                        
		                        <table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">
                                
		                        
		                        
		                        
                                <tr class="trEvtTop">
                                
                    <td align="left" width="35%" class="pagingHeader"> <%=pager.StartEventNo()%>-<%=pager.EndEventNo()%> of <%=pager.GetTotalCount()%> events</td><td align="right" width="65%" class="pagingHeader">
                    <%if (pager.HasPreviousPage())
                      { %>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="" CssClass = "linkPagingRight">&#171; Previous</asp:LinkButton>
                    <%} %> Page <%=pager.GetPageIndex()%> of <%=pager.GetTotalPages()%>
                    <%if (pager.HasNextPage())
                      {%>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" PostBackUrl="" CssClass = "linkPagingLeft"> Next &#187;</asp:LinkButton>
                    <%} %></td>
                    </tr>
                    </table>
                    </td>
                </tr>
                
                                <tr> <td colspan="4"> &nbsp;</td></tr>
                                <tr> <td colspan="4">
                                
                                <asp:Table ID="Table1" width="560" border="0" runat="server">
                                    <asp:TableRow ID="HeaderRow" runat="server" Visible="true">
                                        <asp:TableCell ID="DateHeader" runat="server" Width="25%" CssClass = "tdHeader">
                                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Visible="true" CssClass = "tdHeader">Date <img src="<%=imagePath %>/images/camp/<%=up %>Arrow.gif" style="display:<%=sortDate %>" border="0" alt="" /></asp:LinkButton>
                                        </asp:TableCell>
                                        <asp:TableCell ID="SchoolHeader" runat="server" Width="25%" CssClass = "tdHeader">
                                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Visible="true" CssClass = "tdHeader">School <img src="<%=imagePath %>/images/camp/<%=up %>Arrow.gif" style="display:<%=sortSchool %>" border="0" alt="" /></asp:LinkButton>
                                        </asp:TableCell>
                                        <asp:TableCell ID="EventHeader" runat="server" Width="25%" CssClass = "tdHeader">
                                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Visible="true" CssClass = "tdHeader">Event <img src="<%=imagePath %>/images/camp/<%=up %>Arrow.gif" style="display:<%=sortEvent %>" border="0" alt="" /></asp:LinkButton>
                                        </asp:TableCell>
                                        <asp:TableCell ID="BusinessHeader" runat="server" Width="25%" CssClass = "tdHeader">
                                        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Visible="true" CssClass = "tdHeader">Business <img src="<%=imagePath %>/images/camp/<%=up %>Arrow.gif" style="display:<%=sortBusiness %>" border="0" alt="" /></asp:LinkButton>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                                <asp:Table ID="Table2" runat="server" Visible="false" CssClass="errorBody">
                                    <asp:TableRow ID="TableRow1" runat="server">
                                    <asp:TableCell ID="TableCell1" runat="server" Width="15%" CssClass="warningImage"><img src="<%=imagePath %>/images/camp/warning.gif" border="0" alt="" />
                                    </asp:TableCell>
                                    <asp:TableCell ID="TableCell2" runat="server" Width="85%" CssClass="warningCopy">There was a problem processing your request.
                                    </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="TableRow2" runat="server">
                                    <asp:TableCell ID="TableCell3" runat="server" Width="15%" CssClass="warningImage">&nbsp;
                                    </asp:TableCell>
                                    <asp:TableCell ID="TableCell4" runat="server" Width="85%" CssClass="warningCopyTab">Unfortunately, there's nothing scheduled for your school at this time, but please check back again soon. You're also welcome to <a href="campusrecruiting/how_to_apply.asp" title="submit a profile" class="noUnderLine">submit a profile</a> online right now.         
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
                                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" PostBackUrl="" CssClass = "linkPagingRight">&#171; Previous</asp:LinkButton>
                                    <%} %> Page <%=pager.GetPageIndex()%> of <%=pager.GetTotalPages()%>
                                    <%if (pager.HasNextPage())
                                      {%>
                                    <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click" PostBackUrl="" CssClass = "linkPagingLeft"> Next &#187;</asp:LinkButton>
                                    <%} %>
                                    </td>
                                </tr>
                            </table>                
                        <asp:HiddenField ID="regionElem" runat="server">
                        </asp:HiddenField>
                    </tr> 
                               
                    </table>
                
                </td>
				<td background="<%=imagePath %>/images/camp/tr.gif" valign="top">
					<img src="<%=imagePath %>/images/camp/tr.gif" width="6" height="4" border="0" alt="" /></td>
			    </tr>
                <tr>
				<td valign="top">
					<img src="<%=imagePath %>/images/camp/tlb.gif" border="0" alt="" /></td>
				<td  valign="top">
					<img src="<%=imagePath %>/images/camp/tb.gif" height="6" width="100%"  border="0" alt="" /></td>
				<td valign="top">
					<img src="<%=imagePath %>/images/camp/trb.gif" border="0" alt="" /></td>
			    </tr>
		    </table>
		    
		   </td>
		   </tr>
		   </table>
		    
		    
		    
		    
		    
		    
            
		        
   
</asp:Content>

  
