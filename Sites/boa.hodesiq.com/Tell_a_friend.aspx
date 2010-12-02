<%@ Page AutoEventWireup="true" CodeFile="Tell_a_friend.aspx.cs" Inherits="Tell_a_friend"
    Language="C#" MasterPageFile="~/BOAmaster.master" ValidateRequest="false" EnableEventValidation="false" Title="Tell a Friend Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
<h1 style="margin: 0px 0px 0px 12px; ">Send this job to a friend </h1>
    <table summary="Job Search and Job List Page" border="0" cellpadding="0" cellspacing="0" width="578">
        <tr valign="top">
            <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
				<table border="0" cellpadding="0" cellspacing="0" width="100%" summary="Send this job to a friend">
					<tr>
						<td style="width: 100%">Required fields are marked with an asterisk (*)</td>
					</tr>
					<tr><td style="width: 100%">  <br /></td></tr>
					<tr><td style="width: 100%">  <br /></td></tr>

                    <tr>
                    <td style="width: 100%"><asp:Label ID="Label1" runat="server" AssociatedControlID="YourEmail" Text="Your email address*"></asp:Label><br />
                        <asp:Literal ID="ltrlError0" runat="server" Text=""  /> 
                        <asp:TextBox ID="YourEmail" ToolTip="Your email address" runat="server" Width="400px"></asp:TextBox>
<%--   	                    <br/>
   	                    <asp:RequiredFieldValidator 
   	                    ID="RequiredFieldValidator1a" 
   	                    Runat="Server" 
	                    ControlToValidate="YourEmail"	                    
                        ErrorMessage=" &bull; Please Provide Valid Email Address"
                        SetFocusOnError="true"
                        Display="Dynamic"/>
                        <asp:RegularExpressionValidator ID="RequiredFieldValidator1b" runat="server"
	                    ControlToValidate="YourEmail" 
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"	                   
                        ErrorMessage=" &bull; Please Provide Valid Email Address"
                        SetFocusOnError="true"
                        Display="Dynamic"/>--%>
                    </td>
                    </tr> 	
                    <tr><td style="width: 100%">  <br /></td></tr>				

                    <tr>
                    <td style="width: 100%"><asp:Label ID="Label2" runat="server" AssociatedControlID="YourName" Text="Your name*"></asp:Label><br />
                        <asp:Literal ID="ltrlError1" runat="server" Text=""  /> 
                        <asp:TextBox ID="YourName" ToolTip="Your name" runat="server" Width="400px"></asp:TextBox>
                    </td>
                    </tr> 	
                    <tr><td style="width: 100%">  <br /></td></tr>	
                    
					<tr>
					<td style="width: 100%"><asp:Label runat="server" AssociatedControlID="FriendEmail" Text="Your friend's email address*"></asp:Label><br />
					    <asp:Literal ID="ltrlError" runat="server" Text=""  /> 
						<asp:TextBox ID="FriendEmail" ToolTip="Friend's Email Address" runat="server" Width="400px"></asp:TextBox>
<%--	                    <br/>
	                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2a" 
	                    Runat="Server" 
	                    ControlToValidate="FriendEmail" 
                        ErrorMessage=" &bull; Please Provide Valid Email Address"
                        SetFocusOnError="true"
                        Display="Dynamic"/>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2b" 
                        runat="server"
	                    ControlToValidate="FriendEmail" 
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"			 
                        ErrorMessage=" &bull; Please Provide Valid Email Address"
                        SetFocusOnError="true"
                        Display="Dynamic"/>--%>
					</td>
					</tr>
					<tr>
						<td style="width: 100%">
							<br />
						</td>
					</tr>
					<tr>
						<td style="width: 100%">
						</td>
					</tr>
				    
					<tr>
						<td style="width: 100%">
							<br />
						</td>
					</tr>
					<tr>
						<td style="width: 100%">
							<br />
						</td>
					</tr>
					<tr>
						<td style="width: 100%">
							<b>Subject:</b><br />
							Career opportunity with Bank Of America
						</td>
					</tr>
					<tr>
						<td style="width: 100%">
							<br />
						</td>
					</tr>
					<tr>
						<td style="width: 100%">
							<br />
						</td>
					</tr>
					<tr>
						<td style="width: 100%"><asp:Label runat="server" AssociatedControlID="MessageBox" Text="Message (Maximum 512 characters)"></asp:Label>
							<asp:TextBox ID="MessageBox" tooltip="Message" runat="server" Height="55px" MaxLength="512" TextMode="MultiLine" Width="400px">I thought you might be interested in this new job opportunity with Bank of America.</asp:TextBox>
						</td>
					</tr>
					<tr>
						<td style="width: 100%">
							<br />
						</td>
					</tr>
					<tr>
						<td align="left" valign="top" style="width:100%">
					        <table border="0" cellpadding="0" cellspacing="0" width="72%" summary="Send this job to a friend">
					        <tr>
						        <td align="right" style="width: 88%"><asp:PlaceHolder runat="server" ID="phSend"></asp:PlaceHolder></td>
					            <td style="width: 15px;">&nbsp;</td>
					            <td align="left" style="width: 10%"><asp:PlaceHolder runat="server" ID="phCancel"></asp:PlaceHolder></td>
					        </tr>
					        </table>							
						</td>
					</tr>				    
				</table>				
            </td>
        </tr>
    </table>
</asp:Content>
