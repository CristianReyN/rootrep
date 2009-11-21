<%@ Page AutoEventWireup="true" CodeFile="Tell_a_friend.aspx.cs" Inherits="Tell_a_friend"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Tell a Friend Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
<table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td style="width: 416px">
        </td>
    </tr>
    
    <tr>
        <td style="width: 416px">
            <h1 style="margin: 3px 0px 0px 0px; ">            
            Send This Job To a Friend</h1>
        </td>
    </tr>
    <tr>
        <td style="width: 416px">
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 416px">Required Feilds are marked with Asterisk *</td>
    </tr>
    <tr><td style="width: 416px">  <br /></td></tr>
    <tr>
        <td style="width: 416px">
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 416px">Your Friend's Email Address.* <br />
            <asp:TextBox ID="FriendEmail" ToolTip="Friend's Email Address" runat="server" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 416px">
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 416px">
            Your Email Address.*
            <br />
            <asp:TextBox ID="YourEmail" runat="server" ToolTip="Your Email Address" Width="400px"></asp:TextBox>
        </td>
    </tr>
    
    <tr>
        <td style="width: 416px">
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 416px">
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 416px">
            <b>Subject:</b><br />
            Career opportunity with Bank Of America
        </td>
    </tr>
    <tr>
        <td style="width: 416px">
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 416px">
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 416px"><b>Message</b>(Maximum 512 Characters)
            <asp:TextBox ID="MessageBox" tooltip="Message" runat="server" Height="55px" TextMode="MultiLine" Width="400px">I thought you might be interested in this new job opportunity with Bank of America.</asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 416px">
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
</asp:Content>
