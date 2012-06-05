  <%@ Page AutoEventWireup="true" CodeFile="JobSearchConsolidated.aspx.cs" Inherits="JobSearchConsolidated"
      Language="C#" MasterPageFile="~/BOAmaster.master" ValidateRequest="false" EnableEventValidation="false" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">  
<table border="0" cellpadding="0" cellspacing="0" summary="" width="578"><tr><td valign="top"><a id="skipmaincontent"></a><h1 style="margin: 0px 0px 0px 12px; ">Keyword Search Results</h1></td><td align="right"><div id="banc" runat="server"></div>	</td></tr> 
	
        <table border="0" cellpadding="0" cellspacing="0" summary="" width="578">
            <tr valign="top">
                <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
					<table border="0" cellpadding="1" cellspacing="1" summary="" width="100%" >
                        <tr>
                            <td valign="top"  colspan="2"><asp:Label ID="tdInstructions" runat="server"></asp:Label></td>
                            </br>                         
                        </tr>
						<tr>
							<td colspan="2" valign="top" align="left">&nbsp;
							</td>
						</tr></table>

							<asp:Panel ID="PnlCanada" runat="server" Visible="false">
							  </br><a href="http://ig12.i-grasp.com/fe/tpl_bankofamerica06.asp" target="_blank" class="p" onfocus="this.className='p-over'; "onblur="this.className='p';" style="margin: 0px 0px 0px 0px;" >Search and apply<span class="hidden">Search and apply for jobs in Canada. Link opens a new window.</span></a> for jobs in Canada.</br></br></asp:Panel>
							<asp:Panel ID="PnlFilter" runat="server" >
							
							<table border="0" cellpadding="0" cellspacing="0" summary=""
                            width="550px">					
							<tr id="trInternationalLocation" runat="server"  visible="false">							
							<td  valign="top"  style="width:50%; height:45;">
							   <div id="Div1" style="display: inline;">
							    <asp:Label ID="LblInternationalCity" runat="server" Text="City" Visible="true" AssociatedControlID="InternationalCity"></asp:Label><br />
								<asp:DropDownList ID="InternationalCity" runat="server" CssClass="left" Style="width: 90%; z-index: auto;"
								ToolTip="Select a city" Visible="true" Enabled="true">
								<asp:ListItem>All cities&#160;</asp:ListItem>
								</asp:DropDownList>			</div>						
							</td>
						</tr>
						
						
						</table></asp:Panel>
						<table border="0" cellpadding="1" cellspacing="1" summary="" width="100%">
						
						<tr><td colspan="2">&nbsp;</td></tr>
					</table>
					<asp:Panel ID="PnlResults" runat="server" Visible="true">
					<table border="0" cellpadding="0" cellspacing="0" summary="Table containing Advanced job search form."
					width="100%">
						<tr>
							<td style="padding: 0px 12px 0px 12px;" align="left">
								<b><asp:Label ID="lblJobofJobs" runat="server" Text=""></asp:Label></b>&nbsp;</td>
							<td align="right" valign="top">
							</td>
						</tr>
					</table>
                    <input type="hidden" name="txtJobSearch" value="<%=Request.Form["txtJobSearch"]%>" />
                    <asp:GridView 
                    ID="GrdResults" 
                    runat="server"                     
                    AutoGenerateColumns="False" 
                    CellPadding="6" 
                    GridLines="None" 
                    ToolTip="Search Results "
                    summary="Search Results. The first column is the Job Title.  The second column is the Location.  The third column is the Date. " 
                    Width="554px"
                    Height="18"  
                    PageSize="12"    
                    AllowPaging="false" 
                    EmptyDataRowStyle-ForeColor="Red"
                    AllowSorting="True" OnSorting="GrdResults_OnSorting" 
                    >
                    
                        <HeaderStyle CssClass="pd"   BackColor="#EAF1F7" Height="24px"  />
                        <RowStyle CssClass="pd2"   BackColor="#CADCEB" Height="24px" />
                        <AlternatingRowStyle CssClass="pd2"  BackColor="#EAF1F7" Height="24px" />
                        
                        <Columns>
                        
                            <asp:HyperLinkField   
    
                                DataNavigateUrlFields="CountryID,JobsID"
                                DataNavigateUrlFormatString="JobDetails.aspx?SearchPage=ASP&amp;CountryId={0}&amp;JobId={1}"
                                DataTextField="JobName"                                   
                                HeaderText="Job Title"                                  
                                SortExpression="JobName">                                
                                <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left" Width="50%" Height="24px"/>
                            </asp:HyperLinkField>                            
                           
                           <asp:TemplateField HeaderText="Location" SortExpression="Location">
                                <ItemTemplate>
                                    <asp:Literal ID="Lc" runat="server" Text='<%# Eval("Location") %>'></asp:Literal>
                                </ItemTemplate> 
                                <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left"  Width="25%" Height="24px"/>
                            </asp:TemplateField>   
                            
                            <asp:TemplateField HeaderText="Date" SortExpression="postdate">
                                <ItemTemplate>
                                    <asp:Literal ID="Dt" runat="server" Text='<%# Eval("postdate") %>'></asp:Literal>
                                </ItemTemplate> 
                                <HeaderStyle CssClass="pd" Font-Bold="true" ForeColor="black" HorizontalAlign="Left"  Width="25%" Height="24px"/>
                            </asp:TemplateField>  
                        
                            
                        </Columns>
                        <PagerStyle CssClass="mh-link1" />
                        <EmptyDataTemplate>
                            <b>There are no matching records found</b>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <br />
                    <br />
                
		<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">
			<tr><td colspan="3">&nbsp;</td></tr>
            <tr valign="top">
                <td valign="top" align="right" style="width: 50%;">&nbsp;
                <div id="divPrev" runat="server" style="display:none">
					<asp:PlaceHolder  runat="server" ID="phPrevious"></asp:PlaceHolder>
				</div>
				</td>
				<td style="width: 15px;">&nbsp;</td>
				<td valign="top" align="left" style="width: 50%;">&nbsp;
				<div id="divNext" runat="server" style="display:none">
					<asp:PlaceHolder runat="server" ID="phNext"></asp:PlaceHolder>
                 </div>
                 </td>
             </tr>
			<tr><td colspan="3">&nbsp;</td></tr>
             <tr>
				<td colspan="3" align="center" valign="top">
					<br /><asp:Label ID="LblPageOfPages" runat="server"></asp:Label>    
				</td>
             </tr>
        </table>
<asp:label id="lblMessage" runat="server"></asp:label></asp:Panel>
           </td> </tr>
        </table>
     
<script language='javascript1.1' type='text/javascript'>
    //<!—

    cmCreatePageviewTag('career:Tool:Job_Search;jobsearchconsolidated', null, null, 'career:Tool:Job_Search', false, false, null, false, false, null, null, null, null, null, null, null, null, null, null, null, null);

    //-->
</script>  
  </asp:Content>