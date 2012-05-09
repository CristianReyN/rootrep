<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AutoSuggestTest.aspx.cs" Inherits="AutoSuggestTest" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="jQueryThemes/start/jquery-ui-1.8.9.custom.css" type="text/css" />
    <style type="text/css">
input { padding:4px; }
table { text-align:left; margin:0px 10px; width:900px; }
table td, table th { border:1px solid #ddd; padding:5px; }

/****
*	Custom styling for the select menu items with images and extra 
*	text in them.
*/
.txtJobSearch li a img {
	float:left;
	margin-right:5px;
}
.txtJobSearch li a small {
	display:block;
	text-align:left;
	font-style:italic;
}
.txtJobSearch { font-size:0.8em; }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:TextBox ID="txtJobSearch" runat="server" Text="Enter Job Title" ToolTip="Enter Job Title" Enabled="true" OnClick="this.value=''" Height="16px" Width="234px"></asp:TextBox>
    <asp:AutoCompleteExtender ID="txtJobSearch_AutoCompleteExtender" runat="server" 
        DelimiterCharacters="" Enabled="True" ServiceMethod="GetCompletionList" 
        ServicePath="" TargetControlID="txtJobSearch" UseContextKey="True" CompletionInterval="0">
    </asp:AutoCompleteExtender>
    <button type=button onclick="window.parent.location='http://localhost/boa/jobsearch.aspx';">Find</button>
    </form>
</body>
</html>
