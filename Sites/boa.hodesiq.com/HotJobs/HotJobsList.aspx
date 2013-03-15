<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotJobsList.aspx.cs" Inherits="BOA.HotJobs_HotJobsList" %>
<%@ Register Assembly="CareerSiteWebControls" Namespace="CareerSiteWebControls" TagPrefix="cswc" %>


    <link rel="stylesheet" href="../includes/styles.css" type="text/css">

        <cswc:HotJobsCustomFieldsRepeater runat="server" ID="hjcfRepeater1" >
            <ItemTemplate>
               
                            <a class="ip" target="_top" href='../JobDetails.aspx?JobID=<%# DataBinder.Eval(Container.DataItem, "JobId") %>'>
                                <%# DataBinder.Eval(Container.DataItem, "Title") %>, 
                                <%# DataBinder.Eval(Container.DataItem, "Country").ToString().ToUpper() %>-<%# DataBinder.Eval(Container.DataItem, "State").ToString().ToUpper() %>-<%# DataBinder.Eval(Container.DataItem, "City") %>
                            </a>
               
            </ItemTemplate>
        </cswc:HotJobsCustomFieldsRepeater>
