﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.IO;
using System.Collections;
using System.Collections.Specialized;
using System.Text.RegularExpressions;

public partial class JobSearchConsolidated : System.Web.UI.Page
{
    private int RecPerPage = 12;
    private string constring = ConfigurationManager.AppSettings["StrUdlFileName"];
    string BOAFeedName = "";
    string keywords = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        keywords = String.IsNullOrEmpty(Request.Form["txtJobSearch"]) == false ? Request.Form["txtJobSearch"] : "";

        //write the boa buttons
        boanet_safebutton.writeBOASafeButton("Previous", phPrevious, "Previous", LnkPrvs_Click, this.Request, "");
        boanet_safebutton.writeBOASafeButton("Next", phNext, "Next", LnkNxt_Click, this.Request, "");
        //

        lblMessage.Text = "";

        if (ViewState["BOAFeedName"] != null)
        {
            BOAFeedName = ViewState["BOAFeedName"].ToString();
        }

        funAdvSearchConsolidated(0);
    }
    protected void Page_LoadComplete()
    {
        
    }


    public void Page_PreRender(object sender, EventArgs e)
    {
        string Instructions = "To further refine your job search and find a career suited to your skill set, use our <a class='p' style='font-weight:bold;' href='JobSearch.aspx'>Advanced Job Search</a> or Job Matching Tool";
        tdInstructions.Text = Instructions;
    }


    public void funAdvSearchConsolidated(int iFrom)
    {
        string keywrd = keywords;
        Jobs Job = new Jobs();
        ListDictionary MyListDictionary = new ListDictionary();
        MyListDictionary = Job.AdvSearchConsolidated_ListDictionary(keywrd);
        DataTable DT = (DataTable)MyListDictionary["JobSearchResults"];

        FilterJobSearch(iFrom, DT, MyListDictionary);
    }

    private void FilterJobSearch(int iFrom, DataTable DT, ListDictionary MyListDictionary)
    {

        foreach (DataControlField c in GrdResults.Columns)
        {

            //Set all column headers as bold!!! | Remove all images!!!
            if (!c.HeaderText.Contains("<span title="))
            {
                if (c.HeaderText.Contains("Title")) { c.HeaderText = "<span title='Sort by job title in either ascending or descending order'><b>" + c.HeaderText + "</b></span>"; }
                if (c.HeaderText.Contains("Location")) { c.HeaderText = "<span title='Sort by location in either ascending or descending order'><b>" + c.HeaderText + "</b></span>"; }
                if (c.HeaderText.Contains("Date")) { c.HeaderText = "<span title='Sort by date in either ascending or descending order'><b>" + c.HeaderText + "</b></span>"; }
                if (c.HeaderText.Contains("Job Family")) { c.HeaderText = "<span title='Sort by job family in either ascending or descending order'><b>" + c.HeaderText + "</b></span>"; }
            }
            if (iFrom != 1)
            {
                c.HeaderText = c.HeaderText.Replace(" <img src='images/upArrow.gif' border='0'>", String.Empty);
                c.HeaderText = c.HeaderText.Replace(" <img src='images/dnArrow.gif' border='0'>", String.Empty);
            }
            if (iFrom == 2)
            {
                //Assign proper image to proper column
                if (c.SortExpression == (string)ViewState["sortExpression"])
                {
                    if ((string)ViewState["MysortDirection"] == " ASC")
                    { c.HeaderText += " <img src='images/upArrow.gif' border='0'>"; }
                    if ((string)ViewState["MysortDirection"] == " DESC")
                    { c.HeaderText += " <img src='images/dnArrow.gif' border='0'>"; }
                }
            }

            

        }

        if (iFrom == 0) // Reset | ReSearch
        {
            GrdResults.DataSource = DT;
            GrdResults.DataBind();
        }
        else if (iFrom == 1) // from Next | Previous
        {
            DataView dv = new DataView(DT);
            dv.Sort = (string)ViewState["sortExpression"] + (string)ViewState["MysortDirection"];
            GrdResults.DataSource = dv;
            GrdResults.DataBind();
            GrdResults.PageIndex = (int)ViewState["PageNumber"];
        }
        else if (iFrom == 2) // from Sort(GrdResults_OnSorting)
        {
            DataView dv = new DataView(DT);
            dv.Sort = (string)ViewState["sortExpression"] + (string)ViewState["MysortDirection"];
            GrdResults.DataSource = dv;
            GrdResults.DataBind();
            GrdResults.PageIndex = 0;
        }

        this.divNext.Attributes["style"] = ((Boolean)MyListDictionary["NextButton"]) ? " display: inline;" : " display: none;";
        this.divPrev.Attributes["style"] = ((Boolean)MyListDictionary["PrevButton"]) ? " display: inline;" : " display: none;";
        LblPageOfPages.Text = MyListDictionary["PageOfPages"].ToString();
        this.lblJobofJobs.Visible = Convert.ToBoolean(MyListDictionary["RecordCount"]);
        this.lblJobofJobs.Text = MyListDictionary["JobToJobs"].ToString();

    }

    #region  (¯`·.¸(¯`·.¸  Sorting Mechanizm Is Here ¸.·´¯)¸.·´¯)

    protected void GrdResults_OnSorting(object sender, GridViewSortEventArgs e)
    {
        ViewState["PageNumber"] = 1;
        string sortExpression = e.SortExpression;
        ViewState["sortExpression"] = sortExpression;
        if (GridViewSortDirection == SortDirection.Ascending)
        {
            GridViewSortDirection = SortDirection.Descending;
            ViewState["MysortDirection"] = " DESC";
        }
        else
        {
            GridViewSortDirection = SortDirection.Ascending;
            ViewState["MysortDirection"] = " ASC";
        }
        funAdvSearchConsolidated(2);
    }

    public SortDirection GridViewSortDirection
    {
        get
        {
            if (ViewState["sortDirection"] == null)
                ViewState["sortDirection"] = SortDirection.Descending;
            return (SortDirection)ViewState["sortDirection"];
        }
        set { ViewState["sortDirection"] = value; }
    }

    #endregion



    protected void LnkNxt_Click(object sender, EventArgs e)
    {
        ViewState["PageNumber"] = (int)(ViewState["PageNumber"]) + 1;
        funAdvSearchConsolidated(1);
    }

    protected void LnkPrvs_Click(object sender, EventArgs e)
    {
        ViewState["PageNumber"] = (int)(ViewState["PageNumber"]) - 1;
        funAdvSearchConsolidated(1);
    }






}