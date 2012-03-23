<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotJobsList.aspx.cs" Inherits="HotJobs_HotJobsList" %>
<%@ Register Assembly="CareerSiteWebControls" Namespace="CareerSiteWebControls" TagPrefix="cswc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../includes/styles.css" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <cswc:HotJobsCustomFieldsRepeater runat="server" ID="hjcfRepeater1" >
            <ItemTemplate>
                <table cellpadding="2" cellspacing="0" border="0" summary="" style="width: 294px; margin-left: 0px;">
                    <tr>
                        <td>
                            <a class="ip" target="_top" href='../JobDetails.aspx?JobID=<%# DataBinder.Eval(Container.DataItem, "JobId") %>'>
                                <%# DataBinder.Eval(Container.DataItem, "Title") %>, 
                                <%# DataBinder.Eval(Container.DataItem, "Country").ToString().ToUpper() %>-<%# DataBinder.Eval(Container.DataItem, "State").ToString().ToUpper() %>-<%# DataBinder.Eval(Container.DataItem, "City") %>
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </cswc:HotJobsCustomFieldsRepeater>
    </div>
    </form>
</body>
</html>
