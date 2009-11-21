<%@ Page AutoEventWireup="true" CodeFile="Tell_a_friend.aspx.cs" Inherits="Tell_a_friend"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Tell a Friend Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
<h1 style="margin: 0px 0px 0px 12px; ">Send this job to a friend </h1>
    <table summary="Job Search and Job List Page" border="0" cellpadding="0" cellspacing="0" width="578">
        <tr valign="top">
            <td style="padding: 6px 12px 0px 12px; height: 100%" valign="top">
				<table border="0" cellpadding="0" cellspacing="0" width="100%" summary="Send this job to a friend">
					<tr>
						<td style="width: 100%">Required Fields are marked with asterisk *</td>
					</tr>
					<tr><td style="width: 100%">  <br /></td></tr>
					<tr>
						<td style="width: 100%">
							<br />
						</td>
					</tr>
					<tr>
						<td style="width: 100%"><asp:Label runat="server" AssociatedControlID="FriendEmail" Text="Your Friend's Email Address.*"></asp:Label><br />
							<asp:TextBox ID="FriendEmail" ToolTip="Friend's Email Address" runat="server" Width="400px"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td style="width: 100%">
							<br />
						</td>
					</tr>
					<tr>
						<td style="width: 100%"><asp:Label runat="server" AssociatedControlID="YourEmail" Text="Your Email Address.*"></asp:Label>
							<br />
							<asp:TextBox ID="YourEmail" runat="server" ToolTip="Your Email Address" Width="400px"></asp:TextBox>
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
						<td style="width: 100%"><asp:Label runat="server" AssociatedControlID="MessageBox" Text="Message (Maximum 512 characters.)"></asp:Label>
							<asp:TextBox ID="MessageBox" tooltip="Message" runat="server" Height="55px" TextMode="MultiLine" Width="400px">I thought you might be interested in this new job opportunity with Bank of America.</asp:TextBox>
						</td>
					</tr>
					<tr>
						<td style="width: 100%">
							<br />
						</td>
					</tr>
					<tr>
						<td align="right" valign="top" style="width:50%">
							<asp:PlaceHolder runat="server" ID="phSend"></asp:PlaceHolder>&nbsp;&nbsp;&nbsp;&nbsp;
						</td>
						<td align="left" valign="top" style="width:50%">		
							<asp:PlaceHolder runat="server" ID="phCancel"></asp:PlaceHolder>
						</td>
					</tr>
				    
				</table>
            </td>
        </tr>
    </table>
</asp:Content>
