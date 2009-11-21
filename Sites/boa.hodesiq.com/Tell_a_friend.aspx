<%@ Page AutoEventWireup="true" CodeFile="Tell_a_friend.aspx.cs" Inherits="Tell_a_friend"
    Language="C#" MasterPageFile="~/BOAmaster.master" Title="Tell a Friend Page" %>

<asp:Content ID="Content1" runat="Server" ContentPlaceHolderID="cphmain">
<table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td style="width: 416px">
            <br />
        </td>
    </tr>
    
    <tr>
        <td style="width: 416px">
            <h3 style="margin: 0px; color: #d4001a;">
            
            Send This Job To a Friend</h3>
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
        <td style="text-align:right; width: 416px;">
            <asp:Button ID="Send" runat="server" CssClass="bodybtn" Text="Send" Width="69px" OnClick="Send_Click" />  
            <asp:Button ID="Cancel" runat="server" CssClass="bodybtn" Text="Cancel" OnClick="Cancel_Click" />
                
        </td>
    </tr>
    
</table>
</asp:Content>
