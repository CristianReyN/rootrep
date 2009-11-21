using System;
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


public partial class JobSearch : System.Web.UI.Page
{
    #region Change History
    // date		    developer	    comments
    // -----------	----------	    ----------
    //  11/27/06    Jonathan Do     (1) Removed paging logic in code, used new SearchJobs Method in Jobs.cs to return records for page selected, logic to
    //                              hide or display Next/Prev button.
    //                              (2) Added BindSearchString() function to bind search criteria when return from job detail.
    //                              (3) Added FilterCity() to filter when select AreaOfTalent and State
    //                              index change and filter when redirect back from job detail.
    /// </summary>
    #endregion

    private int RecPerPage = 12;
    protected void Page_Load(object sender, EventArgs e)
    {

        Response.Redirect("AdvanceSearch.aspx");
        checknotfound();
		//init hidden location value
        ddlStatehidden.Value = ddlState.SelectedItem.Value.Trim();
        if (ddlStatehidden.Value == "All Locations") ddlStatehidden.Value = "-1";

        //write the boa buttons
        boanet_safebutton.writeBOASafeButton("Search", phSearch, "Search", bsearch_Click, this.Request, "");
        boanet_safebutton.writeBOASafeButton("Previous", phPrevious, "Previous", LnkPrvs_Click, this.Request, "");
        boanet_safebutton.writeBOASafeButton("Next", phNext, "Next", LnkNxt_Click, this.Request, "");

        //
        lnkAdvanceSearch.Attributes.Add("onblur", "this.className='p';");
        lnkAdvanceSearch.Attributes.Add("onfocus", "this.className='p-over';");

        lnkJobCart.Attributes.Add("onblur", "this.className='p';");
        lnkJobCart.Attributes.Add("onfocus", "this.className='p-over';");

        ViewState["statequery"] = string.Empty;

        if (!this.IsPostBack)
        {
            PopulateLocations();
            PopulateCity();
            if (string.IsNullOrEmpty(Request["stateid"]))
            {
                ddlJobAreas.SelectedIndex = 0;
                ddlState.SelectedIndex = 0;
            }
            else
            {
                BindSearchString();
                ViewState["PageNumber"] = 1;
                FunSearch(0);
            }
        }
        PopulateJobAreas();

        //postback only if location has been changed:
        this.ddlState.Attributes.Add("onblur", "javascript:if(document." + this.Form.ClientID + "." + this.ddlStatehidden.ClientID + ".value!=document." + this.Form.ClientID + "." + ddlState.ClientID + ".options[document." + this.Form.ClientID + "." + ddlState.ClientID.Replace("$", "_") + ".selectedIndex].value) {setTimeout('__doPostBack(\\'" + this.ddlState.ClientID.Replace("_", "$") + "\\',\\'\\')', 0);}");
        //testing: this.ddlState.Attributes.Add("onblur", "javascript:if(document." + this.Form.ClientID + "." + this.ddlStatehidden.ClientID + ".value!=document." + this.Form.ClientID + "." + ddlState.ClientID + ".options[document." + this.Form.ClientID + "." + ddlState.ClientID.Replace("$", "_") + ".selectedIndex].value) {alert('stateid: '+document." + this.Form.ClientID + "." + ddlState.ClientID + ".options[document." + this.Form.ClientID + "." + ddlState.ClientID.Replace("$", "_") + ".selectedIndex].value);alert('hidden: '+document." + this.Form.ClientID + "." + this.ddlStatehidden.ClientID + ".value);setTimeout('__doPostBack(\\'" + this.ddlState.ClientID.Replace("_", "$") + "\\',\\'\\')', 0);}");

    }

    protected void Page_LoadComplete()
    {
        if (ddlState.SelectedItem.Value != "-1")
        {
            this.ddlCity.Focus();
        }
    }

    public void BindSearchString()
    {
        ListItem MyListItem;
        string MyValue;

        MyValue = String.IsNullOrEmpty(Request.QueryString["stateid"]) == false ? Request.QueryString["stateid"] : "-1";
        MyListItem = ddlState.Items.FindByValue(MyValue);

        if (MyListItem != null)
            MyListItem.Selected = true;
        else
        {
            ViewState["statequery"] = "-3";
        }
        if (MyValue.ToString() != "-1")
        {
            FilterCity(Convert.ToInt32(MyValue));
            ddlCity.Enabled = true;
        }

        MyListItem = ddlCity.Items.FindByValue(String.IsNullOrEmpty(Request.QueryString["cityid"]) == false ? Request.QueryString["cityid"] : "-1");
        if (MyListItem != null)
            MyListItem.Selected = true;
        keywords.Text = String.IsNullOrEmpty(Request.QueryString["keywords"]) == false ? Request.QueryString["keywords"] : "";
    }

    protected void State_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        if (ddlState.SelectedIndex > 1)
        {
            ddlCity.Visible = true;
            lblCity.Visible = true;
        }
        else
        {
            ddlCity.Visible = false;
            lblCity.Visible = false;
        }
        FilterCity(Convert.ToInt32(ddlState.SelectedValue));
        ddlCity.SelectedIndex = 0;
    }

    public void FilterCity(int CityID)
    {
        DataTable dt;
        Location Lo = new Location();
        ddlCity.Items.Clear();
        ddlCity.DataTextField = "City";
        ddlCity.DataValueField = "Cityid";
        if (ddlState.SelectedIndex == 0)
            dt = Lo.StatewiseCity(1);
        else
        {
            dt = Lo.StatewiseCity(CityID);
        }
        if (dt.Rows.Count > 0)
        {
            ddlCity.DataSource = dt;
            ddlCity.DataBind();
        }
        ddlCity.Items.Insert(0, new ListItem("All cities", "-1"));
    }

    public void RefineSearch(string StateID)
    {
        if (ddlState.SelectedItem.Value != "-1" & !string.IsNullOrEmpty(StateID))
        {
            FilterCity(Convert.ToInt32(ddlState.SelectedItem.Value));
            ddlCity.Visible = true;
            ddlCity.SelectedIndex = 0;
            lblCity.Visible = true;
            ddlCity.Enabled = true;
        }
        else
        {
            ddlCity.Enabled = false;
            //lblCity.Visible = false;
            ddlCity.SelectedIndex = -1;
        }
    }

    protected void brefine_Click(object sender, EventArgs e)
    {
        RefineSearch(ddlState.SelectedItem.Value);
        bsearch_Click(sender, e);

    }

    public void FunSearch(int iFrom)
    {
        string[] aja = { "-1", "-1" };
        if (ddlJobAreas.SelectedValue != "-1" & ddlJobAreas.SelectedValue != string.Empty)
        {
            aja = ddlJobAreas.SelectedValue.Split("|".ToCharArray());
        }
        else if (!string.IsNullOrEmpty(Request.QueryString["jobareas"]) && Request.QueryString["jobareas"].ToLowerInvariant() != "select a job area")
        {
            aja = Request.QueryString["jobareas"].Split("|".ToCharArray());
        }
        int aot = (aja[0] == null) ? -1 : Convert.ToInt32(aja[0]);
        string jf = string.IsNullOrEmpty(aja[1].ToString()) ? "" : aja[1];

        //int stateid = string.IsNullOrEmpty(ddlState.SelectedValue) ? -1 : Convert.ToInt32(string.IsNullOrEmpty(ViewState["statequery"].ToString()) ? ddlState.SelectedItem.Value : ViewState["statequery"].ToString());
        int stateid = string.IsNullOrEmpty(ddlState.SelectedValue) ? -1 : Convert.ToInt32(ddlState.SelectedValue);
        ViewState["statequery"] = null;
        int cityid;
        if (stateid < 0)
            cityid = -1;
        else
            cityid = string.IsNullOrEmpty(ddlCity.SelectedValue) ? -1 : Convert.ToInt32(ddlCity.SelectedItem.Value);
        string keywrd = keywords.Text;

        if (iFrom == 0) // Reset | ReSearch
        {
            ViewState["MysortDirection"] = null;
            ViewState["sortExpression"] = null;
        }

        Jobs Job = new Jobs();   
        ListDictionary MyListDictionary = new ListDictionary();
        MyListDictionary = Job.SearchJobs_ListDictionary(aot, jf, stateid, cityid, keywrd, (int)(ViewState["PageNumber"]), RecPerPage, (string)ViewState["sortExpression"], (string)ViewState["MysortDirection"]);
        DataTable DT = (DataTable)MyListDictionary["JobSearchResults"];

        foreach (DataControlField c in GrdResults.Columns)
        {
            //Set all column headers as bold!!! | Remove all images!!!
            if (!c.HeaderText.Contains("<span title="))
            {
                if (c.HeaderText.Contains("Title")) { c.HeaderText = "<span title='Sort by job title in either ascending or descending order'><b>" + c.HeaderText + "</b></span>"; }
                if (c.HeaderText.Contains("Location")) { c.HeaderText = "<span title='Sort by location in either ascending or descending order'><b>" + c.HeaderText + "</b></span>"; }
                if (c.HeaderText.Contains("Date")) { c.HeaderText = "<span title='Sort by date in either ascending or descending order'><b>" + c.HeaderText + "</b></span>"; }
            }
            if (iFrom != 1) // from Next | Previous
            {
                c.HeaderText = c.HeaderText.Replace(" <img src='images/upArrow.gif' border='0'>", String.Empty);
                c.HeaderText = c.HeaderText.Replace(" <img src='images/dnArrow.gif' border='0'>", String.Empty);
            }
            if (iFrom == 2)  // from Sort(GrdResults_OnSorting)
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
        //this.dNext.Attributes["style"] = ((Boolean)MyListDictionary["NextButton"]) ? " display: inline;" : " display: none;";
        //this.dPrev.Attributes["style"] = ((Boolean)MyListDictionary["PrevButton"]) ? " display: inline;" : " display: none;";

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
        FunSearch(2);
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

    protected void bsearch_Click(object sender, EventArgs e)
    {
        ViewState["PageNumber"] = 1;
        FunSearch(0);
        GrdResults.Visible = true;
    }

    protected void LnkNxt_Click(object sender, EventArgs e)
    {
        ViewState["PageNumber"] = (int)(ViewState["PageNumber"]) + 1;
        FunSearch(1);
    }
    protected void LnkPrvs_Click(object sender, EventArgs e)
    {
        ViewState["PageNumber"] = (int)(ViewState["PageNumber"]) - 1;
        FunSearch(1);
    }

    protected void PopulateLocations()
    {
        Location Lo = new Location();
        OleDbDataReader dr;
        ddlState.DataTextField = "State";
        ddlState.DataValueField = "Stateid";
        dr = Lo.StateDR();
        ddlState.DataSource = dr;
        ddlState.DataBind();
        ddlState.Items.Insert(0, new ListItem("All states", "-1"));
        dr.Close();
    }
    protected void PopulateCity()
    {
        Location Lo = new Location();
        OleDbDataReader dr;
        ddlCity.Items.Clear();
        ddlCity.DataTextField = "City";
        ddlCity.DataValueField = "Cityid";
        //if (ddlState.SelectedIndex == 0)
        dr = Lo.StatewiseCityDR(1);
        ddlCity.DataSource = dr;
        ddlCity.DataBind();
        ddlCity.Items.Insert(0, new ListItem("All cities", "-1"));
        dr.Close();
    }

    protected void PopulateJobAreas()
    {
        string selVal;
        selVal = String.IsNullOrEmpty(Request.QueryString["jobareas"]) == false ? string.IsNullOrEmpty(this.ddlJobAreas.SelectedValue) ? Request.QueryString["jobareas"] : this.ddlJobAreas.SelectedValue : this.ddlJobAreas.SelectedValue;
        this.ddlJobAreas.Items.Clear();
        OleDbDataReader dr;
        AreaofTalent ja = new AreaofTalent();
        dr = ja.JobAreasList();
        ListItem l = new ListItem("Select a job area", string.Empty);
        this.ddlJobAreas.Items.Add(l);
        while (dr.Read())
        {
            ListItem li = new ListItem(dr["family"].ToString(), dr["value"].ToString());
            li.Attributes["OptionGroup"] = dr["talent"].ToString();
            this.ddlJobAreas.Items.Add(li);
        }
        dr.Close();
        ListItem myListItem = new ListItem();
        myListItem = this.ddlJobAreas.Items.FindByValue(selVal);

        if (myListItem != null)
            myListItem.Selected = true;
    }

    protected void btnJobCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("jobcart.aspx");
    }
    protected void btnAdvanceSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdvanceSearch.aspx");
    }

	protected void checknotfound()
	{
		if (Request["nf"] == "1" && !this.IsPostBack)
		{
			this.nojobtext.Text = ConfigurationManager.AppSettings["jobnotfoundhtml"];
			this.nojob.Style["display"] = "inline";
		}
		else
		{
			this.nojobtext.Text = string.Empty;
			this.nojob.Style["display"] = "none";
		}

	}


}
